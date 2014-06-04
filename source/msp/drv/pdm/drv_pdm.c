#include <linux/kernel.h>
#include <linux/string.h>
#include <linux/vmalloc.h>
#include <asm/memory.h>
#include <linux/bootmem.h>
#include <linux/gfp.h>
#include <linux/mm.h>
#include <linux/memblock.h>

#include "hi_drv_pdm.h"
#include "hi_db.h"
#include "drv_pdm_ext.h"
#include "drv_pdm.h"

#define DRV_PDM_LOCK(pMutex)    \
    do{ \
        if(down_interruptible(pMutex)) \
        {       \
            HI_ERR_PDM("ERR: pdm lock error!\n");    \
        }   \
    }while(0)

#define DRV_PDM_UNLOCK(pMutex)    \
    do{ \
        up(pMutex); \
    }while(0)


extern PDM_GLOBAL_S        g_PdmGlobal;


#if 0
static HI_UNF_DISP_TIMING_S   g_stDispTiming = 
{
    .VFB = 27,
    .VBB = 23,
    .VACT = 768,
    .HFB = 210, 
    .HBB = 46,  
    .HACT = 1366,
    .VPW = 4,    
    .HPW = 24,   
    .IDV = 0,    
    .IHS = 0,    
    .IVS = 0,    
    .ClockReversal = HI_FALSE,
    .DataWidth = HI_UNF_DISP_INTF_DATA_WIDTH24,
    .ItfFormat = HI_UNF_DISP_INTF_DATA_FMT_RGB888,
    .DitherEnable = HI_FALSE,                    
    .ClkPara0 = 0x912ccccc,       
    .ClkPara1 = 0x006d8157,       
    //.InRectWidth = 1366,
    //.InRectHeight = 768,
};
#endif

HI_CHAR *PDM_VmapByPhyaddr(HI_U32 phy_addr, HI_U32 size)
{
    HI_U32 i;
    HI_CHAR *vaddr = NULL;
    struct page **page_array = NULL;
    HI_U32 page_array_size = (size + PAGE_SIZE - 1)/PAGE_SIZE;

    page_array = vmalloc(page_array_size * sizeof(struct page *));
    if (!page_array) {
        HI_ERR_PDM("fail to vmalloc %u bytes\n", page_array_size * sizeof(struct page *));
        goto error_out;
    }

    for (i=0; i < page_array_size; i++) {
        page_array[i] = phys_to_page(phy_addr + i*PAGE_SIZE);
    }

    if (i != page_array_size) {
        HI_ERR_PDM("incorrect page array for vmap, \
                array size is %u, but %u filled\n", page_array_size, i);
        goto error_out;
    }

    vaddr = (unsigned char *)vmap(page_array, page_array_size, VM_MAP, PAGE_KERNEL);
    if (!vaddr) {
        HI_ERR_PDM("fail to vmap %lu at 0x%lX\n", phy_addr, size);
        goto error_out;
    }

    if (page_array)
        vfree(page_array);

    return vaddr;

error_out:
    if (page_array)
        vfree(page_array);
	
    return NULL;
}

HI_VOID PDM_GetDefDispParam(HI_UNF_DISP_E enDisp, HI_DISP_PARAM_S *pstDispParam)
{
    HI_S32  i;
    
    for (i=0; i<HI_UNF_DISP_INTF_TYPE_BUTT; i++)
    {
        pstDispParam->stIntf[i].enIntfType = HI_UNF_DISP_INTF_TYPE_BUTT;
    }
	
    return;
}

HI_S32 PDM_GetBufByName(const HI_CHAR *BufName, HI_U32 *pu32BasePhyAddr, HI_U32 *pu32Len)
{
    HI_S32   i;
    
    for (i = 0; i < g_PdmGlobal.u32BufNum; i++)
    {
        if (0 == strncmp(g_PdmGlobal.stBufInfo[i].as8BufName, BufName, strlen(BufName)))
        {
            break;    
        }
    }

    if (i >= g_PdmGlobal.u32BufNum)
    {
        return HI_FAILURE;
    }

    *pu32BasePhyAddr = g_PdmGlobal.stBufInfo[i].u32PhyAddr;

    *pu32Len = g_PdmGlobal.stBufInfo[i].u32Lenth;
    
    return HI_SUCCESS;
}

HI_S32 PDM_SetVirAddrByName(const HI_CHAR *BufName, HI_U32 u32VirAddr)
{	
	HI_U32                  i;    

	DRV_PDM_LOCK(&g_PdmGlobal.PdmMutex);
	
	for (i = 0; i < g_PdmGlobal.u32BufNum; i++)
    {
        if (0 == strncmp(g_PdmGlobal.stBufInfo[i].as8BufName, BufName, strlen(BufName)))
        {
        	break;
        }
    }

	if (i >= g_PdmGlobal.u32BufNum)
	{
		DRV_PDM_UNLOCK(&g_PdmGlobal.PdmMutex);
		HI_INFO_PDM("can not find buffer:%s\n", BufName);
		return HI_FAILURE;
	}

	g_PdmGlobal.stBufInfo[i].u32VirAddr = u32VirAddr;
	DRV_PDM_UNLOCK(&g_PdmGlobal.PdmMutex);
	return HI_SUCCESS;
}

HI_S32 PDM_GetVirAddrByName(const HI_CHAR *BufName, HI_U32 *pu32VirAddr, HI_U32 *pu32Len)
{	
	HI_U32                  i;    

	DRV_PDM_LOCK(&g_PdmGlobal.PdmMutex);
	for (i = 0; i < g_PdmGlobal.u32BufNum; i++)
    {
        if (0 == strncmp(g_PdmGlobal.stBufInfo[i].as8BufName, BufName, strlen(BufName)))
        {
        	break;
        }
    }

	if (i >= g_PdmGlobal.u32BufNum)
	{
		DRV_PDM_UNLOCK(&g_PdmGlobal.PdmMutex);
		HI_INFO_PDM("can not find buffer:%s\n", BufName);
		return HI_FAILURE;
	}

	*pu32VirAddr = g_PdmGlobal.stBufInfo[i].u32VirAddr;
	*pu32Len = g_PdmGlobal.stBufInfo[i].u32Lenth;
	DRV_PDM_UNLOCK(&g_PdmGlobal.PdmMutex);
	return HI_SUCCESS;
}

HI_VOID PDM_TransFomat(HI_UNF_ENC_FMT_E enSrcFmt, HI_UNF_ENC_FMT_E *penHdFmt, HI_UNF_ENC_FMT_E *penSdFmt)
{
    switch(enSrcFmt)
    {
        /* bellow are tv display formats */
        case HI_UNF_ENC_FMT_1080P_60:
        {
            *penHdFmt = HI_UNF_ENC_FMT_1080P_60;
            *penSdFmt = HI_UNF_ENC_FMT_NTSC;
            break;
        }
        case HI_UNF_ENC_FMT_1080P_50:
        {
            *penHdFmt = HI_UNF_ENC_FMT_1080P_50;
            *penSdFmt = HI_UNF_ENC_FMT_PAL; 
            break;
        }
        case HI_UNF_ENC_FMT_1080i_60:
        {
            *penHdFmt = HI_UNF_ENC_FMT_1080i_60;
            *penSdFmt = HI_UNF_ENC_FMT_NTSC;
            break;
        }
        case HI_UNF_ENC_FMT_1080i_50:
        {
            *penHdFmt = HI_UNF_ENC_FMT_1080i_50;
            *penSdFmt = HI_UNF_ENC_FMT_PAL; 
            break;
        }
        case HI_UNF_ENC_FMT_720P_60:
        {
            *penHdFmt = HI_UNF_ENC_FMT_720P_60;
            *penSdFmt = HI_UNF_ENC_FMT_NTSC;
            break;
        }
        case HI_UNF_ENC_FMT_720P_50:
        {
            *penHdFmt = HI_UNF_ENC_FMT_720P_50;
            *penSdFmt = HI_UNF_ENC_FMT_PAL; 
            break;
        } 
        case HI_UNF_ENC_FMT_576P_50:
        {
            *penHdFmt = HI_UNF_ENC_FMT_576P_50;
            *penSdFmt = HI_UNF_ENC_FMT_PAL; 
            break;        
        }
        case HI_UNF_ENC_FMT_480P_60:
        {
            *penHdFmt = HI_UNF_ENC_FMT_480P_60;
            *penSdFmt = HI_UNF_ENC_FMT_NTSC; 
            break;         
        }
        case HI_UNF_ENC_FMT_PAL:
        {
            *penHdFmt = HI_UNF_ENC_FMT_PAL;
            *penSdFmt = HI_UNF_ENC_FMT_PAL;
            break;
        }
        case HI_UNF_ENC_FMT_NTSC:
        {
            *penHdFmt = HI_UNF_ENC_FMT_NTSC;
            *penSdFmt = HI_UNF_ENC_FMT_NTSC; 
            break;
        } 
        
        /* bellow are vga display formats */
        case HI_UNF_ENC_FMT_861D_640X480_60:
        {
            *penHdFmt = HI_UNF_ENC_FMT_861D_640X480_60;
            *penSdFmt = HI_UNF_ENC_FMT_NTSC; 
            break;
        }
        case HI_UNF_ENC_FMT_VESA_800X600_60:
        {
            *penHdFmt = HI_UNF_ENC_FMT_VESA_800X600_60;
            *penSdFmt = HI_UNF_ENC_FMT_NTSC; 
            break;
        }
        case HI_UNF_ENC_FMT_VESA_1024X768_60:
        {
            *penHdFmt = HI_UNF_ENC_FMT_VESA_1024X768_60;
            *penSdFmt = HI_UNF_ENC_FMT_NTSC; 
            break;
        }
        case HI_UNF_ENC_FMT_VESA_1280X720_60:
        {
            *penHdFmt = HI_UNF_ENC_FMT_VESA_1280X720_60;
            *penSdFmt = HI_UNF_ENC_FMT_NTSC; 
            break;
        }
        case HI_UNF_ENC_FMT_VESA_1280X800_60:
        {
            *penHdFmt = HI_UNF_ENC_FMT_VESA_1280X800_60;
            *penSdFmt = HI_UNF_ENC_FMT_NTSC; 
            break;
        }
        case HI_UNF_ENC_FMT_VESA_1280X1024_60:
        {
            *penHdFmt = HI_UNF_ENC_FMT_VESA_1280X1024_60;
            *penSdFmt = HI_UNF_ENC_FMT_NTSC;  
            break;
        }
        case HI_UNF_ENC_FMT_VESA_1360X768_60:
        {
            *penHdFmt = HI_UNF_ENC_FMT_VESA_1360X768_60;
            *penSdFmt = HI_UNF_ENC_FMT_NTSC;
            break;
        }
        case HI_UNF_ENC_FMT_VESA_1366X768_60:
        {
            *penHdFmt = HI_UNF_ENC_FMT_VESA_1366X768_60;
            *penSdFmt = HI_UNF_ENC_FMT_NTSC;   
            break;
        }
        case HI_UNF_ENC_FMT_VESA_1400X1050_60:
        {
            *penHdFmt = HI_UNF_ENC_FMT_VESA_1400X1050_60;
            *penSdFmt = HI_UNF_ENC_FMT_NTSC;  
            break;
        }
        case HI_UNF_ENC_FMT_VESA_1440X900_60:
        {
            *penHdFmt = HI_UNF_ENC_FMT_VESA_1440X900_60;
            *penSdFmt = HI_UNF_ENC_FMT_NTSC;    
            break;
        }
        case HI_UNF_ENC_FMT_VESA_1440X900_60_RB:
        {
            *penHdFmt = HI_UNF_ENC_FMT_VESA_1440X900_60_RB;
            *penSdFmt = HI_UNF_ENC_FMT_NTSC;  
            break;
        }
        case HI_UNF_ENC_FMT_VESA_1600X900_60_RB:
        {
            *penHdFmt = HI_UNF_ENC_FMT_VESA_1600X900_60_RB;
            *penSdFmt = HI_UNF_ENC_FMT_NTSC; 
            break;
        }
        case HI_UNF_ENC_FMT_VESA_1600X1200_60:
        {
            *penHdFmt = HI_UNF_ENC_FMT_VESA_1600X1200_60;
            *penSdFmt = HI_UNF_ENC_FMT_NTSC;   
            break;
        }
        case HI_UNF_ENC_FMT_VESA_1680X1050_60:
        {
            *penHdFmt = HI_UNF_ENC_FMT_VESA_1680X1050_60;
            *penSdFmt = HI_UNF_ENC_FMT_NTSC;  
            break;
        } 
        
        case HI_UNF_ENC_FMT_VESA_1920X1080_60:
        {
            *penHdFmt = HI_UNF_ENC_FMT_VESA_1920X1080_60;
            *penSdFmt = HI_UNF_ENC_FMT_NTSC;   
            break;
        }
        case HI_UNF_ENC_FMT_VESA_1920X1200_60:
        {
            *penHdFmt = HI_UNF_ENC_FMT_VESA_1920X1200_60;
            *penSdFmt = HI_UNF_ENC_FMT_NTSC;            
            break;
        }
        case HI_UNF_ENC_FMT_VESA_2048X1152_60:
        {
            *penHdFmt = HI_UNF_ENC_FMT_VESA_2048X1152_60;
            *penSdFmt = HI_UNF_ENC_FMT_NTSC;            
            break;
        }
        default:
        {
            *penHdFmt = HI_UNF_ENC_FMT_1080i_50;
            *penSdFmt = HI_UNF_ENC_FMT_PAL;
            break;
        }
    }

    return;
}

HI_S32 DRV_PDM_GetDispParam(HI_UNF_DISP_E enDisp, HI_DISP_PARAM_S *pstDispParam)
{
    HI_S32                      Ret;
    HI_DB_S                     stBaseDB;
    HI_DB_TABLE_S               stTable;
    HI_DB_KEY_S                 stKey;
    HI_U32                      u32BasePhyAddr;
    HI_U32                      u32BaseVirAddr;
    HI_U32                      u32BaseLen;

    if ((HI_SUCCESS != PDM_GetVirAddrByName(PDM_BASEPARAM_BUFNAME, &u32BaseVirAddr, &u32BaseLen))
		|| (HI_NULL == u32BaseVirAddr))
	{
		Ret = PDM_GetBufByName(PDM_BASEPARAM_BUFNAME, &u32BasePhyAddr, &u32BaseLen);
	    if (HI_SUCCESS != Ret)
	    {
	        return Ret;
	    }
		
		u32BaseVirAddr = (HI_U32)PDM_VmapByPhyaddr(u32BasePhyAddr, u32BaseLen);
		PDM_SetVirAddrByName(PDM_BASEPARAM_BUFNAME, u32BaseVirAddr);
	}    

    PDM_GetDefDispParam(enDisp, pstDispParam);

    Ret = HI_DB_GetDBFromMem((HI_U8 *)u32BaseVirAddr, &stBaseDB);
    if(HI_SUCCESS != Ret)
    {
        HI_INFO_PDM("ERR: HI_DB_GetDBFromMem, use default baseparam!\n");
        return HI_FAILURE;
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
        HI_INFO_PDM("ERR: HI_DB_GetTableByName, use default baseparam!\n");
        return HI_SUCCESS;
    }
    
    Ret = HI_DB_GetKeyByName(&stTable, MCE_BASE_KEYNAME_FMT, &stKey);
    if(HI_SUCCESS == Ret)
    {
    	pstDispParam->enFormat = *(HI_UNF_ENC_FMT_E *)(stKey.pValue);
    }

	Ret = HI_DB_GetKeyByName(&stTable, MCE_BASE_KEYNAME_INTF_HDMI, &stKey);
    if(HI_SUCCESS == Ret)
    {
        pstDispParam->stIntf[HI_UNF_DISP_INTF_TYPE_HDMI] = *(HI_UNF_DISP_INTF_S *)(stKey.pValue);
    }
    
    Ret = HI_DB_GetKeyByName(&stTable, MCE_BASE_KEYNAME_INTF_YPBPR, &stKey);
    if(HI_SUCCESS == Ret)
    {
        pstDispParam->stIntf[HI_UNF_DISP_INTF_TYPE_YPBPR] = *(HI_UNF_DISP_INTF_S *)(stKey.pValue);
    }
    
    Ret = HI_DB_GetKeyByName(&stTable, MCE_BASE_KEYNAME_INTF_CVBS, &stKey);
    if(HI_SUCCESS == Ret)
    {
        pstDispParam->stIntf[HI_UNF_DISP_INTF_TYPE_CVBS] = *(HI_UNF_DISP_INTF_S *)(stKey.pValue);
    }

    Ret = HI_DB_GetKeyByName(&stTable, MCE_BASE_KEYNAME_INTF_RGB, &stKey);
    if(HI_SUCCESS == Ret)
    {
        pstDispParam->stIntf[HI_UNF_DISP_INTF_TYPE_RGB] = *(HI_UNF_DISP_INTF_S *)(stKey.pValue);
    }

/*
    Ret = HI_DB_GetKeyByName(&stTable, MCE_BASE_KEYNAME_INTF_SVIDEO, &stKey);
    if(HI_SUCCESS == Ret)
    {
        pstDispParam->stIntf[HI_UNF_DISP_INTF_TYPE_SVIDEO] = *(HI_UNF_DISP_INTF_S *)(stKey.pValue);
    }
*/

    Ret = HI_DB_GetKeyByName(&stTable, MCE_BASE_KEYNAME_HULEP, &stKey);
    if(HI_SUCCESS == Ret)
    {
        pstDispParam->u32HuePlus = *(HI_U32 *)(stKey.pValue);
    }

    Ret = HI_DB_GetKeyByName(&stTable, MCE_BASE_KEYNAME_SATU, &stKey);
    if(HI_SUCCESS == Ret)
    {
        pstDispParam->u32Saturation = *(HI_U32 *)(stKey.pValue);
    }

    Ret = HI_DB_GetKeyByName(&stTable, MCE_BASE_KEYNAME_CONTR, &stKey);
    if(HI_SUCCESS == Ret)
    {
        pstDispParam->u32Contrast = *(HI_U32 *)(stKey.pValue);
    }

    Ret = HI_DB_GetKeyByName(&stTable, MCE_BASE_KEYNAME_BRIG, &stKey);
    if(HI_SUCCESS == Ret)
    {
        pstDispParam->u32Brightness = *(HI_U32 *)(stKey.pValue);
    }

    Ret = HI_DB_GetKeyByName(&stTable, MCE_BASE_KEYNAME_BGCOLOR, &stKey);
    if(HI_SUCCESS == Ret)
    {
        pstDispParam->stBgColor = *(HI_UNF_DISP_BG_COLOR_S *)(stKey.pValue);
    }

    Ret = HI_DB_GetKeyByName(&stTable, MCE_BASE_KEYNAME_TIMING, &stKey);
    if(HI_SUCCESS == Ret)
    {
        pstDispParam->stDispTiming = *(HI_UNF_DISP_TIMING_S *)(stKey.pValue);
    }

    Ret = HI_DB_GetKeyByName(&stTable, MCE_BASE_KEYNAME_GAMA, &stKey);
    if(HI_SUCCESS == Ret)
    {
        pstDispParam->bGammaEnable = *(HI_BOOL *)(stKey.pValue);
    }

	Ret = HI_DB_GetKeyByName(&stTable, MCE_BASE_KEYNAME_ASPECT, &stKey);
    if(HI_SUCCESS == Ret)
    {
        pstDispParam->stAspectRatio = *(HI_UNF_DISP_ASPECT_RATIO_S *)(stKey.pValue);
    }
#if 0
    Ret = HI_DB_GetKeyByName(&stTable, MCE_BASE_KEYNAME_SCRX, &stKey);
    if(HI_SUCCESS == Ret)
    {
        pstDispParam->u32ScreenXpos = *(HI_U32 *)(stKey.pValue);
    }

    Ret = HI_DB_GetKeyByName(&stTable, MCE_BASE_KEYNAME_SCRY, &stKey);
    if(HI_SUCCESS == Ret)
    {
        pstDispParam->u32ScreenYpos = *(HI_U32 *)(stKey.pValue);
    }
    
    Ret = HI_DB_GetKeyByName(&stTable, MCE_BASE_KEYNAME_SCRW, &stKey);
    if(HI_SUCCESS == Ret)
    {
        pstDispParam->u32ScreenWidth = *(HI_U32 *)(stKey.pValue);
    }

    Ret = HI_DB_GetKeyByName(&stTable, MCE_BASE_KEYNAME_SCRH, &stKey);
    if(HI_SUCCESS == Ret)
    {
        pstDispParam->u32ScreenHeight = *(HI_U32 *)(stKey.pValue);
    }
#endif
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
    Ret = HI_DB_GetKeyByName(&stTable, MCE_BASE_KEYNAME_VIRSCH, &stKey);
    if(HI_SUCCESS == Ret)
    {
        pstDispParam->u32VirtScreenHeight = *(HI_U32 *)(stKey.pValue);
    }
    Ret = HI_DB_GetKeyByName(&stTable, MCE_BASE_KEYNAME_DISP_L, &stKey);
    if(HI_SUCCESS == Ret)
    {
        pstDispParam->stOffsetInfo.u32Left = *(HI_U32 *)(stKey.pValue);
    }
    Ret = HI_DB_GetKeyByName(&stTable, MCE_BASE_KEYNAME_DISP_T, &stKey);
    if(HI_SUCCESS == Ret)
    {
        pstDispParam->stOffsetInfo.u32Top = *(HI_U32 *)(stKey.pValue);
    }
	Ret = HI_DB_GetKeyByName(&stTable, MCE_BASE_KEYNAME_DISP_R, &stKey);
    if(HI_SUCCESS == Ret)
    {
        pstDispParam->stOffsetInfo.u32Right = *(HI_U32 *)(stKey.pValue);
    }
    Ret = HI_DB_GetKeyByName(&stTable, MCE_BASE_KEYNAME_DISP_B, &stKey);
    if(HI_SUCCESS == Ret)
    {
        pstDispParam->stOffsetInfo.u32Bottom = *(HI_U32 *)(stKey.pValue);
    }

	Ret = HI_DB_GetKeyByName(&stTable, MCE_BASE_KEYNAME_PF, &stKey);
    if(HI_SUCCESS == Ret)
    {
        pstDispParam->enPixelFormat = *(HIGO_PF_E *)(stKey.pValue);
    }
    else
    {
        pstDispParam->enPixelFormat = HIGO_PF_8888;
    }


    return HI_SUCCESS;
}

HI_S32 DRV_PDM_GetMceParam(HI_MCE_PARAM_S *pstMceParam)
{
    HI_S32                      Ret;
    HI_DB_S                     stBaseDB;
    HI_DB_TABLE_S               stTable;
    HI_DB_KEY_S                 stKey;
    HI_U32                      u32MceParaPhyAddr;
    HI_U32                      u32MceParaVirAddr;
    HI_U32                      u32MceParaLen;

	if ((HI_SUCCESS != PDM_GetVirAddrByName(PDM_PLAYPARAM_BUFNAME, &u32MceParaVirAddr, &u32MceParaLen))
		|| (HI_NULL == u32MceParaVirAddr))
	{
		Ret = PDM_GetBufByName(PDM_PLAYPARAM_BUFNAME, &u32MceParaPhyAddr, &u32MceParaLen);
	    if (HI_SUCCESS != Ret)
	    {
	        return Ret;
	    }

		u32MceParaVirAddr = (HI_U32)PDM_VmapByPhyaddr(u32MceParaPhyAddr, u32MceParaLen);
		PDM_SetVirAddrByName(PDM_PLAYPARAM_BUFNAME, u32MceParaVirAddr);
	}    

    Ret = HI_DB_GetDBFromMem((HI_U8 *)u32MceParaVirAddr, &stBaseDB);
    if(HI_SUCCESS != Ret)
    {
        HI_INFO_PDM("ERR: HI_DB_GetDBFromMem!\n");
        return HI_FAILURE;
    }

    Ret = HI_DB_GetTableByName(&stBaseDB, MCE_PLAY_TABLENAME, &stTable);
    if(HI_SUCCESS != Ret)
    {
        HI_INFO_PDM("ERR: HI_DB_GetTableByName!\n");
        return HI_FAILURE;        
    }

    Ret = HI_DB_GetKeyByName(&stTable, MCE_PLAY_KEYNAME_FLAG, &stKey);
    if(HI_SUCCESS == Ret)
    {
        pstMceParam->u32CheckFlag = *(HI_U32 *)(stKey.pValue);
    }
    else
    {
        pstMceParam->u32CheckFlag = 0;
    }    

    Ret = HI_DB_GetKeyByName(&stTable, MCE_PLAY_KEYNAME_DATALEN, &stKey);
    if(HI_SUCCESS == Ret)
    {
        pstMceParam->u32PlayDataLen = *(HI_U32 *)(stKey.pValue);
    }
    else
    {
        pstMceParam->u32PlayDataLen = 0;
    }

    Ret = HI_DB_GetKeyByName(&stTable, MCE_PLAY_KEYNAME_PARAM, &stKey);
    if(HI_SUCCESS == Ret)
    {
        pstMceParam->stPlayParam = *(HI_UNF_MCE_PLAY_PARAM_S *)(stKey.pValue);
    }
    else
    {
        memset(&(pstMceParam->stPlayParam), 0x00, sizeof(HI_UNF_MCE_PLAY_PARAM_S));
    }

    return HI_SUCCESS;

}

HI_S32 DRV_PDM_GetMceData(HI_U32 u32Size, HI_U32 *pAddr)
{
    HI_S32                      Ret;
    HI_U32                      u32MceDataPhyAddr;
    HI_U32                      u32MceDataLen;
	HI_U32						u32MceDataVirAddr;

	if ((HI_SUCCESS != PDM_GetVirAddrByName(PDM_PLAYDATA_BUFNAME, &u32MceDataVirAddr, &u32MceDataLen))
		|| (HI_NULL == u32MceDataVirAddr))
	{
		Ret = PDM_GetBufByName(PDM_PLAYDATA_BUFNAME, &u32MceDataPhyAddr, &u32MceDataLen);
	    if (HI_SUCCESS != Ret)
	    {
	        return Ret;
	    }

		u32MceDataVirAddr = (HI_U32)PDM_VmapByPhyaddr(u32MceDataPhyAddr, u32MceDataLen);
		PDM_SetVirAddrByName(PDM_PLAYDATA_BUFNAME, u32MceDataVirAddr);
	}
	
    *pAddr = u32MceDataVirAddr;

    return HI_SUCCESS;
}

HI_S32 DRV_PDM_GetData(const HI_CHAR *BufName, HI_U32 *pu32DataAddr, HI_U32 *pu32DataLen)
{
	HI_S32 Ret = HI_SUCCESS;
	HI_U32 u32PhyAddr = 0;
	
	if ((HI_NULL != BufName)
		&& (HI_NULL != pu32DataAddr)
		&& (HI_NULL != pu32DataLen))
	{
		if ((HI_SUCCESS != PDM_GetVirAddrByName(BufName, pu32DataAddr, pu32DataLen))
		    || (HI_NULL == *pu32DataAddr))
		{
			Ret = PDM_GetBufByName(BufName, &u32PhyAddr, pu32DataLen);
		    if (HI_SUCCESS != Ret)
		    {
		        return Ret;
		    }
			
			*pu32DataAddr = (HI_U32)PDM_VmapByPhyaddr(u32PhyAddr, *pu32DataLen);

			return PDM_SetVirAddrByName(BufName, *pu32DataAddr);
		}
		else
		{
			return HI_SUCCESS;
		}
	}
	else
	{
		return HI_FAILURE;
	}
}


/*release memory*/
static HI_S32 PDM_FreeMem(HI_U32 PhyAddr, HI_U32 Len)
{
    HI_U32      pfn_start;
    HI_U32      pfn_end;
    HI_U32      pages = 0;

    pfn_start = __phys_to_pfn(PhyAddr);
    pfn_end = __phys_to_pfn(PhyAddr + Len);

    for (; pfn_start < pfn_end; pfn_start++)
    {
		struct page *page = pfn_to_page(pfn_start);
		ClearPageReserved(page);
		init_page_count(page);
		__free_page(page);
		pages++;
    }

    return HI_SUCCESS;
}

HI_S32 DRV_PDM_ReleaseReserveMem(const HI_CHAR *BufName)
{
    HI_U32                      i;    
	
    DRV_PDM_LOCK(&g_PdmGlobal.PdmMutex);

    for (i = 0; i < g_PdmGlobal.u32BufNum; i++)
    {
        if (0 == strncmp(g_PdmGlobal.stBufInfo[i].as8BufName, BufName, strlen(BufName)))
        {
            break;    
        }
    }

    if (i >= g_PdmGlobal.u32BufNum)
    {
        DRV_PDM_UNLOCK(&g_PdmGlobal.PdmMutex);
        return HI_FAILURE;
    }

    if (g_PdmGlobal.stBufInfo[i].bRelease)
    {
        DRV_PDM_UNLOCK(&g_PdmGlobal.PdmMutex);
        return HI_SUCCESS;
    }
    
    g_PdmGlobal.stBufInfo[i].bRelease = HI_TRUE;

	if (HI_NULL != g_PdmGlobal.stBufInfo[i].u32VirAddr)
	{
		vunmap((HI_VOID *)(g_PdmGlobal.stBufInfo[i].u32VirAddr));

		g_PdmGlobal.stBufInfo[i].u32VirAddr = HI_NULL;	
	}

    DRV_PDM_UNLOCK(&g_PdmGlobal.PdmMutex);

    //this function maybe block, can not lock
    PDM_FreeMem(g_PdmGlobal.stBufInfo[i].u32PhyAddr, g_PdmGlobal.stBufInfo[i].u32Lenth);
   
    return HI_SUCCESS;
}


HI_S32 HI_DRV_PDM_GetDispParam(HI_UNF_DISP_E enDisp, HI_DISP_PARAM_S *pstDispParam)
{
    return DRV_PDM_GetDispParam(enDisp, pstDispParam);
}

HI_S32 HI_DRV_PDM_GetMceParam(HI_MCE_PARAM_S *pMceParam)
{
    return DRV_PDM_GetMceParam(pMceParam);
}

HI_S32 HI_DRV_PDM_GetMceData(HI_U32 u32Size, HI_U32 *pAddr)
{
    return DRV_PDM_GetMceData(u32Size, pAddr);
}

HI_S32 HI_DRV_PDM_ReleaseReserveMem(const HI_CHAR *BufName)
{
    return DRV_PDM_ReleaseReserveMem(BufName);
}

HI_S32 HI_DRV_PDM_GetData(const HI_CHAR *BufName, HI_U32 *pu32DataAddr, HI_U32 *pu32DataLen)
{
	return DRV_PDM_GetData(BufName, pu32DataAddr, pu32DataLen);
}


