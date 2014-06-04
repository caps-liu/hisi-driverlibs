#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <pthread.h>
#include <sys/stat.h>
#include <sys/types.h>
#include <sys/ioctl.h>
#include <fcntl.h>
#include <unistd.h>
#include "hi_flash.h"
#include "hi_db.h"
#include "hi_drv_pdm.h"
#include "hi_unf_pdm.h"
#include "hi_mpi_mem.h"
#include "hi_osal.h"


#define PDM_BASE_DEF_NAME         "baseparam"
#define PDM_LOGO_DEF_NAME         "logo"
#define PDM_FASTPLAY_DEF_NAME     "fastplay"


static const HI_U8 s_szPDMVersion[] __attribute__((used)) = "SDK_VERSION:["\
                            MKMARCOTOSTR(SDK_VERSION)"] Build Time:["\
                            __DATE__", "__TIME__"]";



static HI_UNF_DISP_TIMING_S g_stTiming = 
{
    .VFB = 27,
    .VBB = 23,
    .VACT = 768,
    .HFB = 210, 
    .HBB = 46,  
    .HACT = 1366,
    .VPW = 4,    
    .HPW = 24,   
    .IDV = HI_FALSE,    
    .IHS = HI_FALSE,    
    .IVS = HI_FALSE,    
    .ClockReversal = HI_FALSE,
    .DataWidth = HI_UNF_DISP_INTF_DATA_WIDTH24,
    .ItfFormat = HI_UNF_DISP_INTF_DATA_FMT_RGB888,
    .DitherEnable = HI_FALSE,                    
    .ClkPara0 = 0x912ccccc,       
    .ClkPara1 = 0x006d8157,       
    //.InRectWidth = 1366,
    //.InRectHeight = 768,
};

static HI_VOID MCE_GetDefDispParam(HI_UNF_PDM_DISP_PARAM_S *pDispParam)
{
    HI_UNF_DISP_INTF_S              stDacMode[HI_UNF_DISP_INTF_TYPE_BUTT];
    HI_UNF_DISP_BG_COLOR_S          stBgcolor;
    HI_U32                          i;

	memset(pDispParam, 0, sizeof(HI_UNF_PDM_DISP_PARAM_S));
    
    for (i=0; i<HI_UNF_DISP_INTF_TYPE_BUTT; i++)
    {
        pDispParam->stIntf[i].enIntfType = HI_UNF_DISP_INTF_TYPE_BUTT;
    }

    return;  
}

HI_S32 PDM_GetDispParam(HI_U8 *pBuf, HI_UNF_DISP_E enDisp, HI_UNF_PDM_DISP_PARAM_S *pstDispParam)
{
    HI_S32                      Ret;
    HI_DB_S                     BaseDB;
    HI_DB_TABLE_S               stTable;
    HI_DB_KEY_S                 stKey;
    HI_UNF_PDM_DISP_PARAM_S     stDefDispParam;

    Ret = HI_DB_GetDBFromMem(pBuf, &BaseDB);
    if (HI_SUCCESS != Ret)
    {
        return HI_FAILURE;
    }
 
    MCE_GetDefDispParam(&stDefDispParam);

	if (HI_UNF_DISPLAY0 == enDisp)
	{
		Ret = HI_DB_GetTableByName(&BaseDB, MCE_BASE_TABLENAME_DISP0, &stTable);
	}
	else
	{
		Ret = HI_DB_GetTableByName(&BaseDB, MCE_BASE_TABLENAME_DISP1, &stTable);
	}
	
    if(HI_SUCCESS != Ret)
    {
        return HI_FAILURE;
    }

    Ret = HI_DB_GetKeyByName(&stTable, MCE_BASE_KEYNAME_FMT, &stKey);
    if(HI_SUCCESS == Ret)
    {
        pstDispParam->enFormat = *(HI_UNF_ENC_FMT_E *)(stKey.pValue);
    }
    else
    {
        pstDispParam->enFormat = stDefDispParam.enFormat;
    }
     
    Ret = HI_DB_GetKeyByName(&stTable, MCE_BASE_KEYNAME_INTF_YPBPR, &stKey);
    if(HI_SUCCESS == Ret)
    {
        pstDispParam->stIntf[HI_UNF_DISP_INTF_TYPE_YPBPR] = *(HI_UNF_DISP_INTF_S *)(stKey.pValue);
    }
    else
    {
        pstDispParam->stIntf[HI_UNF_DISP_INTF_TYPE_YPBPR] = stDefDispParam.stIntf[HI_UNF_DISP_INTF_TYPE_YPBPR];
    }   

    Ret = HI_DB_GetKeyByName(&stTable, MCE_BASE_KEYNAME_INTF_CVBS, &stKey);
    if(HI_SUCCESS == Ret)
    {
        pstDispParam->stIntf[HI_UNF_DISP_INTF_TYPE_CVBS] = *(HI_UNF_DISP_INTF_S *)(stKey.pValue);
    }
    else
    {
        pstDispParam->stIntf[HI_UNF_DISP_INTF_TYPE_CVBS] = stDefDispParam.stIntf[HI_UNF_DISP_INTF_TYPE_CVBS];
    }

	Ret = HI_DB_GetKeyByName(&stTable, MCE_BASE_KEYNAME_INTF_HDMI, &stKey);
    if(HI_SUCCESS == Ret)
    {
        pstDispParam->stIntf[HI_UNF_DISP_INTF_TYPE_HDMI] = *(HI_UNF_DISP_INTF_S *)(stKey.pValue);
    }

    Ret = HI_DB_GetKeyByName(&stTable, MCE_BASE_KEYNAME_INTF_RGB, &stKey);
    if(HI_SUCCESS == Ret)
    {
        pstDispParam->stIntf[HI_UNF_DISP_INTF_TYPE_RGB] = *(HI_UNF_DISP_INTF_S *)(stKey.pValue);
    }
    else
    {
        pstDispParam->stIntf[HI_UNF_DISP_INTF_TYPE_RGB] = stDefDispParam.stIntf[HI_UNF_DISP_INTF_TYPE_RGB];
    }

    Ret = HI_DB_GetKeyByName(&stTable, MCE_BASE_KEYNAME_INTF_SVIDEO, &stKey);
    if(HI_SUCCESS == Ret)
    {
        pstDispParam->stIntf[HI_UNF_DISP_INTF_TYPE_SVIDEO] = *(HI_UNF_DISP_INTF_S *)(stKey.pValue);
    }
    else
    {
        pstDispParam->stIntf[HI_UNF_DISP_INTF_TYPE_SVIDEO] = stDefDispParam.stIntf[HI_UNF_DISP_INTF_TYPE_SVIDEO];
    }

    Ret = HI_DB_GetKeyByName(&stTable, MCE_BASE_KEYNAME_HULEP, &stKey);
    if(HI_SUCCESS == Ret)
    {
        pstDispParam->u32HuePlus = *(HI_U32 *)(stKey.pValue);
    }
    else
    {
        pstDispParam->u32HuePlus = stDefDispParam.u32HuePlus;
    }   

    Ret = HI_DB_GetKeyByName(&stTable, MCE_BASE_KEYNAME_SATU, &stKey);
    if(HI_SUCCESS == Ret)
    {
        pstDispParam->u32Saturation = *(HI_U32 *)(stKey.pValue);
    }
    else
    {
        pstDispParam->u32Saturation = stDefDispParam.u32Saturation;
    } 

    Ret = HI_DB_GetKeyByName(&stTable, MCE_BASE_KEYNAME_CONTR, &stKey);
    if(HI_SUCCESS == Ret)
    {
        pstDispParam->u32Contrast = *(HI_U32 *)(stKey.pValue);
    }
    else
    {
        pstDispParam->u32Contrast = stDefDispParam.u32Contrast;
    } 

    Ret = HI_DB_GetKeyByName(&stTable, MCE_BASE_KEYNAME_BRIG, &stKey);
    if(HI_SUCCESS == Ret)
    {
        pstDispParam->u32Brightness = *(HI_U32 *)(stKey.pValue);
    }
    else
    {
        pstDispParam->u32Brightness = stDefDispParam.u32Brightness;
    }     

    Ret = HI_DB_GetKeyByName(&stTable, MCE_BASE_KEYNAME_BGCOLOR, &stKey);
    if(HI_SUCCESS == Ret)
    {
        pstDispParam->stBgColor = *(HI_UNF_DISP_BG_COLOR_S *)(stKey.pValue);
    }
    else
    {
        pstDispParam->stBgColor = stDefDispParam.stBgColor;
    }   

    Ret = HI_DB_GetKeyByName(&stTable, MCE_BASE_KEYNAME_TIMING, &stKey);
    if(HI_SUCCESS == Ret)
    {
        pstDispParam->stDispTiming = *(HI_UNF_DISP_TIMING_S *)(stKey.pValue);
    }
    else
    {
        pstDispParam->stDispTiming = stDefDispParam.stDispTiming;
    }  

    Ret = HI_DB_GetKeyByName(&stTable, MCE_BASE_KEYNAME_GAMA, &stKey);
    if(HI_SUCCESS == Ret)
    {
        pstDispParam->bGammaEnable = *(HI_BOOL *)(stKey.pValue);
    }
    else
    {
        pstDispParam->bGammaEnable = stDefDispParam.bGammaEnable;
    } 

	Ret = HI_DB_GetKeyByName(&stTable, MCE_BASE_KEYNAME_ASPECT, &stKey);
    if(HI_SUCCESS == Ret)
    {
        pstDispParam->stAspectRatio = *(HI_UNF_DISP_ASPECT_RATIO_S *)(stKey.pValue);
    }

    Ret = HI_DB_GetKeyByName(&stTable, MCE_BASE_KEYNAME_PF, &stKey);
    if(HI_SUCCESS == Ret)
    {
        pstDispParam->enPixelFormat = *(HIGO_PF_E *)(stKey.pValue);
    }
    else
    {
        pstDispParam->enPixelFormat = stDefDispParam.enPixelFormat;
    }

	Ret = HI_DB_GetKeyByName(&stTable, MCE_BASE_KEYNAME_SRC_DISP, &stKey);
    if(HI_SUCCESS == Ret)
    {
        pstDispParam->enSrcDisp = *(HI_UNF_DISP_E *)(stKey.pValue);
    }
	
    Ret = HI_DB_GetKeyByName(&stTable, MCE_BASE_KEYNAME_VIRSCW, &stKey);
    if(HI_SUCCESS == Ret)
    {
        pstDispParam->u32VirtScreenWidth = *(HI_U32 *)(stKey.pValue);
    }
    else
    {
        pstDispParam->u32VirtScreenWidth = stDefDispParam.u32VirtScreenWidth;
    }   

    Ret = HI_DB_GetKeyByName(&stTable, MCE_BASE_KEYNAME_VIRSCH, &stKey);
    if(HI_SUCCESS == Ret)
    {
        pstDispParam->u32VirtScreenHeight = *(HI_U32 *)(stKey.pValue);
    }
    else
    {
        pstDispParam->u32VirtScreenHeight = stDefDispParam.u32VirtScreenHeight;
    }    
    
    Ret = HI_DB_GetKeyByName(&stTable, MCE_BASE_KEYNAME_DISP_L, &stKey);
    if(HI_SUCCESS == Ret)
    {
        pstDispParam->stDispOffset.u32Left = *(HI_U32 *)(stKey.pValue);
    }
    else
    {
        pstDispParam->stDispOffset.u32Left = stDefDispParam.stDispOffset.u32Left;
    }   

    Ret = HI_DB_GetKeyByName(&stTable, MCE_BASE_KEYNAME_DISP_T, &stKey);
    if(HI_SUCCESS == Ret)
    {
        pstDispParam->stDispOffset.u32Top = *(HI_U32 *)(stKey.pValue);
    }
    else
    {
        pstDispParam->stDispOffset.u32Top = stDefDispParam.stDispOffset.u32Top;
    }   

    Ret = HI_DB_GetKeyByName(&stTable, MCE_BASE_KEYNAME_DISP_R, &stKey);
    if(HI_SUCCESS == Ret)
    {
        pstDispParam->stDispOffset.u32Right = *(HI_U32 *)(stKey.pValue);
    }
    else
    {
        pstDispParam->stDispOffset.u32Right = stDefDispParam.stDispOffset.u32Right;
    }   

    Ret = HI_DB_GetKeyByName(&stTable, MCE_BASE_KEYNAME_DISP_B, &stKey);
    if(HI_SUCCESS == Ret)
    {
        pstDispParam->stDispOffset.u32Bottom = *(HI_U32 *)(stKey.pValue);
    }
    else
    {
        pstDispParam->stDispOffset.u32Bottom = stDefDispParam.stDispOffset.u32Bottom;
    } 

    return HI_SUCCESS;    
}

HI_S32 PDM_GetLogoParam(HI_U8 *pBuf, HI_UNF_MCE_LOGO_PARAM_S *pLogoParam)
{
    HI_S32                      Ret;
    HI_DB_S                     LogoDB;
    HI_DB_TABLE_S               stTable;
    HI_DB_KEY_S                 stKey;    
    
    
    Ret = HI_DB_GetDBFromMem(pBuf, &LogoDB);
    if(HI_SUCCESS != Ret)
    {
        return HI_FAILURE;
    } 
    
    Ret = HI_DB_GetTableByName(&LogoDB, MCE_LOGO_TABLENAME, &stTable);
    if(HI_SUCCESS != Ret)
    {
        HI_ERR_PDM("ERR: HI_DB_GetTableByName!\n");
        return HI_FAILURE;
    }

    Ret = HI_DB_GetKeyByName(&stTable, MCE_LOGO_KEYNAME_FLAG, &stKey);
    if(HI_SUCCESS == Ret)
    {
        if (1 == *(HI_U32 *)(stKey.pValue))
        {
            pLogoParam->bLogoEnable = HI_TRUE;
        }
        else
        {
            pLogoParam->bLogoEnable = HI_FALSE;
        }
     }
    else
    {
        pLogoParam->bLogoEnable = HI_FALSE;
    }

    Ret = HI_DB_GetKeyByName(&stTable, MCE_LOGO_KEYNAME_CONTLEN, &stKey);
    if(HI_SUCCESS == Ret)
    {
        pLogoParam->u32LogoLen = *(HI_U32 *)(stKey.pValue);
    }
    else
    {
        pLogoParam->u32LogoLen = 0;
    }

    return HI_SUCCESS;
}

HI_S32 PDM_GetPlayParam(HI_U8 *pBuf, HI_UNF_MCE_PLAY_PARAM_S *pPlayParam)
{
    HI_S32                      Ret;
    HI_DB_S                     PlayDB;
    HI_DB_TABLE_S               stTable;
    HI_DB_KEY_S                 stKey;   
    
    
    Ret = HI_DB_GetDBFromMem(pBuf, &PlayDB);
    if (HI_SUCCESS != Ret)
    {
        return HI_FAILURE;
    }

    Ret = HI_DB_GetTableByName(&PlayDB, MCE_PLAY_TABLENAME, &stTable);
    if(HI_SUCCESS != Ret)
    {
        HI_ERR_PDM("ERR: HI_DB_GetTableByName!\n");
        return HI_FAILURE;        
    }

    Ret = HI_DB_GetKeyByName(&stTable, MCE_PLAY_KEYNAME_PARAM, &stKey);
    if(HI_SUCCESS == Ret)
    {
        *pPlayParam = *(HI_UNF_MCE_PLAY_PARAM_S *)(stKey.pValue);
    }
    else
    {
        return HI_FAILURE;
    }

    return Ret;
    
}

HI_S32 PDM_UpdateDispParam(HI_UNF_DISP_E enDisp, HI_UNF_PDM_DISP_PARAM_S *pstDispParam,HI_U8 *pBuf)
{
    HI_S32              Ret;
    HI_DB_S             stBaseDB;
    HI_DB_TABLE_S       stTable;
    HI_DB_KEY_S         stKey;
    
    Ret = HI_DB_GetDBFromMem(pBuf, &stBaseDB);
    if(HI_SUCCESS != Ret)
    {
        HI_ERR_PDM("ERR: HI_DB_GetDBFromMem!");
        return Ret;
    } 

	if (HI_UNF_DISPLAY0 == enDisp)
	{
		Ret = HI_DB_GetTableByName(&stBaseDB, MCE_BASE_TABLENAME_DISP0, &stTable);
	}
	else
	{
		Ret = HI_DB_GetTableByName(&stBaseDB, MCE_BASE_TABLENAME_DISP1, &stTable);
	}

    if(HI_SUCCESS != Ret)
    {
        HI_ERR_PDM("ERR: HI_DB_GetTableByName!");
        return Ret;
    } 

    Ret = HI_DB_GetKeyByName(&stTable, MCE_BASE_KEYNAME_FMT, &stKey);
    if(HI_SUCCESS == Ret)
    {
        memcpy(stKey.pValue, &(pstDispParam->enFormat), stKey.u32ValueSize);
    }

	Ret = HI_DB_GetKeyByName(&stTable, MCE_BASE_KEYNAME_INTF_HDMI, &stKey);
    if(HI_SUCCESS == Ret)
    {
        memcpy(stKey.pValue, &(pstDispParam->stIntf[HI_UNF_DISP_INTF_TYPE_HDMI]), stKey.u32ValueSize);
    }
    
    Ret = HI_DB_GetKeyByName(&stTable, MCE_BASE_KEYNAME_INTF_YPBPR, &stKey);
    if(HI_SUCCESS == Ret)
    {
        memcpy(stKey.pValue, &(pstDispParam->stIntf[HI_UNF_DISP_INTF_TYPE_YPBPR]), stKey.u32ValueSize);
    }

    Ret = HI_DB_GetKeyByName(&stTable, MCE_BASE_KEYNAME_INTF_CVBS, &stKey);
    if(HI_SUCCESS == Ret)
    {
        memcpy(stKey.pValue, &(pstDispParam->stIntf[HI_UNF_DISP_INTF_TYPE_CVBS]), stKey.u32ValueSize);
    }

    Ret = HI_DB_GetKeyByName(&stTable, MCE_BASE_KEYNAME_INTF_RGB, &stKey);
    if(HI_SUCCESS == Ret)
    {
        memcpy(stKey.pValue, &(pstDispParam->stIntf[HI_UNF_DISP_INTF_TYPE_RGB]), stKey.u32ValueSize);
    }    

    Ret = HI_DB_GetKeyByName(&stTable, MCE_BASE_KEYNAME_INTF_SVIDEO, &stKey);
    if(HI_SUCCESS == Ret)
    {
        memcpy(stKey.pValue, &(pstDispParam->stIntf[HI_UNF_DISP_INTF_TYPE_SVIDEO]), stKey.u32ValueSize);
    }    
    
    Ret = HI_DB_GetKeyByName(&stTable, MCE_BASE_KEYNAME_PF, &stKey);
    if(HI_SUCCESS == Ret)
    {
        memcpy(stKey.pValue, &(pstDispParam->enPixelFormat), stKey.u32ValueSize);
    }

	Ret = HI_DB_GetKeyByName(&stTable, MCE_BASE_KEYNAME_SRC_DISP, &stKey);
    if(HI_SUCCESS == Ret)
    {
        memcpy(stKey.pValue, &(pstDispParam->enSrcDisp), stKey.u32ValueSize);
    }
	
    Ret = HI_DB_GetKeyByName(&stTable, MCE_BASE_KEYNAME_VIRSCW, &stKey);
    if(HI_SUCCESS == Ret)
    {
        memcpy(stKey.pValue, &(pstDispParam->u32VirtScreenWidth), stKey.u32ValueSize);
    }
    Ret = HI_DB_GetKeyByName(&stTable, MCE_BASE_KEYNAME_VIRSCH, &stKey);
    if(HI_SUCCESS == Ret)
    {
        memcpy(stKey.pValue, &(pstDispParam->u32VirtScreenHeight), stKey.u32ValueSize);
    }
    Ret = HI_DB_GetKeyByName(&stTable, MCE_BASE_KEYNAME_DISP_L, &stKey);
    if(HI_SUCCESS == Ret)
    {
        memcpy(stKey.pValue, &(pstDispParam->stDispOffset.u32Left), stKey.u32ValueSize);
    }
    Ret = HI_DB_GetKeyByName(&stTable, MCE_BASE_KEYNAME_DISP_T, &stKey);
    if(HI_SUCCESS == Ret)
    {
        memcpy(stKey.pValue, &(pstDispParam->stDispOffset.u32Top), stKey.u32ValueSize);
    }
    Ret = HI_DB_GetKeyByName(&stTable, MCE_BASE_KEYNAME_DISP_R, &stKey);
    if(HI_SUCCESS == Ret)
    {
        memcpy(stKey.pValue, &(pstDispParam->stDispOffset.u32Right), stKey.u32ValueSize);
    }
    Ret = HI_DB_GetKeyByName(&stTable, MCE_BASE_KEYNAME_DISP_B, &stKey);
    if(HI_SUCCESS == Ret)
    {
        memcpy(stKey.pValue, &(pstDispParam->stDispOffset.u32Bottom), stKey.u32ValueSize);
    }
    Ret = HI_DB_GetKeyByName(&stTable, MCE_BASE_KEYNAME_HULEP, &stKey);
    if(HI_SUCCESS == Ret)
    {
        memcpy(stKey.pValue, &(pstDispParam->u32HuePlus), stKey.u32ValueSize);
    }
    Ret = HI_DB_GetKeyByName(&stTable, MCE_BASE_KEYNAME_SATU, &stKey);
    if(HI_SUCCESS == Ret)
    {
        memcpy(stKey.pValue, &(pstDispParam->u32Saturation), stKey.u32ValueSize);
    }
    Ret = HI_DB_GetKeyByName(&stTable, MCE_BASE_KEYNAME_CONTR, &stKey);
    if(HI_SUCCESS == Ret)
    {
        memcpy(stKey.pValue, &(pstDispParam->u32Contrast), stKey.u32ValueSize);
    }  
    Ret = HI_DB_GetKeyByName(&stTable, MCE_BASE_KEYNAME_BRIG, &stKey);
    if(HI_SUCCESS == Ret)
    {
        memcpy(stKey.pValue, &(pstDispParam->u32Brightness), stKey.u32ValueSize);
    }    
    Ret = HI_DB_GetKeyByName(&stTable, MCE_BASE_KEYNAME_BGCOLOR, &stKey);
    if(HI_SUCCESS == Ret)
    {
        memcpy(stKey.pValue, &(pstDispParam->stBgColor), stKey.u32ValueSize);
    }
    Ret = HI_DB_GetKeyByName(&stTable, MCE_BASE_KEYNAME_TIMING, &stKey);
    if(HI_SUCCESS == Ret)
    {
        memcpy(stKey.pValue, &(pstDispParam->stDispTiming), stKey.u32ValueSize);
    }

	Ret = HI_DB_GetKeyByName(&stTable, MCE_BASE_KEYNAME_ASPECT, &stKey);
    if(HI_SUCCESS == Ret)
    {
        memcpy(stKey.pValue, &(pstDispParam->stAspectRatio), stKey.u32ValueSize);
    }

    return HI_SUCCESS;
}

HI_S32 PDM_UpdateLogoParam(HI_UNF_MCE_LOGO_PARAM_S *pstLogoParam,HI_U8 *pBuf)
{
    HI_S32              Ret;
    HI_DB_S             stLogoDB;
    HI_DB_TABLE_S       stTable;
    HI_DB_KEY_S         stKey;
    
    Ret = HI_DB_GetDBFromMem(pBuf, &stLogoDB);
    if(HI_SUCCESS != Ret)
    {
        HI_ERR_PDM("ERR: HI_DB_GetDBFromMem!");
        return Ret;
    } 

    Ret = HI_DB_GetTableByName(&stLogoDB, MCE_LOGO_TABLENAME, &stTable);
    if(HI_SUCCESS != Ret)
    {
        HI_ERR_PDM("ERR: HI_DB_GetTableByName!");
        return Ret;
    }   

    Ret = HI_DB_GetKeyByName(&stTable, MCE_LOGO_KEYNAME_FLAG, &stKey);
    if(HI_SUCCESS == Ret)
    {
        memcpy(stKey.pValue, &(pstLogoParam->bLogoEnable), stKey.u32ValueSize);
    }
    
    Ret = HI_DB_GetKeyByName(&stTable, MCE_LOGO_KEYNAME_CONTLEN, &stKey);
    if(HI_SUCCESS == Ret)
    {
        memcpy(stKey.pValue, &(pstLogoParam->u32LogoLen), stKey.u32ValueSize);
    }

    return HI_SUCCESS;
}

HI_S32 PDM_UpdatePlayParam(HI_UNF_MCE_PLAY_PARAM_S *pstPlayParam,HI_U8 *pBuf)
{
    HI_S32              Ret;
    HI_DB_S             stPlayDB;
    HI_DB_TABLE_S       stTable;
    HI_DB_KEY_S         stKey;
    HI_MCE_PARAM_S      stMceParam;
    
    Ret = HI_DB_GetDBFromMem(pBuf, &stPlayDB);
    if(HI_SUCCESS != Ret)
    {
        HI_ERR_PDM("ERR: HI_DB_GetDBFromMem!");
        return Ret;
    } 

    Ret = HI_DB_GetTableByName(&stPlayDB, MCE_PLAY_TABLENAME, &stTable);
    if(HI_SUCCESS != Ret)
    {
        HI_ERR_PDM("ERR: HI_DB_GetTableByName!");
        return Ret;
    } 
    
    stMceParam.u32CheckFlag = pstPlayParam->bPlayEnable;
    if(HI_UNF_MCE_TYPE_PLAY_DVB == pstPlayParam->enPlayType)
    {
        stMceParam.u32PlayDataLen = 0;
    }
    else if(HI_UNF_MCE_TYPE_PLAY_TSFILE == pstPlayParam->enPlayType)
    {
        stMceParam.u32PlayDataLen = pstPlayParam->unParam.stTsParam.u32ContentLen;
    }
	else if(HI_UNF_MCE_TYPE_PLAY_ANI == pstPlayParam->enPlayType)
    {
        stMceParam.u32PlayDataLen = pstPlayParam->unParam.stAniParam.u32ContentLen;
    }
	else
	{
        stMceParam.u32PlayDataLen = 0;
    }

    stMceParam.stPlayParam = *pstPlayParam;

    Ret = HI_DB_GetKeyByName(&stTable, MCE_PLAY_KEYNAME_FLAG, &stKey);
    if(HI_SUCCESS == Ret)
    {
        memcpy(stKey.pValue, &(stMceParam.u32CheckFlag), stKey.u32ValueSize);
    }
    Ret = HI_DB_GetKeyByName(&stTable, MCE_PLAY_KEYNAME_DATALEN, &stKey);
    if(HI_SUCCESS == Ret)
    {
        memcpy(stKey.pValue, &(stMceParam.u32PlayDataLen), stKey.u32ValueSize);
    }    
    Ret = HI_DB_GetKeyByName(&stTable, MCE_PLAY_KEYNAME_PARAM, &stKey);
    if(HI_SUCCESS == Ret)
    {
        memcpy(stKey.pValue, &(stMceParam.stPlayParam), stKey.u32ValueSize);
    }  

    return HI_SUCCESS;
}

HI_VOID PDM_GetMaxScreenSize(HI_UNF_ENC_FMT_E enFmt, HI_U32 *pMaxW, HI_U32 *pMaxH)
{
    switch(enFmt)
    {
        case HI_UNF_ENC_FMT_1080P_60:
        case HI_UNF_ENC_FMT_1080P_50:
        case HI_UNF_ENC_FMT_1080i_60:
        case HI_UNF_ENC_FMT_1080i_50:
        {
            *pMaxW = 1920;
            *pMaxH = 1080;
            break;
        }
        case HI_UNF_ENC_FMT_720P_60:
        case HI_UNF_ENC_FMT_720P_50:
        {
            *pMaxW = 1280;
            *pMaxH = 720;
            break;
        }
        case HI_UNF_ENC_FMT_576P_50:
        case HI_UNF_ENC_FMT_PAL:
        {
            *pMaxW = 720;
            *pMaxH = 576;
            break;        
        }
        case HI_UNF_ENC_FMT_480P_60:
        case HI_UNF_ENC_FMT_NTSC:
        {
            *pMaxW = 720;
            *pMaxH = 480; 
            break;         
        }
        /* bellow are vga display formats */
        case HI_UNF_ENC_FMT_861D_640X480_60:
        {
            *pMaxW = 640;
            *pMaxH = 480; 
            break;
        }
        case HI_UNF_ENC_FMT_VESA_800X600_60:
        {
            *pMaxW = 800;
            *pMaxH = 600; 
            break;
        }
        case HI_UNF_ENC_FMT_VESA_1024X768_60:
        {
            *pMaxW = 1024;
            *pMaxH = 768; 
            break;
        }
        case HI_UNF_ENC_FMT_VESA_1280X720_60:
        {
            *pMaxW = 1280;
            *pMaxH = 720; 
            break;
        }
        case HI_UNF_ENC_FMT_VESA_1280X800_60:
        {
            *pMaxW = 1280;
            *pMaxH = 800; 
            break;
        }
        case HI_UNF_ENC_FMT_VESA_1280X1024_60:
        {
            *pMaxW = 1280;
            *pMaxH = 1024; 
            break;
        }
        case HI_UNF_ENC_FMT_VESA_1360X768_60:
        {
            *pMaxW = 1360;
            *pMaxH = 768; 
            break;
        }
        case HI_UNF_ENC_FMT_VESA_1366X768_60:
        {
            *pMaxW = 1366;
            *pMaxH = 768;  
            break;
        }
        case HI_UNF_ENC_FMT_VESA_1400X1050_60:
        {
            *pMaxW = 1400;
            *pMaxH = 1050; 
            break;
        }
        case HI_UNF_ENC_FMT_VESA_1440X900_60:
        {
            *pMaxW = 1440;
            *pMaxH = 900; 
            break;
        }
        case HI_UNF_ENC_FMT_VESA_1440X900_60_RB:
        {
            *pMaxW = 1440;
            *pMaxH = 900; 
            break;
        }
        case HI_UNF_ENC_FMT_VESA_1600X900_60_RB:
        {
            *pMaxW = 1600;
            *pMaxH = 900; 
            break;
        }
        case HI_UNF_ENC_FMT_VESA_1600X1200_60:
        {
            *pMaxW = 1600;
            *pMaxH = 1200;  
            break;
        }
        case HI_UNF_ENC_FMT_VESA_1680X1050_60:
        {
            *pMaxW = 1680;
            *pMaxH = 1050; 
            break;
        } 
        
        case HI_UNF_ENC_FMT_VESA_1920X1080_60:
        {
            *pMaxW = 1920;
            *pMaxH = 1080; 
            break;
        }
        case HI_UNF_ENC_FMT_VESA_1920X1200_60:
        {
            *pMaxW = 1920;
            *pMaxH = 1200; 
            break;
        }
        case HI_UNF_ENC_FMT_VESA_2048X1152_60:
        {
            *pMaxW = 2048;
            *pMaxH = 1152;      
            break;
        }
        default:
        {
            *pMaxW = 1920;
            *pMaxH = 1080; 
            break;
        }
    }

    return;    
}

HI_S32 PDM_DispParamCheck(HI_UNF_PDM_DISP_PARAM_S *pDispParam)
{
    HI_U32  MaxScreenW, MaxScreenH;

    if(HI_NULL == pDispParam)
    {
        HI_ERR_PDM("ERR: param is null!");
        return HI_ERR_PDM_PTR_NULL;
    }
    
    if (pDispParam->enFormat > HI_UNF_ENC_FMT_BUTT)
    {
        HI_ERR_PDM("pDispParam->enFormat is invalid!"); 
        return HI_ERR_PDM_PARAM_INVALID;
    }

    if (pDispParam->u32Brightness > 100)
    {
        HI_ERR_PDM("pDispParam->u32Brightness is invalid!"); 
        return HI_ERR_PDM_PARAM_INVALID;        
    }
    
    if (pDispParam->u32Contrast > 100)
    {
        HI_ERR_PDM("pDispParam->u32Contrast is invalid!"); 
        return HI_ERR_PDM_PARAM_INVALID;        
    }
    if (pDispParam->u32Saturation > 100)
    {
        HI_ERR_PDM("pDispParam->u32Saturation is invalid!"); 
        return HI_ERR_PDM_PARAM_INVALID;        
    }
    if (pDispParam->u32HuePlus > 100)
    {
        HI_ERR_PDM("pDispParam->u32HuePlus is invalid!"); 
        return HI_ERR_PDM_PARAM_INVALID;        
    }

    if ((pDispParam->u32VirtScreenWidth > 3840)
        || (pDispParam->u32VirtScreenWidth < 480)
        || (pDispParam->u32VirtScreenHeight > 3840)
        || (pDispParam->u32VirtScreenHeight < 480)
        )
    {
        HI_ERR_PDM("u32VirtScreenWidth or u32VirtScreenHeight is invalid!"); 
        return HI_ERR_PDM_PARAM_INVALID;        
    }

    if ((pDispParam->stDispOffset.u32Left > 200)
        || (pDispParam->stDispOffset.u32Top > 200)
        || (pDispParam->stDispOffset.u32Right > 200)
        || (pDispParam->stDispOffset.u32Bottom > 200)
        )
    {
        HI_ERR_PDM("stDispOffset is invalid!"); 
        return HI_ERR_PDM_PARAM_INVALID;        
    }

    return HI_SUCCESS;

}

static HI_U32 str_to_flashsize(HI_CHAR *strsize)
{
    char *p, *q;
    char tmp[32];
    int size;
    
    p = strsize;
    q = strsize + strlen(strsize) - 1;

    if (strlen(strsize) <= 1)
    {
        return 0;
    }

	if (sizeof(tmp) < strlen(strsize))
	{
		return 0;
	}

    memset(tmp, 0x0, sizeof(tmp));
    
    memcpy(tmp, p, strlen(strsize) - 1);

    size = strtoul(tmp, HI_NULL, 10);
    
    if (*q == 'K' || *q == 'k')
    {
        size = size * 1024;
    }
    else if (*q == 'M' || *q == 'm')
    {
        size = size * 1024 * 1024;
    }
    else
    {
        size = 0;
    }

    return size;
}
 
HI_S32 PDM_GetFlashInfo(HI_CHAR *DataName, PDM_FLASH_INFO_S *pstInfo)
{
    HI_S32          Ret;
    HI_CHAR         Bootargs[512];
    FILE            *pf = HI_NULL;
    HI_CHAR         *p, *q;
    HI_CHAR         tmp[32];
    HI_S32          ReadLen = 0;

    pf = fopen("/proc/cmdline", "r");
    if (HI_NULL == pf)
    {
        return HI_FAILURE;
    }

    memset(Bootargs, 0x0, 512);
    
    ReadLen = fread(Bootargs, sizeof(HI_CHAR), 512, pf);
    if (ReadLen <=0)
    {
        fclose(pf);
        pf = HI_NULL;    
        return HI_FAILURE;
    }

    fclose(pf);
    pf = HI_NULL;

    Bootargs[511] = '\0';

    HI_OSAL_Snprintf(tmp, sizeof(tmp), "(%s)", DataName);

    p = strstr(Bootargs, tmp);
    if (0 != p)
    {
        for (q = p; q > Bootargs; q--)
        {
            if (*q == ',' || *q == ':')
            {
                break;
            }
        }

        memset(tmp, 0, sizeof(tmp));

		if ((HI_U32)(p-q-1) >= sizeof(tmp))
		{
			return HI_FAILURE;
		}
		
        memcpy(tmp, q + 1, p-q-1);
		tmp[sizeof(tmp)-1] = '\0';
        
        memset(pstInfo->Name, 0x0, sizeof(pstInfo->Name));
        
        memcpy(pstInfo->Name, DataName, strlen(DataName));
        pstInfo->u32Size = str_to_flashsize(tmp);
        pstInfo->u32Offset = 0;
		pstInfo->bShared = HI_FALSE;
        
        return HI_SUCCESS;
    }

    HI_OSAL_Snprintf(tmp, sizeof(tmp), " %s", DataName);

    p = strstr(Bootargs, tmp);
    if (0 == p)
    {
        return HI_FAILURE;
    }

    p = strstr(p, "=");
    if (0 == p)
    {
        return HI_FAILURE;
    }    

    p++;
    
    q = strstr(p, ",");
    if (0 == q)
    {
        return HI_FAILURE;
    }    
    
    memset(pstInfo->Name, 0x0, sizeof(pstInfo->Name));   
    memcpy(pstInfo->Name, p, q-p);

    p = q + 1;
    q = strstr(p, ",");
    if (0 == q)
    {
        return HI_FAILURE;
    }

    memset(tmp, 0, sizeof(tmp));
    memcpy(tmp, p, q-p);

    pstInfo->u32Offset = strtoul(tmp, HI_NULL, 16);
    
    p = q + 1;

    q = strstr(p, " ");
    if (0 == q)
    {
        q = Bootargs + strlen(Bootargs);
    }
    
    memset(tmp, 0, sizeof(tmp));
    memcpy(tmp, p, q-p);
    
    pstInfo->u32Size = strtoul(tmp, HI_NULL, 16);
	pstInfo->bShared = HI_TRUE;

    return HI_SUCCESS;
}

HI_S32  HI_UNF_PDM_GetBaseParam(HI_UNF_PDM_BASEPARAM_TYPE_E enType, HI_VOID *pData)
{
    HI_S32                      Ret;
    HI_HANDLE                   hFlash;
    HI_Flash_InterInfo_S        FlashInfo;
    HI_U8                       *pBuf = HI_NULL;
    HI_S32                      Size;
    PDM_FLASH_INFO_S            BaseFlashInfo;
	HI_U32                      u32ReadLen;
    
    if ((enType >= HI_UNF_PDM_BASEPARAM_BUTT) || (pData == HI_NULL))
    {
        HI_ERR_PDM("ERR: param is invalid!");
        return HI_ERR_PDM_PARAM_INVALID;
    }
    
    Ret = PDM_GetFlashInfo(PDM_BASE_DEF_NAME, &BaseFlashInfo);
    if (HI_SUCCESS != Ret)
    {
        return Ret;
    }
    
    hFlash = HI_Flash_OpenByName(BaseFlashInfo.Name);
    if(HI_INVALID_HANDLE == hFlash)
    {
        HI_ERR_PDM("ERR: HI_Flash_Open!");
        Ret = HI_ERR_PDM_MTD_OPEN;
        goto ERR0;
    }

	Ret = HI_Flash_GetInfo(hFlash, &FlashInfo);
	if (HI_SUCCESS != Ret)
	{
		HI_ERR_PDM("ERR: HI_Flash_Open!");
        Ret = HI_ERR_PDM_MTD_GETINFO;
        goto ERR1;
	}

	u32ReadLen = FlashInfo.PageSize > MCE_DEF_BASEPARAM_SIZE ? FlashInfo.PageSize : MCE_DEF_BASEPARAM_SIZE;
    pBuf = (HI_U8 *)HI_MALLOC(HI_ID_FASTPLAY, u32ReadLen);
    if (HI_NULL == pBuf)
    {
        HI_ERR_PDM("malloc buf err!");
        Ret = HI_ERR_PDM_MEM_ALLC;
        goto ERR1;
    }

    memset(pBuf, 0x0, u32ReadLen);

    Size = HI_Flash_Read(hFlash, (HI_U64)BaseFlashInfo.u32Offset, pBuf, u32ReadLen, HI_FLASH_RW_FLAG_RAW);
    if(Size <= 0)
    {
        HI_ERR_PDM("ERR: HI_Flash_Read!\n");
        Ret = HI_ERR_PDM_MTD_READ;
        goto ERR2;
    } 

    if (HI_UNF_PDM_BASEPARAM_DISP0 == enType)
    {
        Ret = PDM_GetDispParam(pBuf, HI_UNF_DISPLAY0, (HI_UNF_PDM_DISP_PARAM_S *)pData);
    }
    else if (HI_UNF_PDM_BASEPARAM_DISP1 == enType)
    {
        Ret = PDM_GetDispParam(pBuf, HI_UNF_DISPLAY1, (HI_UNF_PDM_DISP_PARAM_S *)pData);
    }
    else
    {
        HI_ERR_PDM("this parameter type is not support!");
        goto ERR2;
    }
    
    if (HI_SUCCESS != Ret)
    {
        HI_ERR_PDM("Get base param err!\n");
        Ret = HI_ERR_PDM_INVALID_OPT;
        goto ERR2;
    }
    
ERR2:
    HI_FREE(HI_ID_FASTPLAY, pBuf);
ERR1:
    HI_Flash_Close(hFlash);
ERR0:    
    return Ret;

}

HI_S32  HI_UNF_PDM_UpdateBaseParam(HI_UNF_PDM_BASEPARAM_TYPE_E enType, HI_VOID *pData)
{
    HI_S32                      Ret;
    HI_HANDLE                   hFlash;
    HI_Flash_InterInfo_S        FlashInfo;
    HI_U8                       *pBuf = HI_NULL;    
    HI_DB_S                     BaseDB;
    HI_DB_TABLE_S               stTable;
    HI_S32                      Size;
    PDM_FLASH_INFO_S            BaseFlashInfo;
    HI_U32                      StartPos, EndPos;

    if ((enType >= HI_UNF_PDM_BASEPARAM_BUTT) || (pData == HI_NULL))
    {
        HI_ERR_PDM("ERR: param is invalid!");
        return HI_ERR_PDM_PARAM_INVALID;
    }

    Ret = PDM_GetFlashInfo(PDM_BASE_DEF_NAME, &BaseFlashInfo);
    if (HI_SUCCESS != Ret)
    {
        return Ret;
    }
    
    hFlash = HI_Flash_OpenByName(BaseFlashInfo.Name);
    if(HI_INVALID_HANDLE == hFlash)
    {
        HI_ERR_PDM("ERR: HI_Flash_Open!");
        Ret = HI_ERR_PDM_MTD_OPEN;
        goto ERR0;
    }

    Ret = HI_Flash_GetInfo(hFlash, &FlashInfo);
    if(HI_SUCCESS != Ret)
    {
        HI_ERR_PDM("ERR: HI_Flash_GetInfo!");
        Ret = HI_ERR_PDM_MTD_GETINFO;
        goto ERR1;
    }

	if (!BaseFlashInfo.bShared)
	{
		StartPos = 0;
		EndPos = FlashInfo.PageSize > MCE_DEF_BASEPARAM_SIZE ? FlashInfo.PageSize : MCE_DEF_BASEPARAM_SIZE;
	}
	else
	{
		StartPos = BaseFlashInfo.u32Offset - BaseFlashInfo.u32Offset % FlashInfo.BlockSize;

	    if (0 == (BaseFlashInfo.u32Offset + BaseFlashInfo.u32Size) % FlashInfo.BlockSize)
	    {
	        EndPos = BaseFlashInfo.u32Offset + BaseFlashInfo.u32Size;
	    }
	    else
	    {
	        EndPos = BaseFlashInfo.u32Offset + BaseFlashInfo.u32Size + FlashInfo.BlockSize -
	                 (BaseFlashInfo.u32Offset + BaseFlashInfo.u32Size) % FlashInfo.BlockSize;
	    }
	}

	pBuf = (HI_U8 *)HI_MALLOC(HI_ID_FASTPLAY, (EndPos-StartPos));

    if(HI_NULL == pBuf)
    {
        HI_ERR_PDM("ERR: malloc!");
        Ret = HI_ERR_PDM_MEM_ALLC;
        goto ERR1;    
    }

    Size = HI_Flash_Read(hFlash, StartPos, pBuf, EndPos - StartPos, HI_FLASH_RW_FLAG_RAW);
    if(Size <= 0)
    {
        HI_ERR_PDM("ERR: HI_Flash_Read!");
        Ret = HI_ERR_PDM_MTD_OPEN;
        goto ERR2;
    } 

    if (HI_UNF_PDM_BASEPARAM_DISP0 == enType)
    {
        PDM_DispParamCheck((HI_UNF_PDM_DISP_PARAM_S *)pData);

        PDM_UpdateDispParam(HI_UNF_DISPLAY0, (HI_UNF_PDM_DISP_PARAM_S *)pData, pBuf + BaseFlashInfo.u32Offset % FlashInfo.BlockSize);
    }
    else if (HI_UNF_PDM_BASEPARAM_DISP1 == enType)
    {
        PDM_DispParamCheck((HI_UNF_PDM_DISP_PARAM_S *)pData);

        PDM_UpdateDispParam(HI_UNF_DISPLAY1, (HI_UNF_PDM_DISP_PARAM_S *)pData, pBuf + BaseFlashInfo.u32Offset % FlashInfo.BlockSize);
    }
    else
    {
        HI_ERR_PDM("this param is not support!");
        Ret = HI_ERR_PDM_INVALID_OPT;
        goto ERR2;
    }

    if (HI_FLASH_TYPE_EMMC_0 != FlashInfo.FlashType)
    {
        if (!BaseFlashInfo.bShared)
        {
            Size = HI_Flash_Erase(hFlash, 0, BaseFlashInfo.u32Size);
        }
        else
        {
            Size = HI_Flash_Erase(hFlash, StartPos, EndPos - StartPos);
        }
        
        if(Size <= 0)
        {
            HI_ERR_PDM("ERR: HI_Flash_Erase!");
            Ret = HI_ERR_PDM_MTD_ERASE;
            goto ERR2;    
        }
    }
    
    Size = HI_Flash_Write(hFlash, StartPos, pBuf, EndPos - StartPos, HI_FLASH_RW_FLAG_RAW);
    if(Size <= 0)
    {
        HI_ERR_PDM("ERR: HI_Flash_Write!");
        Ret = HI_ERR_PDM_MTD_WRITE;
        goto ERR2;
    } 
    
ERR2:
    HI_FREE(HI_ID_FASTPLAY, pBuf);
ERR1:
    HI_Flash_Close(hFlash);
ERR0:    
    return Ret;
    
}


HI_S32  HI_UNF_PDM_GetLogoParam(HI_UNF_MCE_LOGO_PARAM_S *pstLogoParam)
{
    HI_S32                      Ret;
    HI_HANDLE                   hFlash;
    HI_U8                       *pBuf = HI_NULL;
    HI_S32                      Size;
    PDM_FLASH_INFO_S            LogoFlashInfo;
	HI_Flash_InterInfo_S 		FlashInfo;
	HI_U32						u32ReadLenth = 0;

    if(HI_NULL == pstLogoParam)
    {
        HI_ERR_PDM("ERR: param is invalid!");
        return HI_ERR_PDM_PTR_NULL;
    }

    Ret = PDM_GetFlashInfo(PDM_LOGO_DEF_NAME, &LogoFlashInfo);
    if (HI_SUCCESS != Ret)
    {
        return Ret;
    }    

    hFlash = HI_Flash_OpenByName(LogoFlashInfo.Name);
    if(HI_INVALID_HANDLE == hFlash)
    {
        HI_ERR_PDM("ERR: HI_Flash_Open!");
        Ret = HI_ERR_PDM_MTD_OPEN;
        goto ERR0;
    }

	Ret = HI_Flash_GetInfo(hFlash, &FlashInfo);
	if (HI_SUCCESS != Ret)
    {
        goto ERR1;
    }

	u32ReadLenth = FlashInfo.PageSize > MCE_DEF_LOGOPARAM_SIZE ? FlashInfo.PageSize : MCE_DEF_LOGOPARAM_SIZE;

    /*only need malloc the param size*/
    pBuf = (HI_U8 *)HI_MALLOC(HI_ID_FASTPLAY, u32ReadLenth);
    if(HI_NULL == pBuf)
    {
        HI_ERR_PDM("ERR: malloc!");
        Ret = HI_ERR_PDM_MEM_ALLC;
        goto ERR1;    
    }
    
    Size = HI_Flash_Read(hFlash, (HI_U64)LogoFlashInfo.u32Offset, pBuf, u32ReadLenth, HI_FLASH_RW_FLAG_RAW);
    if(Size <= 0)
    {
        HI_ERR_PDM("ERR: HI_Flash_Read!");
        Ret = HI_ERR_PDM_MTD_READ;
        goto ERR2;
    } 

    Ret = PDM_GetLogoParam(pBuf, pstLogoParam);
    if (HI_SUCCESS != Ret)
    {
        HI_ERR_PDM("ERR: get logo param!");
        Ret = HI_ERR_PDM_INVALID_OPT;
        goto ERR2;
    }

ERR2:
    HI_FREE(HI_ID_FASTPLAY, pBuf);
ERR1:
    HI_Flash_Close(hFlash);
ERR0:    
    return Ret;

}

HI_S32  HI_UNF_PDM_UpdateLogoParam(HI_UNF_MCE_LOGO_PARAM_S *pstLogoParam)
{
    HI_S32                      Ret;
    HI_HANDLE                   hFlash;
    HI_Flash_InterInfo_S        FlashInfo;
    HI_U8                       *pBuf = HI_NULL;    
    HI_S32                      Size;
    PDM_FLASH_INFO_S            LogoFlashInfo;
    HI_U32                      StartPos, EndPos;
	HI_U32						u32ReadLenth = 0;
    
    if(HI_NULL == pstLogoParam)
    {
        HI_ERR_PDM("ERR: param is invalid!");
        return HI_ERR_PDM_PTR_NULL;
    }

    Ret = PDM_GetFlashInfo(PDM_LOGO_DEF_NAME, &LogoFlashInfo);
    if (HI_SUCCESS != Ret)
    {
        return Ret;
    }

    hFlash = HI_Flash_OpenByName(LogoFlashInfo.Name);
    if(HI_INVALID_HANDLE == hFlash)
    {
        HI_ERR_PDM("ERR: HI_Flash_Open!");
        Ret = HI_ERR_PDM_MTD_OPEN;
        goto ERR0;
    }

    Ret = HI_Flash_GetInfo(hFlash, &FlashInfo);
    if(HI_SUCCESS != Ret)
    {
        HI_ERR_PDM("ERR: HI_Flash_GetInfo!");
        Ret = HI_ERR_PDM_MTD_GETINFO;
        goto ERR1;
    }

	u32ReadLenth = FlashInfo.PageSize > MCE_DEF_LOGOPARAM_SIZE ? FlashInfo.PageSize : MCE_DEF_LOGOPARAM_SIZE;

    StartPos = LogoFlashInfo.u32Offset - LogoFlashInfo.u32Offset % FlashInfo.BlockSize;

    if (0 == (LogoFlashInfo.u32Offset + u32ReadLenth) % FlashInfo.BlockSize)
    {
        EndPos = LogoFlashInfo.u32Offset + u32ReadLenth;
    }
    else
    {
        EndPos = LogoFlashInfo.u32Offset + u32ReadLenth + FlashInfo.BlockSize -
                 (LogoFlashInfo.u32Offset + u32ReadLenth) % FlashInfo.BlockSize;
    }

    pBuf = (HI_U8 *)HI_MALLOC(HI_ID_FASTPLAY, EndPos - StartPos);
    if(HI_NULL == pBuf)
    {
        HI_ERR_PDM("ERR: malloc!");
        Ret = HI_ERR_PDM_MEM_ALLC;
        goto ERR1;    
    }

    Size = HI_Flash_Read(hFlash, StartPos, pBuf, EndPos - StartPos, HI_FLASH_RW_FLAG_RAW);
    if(Size <= 0)
    {
        HI_ERR_PDM("ERR: HI_Flash_Read!");
        Ret = HI_ERR_PDM_MTD_READ;
        goto ERR2;
    } 

    Ret = PDM_UpdateLogoParam(pstLogoParam, pBuf + LogoFlashInfo.u32Offset % FlashInfo.BlockSize);
    if (HI_SUCCESS != Ret)
    {
        HI_ERR_PDM("ERR: update logo param!");
        Ret = HI_ERR_PDM_INVALID_OPT;
        goto ERR2;        
    }
    
    /* need erase by block */
    if (HI_FLASH_TYPE_EMMC_0 != FlashInfo.FlashType)
    {
        Size = HI_Flash_Erase(hFlash, StartPos, EndPos - StartPos);
        if(Size <= 0)
        {
            HI_ERR_PDM("ERR: HI_Flash_Erase!");
            Ret = HI_ERR_PDM_MTD_ERASE;
            goto ERR2;    
        }
    }
    
    Size = HI_Flash_Write(hFlash, StartPos, pBuf, EndPos - StartPos, HI_FLASH_RW_FLAG_RAW);
    if(Size <= 0)
    {
        HI_ERR_PDM("ERR: HI_Flash_Write!");
        Ret = HI_ERR_PDM_MTD_WRITE;
        goto ERR2;
    }     

ERR2:
    HI_FREE(HI_ID_FASTPLAY, pBuf);
ERR1:
    HI_Flash_Close(hFlash);
ERR0:    
    return Ret;

}

HI_S32  HI_UNF_PDM_GetLogoContent(HI_U8 *pu8Content, HI_U32 u32Size)
{
    HI_S32                      Ret;
    HI_HANDLE                   hFlash;
    HI_S32                      Size;
    PDM_FLASH_INFO_S            LogoFlashInfo;
	HI_U8                       *pBuf = HI_NULL;

    if(HI_NULL == pu8Content)
    {
        HI_ERR_PDM("ERR: param is invalid!");
        return HI_ERR_PDM_PTR_NULL;
    }

    Ret = PDM_GetFlashInfo(PDM_LOGO_DEF_NAME, &LogoFlashInfo);
    if (HI_SUCCESS != Ret)
    {
        return Ret;
    }

    hFlash = HI_Flash_OpenByName(LogoFlashInfo.Name);
    if(HI_INVALID_HANDLE == hFlash)
    {
        HI_ERR_PDM("ERR: HI_Flash_Open!");
        Ret = HI_ERR_PDM_MTD_OPEN;
        goto ERR0;
    }

	pBuf = HI_MALLOC(HI_ID_FASTPLAY, u32Size + MCE_DEF_LOGOPARAM_SIZE);
	if(HI_NULL == pBuf)
    {
        HI_ERR_PDM("ERR: malloc!");
        Ret = HI_ERR_PDM_MEM_ALLC;
        goto ERR1;    
    }

    Size = HI_Flash_Read(hFlash, (LogoFlashInfo.u32Offset), pBuf, u32Size + MCE_DEF_LOGOPARAM_SIZE, HI_FLASH_RW_FLAG_RAW);
    if(Size <= 0)
    {
        HI_ERR_PDM("ERR: HI_Flash_Read!");
		HI_FREE(HI_ID_FASTPLAY, pBuf);
        Ret = HI_ERR_PDM_MTD_READ;
        goto ERR1;
    } 

	memcpy(pu8Content, pBuf+MCE_DEF_LOGOPARAM_SIZE, u32Size);
	HI_FREE(HI_ID_FASTPLAY, pBuf);

ERR1:
    HI_Flash_Close(hFlash);
ERR0:    
    return Ret;
}

HI_S32  HI_UNF_PDM_UpdateLogoContent(HI_U8 *pu8Content, HI_U32 u32Size)
{
    HI_S32                      Ret;
    HI_HANDLE                   hFlash;
    HI_Flash_InterInfo_S        FlashInfo;
    HI_S32                      Size;
    PDM_FLASH_INFO_S            LogoFlashInfo;
    HI_U8                       *pBuf = HI_NULL; 
    HI_U8                       *pLogoDataPos = HI_NULL;
    HI_U32                      StartPos, EndPos;

    if(HI_NULL == pu8Content)
    {
        HI_ERR_PDM("ERR: param is invalid!");
        return HI_ERR_PDM_PTR_NULL;
    }
    
    Ret = PDM_GetFlashInfo(PDM_LOGO_DEF_NAME, &LogoFlashInfo);
    if (HI_SUCCESS != Ret)
    {
        return Ret;
    }

    hFlash = HI_Flash_OpenByName(LogoFlashInfo.Name);
    if(HI_INVALID_HANDLE == hFlash)
    {
        HI_ERR_PDM("ERR: HI_Flash_Open!");
        Ret = HI_ERR_PDM_MTD_OPEN;
        goto ERR0;
    }

    Ret = HI_Flash_GetInfo(hFlash, &FlashInfo);
    if(HI_SUCCESS != Ret)
    {
        HI_ERR_PDM("ERR: HI_Flash_GetInfo!");
        Ret = HI_ERR_PDM_MTD_GETINFO;
        goto ERR1;
    }

    if(u32Size > LogoFlashInfo.u32Size - MCE_DEF_LOGOPARAM_SIZE)
    {
        HI_ERR_PDM("ERR: size is too large, flash:%#x, need: %#x!", 
            LogoFlashInfo.u32Size - MCE_DEF_LOGOPARAM_SIZE, u32Size);

        Ret = HI_ERR_PDM_PARAM_INVALID;
        
        goto ERR1;    
    }

/*
    FILE    *fpDst = HI_NULL;
    fpDst = fopen("/mnt/logo.img", "w+");
    fwrite(pContent, sizeof(HI_CHAR), u32Size, fpDst);
    fclose(fpDst);
*/

    StartPos = LogoFlashInfo.u32Offset - LogoFlashInfo.u32Offset % FlashInfo.BlockSize;

    if (0 == (LogoFlashInfo.u32Offset + LogoFlashInfo.u32Size) % FlashInfo.BlockSize)
    {
        EndPos = LogoFlashInfo.u32Offset + LogoFlashInfo.u32Size;
    }
    else
    {
        EndPos = LogoFlashInfo.u32Offset + LogoFlashInfo.u32Size + FlashInfo.BlockSize -
                 (LogoFlashInfo.u32Offset + LogoFlashInfo.u32Size) % FlashInfo.BlockSize;
    }

    pBuf = (HI_U8 *)HI_MALLOC(HI_ID_FASTPLAY, (EndPos-StartPos));
    if (HI_NULL == pBuf)
    {
        HI_ERR_PDM("ERR: malloc!");
        Ret = HI_ERR_PDM_MEM_ALLC;
        goto ERR1;
    }
    
    memset(pBuf, 0x0, EndPos-StartPos);

    /*read the logo param and data in flash, read by block*/
    Size = HI_Flash_Read(hFlash, StartPos, pBuf, EndPos-StartPos, HI_FLASH_RW_FLAG_RAW);
    if (Size <= 0)
    {
        HI_ERR_PDM("ERR: HI_Flash_Read!");
        Ret = HI_ERR_PDM_MTD_READ;
        goto ERR2;
    } 

    /*modify the logo data*/
    pLogoDataPos = pBuf + LogoFlashInfo.u32Offset % FlashInfo.BlockSize + MCE_DEF_LOGOPARAM_SIZE;
    memcpy(pLogoDataPos, pu8Content, u32Size);

    /*erase logo param and data, erase by block*/
    if (HI_FLASH_TYPE_EMMC_0 != FlashInfo.FlashType)
    {
        Size = HI_Flash_Erase(hFlash, StartPos, EndPos - StartPos);
        if(Size <= 0)
        {
            HI_ERR_PDM("ERR: HI_Flash_Erase, Size = %u\n!", Size);
            Ret = HI_ERR_PDM_MTD_ERASE;
            goto ERR2;    
        }
    }

    /* write the new data, write by block */
    Size = HI_Flash_Write(hFlash, StartPos, pBuf, EndPos - StartPos, HI_FLASH_RW_FLAG_RAW);
    if(Size <= 0)
    {
        HI_ERR_PDM("ERR: HI_Flash_Write!");
        Ret = HI_ERR_PDM_MTD_WRITE;
        goto ERR2;
    } 
    
ERR2:
    HI_FREE(HI_ID_FASTPLAY, pBuf);
    pBuf = HI_NULL;
ERR1:
    HI_Flash_Close(hFlash);
ERR0:    
    return Ret;

}

HI_S32  HI_UNF_PDM_GetPlayParam(HI_UNF_MCE_PLAY_PARAM_S *pstPlayParam)
{
    HI_S32                      Ret;
    HI_HANDLE                   hFlash;
    HI_U8                       *pBuf = HI_NULL;
    HI_S32                      Size;
    PDM_FLASH_INFO_S            PlayFlashInfo;

    if(HI_NULL == pstPlayParam)
    {
        HI_ERR_PDM("ERR: param is invalid!");
        return HI_ERR_PDM_PTR_NULL;
    }

    Ret = PDM_GetFlashInfo(PDM_FASTPLAY_DEF_NAME, &PlayFlashInfo);
    if (HI_SUCCESS != Ret)
    {
        return Ret;
    }

    hFlash = HI_Flash_OpenByName(PlayFlashInfo.Name);
    if(HI_INVALID_HANDLE == hFlash)
    {
        HI_ERR_PDM("ERR: HI_Flash_Open!");
        Ret = HI_ERR_PDM_MTD_OPEN;
        goto ERR0;
    }

    /*only need malloc the param size*/
    pBuf = (HI_U8 *)HI_MALLOC(HI_ID_FASTPLAY, MCE_DEF_PLAYPARAM_SIZE);
    if(HI_NULL == pBuf)
    {
        HI_ERR_PDM("ERR: malloc!");
        Ret = HI_ERR_PDM_MEM_ALLC;
        goto ERR1;    
    }

    Size = HI_Flash_Read(hFlash, PlayFlashInfo.u32Offset, pBuf, MCE_DEF_PLAYPARAM_SIZE, HI_FLASH_RW_FLAG_RAW);
    if(Size <= 0)
    {
        HI_ERR_PDM("ERR: HI_Flash_Read!");
        Ret = HI_ERR_PDM_MTD_READ;
        goto ERR2;
    } 

    Ret = PDM_GetPlayParam(pBuf, pstPlayParam);
    if (HI_SUCCESS != Ret)
    {
        HI_ERR_PDM("ERR: MCE_GetPlayParam!");
        Ret = HI_ERR_PDM_INVALID_OPT;
        goto ERR2;
    }

ERR2:
    HI_FREE(HI_ID_FASTPLAY, pBuf);
ERR1:
    HI_Flash_Close(hFlash);
ERR0:    
    return Ret;
}

HI_S32  HI_UNF_PDM_UpdatePlayParam(HI_UNF_MCE_PLAY_PARAM_S *pstPlayParam)
{
    HI_S32                      Ret;
    HI_HANDLE                   hFlash;
    HI_Flash_InterInfo_S        FlashInfo;
    HI_U8                       *pBuf = HI_NULL;    
    HI_S32                      Size;
    PDM_FLASH_INFO_S            PlayFlashInfo;
    HI_U32                      StartPos, EndPos;

    if(HI_NULL == pstPlayParam)
    {
        HI_ERR_PDM("ERR: param is invalid!");
        return HI_ERR_PDM_PTR_NULL;
    }

    Ret = PDM_GetFlashInfo(PDM_FASTPLAY_DEF_NAME, &PlayFlashInfo);
    if (HI_SUCCESS != Ret)
    {
        return Ret;
    }

    hFlash = HI_Flash_OpenByName(PlayFlashInfo.Name);
    if(HI_INVALID_HANDLE == hFlash)
    {
        HI_ERR_PDM("ERR: HI_Flash_Open!");
        Ret = HI_ERR_PDM_MTD_OPEN;
        goto ERR0;
    }

    Ret = HI_Flash_GetInfo(hFlash, &FlashInfo);
    if(HI_SUCCESS != Ret)
    {
        HI_ERR_PDM("ERR: HI_Flash_GetInfo!");
        Ret = HI_ERR_PDM_MTD_GETINFO;
        goto ERR1;
    }

    StartPos = PlayFlashInfo.u32Offset - PlayFlashInfo.u32Offset % FlashInfo.BlockSize;

    if (0 == (PlayFlashInfo.u32Offset + MCE_DEF_PLAYPARAM_SIZE) % FlashInfo.BlockSize)
    {
        EndPos = PlayFlashInfo.u32Offset + MCE_DEF_PLAYPARAM_SIZE;
    }
    else
    {
        EndPos = PlayFlashInfo.u32Offset + MCE_DEF_PLAYPARAM_SIZE + FlashInfo.BlockSize -
                 (PlayFlashInfo.u32Offset + MCE_DEF_PLAYPARAM_SIZE) % FlashInfo.BlockSize;
    }

    pBuf = (HI_U8 *)HI_MALLOC(HI_ID_FASTPLAY, EndPos - StartPos);
    if(HI_NULL == pBuf)
    {
        HI_ERR_PDM("ERR: malloc!");
        Ret = HI_ERR_PDM_MEM_ALLC;
        goto ERR1;    
    }

    Size = HI_Flash_Read(hFlash, StartPos, pBuf, EndPos - StartPos, HI_FLASH_RW_FLAG_RAW);
    if(Size <= 0)
    {
        HI_ERR_PDM("ERR: HI_Flash_Read!");
        Ret = HI_ERR_PDM_MTD_READ;
        goto ERR2;
    } 

    Ret = PDM_UpdatePlayParam(pstPlayParam, pBuf + PlayFlashInfo.u32Offset % FlashInfo.BlockSize);
    if (HI_SUCCESS != Ret)
    {
        HI_ERR_PDM("ERR: mce update play param!");
        Ret = HI_ERR_PDM_INVALID_OPT;
        goto ERR2;
    }

    if (HI_FLASH_TYPE_EMMC_0 != FlashInfo.FlashType)
    {
        Size = HI_Flash_Erase(hFlash, StartPos, EndPos - StartPos);
        if(Size <= 0)
        {
            HI_ERR_PDM("ERR: HI_Flash_Erase!");
            Ret = HI_ERR_PDM_MTD_ERASE;
            goto ERR2;    
        }
    }

    Size = HI_Flash_Write(hFlash, StartPos, pBuf, EndPos - StartPos, HI_FLASH_RW_FLAG_RAW);
    if(Size <= 0)
    {
        HI_ERR_PDM("ERR: HI_Flash_Write!");
        Ret = HI_ERR_PDM_MTD_WRITE;
        goto ERR2;
    }     

ERR2:
    HI_FREE(HI_ID_FASTPLAY, pBuf);
ERR1:
    HI_Flash_Close(hFlash);
ERR0:    
    return Ret;
}

HI_S32  HI_UNF_PDM_GetPlayContent(HI_U8 *pu8Content, HI_U32 u32Size)
{
    HI_S32                      Ret;
    HI_HANDLE                   hFlash;
    HI_S32                      Size;
    PDM_FLASH_INFO_S            PlayFlashInfo;

    if(HI_NULL == pu8Content)
    {
        HI_ERR_PDM("ERR: param is invalid!");
        return HI_ERR_PDM_PTR_NULL;
    }

    Ret = PDM_GetFlashInfo(PDM_FASTPLAY_DEF_NAME, &PlayFlashInfo);
    if (HI_SUCCESS != Ret)
    {
        return Ret;
    }

    hFlash = HI_Flash_OpenByName(PlayFlashInfo.Name);
    if(HI_INVALID_HANDLE == hFlash)
    {
        HI_ERR_PDM("ERR: HI_Flash_Open!");
        Ret = HI_ERR_PDM_MTD_OPEN;
        goto ERR0;
    }

    Size = HI_Flash_Read(hFlash, PlayFlashInfo.u32Offset + MCE_DEF_PLAYPARAM_SIZE, pu8Content, u32Size, HI_FLASH_RW_FLAG_RAW);
    if(Size <= 0)
    {
        HI_ERR_PDM("ERR: HI_Flash_Read!");
        Ret = HI_ERR_PDM_MTD_READ;
        goto ERR1;
    } 

ERR1:
    HI_Flash_Close(hFlash);
ERR0:    
    return Ret;
}

HI_S32  HI_UNF_PDM_UpdatePlayContent(HI_U8 *pu8Content, HI_U32 u32Size)
{
    HI_S32                      Ret;
    HI_HANDLE                   hFlash;
    HI_Flash_InterInfo_S        FlashInfo;
    HI_S32                      Size;
    PDM_FLASH_INFO_S            PlayFlashInfo;
    HI_U8                       *pBuf = HI_NULL; 
    HI_U8                       *pPlayDataPos = HI_NULL;
    HI_U32                      StartPos, EndPos;

    if(HI_NULL == pu8Content)
    {
        HI_ERR_PDM("ERR: param is invalid!");
        return HI_ERR_PDM_PTR_NULL;
    }

    Ret = PDM_GetFlashInfo(PDM_FASTPLAY_DEF_NAME, &PlayFlashInfo);
    if (HI_SUCCESS != Ret)
    {
        return Ret;
    }

    hFlash = HI_Flash_OpenByName(PlayFlashInfo.Name);
    if(HI_INVALID_HANDLE == hFlash)
    {
        HI_ERR_PDM("ERR: HI_Flash_Open!");
        Ret = HI_ERR_PDM_MTD_OPEN;
        goto ERR0;
    }

    Ret = HI_Flash_GetInfo(hFlash, &FlashInfo);
    if(HI_SUCCESS != Ret)
    {
        HI_ERR_PDM("ERR: HI_Flash_GetInfo!");
        Ret = HI_ERR_PDM_MTD_GETINFO;
        goto ERR1;
    }

    if(u32Size > PlayFlashInfo.u32Size - MCE_DEF_LOGOPARAM_SIZE)
    {
        HI_ERR_PDM("ERR: size is too large, need %u, flash %u!", u32Size, PlayFlashInfo.u32Size - MCE_DEF_LOGOPARAM_SIZE);
        Ret = HI_ERR_PDM_PARAM_INVALID;
        goto ERR1;    
    }

/*
    FILE    *fpDst = HI_NULL;
    fpDst = fopen("/mnt/logo.img", "w+");
    fwrite(pContent, sizeof(HI_CHAR), u32Size, fpDst);
    fclose(fpDst);
*/

    StartPos = PlayFlashInfo.u32Offset - PlayFlashInfo.u32Offset % FlashInfo.BlockSize;

    if (0 == (PlayFlashInfo.u32Offset + PlayFlashInfo.u32Size) % FlashInfo.BlockSize)
    {
        EndPos = PlayFlashInfo.u32Offset + PlayFlashInfo.u32Size;
    }
    else
    {
        EndPos = PlayFlashInfo.u32Offset + PlayFlashInfo.u32Size + FlashInfo.BlockSize -
                 (PlayFlashInfo.u32Offset + PlayFlashInfo.u32Size) % FlashInfo.BlockSize;
    }

    pBuf = (HI_U8 *)HI_MALLOC(HI_ID_FASTPLAY, (EndPos-StartPos));
    if (HI_NULL == pBuf)
    {
        HI_ERR_PDM("ERR: malloc!");
        Ret = HI_ERR_PDM_MEM_ALLC;
        goto ERR1;
    }
    
    memset(pBuf, 0x0, EndPos-StartPos);

    /*read the play param and data in flash, read by block*/
    Size = HI_Flash_Read(hFlash, StartPos, pBuf, EndPos-StartPos, HI_FLASH_RW_FLAG_RAW);
    if (Size <= 0)
    {
        HI_ERR_PDM("ERR: HI_Flash_Read!");
        Ret = HI_ERR_PDM_MTD_READ;
        goto ERR2;
    } 

    /*modify the play data*/
    pPlayDataPos = pBuf + PlayFlashInfo.u32Offset % FlashInfo.BlockSize + MCE_DEF_PLAYPARAM_SIZE;
    memcpy(pPlayDataPos, pu8Content, u32Size);

    /*erase play param and data, erase by block*/
    if (HI_FLASH_TYPE_EMMC_0 != FlashInfo.FlashType)
    {
        Size = HI_Flash_Erase(hFlash, StartPos, EndPos - StartPos);
        if(Size <= 0)
        {
            HI_ERR_PDM("ERR: HI_Flash_Erase, Size = %u\n!", Size);
            Ret = HI_ERR_PDM_MTD_ERASE;
            goto ERR2;    
        }
    }

    /* write the new data, write by block */
    Size = HI_Flash_Write(hFlash, StartPos, pBuf, EndPos - StartPos, HI_FLASH_RW_FLAG_RAW);
    if(Size <= 0)
    {
        HI_ERR_PDM("ERR: HI_Flash_Write!");
        Ret = HI_ERR_PDM_MTD_WRITE;
        goto ERR2;
    } 
    
ERR2:
    HI_FREE(HI_ID_FASTPLAY, pBuf);
    pBuf = HI_NULL;
ERR1:
    HI_Flash_Close(hFlash);
ERR0:    
    return Ret;
}

