/**
\file
\brief unf of sound 
\copyright Shenzhen Hisilicon Co., Ltd.
\date 
\version
\author 
\date 
*/
//#include "hi_type.h"
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <pthread.h>

#include "hi_type.h"
#include "hi_error_mpi.h"
#include "hi_unf_aenc.h"
#include "hi_drv_aenc.h"
#include "hi_mpi_avplay.h"

#define AENC_INSTANCE_MASK 0xffff

#define API_AENC_CheckHandle(hAenc) \
    do{ \
        if ((HI_ID_AENC != (hAenc>>16)) || ((hAenc&AENC_INSTANCE_MASK) >= AENC_INSTANCE_MAXNUM)) \
        { \
            HI_ERR_AENC("invalid Aenc handle(%d).\n", hAenc); \
            return HI_ERR_AENC_INVALID_PARA; \
        } \
    }while(0)


HI_S32 HI_UNF_AENC_Init(HI_VOID)
{  
    
    return HI_MPI_AENC_Init(NULL);
}

HI_S32 HI_UNF_AENC_DeInit(HI_VOID)
{
    
    return HI_MPI_AENC_DeInit();
}

HI_S32 HI_UNF_AENC_Create(const HI_UNF_AENC_ATTR_S *pstAencAttr, HI_HANDLE *phAenc)
{
    HI_S32 ret;

    if (NULL == pstAencAttr)
    {
        return HI_ERR_AENC_NULL_PTR;
    }

    ret = HI_MPI_AENC_Open(phAenc, pstAencAttr);
    return ret;
}

HI_S32 HI_UNF_AENC_Destroy(HI_HANDLE hAenc)
{
    
    API_AENC_CheckHandle(hAenc);
    
    return HI_MPI_AENC_Close(hAenc);

}

HI_S32 HI_UNF_AENC_AttachInput(HI_HANDLE hAenc, HI_HANDLE hSrc)
{
    API_AENC_CheckHandle(hAenc);
    
    return HI_MPI_AENC_AttachInput(hAenc,hSrc);
}

HI_S32 HI_UNF_AENC_DetachInput(HI_HANDLE hAenc)
{
    API_AENC_CheckHandle(hAenc);
    
    return HI_MPI_AENC_DetachInput(hAenc);
}

HI_S32 HI_UNF_AENC_Start(HI_HANDLE hAenc)
{
    API_AENC_CheckHandle(hAenc);

    return HI_MPI_AENC_SetEnable(hAenc, HI_TRUE);
}

HI_S32 HI_UNF_AENC_Stop(HI_HANDLE hAenc)
{
    API_AENC_CheckHandle(hAenc);

    return HI_MPI_AENC_SetEnable(hAenc, HI_FALSE);
}


HI_S32 HI_UNF_AENC_SendFrame(HI_HANDLE hAenc, const HI_UNF_AO_FRAMEINFO_S *pstAOFrame)
{
    
    API_AENC_CheckHandle(hAenc);

    return HI_MPI_AENC_SendBuffer(hAenc, pstAOFrame);
}

HI_S32 HI_UNF_AENC_AcquireStream(HI_HANDLE hAenc, HI_UNF_ES_BUF_S *pstStream, HI_U32 u32TimeoutMs)
{
    
    API_AENC_CheckHandle(hAenc);

    return HI_MPI_AENC_ReceiveStream(hAenc, (AENC_STREAM_S *)pstStream, u32TimeoutMs);
}

HI_S32 HI_UNF_AENC_ReleaseStream(HI_HANDLE hAenc, const HI_UNF_ES_BUF_S *pstStream)
{
    
    API_AENC_CheckHandle(hAenc);

    return HI_MPI_AENC_ReleaseStream(hAenc, (AENC_STREAM_S *)pstStream);
}

HI_S32 HI_UNF_AENC_RegisterEncoder(const HI_CHAR *pszCodecDllName)
{
    return HI_MPI_AENC_RegisterEncoder(pszCodecDllName);
}

HI_S32 HI_UNF_AENC_SetAttr(HI_HANDLE hAenc, const HI_UNF_AENC_ATTR_S *pstAencAttr)
{
    
    API_AENC_CheckHandle(hAenc);

    return HI_MPI_AENC_SetAttr(hAenc, pstAencAttr);
}

HI_S32 HI_UNF_AENC_GetAttr(HI_HANDLE hAenc, HI_UNF_AENC_ATTR_S *pstAencAttr)
{
    
    API_AENC_CheckHandle(hAenc);

    return HI_MPI_AENC_GetAttr(hAenc, pstAencAttr);
}

