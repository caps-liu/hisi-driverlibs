#ifndef _SCENE_HEAD_
#define _SCENE_HEAD_
#include "basedef.h"
#include "vfmw.h"


#ifdef __cplusplus
extern "C" {
#endif

#define MAX_FILENAME_LEN      16
#define MAX_SUPPORT_FILE_NUM  256
#define MAX_FILE_DESCRIPT_LEN 256
#define MAX_MSG_LEN           256

#define SR_FALSE 0
#define SR_TRUE  1

#define CMD_FILE 0
#define VHB_FILE 1
#define AHB_FILE 2

SINT32 SrCreate(VOID);
VOID   SrDestroy(VOID);
SINT32 SrAddFile(SINT8 *pFileName, SINT8 *pDescrpt);
VOID   SrOpen(VOID);
VOID   SrClose(VOID);
VOID   SrWriteMem(UINT8 *pSrc, UINT32 PhyAddr, SINT32 Len, SINT8 *pFileName);
VOID   SrReadMem(UINT32 PhyAddr, SINT32 Len, SINT8 *pFileName);
VOID   SrWriteReg(UINT32 PhyAddr, UINT32 Value, UINT32 Mask);
VOID   SrReadReg(UINT32 PhyAddr, UINT32 ExpValue, UINT32 Mask, SINT32 Delay);
VOID   SrYuvInf(UINT32 LumPhyAddr, UINT32 ChrPhyAddr, UINT32 Width, SINT32 Height, SINT32 Stride);
VOID   SrAddComment(SINT8 *pDescrpt);
#ifdef __cplusplus
}
#endif

#endif
