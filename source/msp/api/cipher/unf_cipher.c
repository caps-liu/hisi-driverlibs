/******************************************************************************
 
  Copyright (C), 2001-2011, Huawei Tech. Co., Ltd.
 
 ******************************************************************************
  File Name     : hi_unf_cipher.c
  Version       : Initial Draft
  Author        : Q46153
  Created       : 2010/3/16
  Last Modified :
  Description   : unf of cipher 
  Function List :
  History       :
  1.Date        : 2010/3/16
    Author      : Q46153
    Modification: Created file
 
******************************************************************************/
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/ioctl.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <unistd.h>
#include <pthread.h>
#include "drv_cipher_ioctl.h"
#include "hi_common.h"
#include "hi_drv_struct.h"
#include "hi_error_mpi.h"

static HI_S32 g_CipherDevFd = -1;
static pthread_mutex_t   g_CipherMutex = PTHREAD_MUTEX_INITIALIZER;

static const HI_U8 s_szCipherVersion[] __attribute__((used)) = "SDK_VERSION:["\
                            MKMARCOTOSTR(SDK_VERSION)"] Build Time:["\
                            __DATE__", "__TIME__"]";

#define HI_CIPHER_LOCK()  	     (void)pthread_mutex_lock(&g_CipherMutex);
#define HI_CIPHER_UNLOCK()  	 (void)pthread_mutex_unlock(&g_CipherMutex);

#define CHECK_CIPHER_OPEN()\
do{\
    HI_CIPHER_LOCK();\
    if (g_CipherDevFd < 0)\
    {\
        HI_ERR_CIPHER("CIPHER is not open.\n");\
        HI_CIPHER_UNLOCK();\
        return HI_ERR_CIPHER_NOT_INIT;\
    }\
    HI_CIPHER_UNLOCK();\
}while(0)

static HI_S32 g_HashDevFd = -1;
//static HI_UNF_CIPHER_HASH_TYPE_E g_hashType = HI_UNF_CIPHER_HASH_TYPE_SHA1;


/*----------------------------------------------*
 * external variables                           *
 *----------------------------------------------*/

/*----------------------------------------------*
 * external routine prototypes                  *
 *----------------------------------------------*/

/*----------------------------------------------*
 * internal routine prototypes                  *
 *----------------------------------------------*/

/*----------------------------------------------*
 * project-wide global variables                *
 *----------------------------------------------*/

/*----------------------------------------------*
 * module-wide global variables                 *
 *----------------------------------------------*/

/*----------------------------------------------*
 * constants                                    *
 *----------------------------------------------*/

/*----------------------------------------------*
 * macros                                       *
 *----------------------------------------------*/

/*----------------------------------------------*
 * routines' implementations                    *
 *----------------------------------------------*/

/*********************************************************
 * The function below is added for AES CBC-MAC
 *
 *********************************************************/
#define MAX_DATA_LEN    (0x2000) //the max data length for encryption / decryption is  8k one time


#if 0
static HI_U8 const_Zero[16] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
};
#endif

/* For CMAC Calculation */

static HI_U8 const_Rb[16] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x87
};

/* Basic Functions */
static HI_VOID xor_128(HI_U8 *a, HI_U8 *b, HI_U8 *out)
{
    HI_U32 i;

    if(a == NULL || b == NULL || out == NULL)
    {
        HI_ERR_CIPHER("Invalid parameter!\n");
        return;
    }
    
    for (i = 0; i < 16; i++)
    {
        out[i] = a[i] ^ b[i];
    }
}

/* AES-CMAC Generation Function */
static HI_VOID leftshift_onebit(HI_U8 *input, HI_U8 *output)
{
    HI_S32 i;
    HI_U8 overflow = 0;

    if(input == NULL || output == NULL)
    {
        HI_ERR_CIPHER("Invalid parameter!\n");
        return;
    }
    
    for ( i = 15; i >= 0; i-- )
    {
        output[i] = input[i] << 1;
        output[i] |= overflow;
        overflow = (input[i] & 0x80) ? 1 : 0;
    }
    return;
}

//the output is the last 8 bytes only
static HI_S32 AES_Encrypt(HI_HANDLE hCipherHandle, HI_U8 *input, HI_U32 datalen, HI_U8 *output)
{
    HI_U32 u32InputAddrPhy = 0;
    HI_U32 u32OutPutAddrPhy = 0;
    HI_U32 u32MmzCached = 0;
    HI_U8* pu8InputAddrVir = NULL;
    HI_U8* pu8OutputAddrVir = NULL;
    HI_S32 Ret = HI_SUCCESS;
    HI_U32 u32EncryptDataLen = 0;
    HI_U32 u32LeftDataLen = 0;
    HI_U32 i = 0;
    HI_U32 u32BlockNum = 0;
    
    u32InputAddrPhy = (HI_U32)HI_MMZ_New(MAX_DATA_LEN, 0, NULL, "CIPHER_BufIn");
    if (0 == u32InputAddrPhy)
    {
        HI_ERR_CIPHER("mmz new for u32InputAddrPhy failed!\n");
        return HI_FAILURE;
    }
    pu8InputAddrVir = HI_MMZ_Map(u32InputAddrPhy, u32MmzCached);
    if( NULL == pu8InputAddrVir )
    {
        HI_MMZ_Unmap(u32InputAddrPhy);
        HI_MMZ_Delete(u32InputAddrPhy);
        HI_ERR_CIPHER("mmz map for pu8InputAddrVir failed!\n");
        return HI_FAILURE;
    }
    
    u32OutPutAddrPhy = (HI_U32)HI_MMZ_New(MAX_DATA_LEN, 0, NULL, "CIPHER_BufOut");
    if (0 == u32OutPutAddrPhy)
    {
        HI_ERR_CIPHER("mmz new for u32OutPutAddrPhy failed!\n");
        HI_MMZ_Unmap(u32InputAddrPhy);
        HI_MMZ_Delete(u32InputAddrPhy);      
        return HI_FAILURE;
    }

    pu8OutputAddrVir = HI_MMZ_Map(u32OutPutAddrPhy, u32MmzCached);
    if( NULL == pu8OutputAddrVir )
    {
        HI_ERR_CIPHER("mmz map for pu8OutputAddrVir failed!\n");
        HI_MMZ_Unmap(u32InputAddrPhy);
        HI_MMZ_Delete(u32InputAddrPhy);
        HI_MMZ_Unmap(u32OutPutAddrPhy);
        HI_MMZ_Delete(u32OutPutAddrPhy);
        return HI_FAILURE;
    }

    memset(pu8OutputAddrVir, 0, MAX_DATA_LEN);

    u32LeftDataLen = datalen;
    u32BlockNum = (datalen + MAX_DATA_LEN - 1) / MAX_DATA_LEN;
    for(i = 0; i < u32BlockNum; i++)
    {
        u32EncryptDataLen = u32LeftDataLen >= MAX_DATA_LEN ? MAX_DATA_LEN : u32LeftDataLen;
        u32LeftDataLen -= u32EncryptDataLen;
        memcpy(pu8InputAddrVir, input + i * MAX_DATA_LEN, u32EncryptDataLen);
        Ret = HI_UNF_CIPHER_Encrypt(hCipherHandle, u32InputAddrPhy, u32OutPutAddrPhy, u32EncryptDataLen);
        if(Ret != HI_SUCCESS)
        {
            HI_ERR_CIPHER("Cipher encrypt failed!\n");
            goto CIPHER_RELEASE_BUF;
        }
    }
    memcpy(output, pu8OutputAddrVir + u32EncryptDataLen - 16, 16);

CIPHER_RELEASE_BUF:
    HI_MMZ_Unmap(u32InputAddrPhy);
    HI_MMZ_Delete(u32InputAddrPhy);
    HI_MMZ_Unmap(u32OutPutAddrPhy);
    HI_MMZ_Delete(u32OutPutAddrPhy);

    return Ret;
}

static HI_S32 generate_subkey(HI_HANDLE hCipherHandle, HI_U8 *K1, HI_U8 *K2)
{
    HI_U8 L[16];
    HI_U8 Z[16];
    HI_U8 tmp[16];
    HI_U32 u32DataLen = 16;
    HI_S32 Ret = HI_SUCCESS;

    if(K1 == NULL || K2 == NULL)
    {
        HI_ERR_CIPHER("Invalid parameter!\n");
        return HI_FAILURE;
    }

    memset(Z, 0x0, sizeof(Z));    
    Ret = AES_Encrypt(hCipherHandle, Z, u32DataLen, L);
    if(Ret != HI_SUCCESS)
    {
        return Ret;
    }
    
    if ( (L[0] & 0x80) == 0 ) /* If MSB(L) = 0, then K1 = L << 1 */
    {
        leftshift_onebit(L, K1);
    }
    else  /* Else K1 = ( L << 1 ) (+) Rb */
    {
        leftshift_onebit(L, tmp);
        xor_128(tmp, const_Rb, K1);
    }
    
    if ( (K1[0] & 0x80) == 0 )
    {
        leftshift_onebit(K1,K2);
    }
    else
    {
        leftshift_onebit(K1, tmp);
        xor_128(tmp, const_Rb, K2);
    }
   
    return HI_SUCCESS;
}

static HI_VOID padding ( HI_U8 *lastb, HI_U8 *pad, HI_U32 length )
{
    HI_U32 j;

    if(lastb == NULL || pad == NULL)
    {
        HI_ERR_CIPHER("Invalid parameter!\n");
        return;
    }
    
    /* original last block */
    for ( j = 0; j < 16; j++ )
    {
        if ( j < length )
        {
            pad[j] = lastb[j];
        }
        else if ( j == length )
        {
            pad[j] = 0x80;
        }
        else
        {
            pad[j] = 0x00;
        }
    }
}

HI_S32 HI_UNF_CIPHER_Init(HI_VOID)
{
    HI_CIPHER_LOCK();

    /*Check whether the cipher has been opened.*/
    /*CNcomment: 在该进程中已经打开过 */
    if (g_CipherDevFd > 0)
    {
        HI_CIPHER_UNLOCK();
        return HI_SUCCESS;
    }

    g_CipherDevFd = open("/dev/"UMAP_DEVNAME_CIPHER, O_RDWR, 0);
    if (g_CipherDevFd < 0)
    {
        HI_FATAL_CIPHER("Open CIPHER err.\n");
        HI_CIPHER_UNLOCK();
        return HI_ERR_CIPHER_FAILED_INIT;
    }

    HI_CIPHER_UNLOCK();

    return HI_SUCCESS;
}



HI_S32 HI_UNF_CIPHER_DeInit(HI_VOID)
{
    HI_S32 Ret;

    HI_CIPHER_LOCK();

    if (g_CipherDevFd < 0)
    {
        HI_CIPHER_UNLOCK();
        return HI_SUCCESS;
    }

    Ret = close(g_CipherDevFd);

    if(HI_SUCCESS != Ret)
    {
        HI_FATAL_CIPHER("Close CIPHER err.\n");
        HI_CIPHER_UNLOCK();
        return HI_ERR_CIPHER_NOT_INIT;
    }

    g_CipherDevFd = -1;

    HI_CIPHER_UNLOCK();

    return HI_SUCCESS;
}


HI_S32 HI_UNF_CIPHER_CreateHandle(HI_HANDLE* phCipher, const HI_UNF_CIPHER_ATTS_S *pstCipherAttr)
{
    HI_S32 Ret = HI_SUCCESS;
    CIPHER_HANDLE_S stCIHandle = {0};

if ( ( NULL == phCipher ) || ( NULL == pstCipherAttr ) )
    {
        HI_ERR_CIPHER("Invalid param, null pointer!\n");
        return HI_ERR_CIPHER_INVALID_PARA;
    }

    CHECK_CIPHER_OPEN();

    stCIHandle.stCipherAtts.enCipherType = pstCipherAttr->enCipherType;
    Ret=ioctl(g_CipherDevFd, CMD_CIPHER_CREATEHANDLE, &stCIHandle);
    if (Ret != HI_SUCCESS)
    {
        return Ret;
    }

    *phCipher = stCIHandle.hCIHandle;

    return HI_SUCCESS;
}

HI_S32 HI_UNF_CIPHER_DestroyHandle(HI_HANDLE hCipher)
{
    HI_S32 Ret;
    
    CHECK_CIPHER_OPEN();

    Ret=ioctl(g_CipherDevFd, CMD_CIPHER_DESTROYHANDLE, &hCipher);
    if (Ret != HI_SUCCESS)
    {
        return Ret;
    }
   
    return HI_SUCCESS;
}


HI_S32 HI_UNF_CIPHER_ConfigHandle(HI_HANDLE hCipher, HI_UNF_CIPHER_CTRL_S* pstCtrl)
{
    HI_S32 Ret;
    CIPHER_Config_CTRL configdata;

    if (NULL == pstCtrl)
    {
        HI_ERR_CIPHER("para pstCtrl is null.\n");
        return HI_ERR_CIPHER_INVALID_POINT;
    }

    memcpy(&configdata.CIpstCtrl, pstCtrl, sizeof(HI_UNF_CIPHER_CTRL_S));
    configdata.CIHandle=hCipher;

    if(configdata.CIpstCtrl.enWorkMode >= HI_UNF_CIPHER_WORK_MODE_BUTT)
    {
        HI_ERR_CIPHER("para set CIPHER wokemode is invalid.\n");
        return HI_ERR_CIPHER_INVALID_PARA;
    }

    CHECK_CIPHER_OPEN();

    Ret=ioctl(g_CipherDevFd, CMD_CIPHER_CONFIGHANDLE, &configdata);

    if (Ret != HI_SUCCESS)
    {
        return Ret;
    }

    return HI_SUCCESS;
}


HI_S32 HI_UNF_CIPHER_Encrypt(HI_HANDLE hCipher, HI_U32 u32SrcPhyAddr, HI_U32 u32DestPhyAddr, HI_U32 u32ByteLength)
{
    HI_S32 Ret;
    CIPHER_DATA_S CIdata;
    HI_U32 u32ChnID;

    u32ChnID = hCipher & 0x00ff;
    if ( 0 == u32ChnID )
    {
        if ( 16 != u32ByteLength )
        {
            return HI_ERR_CIPHER_INVALID_PARA;
        }
    }
    
    if ( u32ByteLength < HI_UNF_CIPHER_MIN_CRYPT_LEN || u32ByteLength > HI_UNF_CIPHER_MAX_CRYPT_LEN)
    {
        return HI_ERR_CIPHER_INVALID_PARA;
    }

    CIdata.ScrPhyAddr=u32SrcPhyAddr;
    CIdata.DestPhyAddr=u32DestPhyAddr;
    CIdata.u32PkgNum=u32ByteLength;
    CIdata.CIHandle=hCipher;

    CHECK_CIPHER_OPEN();

    Ret=ioctl(g_CipherDevFd, CMD_CIPHER_ENCRYPT, &CIdata);

    if (Ret != HI_SUCCESS)
    {
        return Ret;
    }

    return HI_SUCCESS;
}


HI_S32 HI_UNF_CIPHER_Decrypt(HI_HANDLE hCipher, HI_U32 u32SrcPhyAddr, HI_U32 u32DestPhyAddr, HI_U32 u32ByteLength)
{
    HI_S32 Ret;
    HI_U32 u32ChnID;
    CIPHER_DATA_S CIdata;

    u32ChnID = hCipher & 0x00ff;
    if ( 0 == u32ChnID )
    {
        if ( 16 != u32ByteLength )
        {
            return HI_ERR_CIPHER_INVALID_PARA;
        }
    }
    if (u32ByteLength < HI_UNF_CIPHER_MIN_CRYPT_LEN || u32ByteLength > HI_UNF_CIPHER_MAX_CRYPT_LEN)
    {
        return HI_ERR_CIPHER_INVALID_PARA;
    }

    CIdata.ScrPhyAddr=u32SrcPhyAddr;
    CIdata.DestPhyAddr=u32DestPhyAddr;
    CIdata.u32PkgNum=u32ByteLength;
    CIdata.CIHandle=hCipher;

    CHECK_CIPHER_OPEN();

    Ret=ioctl(g_CipherDevFd,CMD_CIPHER_DECRYPT, &CIdata);
    if (Ret != HI_SUCCESS)
    {
        return Ret;
    }

    return HI_SUCCESS;
}

HI_S32 HI_UNF_CIPHER_EncryptMulti(HI_HANDLE hCipher, HI_UNF_CIPHER_DATA_S *pstDataPkg, HI_U32 u32DataPkgNum)
{
    HI_S32 Ret;
    HI_U32 chnid;
    HI_U32 i;
    CIPHER_DATA_S CIdata;
    HI_UNF_CIPHER_DATA_S *pPkgTmp;
    
    chnid=hCipher&0x00ff;
    if ( 0 == chnid )
    {
        HI_ERR_CIPHER("invalid chnid 0.\n");
        return HI_ERR_CIPHER_INVALID_PARA;
    }
    
    for (i = 0; i < u32DataPkgNum; i++)
    {
        pPkgTmp = pstDataPkg + i;
        if (pPkgTmp->u32ByteLength < HI_UNF_CIPHER_MIN_CRYPT_LEN || pPkgTmp->u32ByteLength > HI_UNF_CIPHER_MAX_CRYPT_LEN)
        {
            HI_ERR_CIPHER("Pkg%d 's length(%d) invalid.\n", i, pPkgTmp->u32ByteLength);
            return HI_ERR_CIPHER_INVALID_PARA;
        }
    }

    CIdata.ScrPhyAddr=(HI_U32)pstDataPkg;
    CIdata.DestPhyAddr= 0;
    CIdata.u32PkgNum=u32DataPkgNum;
    CIdata.CIHandle=hCipher;

    CHECK_CIPHER_OPEN();

    Ret=ioctl(g_CipherDevFd,CMD_CIPHER_ENCRYPTMULTI, &CIdata); 

    if (Ret != HI_SUCCESS)
    {
        return Ret;
    }

    return HI_SUCCESS;
}

HI_S32 HI_UNF_CIPHER_DecryptMulti(HI_HANDLE hCipher, HI_UNF_CIPHER_DATA_S *pstDataPkg, HI_U32 u32DataPkgNum)
{
    HI_S32 Ret;
    HI_U32 chnid;
    HI_U32 i;
    CIPHER_DATA_S CIdata;
    HI_UNF_CIPHER_DATA_S *pPkgTmp;
    
    chnid=hCipher&0x00ff;
    if ( 0 == chnid )
    {
        HI_ERR_CIPHER("invalid chnid 0.\n");
        return HI_ERR_CIPHER_INVALID_PARA;
    }
    
    for (i = 0; i < u32DataPkgNum; i++)
    {
        pPkgTmp = pstDataPkg + i;
        if (pPkgTmp->u32ByteLength < HI_UNF_CIPHER_MIN_CRYPT_LEN || pPkgTmp->u32ByteLength > HI_UNF_CIPHER_MAX_CRYPT_LEN)
        {
            HI_ERR_CIPHER("Pkg%d 's length(%d) invalid.\n", i, pPkgTmp->u32ByteLength);
            return HI_ERR_CIPHER_INVALID_PARA;
        }
    }

    CIdata.ScrPhyAddr=(HI_U32)pstDataPkg;
    CIdata.DestPhyAddr= 0;
    CIdata.u32PkgNum=u32DataPkgNum;
    CIdata.CIHandle=hCipher;

    CHECK_CIPHER_OPEN();

    Ret=ioctl(g_CipherDevFd,CMD_CIPHER_DECRYPTMULTI, &CIdata); 

    if (Ret != HI_SUCCESS)
    {
        return Ret;
    }

    return HI_SUCCESS;
}


HI_S32 HI_UNF_CIPHER_GetRandomNumber(HI_U32 *pu32RandomNumber)
{
    HI_S32 Ret = HI_SUCCESS;
    HI_SYS_VERSION_S stVersion;
    
    if (NULL == pu32RandomNumber)
    {
        HI_ERR_CIPHER("pu32RandomNumber is null.\n");
        return HI_ERR_CIPHER_INVALID_POINT;
    }

    memset(&stVersion, 0, sizeof(stVersion));
    Ret = HI_SYS_GetVersion(&stVersion);
    if ( HI_FAILURE == Ret )
    {
        HI_ERR_CIPHER("SYS GET VERSION FAILED!\n");
        return HI_FAILURE;
    }
    

    if((HI_CHIP_VERSION_V100 == stVersion.enChipVersion) && (HI_CHIP_TYPE_HI3712 == stVersion.enChipTypeSoft ))
    {
        HI_ERR_CIPHER("Not supported!\n");
        return HI_FAILURE;
    }
    
    CHECK_CIPHER_OPEN();

    Ret = ioctl(g_CipherDevFd,CMD_CIPHER_GETRANDOMNUMBER, pu32RandomNumber);

    if (Ret != HI_SUCCESS)
    {
        return Ret;
    }

    return HI_SUCCESS;
}


HI_S32 HI_UNF_CIPHER_GetHandleConfig(HI_HANDLE hCipherHandle, HI_UNF_CIPHER_CTRL_S* pstCtrl)
{
    HI_S32 Ret;
    CIPHER_Config_CTRL  configdata;

    CHECK_CIPHER_OPEN();

    configdata.CIHandle = hCipherHandle;
    memset(&configdata.CIpstCtrl, 0, sizeof(configdata.CIpstCtrl));
    
    Ret = ioctl(g_CipherDevFd, CMD_CIPHER_GETHANDLECONFIG, &configdata);
    if (Ret != HI_SUCCESS)
    {
        return Ret;
    }
    memcpy(pstCtrl, &configdata.CIpstCtrl, sizeof(configdata.CIpstCtrl));

    return HI_SUCCESS;
}

HI_S32 HI_UNF_CIPHER_CalcMAC(HI_HANDLE hCipherHandle, HI_U8 *pInputData, HI_U32 u32InputDataLen,
                                        HI_U8 *pOutputMAC, HI_BOOL bIsLastBlock)
{
    HI_U8 X[16], M_last[16], padded[16];
    static HI_U8 K1[16] = {0};
	static HI_U8 K2[16] = {0};
    HI_U32 n, i, flag;
    HI_U8 u8TmpBuf[16];
    HI_S32 Ret = HI_SUCCESS;
    HI_UNF_CIPHER_CTRL_S stCipherCtrl;
    static HI_BOOL bIsFirstBlock = HI_TRUE;

    CHECK_CIPHER_OPEN();

    memset(&stCipherCtrl, 0, sizeof(stCipherCtrl));
    memset(u8TmpBuf, 0, sizeof(u8TmpBuf));
    memset(X, 0, sizeof(X));
    memset(M_last, 0, sizeof(M_last));
    memset(padded, 0, sizeof(padded));

    if(bIsFirstBlock) //if first block, reset the configure handle and generate the subkey again
    {
        Ret = HI_UNF_CIPHER_GetHandleConfig(hCipherHandle, &stCipherCtrl);
        Ret |= HI_UNF_CIPHER_ConfigHandle(hCipherHandle, &stCipherCtrl);
        if(Ret != HI_SUCCESS)
        {
            return Ret;
        }
       
        Ret = generate_subkey(hCipherHandle, K1, K2);
        if(Ret != HI_SUCCESS)
        {
            return Ret;
        }

        //After genreate the subkey, reset the configure handle
        Ret = HI_UNF_CIPHER_GetHandleConfig(hCipherHandle, &stCipherCtrl);
        Ret |= HI_UNF_CIPHER_ConfigHandle(hCipherHandle, &stCipherCtrl);
        if(Ret != HI_SUCCESS)
        {
            return Ret;
        }
        bIsFirstBlock = HI_FALSE;
    }

    if(!bIsLastBlock)
    {
       Ret = AES_Encrypt(hCipherHandle, pInputData, u32InputDataLen, u8TmpBuf); /* X := AES-128(KEY, Y); */
       if(Ret != HI_SUCCESS)
       {
            return Ret;
       }
    }
    else
    {    
        bIsFirstBlock = HI_TRUE;
        
        n = (u32InputDataLen + 15) / 16; /* n is number of rounds */
        if ( n == 0 )
        {
            n = 1;
            flag = 0;
        }
        else
        {
            if ( (u32InputDataLen % 16) == 0 ) /* last block is a complete block */
            {
                flag = 1;
            }
            else /* last block is not complete block */
            {
                flag = 0;
            }
        }
        
        if ( flag )  /* last block is complete block */
        {
            xor_128(&pInputData[16 * (n - 1)], K1, M_last);
        }
        else
        {
            padding(&pInputData[16 * (n - 1)], padded, u32InputDataLen % 16);
            xor_128(padded, K2, M_last);
        }
        
        if(n > 1)
        {
           Ret = AES_Encrypt(hCipherHandle, pInputData, 16 * (n - 1), u8TmpBuf); /* X := AES-128(KEY, Y); */
           if(Ret != HI_SUCCESS)
           {
                return Ret;
           }
        }
        
        Ret = AES_Encrypt(hCipherHandle, M_last, 16, X);
        if(Ret != HI_SUCCESS)
        {
            return Ret;
        }    
        
        for ( i = 0; i < 16; i++ )
        {
            pOutputMAC[i] = X[i];
        }
    }

    return HI_SUCCESS;
}
/****************/

CIPHER_HASH_DATA_S g_stCipherHashData;
HI_S32 HI_UNF_CIPHER_HashInit(HI_UNF_CIPHER_HASH_ATTS_S *pstHashAttr, HI_HANDLE *pHashHandle)
{
    HI_S32 Ret = HI_SUCCESS;

    if( (NULL== pstHashAttr)
     || (NULL == pHashHandle)
     || (0 == pstHashAttr->u32TotalDataLen)
     || (pstHashAttr->eShaType >= HI_UNF_CIPHER_HASH_TYPE_BUTT))
    {
        HI_ERR_CIPHER("Invalid parameter!\n");
        return HI_FAILURE;
    }

    CHECK_CIPHER_OPEN();

    if(g_HashDevFd > 0)
    {
        HI_ERR_CIPHER("Hash module is busy!\n");
        return HI_FAILURE;       
    }

    g_HashDevFd = 1;

    memset((HI_U8 *)&g_stCipherHashData, 0, sizeof(g_stCipherHashData));
    g_stCipherHashData.enShaType = pstHashAttr->eShaType;
    g_stCipherHashData.u32TotalDataLen = pstHashAttr->u32TotalDataLen;
    if( ( HI_UNF_CIPHER_HASH_TYPE_HMAC_SHA1 == pstHashAttr->eShaType) || (HI_UNF_CIPHER_HASH_TYPE_HMAC_SHA256 == pstHashAttr->eShaType ))
    {
        memcpy(g_stCipherHashData.u8HMACKey, pstHashAttr->u8HMACKey, 16);
        g_stCipherHashData.enHMACKeyFrom = HI_CIPHER_HMAC_KEY_FROM_CPU;
    }

    Ret = ioctl(g_CipherDevFd, CMD_CIPHER_CALCHASHINIT, &g_stCipherHashData);
    if(Ret != HI_SUCCESS)
    {
        g_HashDevFd = -1;
        return Ret;
    }
    *pHashHandle = (HI_U32)&g_stCipherHashData;

//    g_hashType = eShaType;

    return HI_SUCCESS;
}

HI_S32 HI_UNF_CIPHER_HashUpdate(HI_HANDLE hHashHandle, HI_U8 *pu8InputData, HI_U32 u32InputDataLen)
{
    HI_S32 Ret = HI_SUCCESS;
    CIPHER_HASH_DATA_S *pstCipherHashData = (CIPHER_HASH_DATA_S *)hHashHandle;

    if(pu8InputData == NULL || u32InputDataLen == 0)
    {
        HI_ERR_CIPHER("Invalid parameter!\n");
        g_HashDevFd = -1;
        return HI_FAILURE;
    }

    CHECK_CIPHER_OPEN();

//  pstCipherHashData->enShaType = g_hashType;
    pstCipherHashData->u32InputDataLen = u32InputDataLen;
    pstCipherHashData->pu8InputData = pu8InputData;
    Ret = ioctl(g_CipherDevFd, CMD_CIPHER_CALCHASHUPDATE, pstCipherHashData);
    if(Ret != HI_SUCCESS)
    {
        g_HashDevFd = -1;
        return Ret;
    }

    return HI_SUCCESS;
}

HI_S32 HI_UNF_CIPHER_HashFinal(HI_HANDLE hHashHandle, HI_U8 *pu8OutputHash)
{
    HI_S32 Ret = HI_SUCCESS;
    CIPHER_HASH_DATA_S *pstCipherHashData = (CIPHER_HASH_DATA_S *)hHashHandle;;

    if(pu8OutputHash == NULL)
    {
        HI_ERR_CIPHER("Invalid parameter!\n");
        g_HashDevFd = -1;
        return HI_FAILURE;
    }

    CHECK_CIPHER_OPEN();

//  pstCipherHashData->enShaType = g_hashType;
    pstCipherHashData->pu8Output= pu8OutputHash;
    Ret = ioctl(g_CipherDevFd, CMD_CIPHER_CALCHASHFINAL, pstCipherHashData);
    if(Ret != HI_SUCCESS)
    {
        g_HashDevFd = -1;
        return Ret;
    }
    g_HashDevFd = -1;

    return HI_SUCCESS;
}

