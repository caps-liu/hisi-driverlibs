/***********************************************************************************
*              Copyright 2009 - 2050, Hisilicon Tech. Co., Ltd.
*                           ALL RIGHTS RESERVED
* FileName   : mpi_demux.c
* Description: media program interface implementation
*
* History    :
* Version   Date         Author     DefectNum    Description
* main\1    2006-07-18   Jianglei   NULL         Create this file.
***********************************************************************************/

#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <sys/ioctl.h>
#include <pthread.h>

#include "hi_type.h"
#include "hi_debug.h"

#include "hi_drv_struct.h"
#include "hi_module.h"

#include "demux_debug.h"
#include "hi_mpi_demux.h"
#include "drv_demux_config.h"
#include "drv_demux_ioctl.h"
#include "hi_mpi_mem.h"

#define DMX_DEFAULT_CHANBUF_SIZE        (16 * 1024)

/********************** Global Variable define **************************/
#define DMX_COPY_PES    1



HI_S32 g_s32DmxFd = -1;     /* the file discreption for DEMUX module */

static const HI_CHAR    DmxDevName[]  = "/dev/" UMAP_DEVNAME_DEMUX;

static DMX_MMZ_BUF_S    g_stTsBuf[DMX_RAMPORT_CNT];
static DMX_MMZ_BUF_S    g_stPoolBuf;
static DMX_MMZ_BUF_S    g_stChanBuf[DMX_CHANNEL_CNT];
static DMX_MMZ_BUF_S    g_RecMmzBuf[DMX_CNT];

static pthread_mutex_t g_stDmxMutex = PTHREAD_MUTEX_INITIALIZER;

static const HI_CHAR s_szDmxVersion[] __attribute__((used)) = "SDK_VERSION:["\
                            MKMARCOTOSTR(SDK_VERSION)"] Build Time:["\
                            __DATE__", "__TIME__"]";

#define MPIDmxCheckDeviceFd()           \
    do                                  \
    {                                   \
        if (-1 == g_s32DmxFd)           \
        {                               \
            HI_ERR_DEMUX("Dmx not init!\n"); \
            return HI_ERR_DMX_NOT_INIT; \
        }                               \
    } while (0)

#define MPIDmxCheckPointer(p)           \
    do                                  \
    {                                   \
        if (HI_NULL == p)               \
        {                               \
            HI_ERR_DEMUX("Null Pointer!\n"); \
            return HI_ERR_DMX_NULL_PTR; \
        }                               \
    } while (0)

#define MPIDmxCheckDmxId(u32DmxId) \
    do {\
        if (!(u32DmxId < DMX_CNT))\
        {\
            HI_ERR_DEMUX("Invalid DmxId %u\n", u32DmxId); \
            return HI_ERR_DMX_INVALID_PARA; \
        } \
    } while (0)

#define DMX_BUFFERHANDLE2PORTID(BufferHandle)   (BufferHandle & 0xff)
#define DMX_PORTID2BUFFERHANDLE(PortId)         (PortId | 0x00000400 | (HI_ID_DEMUX << 16))
#define DMX_CHECK_BUFFERHANDLE(BufferHandle)    \
do{\
    if(((BufferHandle & 0xffffff00) != DMX_PORTID2BUFFERHANDLE(0)) \
        || (DMX_BUFFERHANDLE2PORTID(BufferHandle) >= DMX_RAMPORT_CNT))\
    {\
        HI_ERR_DEMUX("Invalid buffer handle:0x%x\n", BufferHandle); \
        return HI_ERR_DMX_INVALID_PARA;\
    }\
}while(0)


/************************************************************************************
 ************************************************************************************

                         Initialize  Module

 ************************************************************************************
 *************************************************************************************/
#if  DMX_COPY_PES

static HI_U32 MPIPesMemSize[DMX_CHANNEL_CNT];

/**
 \brief check whether pes pUserMsg is valid or not.
return -1 if invalid.
return HI_UNF_DMX_TYPE_WHOLE if included all the pes
return HI_UNF_DMX_DATA_TYPE_HEAD if just only included the head of pes.
return HI_UNF_DMX_DATA_TYPE_TAIL if just only included the tail of pes
return HI_UNF_DMX_DATA_TYPE_BODY if not included head and tail

 \attention
 \none
 \param[in] pUserMsg
 \param[in] u32PmsgLen

 \retval none
 \return none

 \see
 \li ::
 */
static HI_S32 MPICheckPesUserMsg(const HI_UNF_DMX_DATA_S* pstBuf, HI_U32 u32BufSize)
{
    HI_U32 u32HeadType, u32TailType;

    if (pstBuf[0].enDataType == HI_UNF_DMX_DATA_TYPE_WHOLE)
    {
        return HI_UNF_DMX_DATA_TYPE_WHOLE;
    }

    u32HeadType = pstBuf[0].enDataType;
    u32TailType = pstBuf[u32BufSize - 1].enDataType;
    if (u32HeadType == HI_UNF_DMX_DATA_TYPE_HEAD)
    {
        if (u32TailType == HI_UNF_DMX_DATA_TYPE_TAIL)
        {
            return HI_UNF_DMX_DATA_TYPE_WHOLE;
        }
        else
        {
            return HI_UNF_DMX_DATA_TYPE_HEAD;
        }
    }
    else
    {
        if (u32TailType == HI_UNF_DMX_DATA_TYPE_TAIL)
        {
            return HI_UNF_DMX_DATA_TYPE_TAIL;
        }
        else
        {
            return HI_UNF_DMX_DATA_TYPE_BODY;
        }
    }
}

/**
 \brief return  the total length of pes
 \attention
\none
 \param[in] pu8Dst
 \param[in] pUserMsg
 \param[in] u32PmsgLen

 \retval none
 \return none

 \see
 \li ::
 */
static HI_U32 MPICopyPesTogether(HI_U8* pu8Dst, HI_UNF_DMX_DATA_S* pstBuf, HI_U32 u32BufSize)
{
    HI_U32 u32CopyedLen = 0;
    HI_U32 i;

    for (i = 0; i < u32BufSize; i++)
    {
        memcpy(pu8Dst + u32CopyedLen, pstBuf[i].pu8Data, pstBuf[i].u32Size);
        u32CopyedLen += pstBuf[i].u32Size;
    }

    return u32CopyedLen;
}

/**
 \brief malloc for pes, return HI_SUCCESS if successful. return HI_FAILURE if failure
 \attention
\none
 \param[in] hChannel
 \param[in] u32Size
 \param[out] pu8PesAddr

 \retval none
 \return none

 \see
 \li ::
 */
static HI_S32 MPIPesMemMalloc(HI_HANDLE hChannel, HI_U32 u32Size, HI_U8** pu8PesAddr)
{
    HI_UNF_DMX_CHAN_ATTR_S stChAttr;
    HI_U32 u32ChnID;
	stChAttr.u32BufSize= 0;
    u32ChnID = DMX_CHANID(hChannel);
    if (u32ChnID >= DMX_CHANNEL_CNT)
    {
        HI_ERR_DEMUX("channel handle error:%d\n",u32ChnID);
        return HI_FAILURE;
    }
    HI_MPI_DMX_GetChannelAttr(hChannel, &stChAttr);
    *pu8PesAddr = (HI_U8*)HI_MALLOC(HI_ID_DEMUX, u32Size);
    if (!(*pu8PesAddr))
    {
        HI_ERR_DEMUX("Pes mem malloc failed!\n");
        *pu8PesAddr = HI_NULL;
        return HI_FAILURE;
    }

    MPIPesMemSize[u32ChnID] += u32Size;
    return HI_SUCCESS;
}

/**
 \brief free pes buffer
 \attention
none
 \param[in] hChannel
 \param[in] u32Size
 \param[in] pu8PesAddr

 \retval none
 \return none

 \see
 \li ::
 */
static HI_S32 MPIPesMemFree(HI_HANDLE hChannel, HI_U32 u32Size, HI_U8* pu8PesAddr)
{
    HI_U32 u32ChnID;
    
    MPIDmxCheckPointer(pu8PesAddr);

    u32ChnID = DMX_CHANID(hChannel);
    if (u32ChnID >= DMX_CHANNEL_CNT)
    {
        HI_ERR_DEMUX("channel handle error:%d\n",u32ChnID);
        return HI_FAILURE;
    }

    HI_FREE(HI_ID_DEMUX, pu8PesAddr);

    MPIPesMemSize[u32ChnID] -= u32Size;

    return HI_SUCCESS;
}

static HI_UNF_DMX_CHAN_TYPE_E MPIGetChnType(HI_HANDLE hChannel)
{
    HI_UNF_DMX_CHAN_ATTR_S stChAttr;
    HI_S32 ret;

    ret = HI_MPI_DMX_GetChannelAttr(hChannel, &stChAttr);
    if(ret != HI_SUCCESS)
    {
        return HI_UNF_DMX_CHAN_TYPE_BUTT;
    }
    return stChAttr.enChannelType;
}

#endif /* #if DMX_COPY_PES */

static HI_S32 DMX_MPI_PortGetType(const HI_UNF_DMX_PORT_E Port, DMX_PORT_MODE_E *PortMode, HI_U32 *PortId)
{
    HI_S32 ret = HI_ERR_DMX_INVALID_PARA;

    switch (Port)
    {
        case HI_UNF_DMX_PORT_TUNER_0 :
        case HI_UNF_DMX_PORT_TUNER_1 :
        case HI_UNF_DMX_PORT_TUNER_2 :
        case HI_UNF_DMX_PORT_TUNER_3 :
        case HI_UNF_DMX_PORT_TUNER_4 :
        case HI_UNF_DMX_PORT_TUNER_5 :
        case HI_UNF_DMX_PORT_TUNER_6 :
        case HI_UNF_DMX_PORT_TUNER_7 :
        {
            HI_U32 Id = (HI_U32)Port;

            if (Id < DMX_TUNERPORT_CNT)
            {
                *PortMode   = DMX_PORT_MODE_TUNER;
                *PortId     = Id;

                ret = HI_SUCCESS;
            }

            break;
        }

        case HI_UNF_DMX_PORT_RAM_0 :
        case HI_UNF_DMX_PORT_RAM_1 :
        case HI_UNF_DMX_PORT_RAM_2 :
        case HI_UNF_DMX_PORT_RAM_3 :
        case HI_UNF_DMX_PORT_RAM_4 :
        case HI_UNF_DMX_PORT_RAM_5 :
        case HI_UNF_DMX_PORT_RAM_6 :
        case HI_UNF_DMX_PORT_RAM_7 :
        {
            HI_U32 Id = (HI_U32)Port - (HI_U32)HI_UNF_DMX_PORT_RAM_0;

            if (Id < DMX_RAMPORT_CNT)
            {
                *PortMode   = DMX_PORT_MODE_RAM;
                *PortId     = Id;

                ret = HI_SUCCESS;
            }

            break;
        }

        default :
        {
            HI_ERR_DEMUX("Invalid port 0x%x\n", Port);
        }
    }

    return ret;
}

#ifdef DMX_USE_ECM
static HI_U32 MPIGetSwFlag(HI_HANDLE hChannel)
{
    HI_S32 ret;
    DMX_ChanSwGet_S Param;

    Param.hChannel = hChannel;
    ret = ioctl(g_s32DmxFd, CMD_DEMUX_GET_CHAN_SWFLAG, (HI_S32)&Param);
    if (HI_SUCCESS == ret)
    {
        return Param.u32SwFlag;
    }
    return 0;
}
#endif

static HI_S32 MPIReleaseBuf(HI_HANDLE hChannel, HI_U32 u32ReleaseNum, HI_UNF_DMX_DATA_S *pstBuf)
{
    DMX_RelMsg_S Param;
    HI_U32 u32UsrAddr;
    HI_U32 u32ChId;
    HI_U32 i;

    u32ChId = DMX_CHANID(hChannel);
    for (i = 0; i < u32ReleaseNum; i++)
    {
        u32UsrAddr = (HI_U32)pstBuf[i].pu8Data;
        if ((u32UsrAddr >= g_stPoolBuf.u32BufUsrVirAddr)
            && ((u32UsrAddr - g_stPoolBuf.u32BufUsrVirAddr) < g_stPoolBuf.u32BufSize))
        {
            pstBuf[i].pu8Data = (HI_U8*)((u32UsrAddr - g_stPoolBuf.u32BufUsrVirAddr)
                                         + g_stPoolBuf.u32BufPhyAddr);
        }
        else if ((u32UsrAddr >= g_stChanBuf[u32ChId].u32BufUsrVirAddr)
                 && ((u32UsrAddr - g_stChanBuf[u32ChId].u32BufUsrVirAddr) < g_stChanBuf[u32ChId].u32BufSize))
        {
            pstBuf[i].pu8Data = (HI_U8*)((u32UsrAddr - g_stChanBuf[u32ChId].u32BufUsrVirAddr)
                                         + g_stChanBuf[u32ChId].u32BufPhyAddr);
        }
        else
        {
            HI_ERR_DEMUX("Invalid addr of channel data:ChanId=%d\n", u32ChId);
            return HI_ERR_DMX_INVALID_PARA;
        }
    }

    Param.hChannel = hChannel;
    Param.u32ReleaseNum = u32ReleaseNum;
    Param.pstBuf = pstBuf;

    /*given the address and length of buffer for this interface, given data in kernel mode */
    return ioctl(g_s32DmxFd, CMD_DEMUX_RELEASE_MSG, (HI_S32)&Param);
}

static HI_S32 MPIDMXDestroyTSBuffer(HI_U32 PortId)
{
    HI_S32 ret;

    if (0 == g_stTsBuf[PortId].u32BufPhyAddr)
    {
        HI_ERR_DEMUX("invalid buffer addr!\n");
        return HI_ERR_DMX_INVALID_PARA;
    }

    if (HI_SUCCESS != HI_MUNMAP((HI_VOID*)g_stTsBuf[PortId].u32BufUsrVirAddr))
    {
        HI_ERR_DEMUX("TS buffer unmap failed\n");

        return HI_ERR_DMX_MUNMAP_FAILED;
    }

    ret = ioctl(g_s32DmxFd, CMD_DEMUX_TS_BUFFER_DEINIT, (HI_S32)&PortId);
    if (HI_SUCCESS == ret)
    {
        memset(&g_stTsBuf[PortId], 0, sizeof(DMX_MMZ_BUF_S));
    }

    return ret;
}

static HI_S32 MPIDMXDestroyChannel(HI_U32 ChanId)
{
    HI_HANDLE hChannel = DMX_CHANHANDLE(ChanId);

    /*the record-only channel dosen't have channel buffer */
    if (0 != g_stChanBuf[ChanId].u32BufPhyAddr)
    {
        if (HI_SUCCESS != HI_MUNMAP((HI_VOID*)g_stChanBuf[ChanId].u32BufUsrVirAddr))
        {
            HI_ERR_DEMUX("channel %u buffer unmap failed\n", ChanId);
            return HI_ERR_DMX_MUNMAP_FAILED;
        }

        memset(&g_stChanBuf[ChanId], 0, sizeof(DMX_MMZ_BUF_S));
    }

    return ioctl(g_s32DmxFd, CMD_DEMUX_CHAN_DEL, (HI_S32)&hChannel);
}

/***********************************************************************************
* Function:      HI_MPI_DMX_Init
* Description:   Open DEMUX device.
* Data Accessed: (Optional)
* Data Updated:  (Optional)
* Input:
* Output:
* Return:        HI_SUCCESS:                         Success
*                HI_FAILURE                             failure
* Others:
***********************************************************************************/
HI_S32 HI_MPI_DMX_Init(HI_VOID)
{
    int fd;
    HI_S32 ret;
    DMX_MMZ_BUF_S Param;

#if  DMX_COPY_PES
    memset(MPIPesMemSize, 0, sizeof(HI_U32) * DMX_CHANNEL_CNT);
#endif /* #if DMX_COPY_PES */

    pthread_mutex_lock(&g_stDmxMutex);
    if (g_s32DmxFd == -1)
    {
        fd = open (DmxDevName, O_RDWR, 0);
        if (fd < 0)
        {
            HI_FATAL_DEMUX("Cannot open '%s'\n", DmxDevName);
            (void)pthread_mutex_unlock(&g_stDmxMutex);
            return HI_FAILURE;
        }

        g_s32DmxFd = fd;

        memset(g_stTsBuf, 0, sizeof(g_stTsBuf));
        memset(&g_stPoolBuf, 0, sizeof(g_stPoolBuf));
        memset(g_stChanBuf, 0, sizeof(g_stChanBuf));
        memset(g_RecMmzBuf, 0, sizeof(g_RecMmzBuf));

        ret = ioctl(g_s32DmxFd, CMD_DEMUX_GET_POOLBUF_ADDR, (HI_S32)&Param);
        if (HI_SUCCESS != ret)
        {
            HI_FATAL_DEMUX("Demux init error\n");
            close(g_s32DmxFd);
            g_s32DmxFd = -1;
            pthread_mutex_unlock(&g_stDmxMutex);
            return HI_FAILURE;
        }

        memcpy(&g_stPoolBuf, &Param, sizeof(DMX_MMZ_BUF_S));

        g_stPoolBuf.u32BufUsrVirAddr = (HI_U32)HI_MMAP(g_stPoolBuf.u32BufPhyAddr, g_stPoolBuf.u32BufSize);
        if (0 == g_stPoolBuf.u32BufUsrVirAddr)
        {
            HI_FATAL_DEMUX("Pool buffer mmap error\n");
            close(g_s32DmxFd);
            g_s32DmxFd = -1;
            pthread_mutex_unlock(&g_stDmxMutex);
            return HI_ERR_DMX_MMAP_FAILED;
        }

        pthread_mutex_unlock(&g_stDmxMutex);
        return HI_SUCCESS;
    }
    else
    {
        pthread_mutex_unlock(&g_stDmxMutex);
        return HI_SUCCESS; //again open it, so return success
    }
}

/***********************************************************************************
* Function:      HI_MPI_DMX_DeInit
* Description:   Close DEMUX device.
* Data Accessed: (Optional)
* Data Updated:  (Optional)
* Input:
* Output:
* Return:        HI_SUCCESS:                         Success
*                HI_FAILURE                          failure
* Others:
***********************************************************************************/
HI_S32 HI_MPI_DMX_DeInit(HI_VOID)
{
    HI_S32 ret;
    HI_U32 i;

    pthread_mutex_lock(&g_stDmxMutex);
    if (g_s32DmxFd != -1)
    {
        if (HI_SUCCESS != HI_MUNMAP((HI_VOID*)g_stPoolBuf.u32BufUsrVirAddr))
        {
            pthread_mutex_unlock(&g_stDmxMutex);

            HI_ERR_DEMUX("Pool buffer unmap failed\n");

            return HI_ERR_DMX_MUNMAP_FAILED;
        }

        for (i = 0; i < DMX_CNT; i++)
        {
            if (g_RecMmzBuf[i].u32BufPhyAddr)
            {
                ret = HI_MPI_DMX_StopRecChn(DMX_RECHANDLE(i));
                if (HI_SUCCESS != ret)
                {
                    pthread_mutex_unlock(&g_stDmxMutex);

                    HI_ERR_DEMUX("stop rec failed 0x%x\n", ret);

                    return ret;
                }

                ret = HI_MPI_DMX_DestroyRecChn(DMX_RECHANDLE(i));
                if (HI_SUCCESS != ret)
                {
                    pthread_mutex_unlock(&g_stDmxMutex);

                    HI_ERR_DEMUX("destroy rec failed 0x%x\n", ret);

                    return ret;
                }
            }
        }

        for (i = 0; i < DMX_RAMPORT_CNT; i++)
        {
            if (g_stTsBuf[i].u32BufUsrVirAddr)
            {
                ret = MPIDMXDestroyTSBuffer(i);
                if (HI_SUCCESS != ret)
                {
                    HI_ERR_DEMUX("TS buffer destroy failed:PortId=%d\n", i);
                    (void)pthread_mutex_unlock(&g_stDmxMutex);
                    return HI_FAILURE;
                }
            }
        }

        for (i = 0; i < DMX_CHANNEL_CNT; i++)
        {
            if (0 == g_stChanBuf[i].u32BufPhyAddr)
            {
                continue;
            }

            ret = MPIDMXDestroyChannel(i);
            if (HI_SUCCESS != ret)
            {
                (void)pthread_mutex_unlock(&g_stDmxMutex);

                HI_ERR_DEMUX("Channel delete failed 0x%x\n", ret);

                return ret;
            }
        }

        ret = close(g_s32DmxFd);
        if (ret != 0)
        {
            HI_FATAL_DEMUX("Cannot close '%s'\n", DmxDevName);
            (void)pthread_mutex_unlock(&g_stDmxMutex);
            return HI_FAILURE;
        }

        g_s32DmxFd = -1;
        (void)pthread_mutex_unlock(&g_stDmxMutex);
        return HI_SUCCESS;
    }
    else
    {
        (void)pthread_mutex_unlock(&g_stDmxMutex);
        return HI_SUCCESS;
    }
}

HI_S32 HI_MPI_DMX_GetCapability(HI_UNF_DMX_CAPABILITY_S *pstCap)
{
    HI_S32                  ret;
    HI_UNF_DMX_CAPABILITY_S Param;

    MPIDmxCheckDeviceFd();
    MPIDmxCheckPointer(pstCap);

    ret = ioctl(g_s32DmxFd, CMD_DEMUX_GET_CAPABILITY, (HI_S32)&Param);
    if (HI_SUCCESS == ret)
    {
        pstCap->u32TunerPortNum = Param.u32TunerPortNum;
        pstCap->u32RamPortNum   = Param.u32RamPortNum;
        pstCap->u32DmxNum       = Param.u32DmxNum;
        pstCap->u32ChannelNum   = Param.u32ChannelNum;
        pstCap->u32AVChannelNum = Param.u32AVChannelNum;
        pstCap->u32FilterNum    = Param.u32FilterNum;
        pstCap->u32KeyNum       = Param.u32KeyNum;
        pstCap->u32RecChnNum    = Param.u32RecChnNum;
    }

    return ret;
}

HI_S32 HI_MPI_DMX_GetTSPortAttr(HI_UNF_DMX_PORT_E enPortId, HI_UNF_DMX_PORT_ATTR_S *pstAttr)
{
    HI_S32              ret;
    DMX_Port_GetAttr_S  Param;

    MPIDmxCheckDeviceFd();
    MPIDmxCheckPointer(pstAttr);

    ret = DMX_MPI_PortGetType(enPortId, &Param.PortMode, &Param.PortId);
    if (HI_SUCCESS != ret)
    {
        return ret;
    }

    ret = ioctl(g_s32DmxFd, CMD_DEMUX_PORT_GET_ATTR, (HI_S32)&Param);
    if (HI_SUCCESS == ret)
    {
        memcpy(pstAttr, &Param.PortAttr, sizeof(HI_UNF_DMX_PORT_ATTR_S));
    }

    return ret;
}

HI_S32 HI_MPI_DMX_SetTSPortAttr(HI_UNF_DMX_PORT_E enPortId, const HI_UNF_DMX_PORT_ATTR_S *pstAttr)
{
    HI_S32              ret;
    DMX_Port_SetAttr_S  Param;

    MPIDmxCheckDeviceFd();
    MPIDmxCheckPointer(pstAttr);

    ret = DMX_MPI_PortGetType(enPortId, &Param.PortMode, &Param.PortId);
    if (HI_SUCCESS != ret)
    {
        return ret;
    }

    memcpy(&Param.PortAttr, pstAttr, sizeof(Param.PortAttr));

    return ioctl(g_s32DmxFd, CMD_DEMUX_PORT_SET_ATTR, (HI_S32)&Param);
}

HI_S32 HI_MPI_DMX_AttachTSPort(HI_U32 u32DmxId, HI_UNF_DMX_PORT_E enPortId)
{
    HI_S32              ret;
    DMX_Port_Attach_S   Param;

    MPIDmxCheckDeviceFd();

    ret = DMX_MPI_PortGetType(enPortId, &Param.PortMode, &Param.PortId);
    if (HI_SUCCESS != ret)
    {
        return ret;
    }

    Param.DmxId = u32DmxId;

    return ioctl(g_s32DmxFd, CMD_DEMUX_PORT_ATTACH, (HI_S32)&Param);
}

HI_S32 HI_MPI_DMX_DetachTSPort(HI_U32 u32DmxId)
{
    MPIDmxCheckDeviceFd();

    return ioctl(g_s32DmxFd, CMD_DEMUX_PORT_DETACH, (HI_S32)&u32DmxId);
}

HI_S32 HI_MPI_DMX_GetTSPortId(HI_U32 u32DmxId, HI_UNF_DMX_PORT_E *penPortId)
{
    HI_S32              ret;
    DMX_Port_GetId_S    Param;

    MPIDmxCheckDeviceFd();
    MPIDmxCheckPointer(penPortId);

    Param.DmxId = u32DmxId;

    ret = ioctl(g_s32DmxFd, CMD_DEMUX_PORT_GETID, (HI_S32)&Param);
    if (HI_SUCCESS == ret)
    {
        *penPortId = (HI_UNF_DMX_PORT_E)Param.PortId;

        if (DMX_PORT_MODE_RAM == Param.PortMode)
        {
            *penPortId = (HI_UNF_DMX_PORT_E)(HI_UNF_DMX_PORT_RAM_0 + Param.PortId);
        }
    }

    return ret;
}

HI_S32 HI_MPI_DMX_GetTSPortPacketNum(HI_UNF_DMX_PORT_E enPortId, HI_UNF_DMX_PORT_PACKETNUM_S *sPortStat)
{
    HI_S32              ret;
    DMX_PortPacketNum_S Param;

    MPIDmxCheckDeviceFd();
    MPIDmxCheckPointer(sPortStat);

    ret = DMX_MPI_PortGetType(enPortId, &Param.PortMode, &Param.PortId);
    if (HI_SUCCESS != ret)
    {
        return ret;
    }

    ret = ioctl(g_s32DmxFd, CMD_DEMUX_PORT_GETPACKETNUM, (HI_S32)&Param);
    if (HI_SUCCESS == ret)
    {
        sPortStat->u32TsPackCnt     = Param.TsPackCnt;
        sPortStat->u32ErrTsPackCnt  = Param.ErrTsPackCnt;
    }

    return ret;
}

/* multi-times request in process, return success directly
    the first time use it in this process, need to map user mode address.
 */
HI_S32 HI_MPI_DMX_CreateTSBuffer(HI_UNF_DMX_PORT_E enPortId, HI_U32 u32TsBufSize, HI_HANDLE *phTsBuffer)
{
    HI_S32          ret;
    HI_U32          PortId;
    DMX_PORT_MODE_E PortMode;
    DMX_TsBufInit_S Param;

    MPIDmxCheckDeviceFd();
    MPIDmxCheckPointer(phTsBuffer);

    ret = DMX_MPI_PortGetType(enPortId, &PortMode, &PortId);
    if (HI_SUCCESS != ret)
    {
        return ret;
    }

    if (DMX_PORT_MODE_TUNER == PortMode)
    {
        HI_ERR_DEMUX("Invalid port mode:%d!\n",PortMode);
        return HI_ERR_DMX_NOT_SUPPORT;
    }

    Param.PortId    = PortId;
    Param.BufSize   = u32TsBufSize;

    ret = ioctl(g_s32DmxFd, CMD_DEMUX_TS_BUFFER_INIT, (HI_S32)&Param);
    if (HI_SUCCESS == ret)
    {
        Param.TsBuf.u32BufUsrVirAddr = (HI_U32)HI_MMAP(Param.TsBuf.u32BufPhyAddr, Param.BufSize);
        if (0 == Param.TsBuf.u32BufUsrVirAddr)
        {
            HI_ERR_DEMUX("Ts buffer mmap error: PortId=%d\n", enPortId);

            ioctl(g_s32DmxFd, CMD_DEMUX_TS_BUFFER_DEINIT, (HI_S32)&PortId);

            return HI_ERR_DMX_MMAP_FAILED;
        }

        memcpy(&g_stTsBuf[PortId], &Param.TsBuf, sizeof(DMX_MMZ_BUF_S));

        *phTsBuffer = DMX_PORTID2BUFFERHANDLE(PortId);
    }

    return ret;
}

HI_S32 HI_MPI_DMX_DestroyTSBuffer(HI_HANDLE hTsBuffer)
{
    MPIDmxCheckDeviceFd();
    DMX_CHECK_BUFFERHANDLE(hTsBuffer);

    return MPIDMXDestroyTSBuffer(DMX_BUFFERHANDLE2PORTID(hTsBuffer));
}

HI_S32 HI_MPI_DMX_GetTSBuffer(HI_HANDLE hTsBuffer, HI_U32 u32ReqLen,
                              HI_UNF_STREAM_BUF_S *pstData, HI_U32 *pu32PhyAddr, HI_U32 u32TimeOutMs)
{
    HI_S32          ret;
    DMX_TsBufGet_S  Param;

    MPIDmxCheckDeviceFd();
    DMX_CHECK_BUFFERHANDLE(hTsBuffer);
    MPIDmxCheckPointer(pstData);
    MPIDmxCheckPointer(pu32PhyAddr);

    Param.PortId    = DMX_BUFFERHANDLE2PORTID(hTsBuffer);
    Param.ReqLen    = u32ReqLen;
    Param.TimeoutMs = u32TimeOutMs;

    ret = ioctl(g_s32DmxFd, CMD_DEMUX_TS_BUFFER_GET, (HI_S32)&Param);
    if (HI_SUCCESS == ret)
    {
        pstData->u32Size = Param.Data.BufLen;
        pstData->pu8Data = (HI_U8*)(g_stTsBuf[Param.PortId].u32BufUsrVirAddr
                                    + Param.Data.BufPhyAddr
                                    - g_stTsBuf[Param.PortId].u32BufPhyAddr);

        *pu32PhyAddr = Param.Data.BufPhyAddr;
    }

    return ret;
}

/*u32ValidDataLen is the valid length from u32StartPos */
HI_S32 HI_MPI_DMX_PutTSBuffer(HI_HANDLE hTsBuffer, HI_U32 u32ValidDataLen, HI_U32 u32StartPos)
{
    DMX_TsBufPut_S  Param;

    MPIDmxCheckDeviceFd();
    DMX_CHECK_BUFFERHANDLE(hTsBuffer);

    Param.PortId        = DMX_BUFFERHANDLE2PORTID(hTsBuffer);
    Param.ValidDataLen  = u32ValidDataLen;
    Param.StartPos      = u32StartPos;

    return ioctl(g_s32DmxFd, CMD_DEMUX_TS_BUFFER_PUT, (HI_S32)&Param);
}

HI_S32 HI_MPI_DMX_ResetTSBuffer(HI_HANDLE hTsBuffer)
{
    HI_U32 PortId = DMX_BUFFERHANDLE2PORTID(hTsBuffer);

    MPIDmxCheckDeviceFd();
    DMX_CHECK_BUFFERHANDLE(hTsBuffer);

    return ioctl(g_s32DmxFd, CMD_DEMUX_TS_BUFFER_RESET, (HI_S32)&PortId);
}

/* get the status without limiting for muliti-process */
HI_S32 HI_MPI_DMX_GetTSBufferStatus(HI_HANDLE hTsBuffer, HI_UNF_DMX_TSBUF_STATUS_S *pStatus)
{
    HI_S32              ret;
    DMX_TsBufStaGet_S   Param;

    MPIDmxCheckDeviceFd();
    DMX_CHECK_BUFFERHANDLE(hTsBuffer);
    MPIDmxCheckPointer(pStatus);

    Param.PortId = DMX_BUFFERHANDLE2PORTID(hTsBuffer);

    ret = ioctl(g_s32DmxFd, CMD_DEMUX_TS_BUFFER_GET_STATUS, (HI_S32)&Param);
    if (HI_SUCCESS == ret)
    {
        memcpy(pStatus, &Param.Status, sizeof(HI_UNF_DMX_TSBUF_STATUS_S));
    }

    return ret;
}

HI_S32 HI_MPI_DMX_GetTSBufferPortId(HI_HANDLE hTsBuffer, HI_UNF_DMX_PORT_E *penPortId)
{
    HI_U32 PortId = DMX_BUFFERHANDLE2PORTID(hTsBuffer);

    MPIDmxCheckDeviceFd();
    DMX_CHECK_BUFFERHANDLE(hTsBuffer);
    MPIDmxCheckPointer(penPortId);

    if (0 == g_stTsBuf[PortId].u32BufPhyAddr)
    {
        HI_ERR_DEMUX("TS buffer handle invalid, buffer not created:PortId=%d\n", PortId);
        return HI_ERR_DMX_INVALID_PARA;
    }

    *penPortId = (HI_UNF_DMX_PORT_E)(HI_UNF_DMX_PORT_RAM_0 + PortId);

    return HI_SUCCESS;
}

HI_S32 HI_MPI_DMX_GetTSBufferHandle(HI_UNF_DMX_PORT_E enPortId, HI_HANDLE *phTsBuffer)
{
    HI_S32          ret;
    HI_U32          PortId;
    DMX_PORT_MODE_E PortMode;

    MPIDmxCheckDeviceFd();
    MPIDmxCheckPointer(phTsBuffer);

    ret = DMX_MPI_PortGetType(enPortId, &PortMode, &PortId);
    if (HI_SUCCESS != ret)
    {
        return ret;
    }

    if (DMX_PORT_MODE_TUNER == PortMode)
    {
        HI_ERR_DEMUX("The Port %u not support TS buffer\n", enPortId);
        return HI_ERR_DMX_INVALID_PARA;
    }

    if (0 == g_stTsBuf[PortId].u32BufPhyAddr)
    {
        HI_ERR_DEMUX("TS Buffer not created\n");
        return HI_ERR_DMX_INVALID_PARA;
    }

    *phTsBuffer = DMX_PORTID2BUFFERHANDLE(PortId);

    return HI_SUCCESS;
}

HI_S32 HI_MPI_DMX_GetPortMode(HI_U32 u32DmxId, HI_UNF_DMX_PORT_MODE_E *penPortMod)
{
    HI_S32                  ret;
    HI_UNF_DMX_PORT_E       PortId;
    HI_UNF_DMX_PORT_ATTR_S  PortAttr;

    if (-1 == g_s32DmxFd)           
    {                               
        HI_WARN_DEMUX("Dmx not init!\n"); 
        return HI_ERR_DMX_NOT_INIT; 
    }
    
    MPIDmxCheckPointer(penPortMod);

    ret = HI_MPI_DMX_GetTSPortId(u32DmxId, &PortId);
    if (HI_SUCCESS == ret)
    {
        ret = HI_MPI_DMX_GetTSPortAttr(PortId, &PortAttr);
        if (HI_SUCCESS == ret)
        {
            *penPortMod = PortAttr.enPortMod;
        }
    }

    return ret;
}

HI_S32 HI_MPI_DMX_GetChannelDefaultAttr(HI_UNF_DMX_CHAN_ATTR_S *pstChAttr)
{
    MPIDmxCheckDeviceFd();
    MPIDmxCheckPointer(pstChAttr);

    pstChAttr->u32BufSize       = DMX_DEFAULT_CHANBUF_SIZE;
    pstChAttr->enCRCMode        = HI_UNF_DMX_CHAN_CRC_MODE_BY_SYNTAX_AND_DISCARD;
    pstChAttr->enChannelType    = HI_UNF_DMX_CHAN_TYPE_SEC;
    pstChAttr->enOutputMode     = HI_UNF_DMX_CHAN_OUTPUT_MODE_PLAY;

    return HI_SUCCESS;
}

HI_S32 HI_MPI_DMX_CreateChannel(HI_U32 u32DmxId, const HI_UNF_DMX_CHAN_ATTR_S *pstChAttr,
                                HI_HANDLE *phChannel)
{
    HI_S32 ret;
    DMX_ChanNew_S Param;
    HI_U32 u32ChId;

    MPIDmxCheckDeviceFd();
    MPIDmxCheckPointer(pstChAttr);
    MPIDmxCheckPointer(phChannel);

    Param.u32DemuxId = u32DmxId;
    memcpy(&Param.stChAttr, pstChAttr, sizeof(HI_UNF_DMX_CHAN_ATTR_S));

    ret = ioctl(g_s32DmxFd, CMD_DEMUX_CHAN_NEW, (HI_S32)&Param);
    if (HI_SUCCESS == ret)
    {
        *phChannel = Param.hChannel;
        u32ChId = DMX_CHANID(Param.hChannel);

        if ((HI_UNF_DMX_CHAN_OUTPUT_MODE_PLAY == pstChAttr->enOutputMode)
            || (HI_UNF_DMX_CHAN_OUTPUT_MODE_PLAY_REC == pstChAttr->enOutputMode))
        {
            g_stChanBuf[u32ChId].u32BufUsrVirAddr = (HI_U32)HI_MMAP(
                Param.stChBuf.u32BufPhyAddr, Param.stChBuf.u32BufSize);

            if (0 == g_stChanBuf[u32ChId].u32BufUsrVirAddr)
            {
                HI_FATAL_DEMUX("Channel buffer mmap error: ChanId=%d\n", u32ChId);

                if (HI_SUCCESS != ioctl(g_s32DmxFd, CMD_DEMUX_CHAN_DEL, (HI_S32)phChannel))
                {
                    HI_ERR_DEMUX("delete channel failed:ChId=%d.\n", u32ChId);
                }

                return HI_ERR_DMX_MMAP_FAILED;
            }

            g_stChanBuf[u32ChId].u32BufPhyAddr      = Param.stChBuf.u32BufPhyAddr;
            g_stChanBuf[u32ChId].u32BufKerVirAddr   = Param.stChBuf.u32BufKerVirAddr;
            g_stChanBuf[u32ChId].u32BufSize         = Param.stChBuf.u32BufSize;
        }
    }

    return ret;
}

HI_S32 HI_MPI_DMX_DestroyChannel(HI_HANDLE hChannel)
{
    HI_U32 u32ChId;

    MPIDmxCheckDeviceFd();
    DMX_CHECK_CHANHANDLE(hChannel);

    u32ChId = DMX_CHANID(hChannel);

    return MPIDMXDestroyChannel(u32ChId);
}

HI_S32 HI_MPI_DMX_GetChannelAttr(HI_HANDLE hChannel, HI_UNF_DMX_CHAN_ATTR_S *pstChAttr)
{
    HI_S32 ret;
    DMX_GetChan_Attr_S Param;

    MPIDmxCheckDeviceFd();
    DMX_CHECK_CHANHANDLE(hChannel);
    MPIDmxCheckPointer(pstChAttr);

    Param.hChannel = hChannel;
    ret = ioctl(g_s32DmxFd, CMD_DEMUX_CHAN_ATTR_GET, (HI_S32)&Param);

    if (HI_SUCCESS == ret)
    {
        memcpy(pstChAttr, &Param.stChAttr, sizeof(HI_UNF_DMX_CHAN_ATTR_S));
    }

    return ret;
}

HI_S32 HI_MPI_DMX_SetChannelAttr(HI_HANDLE hChannel, const HI_UNF_DMX_CHAN_ATTR_S *pstChAttr)
{
    DMX_SetChan_Attr_S Param;

    MPIDmxCheckDeviceFd();
    DMX_CHECK_CHANHANDLE(hChannel);
    MPIDmxCheckPointer(pstChAttr);

    Param.hChannel = hChannel;
    memcpy(&Param.stChAttr, pstChAttr, sizeof(HI_UNF_DMX_CHAN_ATTR_S));

    /*set disable CRC in non-section mode */
    if ((HI_UNF_DMX_CHAN_TYPE_PES == Param.stChAttr.enChannelType)
        || (HI_UNF_DMX_CHAN_TYPE_POST == Param.stChAttr.enChannelType)
        || (HI_UNF_DMX_CHAN_TYPE_VID == Param.stChAttr.enChannelType)
        || (HI_UNF_DMX_CHAN_TYPE_AUD == Param.stChAttr.enChannelType))
    {
        Param.stChAttr.enCRCMode = HI_UNF_DMX_CHAN_CRC_MODE_FORBID;
    }

    return ioctl(g_s32DmxFd, CMD_DEMUX_CHAN_ATTR_SET, (HI_S32)&Param);
}

HI_S32 HI_MPI_DMX_SetChannelPID(HI_HANDLE hChannel, HI_U32 u32Pid)
{
    DMX_ChanPIDSet_S Param;

    MPIDmxCheckDeviceFd();
    DMX_CHECK_CHANHANDLE(hChannel);

    Param.hChannel = hChannel;
    Param.u32Pid = u32Pid;
    return ioctl(g_s32DmxFd, CMD_DEMUX_PID_SET, (HI_S32)&Param);
}

HI_S32 HI_MPI_DMX_GetChannelPID(HI_HANDLE hChannel, HI_U32 *pu32Pid)
{
    HI_S32 ret;
    DMX_ChanPIDGet_S Param;

    MPIDmxCheckDeviceFd();
    DMX_CHECK_CHANHANDLE(hChannel);
    MPIDmxCheckPointer(pu32Pid);

    Param.hChannel = hChannel;
    ret = ioctl(g_s32DmxFd, CMD_DEMUX_PID_GET, (HI_S32)&Param);

    if (HI_SUCCESS == ret)
    {
        *pu32Pid = Param.u32Pid;
    }

    return ret;
}

HI_S32 HI_MPI_DMX_OpenChannel(HI_HANDLE hChannel)
{
    MPIDmxCheckDeviceFd();
    DMX_CHECK_CHANHANDLE(hChannel);

    return ioctl(g_s32DmxFd, CMD_DEMUX_CHAN_OPEN, (HI_S32)&hChannel);
}

HI_S32 HI_MPI_DMX_CloseChannel(HI_HANDLE hChannel)
{
    MPIDmxCheckDeviceFd();
    DMX_CHECK_CHANHANDLE(hChannel);
    return ioctl(g_s32DmxFd, CMD_DEMUX_CHAN_CLOSE, (HI_S32)&hChannel);
}

HI_S32 HI_MPI_DMX_GetChannelStatus(HI_HANDLE hChannel, HI_UNF_DMX_CHAN_STATUS_S *pstStatus)
{
    HI_S32 ret;
    DMX_ChanStatusGet_S Param;

    MPIDmxCheckDeviceFd();
    DMX_CHECK_CHANHANDLE(hChannel);
    MPIDmxCheckPointer(pstStatus);

    Param.hChannel = hChannel;
    ret = ioctl(g_s32DmxFd, CMD_DEMUX_GET_CHAN_STATUS, (HI_S32)&Param);

    if (HI_SUCCESS == ret)
    {
        memcpy(pstStatus, &Param.stStatus, sizeof(HI_UNF_DMX_CHAN_STATUS_S));
    }

    return ret;
}

HI_S32 HI_MPI_DMX_GetChannelHandle(HI_U32 u32DmxId, HI_U32 u32Pid, HI_HANDLE *phChannel)
{
    HI_S32 ret;
    DMX_ChannelIdGet_S Param;

    MPIDmxCheckDeviceFd();
    MPIDmxCheckPointer(phChannel);

    Param.u32DmxId  = u32DmxId;
    Param.u32Pid    = u32Pid;

    ret = ioctl(g_s32DmxFd, CMD_DEMUX_CHANID_GET, (HI_S32)&Param);
    if (HI_SUCCESS == ret)
    {
        *phChannel = Param.hChannel;
    }

    return ret;
}

HI_S32 HI_MPI_DMX_GetFreeChannelCount(HI_U32 u32DmxId, HI_U32 *pu32FreeCount)
{
    HI_S32 ret;
    DMX_FreeChanGet_S Param;

    MPIDmxCheckDeviceFd();
    MPIDmxCheckPointer(pu32FreeCount);

    Param.u32DmxId = u32DmxId;

    ret = ioctl(g_s32DmxFd, CMD_DEMUX_FREECHAN_GET, (HI_S32)&Param);
    if (HI_SUCCESS == ret)
    {
        *pu32FreeCount = Param.u32FreeCount;
    }

    return ret;
}

HI_S32 HI_MPI_DMX_GetScrambledFlag(HI_HANDLE hChannel, HI_UNF_DMX_SCRAMBLED_FLAG_E *penScrambleFlag)
{
    HI_S32 ret;
    DMX_ScrambledFlagGet_S Param;

    MPIDmxCheckDeviceFd();
    DMX_CHECK_CHANHANDLE(hChannel);
    MPIDmxCheckPointer(penScrambleFlag);

    Param.hChannel = hChannel;
    ret = ioctl(g_s32DmxFd, CMD_DEMUX_SCRAMBLEFLAG_GET, (HI_S32)&Param);

    if (HI_SUCCESS == ret)
    {
        *penScrambleFlag = Param.enScrambleFlag;
    }

    return ret;
}

HI_S32 HI_MPI_DMX_SetChannelEosFlag(HI_HANDLE hChannel)
{
    MPIDmxCheckDeviceFd();
    DMX_CHECK_CHANHANDLE(hChannel);

    return ioctl(g_s32DmxFd, CMD_DEMUX_CHAN_SET_EOS_FLAG, (HI_S32)&hChannel);
}

HI_S32 HI_MPI_DMX_GetChannelTsCount(HI_HANDLE hChannel, HI_U32 *pu32TsCount)
{
    HI_S32 ret;
    DMX_ChanChanTsCnt_S Param;

    MPIDmxCheckDeviceFd();
    DMX_CHECK_CHANHANDLE(hChannel);
    MPIDmxCheckPointer(pu32TsCount);

    Param.hChannel = hChannel;
    ret = ioctl(g_s32DmxFd, CMD_DEMUX_GET_CHAN_TSCNT, (HI_S32)&Param);

    if (HI_SUCCESS == ret)
    {
        *pu32TsCount = Param.u32ChanTsCnt;
    }

    return ret;
}

HI_S32 HI_MPI_DMX_CreateFilter(HI_U32 u32DmxId, const HI_UNF_DMX_FILTER_ATTR_S *pstFilterAttr, HI_HANDLE *phFilter)
{
    HI_S32          ret;
    DMX_NewFilter_S Param;

    MPIDmxCheckDeviceFd();
    MPIDmxCheckPointer(pstFilterAttr);
    MPIDmxCheckPointer(phFilter);

    Param.DmxId = u32DmxId;
    memcpy(&Param.FilterAttr, pstFilterAttr, sizeof(HI_UNF_DMX_FILTER_ATTR_S));

    ret = ioctl(g_s32DmxFd, CMD_DEMUX_FLT_NEW, (HI_S32)&Param);
    if (HI_SUCCESS == ret)
    {
        *phFilter = Param.Filter;
    }

    return ret;
}

HI_S32 HI_MPI_DMX_DestroyFilter(HI_HANDLE hFilter)
{
    MPIDmxCheckDeviceFd();

    return ioctl(g_s32DmxFd, CMD_DEMUX_FLT_DEL, (HI_S32)&hFilter);
}

HI_S32 HI_MPI_DMX_DeleteAllFilter(HI_HANDLE hChannel)
{
    MPIDmxCheckDeviceFd();

    return ioctl(g_s32DmxFd, CMD_DEMUX_FLT_DELALL, (HI_S32)&hChannel);
}

HI_S32 HI_MPI_DMX_SetFilterAttr(HI_HANDLE hFilter, const HI_UNF_DMX_FILTER_ATTR_S *pstFilterAttr)
{
    DMX_FilterSet_S Param;

    MPIDmxCheckDeviceFd();
    MPIDmxCheckPointer(pstFilterAttr);

    Param.Filter = hFilter;
    memcpy(&Param.FilterAttr, pstFilterAttr, sizeof(HI_UNF_DMX_FILTER_ATTR_S));

    return ioctl(g_s32DmxFd, CMD_DEMUX_FLT_SET, (HI_S32)&Param);
}

HI_S32 HI_MPI_DMX_GetFilterAttr(HI_HANDLE hFilter, HI_UNF_DMX_FILTER_ATTR_S *pstFilterAttr)
{
    HI_S32          ret;
    DMX_FilterGet_S Param;

    MPIDmxCheckDeviceFd();
    MPIDmxCheckPointer(pstFilterAttr);

    Param.Filter = hFilter;

    ret = ioctl(g_s32DmxFd, CMD_DEMUX_FLT_GET, (HI_S32)&Param);
    if (HI_SUCCESS == ret)
    {
        memcpy(pstFilterAttr, &Param.FilterAttr, sizeof(HI_UNF_DMX_FILTER_ATTR_S));
    }

    return ret;
}

HI_S32 HI_MPI_DMX_AttachFilter(HI_HANDLE hFilter, HI_HANDLE hChannel)
{
    DMX_FilterAttach_S Param;

    MPIDmxCheckDeviceFd();

    Param.Filter    = hFilter;
    Param.Channel   = hChannel;

    return ioctl(g_s32DmxFd, CMD_DEMUX_FLT_ATTACH, (HI_S32)&Param);
}

HI_S32 HI_MPI_DMX_DetachFilter(HI_HANDLE hFilter, HI_HANDLE hChannel)
{
    DMX_FilterDetach_S Param;

    MPIDmxCheckDeviceFd();

    Param.Filter    = hFilter;
    Param.Channel   = hChannel;

    return ioctl(g_s32DmxFd, CMD_DEMUX_FLT_DETACH, (HI_S32)&Param);
}

HI_S32 HI_MPI_DMX_GetFilterChannelHandle(HI_HANDLE hFilter, HI_HANDLE *phChannel)
{
    HI_S32                      ret;
    DMX_FilterChannelIDGet_S    Param;

    MPIDmxCheckDeviceFd();
    MPIDmxCheckPointer(phChannel);

    Param.Filter = hFilter;

    ret = ioctl(g_s32DmxFd, CMD_DEMUX_FLT_CHANID_GET, (HI_S32)&Param);
    if (HI_SUCCESS == ret)
    {
        *phChannel = Param.Channel;
    }

    return ret;
}

HI_S32 HI_MPI_DMX_GetFreeFilterCount(HI_U32 u32DmxId, HI_U32 *pu32FreeCount)
{
    HI_S32              ret;
    DMX_FreeFilterGet_S Param;

    MPIDmxCheckDeviceFd();
    MPIDmxCheckPointer(pu32FreeCount);

    Param.DmxId = u32DmxId;

    ret = ioctl(g_s32DmxFd, CMD_DEMUX_FREEFLT_GET, (HI_S32)&Param);
    if (HI_SUCCESS == ret)
    {
        *pu32FreeCount = Param.FreeCount;
    }

    return ret;
}

/* return the data case of all the channel, excepted audio and video channel, the number of handle will not more than what user want */
HI_S32  HI_MPI_DMX_GetDataHandle(HI_HANDLE *phChannel, HI_U32 *pu32ChNum,
                                 HI_U32 u32TimeOutMs)
{
    HI_S32 ret;
    DMX_GetDataFlag_S Param;
    HI_U32 ChNumGet = 0;

    MPIDmxCheckDeviceFd();
    MPIDmxCheckPointer(phChannel);
    MPIDmxCheckPointer(pu32ChNum);

    if (0 == *pu32ChNum)
    {
        HI_ERR_DEMUX("Invalid channel number:%d\n", *pu32ChNum);
        return HI_ERR_DMX_INVALID_PARA;
    }

    Param.u32TimeOutMs = u32TimeOutMs;

    /* get whether the 96 channels data has flag or not*/
    ret = ioctl(g_s32DmxFd, CMD_DEMUX_GET_DATA_FLAG, (HI_S32)&Param);
    if (HI_SUCCESS == ret)
    {
        HI_U32 i;

        /* in sequence, look up all the channel, and return the existent data channel */
        for (i = 0; i < DMX_CHANNEL_CNT; i++)
        {
            if ((Param.u32Flag[i / 32] >> (i % 32)) & 0x01)
            {
                phChannel[ChNumGet] = DMX_CHANHANDLE(i);
                ChNumGet++;
                if (ChNumGet >= *pu32ChNum)
                {
                    break;
                }
            }
        }
    }

    /* return the number of existent data channel */
    *pu32ChNum = ChNumGet;

    return ret;
}

HI_S32  HI_MPI_DMX_SelectDataHandle(HI_HANDLE *phWatchChannel, HI_U32 u32WatchNum,
                                    HI_HANDLE *phDataChannel, HI_U32 *pu32ChNum, HI_U32 u32TimeOutMs)
{
    HI_S32 ret;
    DMX_SelectDataFlag_S Param;
    HI_U32 ChNumGet = 0;
    HI_U32 i;

    MPIDmxCheckDeviceFd();
    MPIDmxCheckPointer(phDataChannel);
    MPIDmxCheckPointer(phWatchChannel);
    MPIDmxCheckPointer(pu32ChNum);
    for (i = 0; i < u32WatchNum; i++)
    {
        DMX_CHECK_CHANHANDLE(phWatchChannel[i]);
    }

    Param.u32Flag[0] = 0;
    Param.u32Flag[1] = 0;
    Param.u32Flag[2] = 0;

    if (0 == u32WatchNum)
    {
        HI_ERR_DEMUX("Invalid channel number:%d\n", u32WatchNum);
        return HI_ERR_DMX_INVALID_PARA;
    }

    Param.channel = phWatchChannel;
    Param.channelnum   = u32WatchNum;
    Param.u32TimeOutMs = u32TimeOutMs;

    /* get whether the pointed channel data has flag or not */
    ret = ioctl(g_s32DmxFd, CMD_DEMUX_SELECT_DATA_FLAG, (HI_S32)&Param);
    if (HI_SUCCESS == ret)
    {
        /* in sequence, look up all the channel, and return the existent data channel */
        for (i = 0; i < DMX_CHANNEL_CNT; i++)
        {
            if ((Param.u32Flag[i / 32] >> (i % 32)) & 0x01)
            {
                phDataChannel[ChNumGet] = DMX_CHANHANDLE(i);

                ChNumGet++;
                if (ChNumGet >= u32WatchNum)
                {
                    break;
                }
            }
        }
    }

    /* return the number of existent data channel */
    *pu32ChNum = ChNumGet;
    return ret;
}

HI_S32  HI_MPI_DMX_AcquireBuf(HI_HANDLE hChannel, HI_U32 u32AcquireNum,
                              HI_U32 *pu32AcquiredNum, HI_UNF_DMX_DATA_S *pstBuf,
                              HI_U32 u32TimeOutMs)
{
    HI_S32 ret;
    DMX_AcqMsg_S Param;
    HI_U32 i;
    HI_U32 u32PhyAddr;
    HI_U32 u32ChId;
    #if  DMX_COPY_PES
    HI_UNF_DMX_DATA_S stBufTmp[16];
    #endif /* #if DMX_COPY_PES */

    HI_UNF_DMX_DATA_S *pstBufTmp;

    MPIDmxCheckDeviceFd();
    DMX_CHECK_CHANHANDLE(hChannel);
    MPIDmxCheckPointer(pu32AcquiredNum);
    MPIDmxCheckPointer(pstBuf);
    pstBufTmp = pstBuf;
    #if  DMX_COPY_PES
    if(MPIGetChnType(hChannel) == HI_UNF_DMX_CHAN_TYPE_PES)
    {
        pstBufTmp = stBufTmp;
    }
    #endif

    u32ChId = DMX_CHANID(hChannel);
    Param.hChannel = hChannel;
    Param.u32AcquireNum = u32AcquireNum;
    Param.pstBuf = pstBufTmp;
    Param.u32TimeOutMs = u32TimeOutMs;

    /* given the address and length of the buffer, the buffer address array will be copied out in kernel mode */
    ret = ioctl(g_s32DmxFd, CMD_DEMUX_ACQUIRE_MSG, (HI_S32)&Param);
    if ((HI_SUCCESS != ret) || (Param.u32AcquiredNum == 0))
    {
        *pu32AcquiredNum = 0;
        return ret;
    }
#ifdef DMX_USE_ECM
    if (MPIGetSwFlag(hChannel))
    {
        DMX_ChanSwBufGet_S stChnBuf;

        if (!g_stChanBuf[u32ChId].u32BufPhyAddr ||
            g_stChanBuf[u32ChId].u32BufPhyAddr == g_stPoolBuf.u32BufPhyAddr)
        {
            if (g_stChanBuf[u32ChId].u32BufUsrVirAddr)
            {
                if (HI_SUCCESS != HI_MUNMAP((HI_VOID*)g_stChanBuf[u32ChId].u32BufUsrVirAddr))
                {
                    HI_ERR_DEMUX("channel %u buffer unmap failed\n", u32ChId);
                    return HI_ERR_DMX_MUNMAP_FAILED;
                }
            }
            stChnBuf.hChannel = hChannel;
            ret = ioctl(g_s32DmxFd, CMD_DEMUX_GET_CHAN_SWBUF_ADDR, (HI_S32)&stChnBuf);
            if (HI_SUCCESS != ret)
            {
                HI_FATAL_DEMUX("get sw buffer addr error:%x\n",ret);
                return HI_FAILURE;
            }
            g_stChanBuf[u32ChId].u32BufPhyAddr = stChnBuf.stChnBuf.u32BufPhyAddr;
            g_stChanBuf[u32ChId].u32BufSize    = stChnBuf.stChnBuf.u32BufSize;
            g_stChanBuf[u32ChId].u32BufKerVirAddr = stChnBuf.stChnBuf.u32BufKerVirAddr;
            g_stChanBuf[u32ChId].u32BufUsrVirAddr = (HI_U32)HI_MMAP(
            g_stChanBuf[u32ChId].u32BufPhyAddr, g_stChanBuf[u32ChId].u32BufSize);
        }
    }
#endif
    HI_INFO_DEMUX("acquired %d: firstaddr:0x%x, poolAddr:0x%x, poolvir:0x%x, poolzise:0x%x\n",
                  Param.u32AcquiredNum, (HI_U32)pstBufTmp[0].pu8Data, g_stPoolBuf.u32BufPhyAddr,
                  g_stPoolBuf.u32BufUsrVirAddr, g_stPoolBuf.u32BufSize);

    for (i = 0; i < Param.u32AcquiredNum; i++)
    {
        u32PhyAddr = (HI_U32)pstBufTmp[i].pu8Data;
        if ((u32PhyAddr >= g_stPoolBuf.u32BufPhyAddr)
            && ((u32PhyAddr - g_stPoolBuf.u32BufPhyAddr) < g_stPoolBuf.u32BufSize))
        {
            pstBufTmp[i].pu8Data = (HI_U8*)((u32PhyAddr - g_stPoolBuf.u32BufPhyAddr)
                                         + g_stPoolBuf.u32BufUsrVirAddr);
        }
        else if ((u32PhyAddr >= g_stChanBuf[u32ChId].u32BufPhyAddr)
                 && ((u32PhyAddr - g_stChanBuf[u32ChId].u32BufPhyAddr) < g_stChanBuf[u32ChId].u32BufSize))
        {
            pstBufTmp[i].pu8Data = (HI_U8*)((u32PhyAddr - g_stChanBuf[u32ChId].u32BufPhyAddr)
                                         + g_stChanBuf[u32ChId].u32BufUsrVirAddr);
        }
        else
        {
            HI_ERR_DEMUX("Invalid Phy addr of channel data:ChanId=%d\n", u32ChId);
            *pu32AcquiredNum = 0;
            return HI_FAILURE;
        }
    }

    *pu32AcquiredNum = Param.u32AcquiredNum;
#if  DMX_COPY_PES
    if (MPIGetChnType(hChannel) == HI_UNF_DMX_CHAN_TYPE_PES)
    {
        HI_S32 s32PesType, s32Ret;
        HI_U32 u32PesLen = 0;
        HI_U32 u32MallocLen = 0;
        HI_U8* pu8PesMem = HI_NULL;

        s32PesType = MPICheckPesUserMsg(pstBufTmp, *pu32AcquiredNum);
        if (s32PesType >= 0)
        {
            for (i = 0; i < *pu32AcquiredNum; i++)
            {
                u32MallocLen += pstBufTmp[i].u32Size;
            }
            s32Ret = MPIPesMemMalloc(hChannel, u32MallocLen, &pu8PesMem);
            if (HI_SUCCESS == s32Ret)
            {
                u32PesLen = MPICopyPesTogether(pu8PesMem, pstBufTmp, *pu32AcquiredNum);
            }

            /*free kernle buffer after copying */
            s32Ret |= MPIReleaseBuf(hChannel, *pu32AcquiredNum, pstBufTmp);
            if (HI_SUCCESS == s32Ret)
            {
                pstBuf[0].pu8Data = pu8PesMem;
                pstBuf[0].enDataType = (HI_UNF_DMX_DATA_TYPE_E)s32PesType;
                pstBuf[0].u32Size = u32PesLen;
                *pu32AcquiredNum = 1;
            }
            else
            {
                MPIPesMemFree(hChannel, u32MallocLen, pu8PesMem);
            }

            return s32Ret;
        }

        s32Ret = MPIReleaseBuf(hChannel, *pu32AcquiredNum, pstBufTmp);
        return HI_FAILURE;
    }
#endif /* #if DMX_COPY_PES */


    return HI_SUCCESS;
}

HI_S32  HI_MPI_DMX_ReleaseBuf(HI_HANDLE hChannel, HI_U32 u32ReleaseNum,
                              HI_UNF_DMX_DATA_S *pstBuf)
{
    MPIDmxCheckDeviceFd();
    DMX_CHECK_CHANHANDLE(hChannel);
    MPIDmxCheckPointer(pstBuf);

    if (0 == u32ReleaseNum)
    {
        return HI_SUCCESS;
    }

#if  DMX_COPY_PES
    if (MPIGetChnType(hChannel) == HI_UNF_DMX_CHAN_TYPE_PES)
    {
        return MPIPesMemFree(hChannel, pstBuf[0].u32Size, pstBuf[0].pu8Data);
    }
#endif /* #if DMX_COPY_PES */

    return MPIReleaseBuf(hChannel, u32ReleaseNum, pstBuf);
}

HI_S32 HI_MPI_DMX_CreatePcrChannel(HI_U32 u32DmxId, HI_U32 *pu32PcrChId)
{
    HI_S32 ret;
    DMX_NewPcr_S Param;

    MPIDmxCheckDeviceFd();
    MPIDmxCheckPointer(pu32PcrChId);

    Param.u32DmxId = u32DmxId;

    ret = ioctl(g_s32DmxFd, CMD_DEMUX_PCR_NEW, (HI_S32)&Param);
    if (HI_SUCCESS == ret)
    {
        *pu32PcrChId = Param.u32PcrId;
    }

    return ret;
}

HI_S32 HI_MPI_DMX_DestroyPcrChannel(HI_U32 u32PcrChId)
{
    MPIDmxCheckDeviceFd();

    return ioctl(g_s32DmxFd, CMD_DEMUX_PCR_DEL, (HI_S32)&u32PcrChId);
}

HI_S32 HI_MPI_DMX_PcrPidSet(HI_U32 pu32PcrChId, HI_U32 u32Pid)
{
    DMX_PcrPidSet_S Param;

    MPIDmxCheckDeviceFd();

    Param.pu32PcrChId = pu32PcrChId;
    Param.u32Pid = u32Pid;

    return ioctl(g_s32DmxFd, CMD_DEMUX_PCRPID_SET, (HI_S32)&Param);
}

HI_S32 HI_MPI_DMX_PcrPidGet(HI_U32 pu32PcrChId, HI_U32 *pu32Pid)
{
    HI_S32 ret;
    DMX_PcrPidGet_S Param;

    MPIDmxCheckDeviceFd();
    MPIDmxCheckPointer(pu32Pid);

    Param.pu32PcrChId = pu32PcrChId;
    ret = ioctl(g_s32DmxFd, CMD_DEMUX_PCRPID_GET, (HI_S32)&Param);

    if (HI_SUCCESS == ret)
    {
        *pu32Pid = Param.u32Pid;
    }

    return ret;
}

HI_S32 HI_MPI_DMX_PcrScrGet(HI_U32 pu32PcrChId, HI_U64 *pu64PcrMs, HI_U64 *pu64ScrMs)
{
    HI_S32 ret;
    DMX_PcrScrGet_S Param;

    MPIDmxCheckDeviceFd();
    MPIDmxCheckPointer(pu64PcrMs);
    MPIDmxCheckPointer(pu64ScrMs);

    Param.pu32PcrChId = pu32PcrChId;
    ret = ioctl(g_s32DmxFd, CMD_DEMUX_CURPCR_GET, (HI_S32)&Param);

    if (HI_SUCCESS == ret)
    {
        *pu64PcrMs = Param.u64PcrValue;
        *pu64ScrMs = Param.u64ScrValue;
    }

    return ret;
}

HI_S32 HI_MPI_DMX_PcrSyncAttach(HI_U32 u32PcrChId, HI_U32 u32SyncHandle)
{
    HI_S32 ret;
    DMX_PCRSYNC_S Param;

    MPIDmxCheckDeviceFd();

    Param.u32PcrChId = u32PcrChId;
    Param.u32SyncHandle = u32SyncHandle;
    ret = ioctl(g_s32DmxFd, CMD_DEMUX_PCRSYN_ATTACH, (HI_S32)&Param);

    return ret;
}

HI_S32 HI_MPI_DMX_PcrSyncDetach(HI_U32 u32PcrChId)
{
    HI_S32 ret;
    DMX_PCRSYNC_S Param;

    MPIDmxCheckDeviceFd();

    Param.u32PcrChId = u32PcrChId;
    ret = ioctl(g_s32DmxFd, CMD_DEMUX_PCRSYN_DETACH, (HI_S32)&Param);

    return ret;
}

HI_S32 HI_MPI_DMX_GetPESBufferStatus(HI_HANDLE hChannel, HI_MPI_DMX_BUF_STATUS_S *pBufStat)
{
    HI_S32 ret;
    DMX_PesBufStaGet_S Param;

    MPIDmxCheckDeviceFd();
    DMX_CHECK_CHANHANDLE(hChannel);
    MPIDmxCheckPointer(pBufStat);

    Param.hChannel = hChannel;
    ret = ioctl(g_s32DmxFd, CMD_DEMUX_PES_BUFFER_GETSTAT, (HI_S32)&Param);

    if (HI_SUCCESS == ret)
    {
        memcpy(pBufStat, &Param.stBufStat, sizeof(HI_MPI_DMX_BUF_STATUS_S));
    }

    return ret;
}

/* send stream for audio decoder in user mode */
HI_S32 HI_MPI_DMX_AcquireEs(HI_HANDLE hChannel, HI_UNF_ES_BUF_S *pEsBuf)
{
    HI_S32 ret;
    DMX_PesBufGet_S Param;
    HI_U32 u32PhyAddr;
    HI_U32 u32ChId;

    MPIDmxCheckDeviceFd();
    DMX_CHECK_CHANHANDLE(hChannel);
    MPIDmxCheckPointer(pEsBuf);

    Param.hChannel = hChannel;

    ret = ioctl(g_s32DmxFd, CMD_DEMUX_ES_BUFFER_GET, (HI_S32)&Param);
    if (HI_SUCCESS == ret)
    {
        u32ChId = DMX_CHANID(hChannel);
        u32PhyAddr = (HI_U32)Param.stEsBuf.pu8Buf;
        if ((u32PhyAddr >= g_stChanBuf[u32ChId].u32BufPhyAddr)
            && ((u32PhyAddr - g_stChanBuf[u32ChId].u32BufPhyAddr) < g_stChanBuf[u32ChId].u32BufSize))
        {
            pEsBuf->pu8Buf = (HI_U8*)((u32PhyAddr - g_stChanBuf[u32ChId].u32BufPhyAddr)
                                      + g_stChanBuf[u32ChId].u32BufUsrVirAddr);
            pEsBuf->u32BufLen = Param.stEsBuf.u32BufLen;
            pEsBuf->u32PtsMs = Param.stEsBuf.u32PtsMs;
        }
        else
        {
            HI_ERR_DEMUX("Invalid physical addr of AV es data:ChanId=%d\n", u32ChId);
            return HI_FAILURE;
        }
    }

    return ret;
}

HI_S32 HI_MPI_DMX_ReleaseEs(HI_HANDLE hChannel, const HI_UNF_ES_BUF_S *pEsBuf)
{
    DMX_PesBufGet_S Param;
    HI_U32 u32UsrAddr;
    HI_U32 u32ChId;

    MPIDmxCheckDeviceFd();
    MPIDmxCheckPointer(pEsBuf);
    DMX_CHECK_CHANHANDLE(hChannel);

    u32ChId = DMX_CHANID(hChannel);

    u32UsrAddr = (HI_U32)pEsBuf->pu8Buf;
    if ((u32UsrAddr >= g_stChanBuf[u32ChId].u32BufUsrVirAddr)
        && ((u32UsrAddr - g_stChanBuf[u32ChId].u32BufUsrVirAddr) < g_stChanBuf[u32ChId].u32BufSize))
    {
        Param.stEsBuf.pu8Buf = (HI_U8*)((u32UsrAddr - g_stChanBuf[u32ChId].u32BufUsrVirAddr)
                                        + g_stChanBuf[u32ChId].u32BufPhyAddr);
        Param.stEsBuf.u32BufLen = pEsBuf->u32BufLen;
        Param.stEsBuf.u32PtsMs = pEsBuf->u32PtsMs;
    }
    else
    {
        HI_ERR_DEMUX("Invalid user virtual addr of AV es data:ChanId=%d\n", u32ChId);
        return HI_FAILURE;
    }

    Param.hChannel = hChannel;
    return ioctl(g_s32DmxFd, CMD_DEMUX_ES_BUFFER_PUT, (HI_S32)&Param);
}

HI_S32 HI_MPI_DMX_CreateRecChn(HI_UNF_DMX_REC_ATTR_S *pstRecAttr, HI_HANDLE *phRecChn)
{
    HI_S32                  ret;
    DMX_Rec_CreateChan_S    Param;

    MPIDmxCheckDeviceFd();
    MPIDmxCheckPointer(pstRecAttr);
    MPIDmxCheckPointer(phRecChn);

    memcpy(&Param.RecAttr, pstRecAttr, sizeof(Param.RecAttr));

    ret = ioctl(g_s32DmxFd, CMD_DEMUX_REC_CHAN_CREATE, (HI_S32)&Param);
    if (HI_SUCCESS == ret)
    {
        HI_U32 UsrAddr;

        UsrAddr = (HI_U32)HI_MMAP(Param.RecBufPhyAddr, Param.RecBufSize);
        if (0 == UsrAddr)
        {
            if (HI_SUCCESS != ioctl(g_s32DmxFd, CMD_DEMUX_REC_CHAN_DESTROY, (HI_S32)&Param.RecHandle))
            {
                HI_ERR_DEMUX("destroy rec failed\n");
            }

            ret = HI_ERR_DMX_MMAP_FAILED;
        }
        else
        {
            HI_U32 RecId = DMX_RECID(Param.RecHandle);

            g_RecMmzBuf[RecId].u32BufPhyAddr    = Param.RecBufPhyAddr;
            g_RecMmzBuf[RecId].u32BufUsrVirAddr = UsrAddr;
            g_RecMmzBuf[RecId].u32BufSize       = Param.RecBufSize;

            *phRecChn = Param.RecHandle;
        }
    }

    return ret;
}

HI_S32 HI_MPI_DMX_DestroyRecChn(HI_HANDLE hRecChn)
{
    HI_S32 ret;

    MPIDmxCheckDeviceFd();

    ret = ioctl(g_s32DmxFd, CMD_DEMUX_REC_CHAN_DESTROY, (HI_S32)&hRecChn);
    if (HI_SUCCESS == ret)
    {
        HI_U32 RecId = DMX_RECID(hRecChn);

        if (HI_SUCCESS == HI_MUNMAP((HI_VOID*)g_RecMmzBuf[RecId].u32BufUsrVirAddr))
        {
            g_RecMmzBuf[RecId].u32BufPhyAddr    = 0;
            g_RecMmzBuf[RecId].u32BufUsrVirAddr = 0;
            g_RecMmzBuf[RecId].u32BufSize       = 0;
        }
        else
        {
            ret = HI_ERR_DMX_MUNMAP_FAILED;
        }
    }

    return ret;
}

HI_S32 HI_MPI_DMX_AddRecPid(HI_HANDLE hRecChn, HI_U32 u32Pid, HI_HANDLE *phChannel)
{
    HI_S32              ret;
    DMX_Rec_AddPid_S    Param;

    MPIDmxCheckDeviceFd();
    MPIDmxCheckPointer(phChannel);

    Param.RecHandle = hRecChn;
    Param.Pid       = u32Pid;

    ret = ioctl(g_s32DmxFd, CMD_DEMUX_REC_CHAN_ADD_PID, (HI_S32)&Param);
    if (HI_SUCCESS == ret)
    {
        *phChannel = Param.ChanHandle;
    }

    return ret;
}

HI_S32 HI_MPI_DMX_DelRecPid(HI_HANDLE hRecChn, HI_HANDLE hChannel)
{
    DMX_Rec_DelPid_S Param;

    MPIDmxCheckDeviceFd();

    Param.RecHandle     = hRecChn;
    Param.ChanHandle    = hChannel;

    return ioctl(g_s32DmxFd, CMD_DEMUX_REC_CHAN_DEL_PID, (HI_S32)&Param);
}

HI_S32 HI_MPI_DMX_DelAllRecPid(HI_HANDLE hRecChn)
{
    MPIDmxCheckDeviceFd();

    return ioctl(g_s32DmxFd, CMD_DEMUX_REC_CHAN_DEL_ALL_PID, (HI_S32)&hRecChn);
}

HI_S32 HI_MPI_DMX_AddExcludeRecPid(HI_HANDLE hRecChn, HI_U32 u32Pid)
{
    DMX_Rec_ExcludePid_S Param;

    MPIDmxCheckDeviceFd();

    Param.RecHandle = hRecChn;
    Param.Pid       = u32Pid;

    return ioctl(g_s32DmxFd, CMD_DEMUX_REC_CHAN_ADD_EXCLUDE_PID, (HI_S32)&Param);
}

HI_S32 HI_MPI_DMX_DelExcludeRecPid(HI_HANDLE hRecChn, HI_U32 u32Pid)
{
    DMX_Rec_ExcludePid_S Param;

    MPIDmxCheckDeviceFd();

    Param.RecHandle = hRecChn;
    Param.Pid       = u32Pid;

    return ioctl(g_s32DmxFd, CMD_DEMUX_REC_CHAN_DEL_EXCLUDE_PID, (HI_S32)&Param);
}

HI_S32 HI_MPI_DMX_DelAllExcludeRecPid(HI_HANDLE hRecChn)
{
    MPIDmxCheckDeviceFd();

    return ioctl(g_s32DmxFd, CMD_DEMUX_REC_CHAN_CANCEL_EXCLUDE, (HI_S32)&hRecChn);
}

HI_S32 HI_MPI_DMX_StartRecChn(HI_HANDLE hRecChn)
{
    MPIDmxCheckDeviceFd();

    return ioctl(g_s32DmxFd, CMD_DEMUX_REC_CHAN_START, (HI_S32)&hRecChn);
}

HI_S32 HI_MPI_DMX_StopRecChn(HI_HANDLE hRecChn)
{
    MPIDmxCheckDeviceFd();

    return ioctl(g_s32DmxFd, CMD_DEMUX_REC_CHAN_STOP, (HI_S32)&hRecChn);
}

HI_S32 HI_MPI_DMX_AcquireRecData(HI_HANDLE hRecChn, HI_UNF_DMX_REC_DATA_S *pstRecData, HI_U32 u32TimeoutMs)
{
    HI_S32                  ret;
    DMX_Rec_AcquireData_S   Param;

    MPIDmxCheckDeviceFd();
    MPIDmxCheckPointer(pstRecData);

    Param.RecHandle = hRecChn;
    Param.TimeoutMs = u32TimeoutMs;

    ret = ioctl(g_s32DmxFd, CMD_DEMUX_REC_CHAN_ACQUIRE_DATA, (HI_S32)&Param);
    if (HI_SUCCESS == ret)
    {
        HI_U32 RecId = DMX_RECID(hRecChn);
        HI_U32 Offset;

        Offset = Param.RecData.u32DataPhyAddr - g_RecMmzBuf[RecId].u32BufPhyAddr;

        pstRecData->pDataAddr       = (HI_U8*)(g_RecMmzBuf[RecId].u32BufUsrVirAddr + Offset);
        pstRecData->u32DataPhyAddr  = Param.RecData.u32DataPhyAddr;
        pstRecData->u32Len          = Param.RecData.u32Len;
    }

    return ret;
}

HI_S32 HI_MPI_DMX_ReleaseRecData(HI_HANDLE hRecChn, const HI_UNF_DMX_REC_DATA_S *pstRecData)
{
    DMX_Rec_ReleaseData_S   Param;

    MPIDmxCheckDeviceFd();
    MPIDmxCheckPointer(pstRecData);

    Param.RecHandle = hRecChn;
    memcpy(&Param.RecData, pstRecData, sizeof(HI_UNF_DMX_REC_DATA_S));

    return ioctl(g_s32DmxFd, CMD_DEMUX_REC_CHAN_RELEASE_DATA, (HI_S32)&Param);
}

HI_S32 HI_MPI_DMX_AcquireRecIndex(HI_HANDLE hRecChn, HI_UNF_DMX_REC_INDEX_S *pstRecIndex, HI_U32 u32TimeoutMs)
{
    HI_S32                  ret;
    DMX_Rec_AcquireIndex_S  Param;

    MPIDmxCheckDeviceFd();
    MPIDmxCheckPointer(pstRecIndex);

    Param.RecHandle = hRecChn;
    Param.TimeoutMs = u32TimeoutMs;

    ret = ioctl(g_s32DmxFd, CMD_DEMUX_REC_CHAN_ACQUIRE_INDEX, (HI_S32)&Param);
    if (HI_SUCCESS == ret)
    {
        memcpy(pstRecIndex, &Param.IndexData, sizeof(HI_UNF_DMX_REC_INDEX_S));
    }

    return ret;
}

HI_S32 HI_MPI_DMX_GetRecBufferStatus(HI_HANDLE hRecChn, HI_UNF_DMX_RECBUF_STATUS_S *pstBufStatus)
{
    HI_S32              ret;
    DMX_Rec_BufStatus_S Param;

    MPIDmxCheckDeviceFd();
    MPIDmxCheckPointer(pstBufStatus);

    Param.RecHandle = hRecChn;

    ret = ioctl(g_s32DmxFd, CMD_DEMUX_REC_CHAN_GET_BUF_STATUS, (HI_S32)&Param);
    if (HI_SUCCESS == ret)
    {
        memcpy(pstBufStatus, &Param.BufStatus, sizeof(HI_UNF_DMX_RECBUF_STATUS_S));
    }

    return ret;
}

#if 1
static HI_HANDLE        MpiRecHandle[DMX_CNT];
static DMX_MMZ_BUF_S    g_ScdMmzBuf[DMX_CNT];

HI_S32 HI_MPI_DMX_StartRecord(HI_U32 u32DmxId,
                               HI_MPI_DMX_REC_INDEX_TYPE_E enIndexType,
                               HI_U32 u32IndexPid,
                               HI_UNF_VCODEC_TYPE_E enVCodecType,
                               HI_MPI_DMX_RECORD_TYPE_E enRecType,
                               HI_U32 u32ScdBufSize, HI_U32 u32TsBufSize)
{
    HI_S32                  ret;
    HI_UNF_DMX_REC_ATTR_S   RecAttr;
    HI_HANDLE               RecHandle;

    UNUSED(u32ScdBufSize);

    RecAttr.u32DmxId        = u32DmxId;
    RecAttr.u32RecBufSize   = u32TsBufSize;
    RecAttr.enVCodecType    = enVCodecType;
    RecAttr.u32IndexSrcPid  = u32IndexPid;

    if (HI_MPI_DMX_RECORD_ALL_TS == enRecType)
    {
        RecAttr.enRecType   = HI_UNF_DMX_REC_TYPE_ALL_PID;
    }
    else
    {
        RecAttr.enRecType   = HI_UNF_DMX_REC_TYPE_SELECT_PID;
    }

    if (HI_MPI_DMX_RECORD_DESCRAM_TS == enRecType)
    {
        RecAttr.bDescramed  = HI_TRUE;
    }
    else
    {
        RecAttr.bDescramed  = HI_FALSE;
    }

    switch (enIndexType)
    {
        case HI_MPI_DMX_REC_INDEX_TYPE_VIDEO :
            RecAttr.enIndexType = HI_UNF_DMX_REC_INDEX_TYPE_VIDEO;
            break;

        case HI_MPI_DMX_REC_INDEX_TYPE_AUDIO :
            RecAttr.enIndexType = HI_UNF_DMX_REC_INDEX_TYPE_AUDIO;
            break;

        case HI_MPI_DMX_REC_INDEX_TYPE_NONE :
        default :
            RecAttr.enIndexType = HI_UNF_DMX_REC_INDEX_TYPE_NONE;
    }

    ret = HI_MPI_DMX_CreateRecChn(&RecAttr, &RecHandle);
    if (HI_SUCCESS == ret)
    {
        ret = HI_MPI_DMX_StartRecChn(RecHandle);
        if (HI_SUCCESS == ret)
        {
            MpiRecHandle[u32DmxId] = RecHandle;

            memset(&g_ScdMmzBuf[u32DmxId], 0, sizeof(DMX_MMZ_BUF_S));
        }
        else
        {
            HI_ERR_DEMUX("start rec failed 0x%x\n", ret);
            ret = HI_MPI_DMX_DestroyRecChn(RecHandle);
            if (HI_SUCCESS != ret)
            {
                HI_ERR_DEMUX("destroy rec failed 0x%x\n", ret);
            }
        }
    }

    return ret;
}

HI_S32 HI_MPI_DMX_StopRecord(HI_U32 u32DmxId)
{
    HI_S32 ret;

    MPIDmxCheckDmxId(u32DmxId);

    ret = HI_MPI_DMX_StopRecChn(MpiRecHandle[u32DmxId]);
    if (HI_SUCCESS == ret)
    {
        ret = HI_MPI_DMX_DestroyRecChn(MpiRecHandle[u32DmxId]);
        if (HI_SUCCESS == ret)
        {
            MpiRecHandle[u32DmxId] = 0;

            if (g_ScdMmzBuf[u32DmxId].u32BufUsrVirAddr)
            {
                if (HI_SUCCESS == HI_MUNMAP((HI_VOID*)g_ScdMmzBuf[u32DmxId].u32BufUsrVirAddr))
                {
                    g_ScdMmzBuf[u32DmxId].u32BufPhyAddr     = 0;
                    g_ScdMmzBuf[u32DmxId].u32BufUsrVirAddr  = 0;
                    g_ScdMmzBuf[u32DmxId].u32BufSize        = 0;
                }
                else
                {
                    HI_ERR_DEMUX("munmap failed!\n");
                    ret = HI_ERR_DMX_MUNMAP_FAILED;
                }
            }
        }
    }

    return ret;
}

HI_S32 HI_MPI_DMX_GetRECBufferStatus(HI_U32 u32DmxId, HI_MPI_DMX_BUF_STATUS_S *pBufStat)
{
    HI_S32                      ret;
    HI_UNF_DMX_RECBUF_STATUS_S  BufStatus;

    MPIDmxCheckDmxId(u32DmxId);
    MPIDmxCheckPointer(pBufStat);

    ret = HI_MPI_DMX_GetRecBufferStatus(MpiRecHandle[u32DmxId], &BufStatus);
    if (HI_SUCCESS == ret)
    {
        pBufStat->u32BufSize    = BufStatus.u32BufSize;
        pBufStat->u32UsedSize   = BufStatus.u32UsedSize;
        pBufStat->u32BufRptr    = 0;
        pBufStat->u32BufWptr    = 0;
    }

    return ret;
}

HI_S32 HI_MPI_DMX_AcquireRecTsBuf(HI_U32 u32DmxId, DMX_DATA_S *pstBuf, HI_BOOL bDoCipher, HI_U32 u32TimeoutMs)
{
    HI_S32                  ret;
    HI_UNF_DMX_REC_DATA_S   RecData;

    UNUSED(bDoCipher);
    MPIDmxCheckDmxId(u32DmxId);
    MPIDmxCheckPointer(pstBuf);

    ret = HI_MPI_DMX_AcquireRecData(MpiRecHandle[u32DmxId], &RecData, u32TimeoutMs);
    if (HI_SUCCESS == ret)
    {
        pstBuf->pAddr       = RecData.pDataAddr;
        pstBuf->u32PhyAddr  = RecData.u32DataPhyAddr;
        pstBuf->u32Len      = RecData.u32Len;
    }

    return ret;
}

HI_S32 HI_MPI_DMX_ReleaseRecTsBuf(HI_U32 u32DmxId, const DMX_DATA_S *pstBuf)
{
    HI_UNF_DMX_REC_DATA_S   RecData;

    MPIDmxCheckDmxId(u32DmxId);
    MPIDmxCheckPointer(pstBuf);

    RecData.u32DataPhyAddr  = pstBuf->u32PhyAddr;
    RecData.u32Len          = pstBuf->u32Len;

    return HI_MPI_DMX_ReleaseRecData(MpiRecHandle[u32DmxId], &RecData);
}

HI_S32 HI_MPI_DMX_AcquireRecScdBuf(HI_U32 u32DmxId, DMX_DATA_S *pstBuf, HI_U32 u32TimeoutMs)
{
    HI_S32                  ret;
    DMX_Rec_AcquireScd_S    Param;

    MPIDmxCheckDmxId(u32DmxId);
    MPIDmxCheckPointer(pstBuf);

    Param.RecHandle = MpiRecHandle[u32DmxId];
    Param.TimeoutMs = u32TimeoutMs;

    ret = ioctl(g_s32DmxFd, CMD_DEMUX_REC_CHAN_ACQUIRE_SCD, (HI_S32)&Param);
    if (HI_SUCCESS == ret)
    {
        pstBuf->u32PhyAddr  = Param.RecData.u32DataPhyAddr;
        pstBuf->u32Len      = Param.RecData.u32Len;

        if (0 == g_ScdMmzBuf[u32DmxId].u32BufUsrVirAddr)
        {
            HI_U32 UsrAddr;

            UsrAddr = (HI_U32)HI_MMAP(pstBuf->u32PhyAddr, 56 * 1024);
            if (0 == UsrAddr)
            {
                HI_ERR_DEMUX("mmap failed!\n");
                ret = HI_ERR_DMX_MMAP_FAILED;
            }
            else
            {
                g_ScdMmzBuf[u32DmxId].u32BufPhyAddr     = pstBuf->u32PhyAddr;
                g_ScdMmzBuf[u32DmxId].u32BufUsrVirAddr  = UsrAddr;

                pstBuf->pAddr = (HI_U8*)(g_ScdMmzBuf[u32DmxId].u32BufUsrVirAddr
                    + (pstBuf->u32PhyAddr - g_ScdMmzBuf[u32DmxId].u32BufPhyAddr));
            }
        }
        else
        {
            pstBuf->pAddr = (HI_U8*)(g_ScdMmzBuf[u32DmxId].u32BufUsrVirAddr
                + (pstBuf->u32PhyAddr - g_ScdMmzBuf[u32DmxId].u32BufPhyAddr));
        }
    }

    return ret;
}

HI_S32 HI_MPI_DMX_ReleaseRecScdBuf(HI_U32 u32DmxId, const DMX_DATA_S *pstBuf)
{
    DMX_Rec_ReleaseScd_S Param;

    MPIDmxCheckDmxId(u32DmxId);
    MPIDmxCheckPointer(pstBuf);

    Param.RecHandle = MpiRecHandle[u32DmxId];

    Param.RecData.u32DataPhyAddr    = pstBuf->u32PhyAddr;
    Param.RecData.u32Len            = pstBuf->u32Len;

    return ioctl(g_s32DmxFd, CMD_DEMUX_REC_CHAN_RELEASE_SCD, (HI_S32)&Param);
}

#endif


HI_S32 HI_MPI_DMX_Invoke(HI_UNF_DMX_INVOKE_TYPE_E enCmd, const HI_VOID *pCmdPara)
{
    MPIDmxCheckDeviceFd();
    MPIDmxCheckPointer(pCmdPara);
    
    if (HI_UNF_DMX_INVOKE_TYPE_CHAN_CC_REPEAT_SET == enCmd)
    {
        DMX_SetChan_CC_REPEAT_S Param;
        memcpy(&Param.stChCCRepeatSet, (HI_UNF_DMX_CHAN_CC_REPEAT_SET_S*)pCmdPara, sizeof(HI_UNF_DMX_CHAN_CC_REPEAT_SET_S));

        return ioctl(g_s32DmxFd, CMD_DEMUX_CHAN_CC_REPEAT_SET, (HI_S32)&Param);
    }

    if (HI_UNF_DMX_INVOKE_TYPE_PUSI_SET == enCmd)
    {
        HI_UNF_DMX_PUSI_SET_S Param;
        memcpy(&Param, (HI_UNF_DMX_PUSI_SET_S*)pCmdPara, sizeof(HI_UNF_DMX_PUSI_SET_S));

        return ioctl(g_s32DmxFd, CMD_DEMUX_SET_PUSI, (HI_S32)&Param);
    }

    if (HI_UNF_DMX_INVOKE_TYPE_TEI_SET == enCmd)
    {
        HI_UNF_DMX_TEI_SET_S Param;
        memcpy(&Param, (HI_UNF_DMX_TEI_SET_S*)pCmdPara, sizeof(HI_UNF_DMX_TEI_SET_S));

        return ioctl(g_s32DmxFd, CMD_DEMUX_SET_TEI, (HI_S32)&Param);
    }
    HI_ERR_DEMUX("unknow cmd:%d.\n",enCmd);
    return HI_ERR_DMX_INVALID_PARA;
   
}

