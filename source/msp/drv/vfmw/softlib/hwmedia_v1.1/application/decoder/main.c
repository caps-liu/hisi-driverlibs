#if defined(_MSC_VER)
#ifdef _DEBUG
#define DEBUG_CLIENTBLOCK new( _CLIENT_BLOCK, __FILE__, __LINE__)
#else
#define DEBUG_CLIENTBLOCK
#endif  // _DEBUG

#define _CRTDBG_MAP_ALLOC
#include <stdlib.h>
#include <crtdbg.h>

#ifdef _DEBUG
#define new DEBUG_CLIENTBLOCK
#endif  // _DEBUG
#endif

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <signal.h>
#include <math.h>
#include <time.h>

#if defined(_MSC_VER)
#pragma  warning(disable:4996)
#endif

#include "imedia_common.h"
#include "imedia_viddec.h"
#include "imedia_error.h"
#include "imedia_util.h"

#include "getopt.h"
#include "hw_mutex.h"
#include "hw_thread.h"

#define OK 0
#define ERR -1

#define INBUF_SIZE 0x1000000
#define INPUT_BUFFER_PADDING_SIZE 8
#define MAX_UINT 0xFFFFFFFF
#define MAX_INT  0x7FFFFFFF
#define MAX_FILENAME		256
#define MAX_NUM_INPUT_FILE  64
#define MAX_NUM_OUTPUT_FILE MAX_NUM_INPUT_FILE
#define MAX_CODEC_NUM 9
#define MAX_LOG_LEVEL 4

/* add by lxw for test */
//#define TEMP_TEST
#ifdef TEMP_TEST
static int filesize = 0;
#endif

typedef struct appMemTab
{
	unsigned int  malloc_times;
	unsigned int  free_times;
	unsigned int  total_malloc_size;
} appMemTab;

appMemTab g_stMemTab = { 0 };

//#define CHECK_STATUS
/* end add by lxw for test */

typedef struct appArgs
{
	char pszInputFileName[MAX_NUM_INPUT_FILE][MAX_FILENAME];
	char pszOutputFileName[MAX_NUM_OUTPUT_FILE][MAX_FILENAME];
	int  aiDecFrameNum[MAX_NUM_INPUT_FILE];
	int  aiCodecType[MAX_NUM_INPUT_FILE];
	int  iInputFileNum;
	int  iOutputFileNum;
	int  iDebugLevel;
	int  iInBufSize;
	int bNotCallProbeHeader;

	int  threadNum;
	// 下面参数用于线程同步
	int iCurFileId;
	int aiCurFileId[MAX_CODEC_NUM];
	hw_mutex_t file_id_lock;

	// 保存系统信息指针
	STRU_IMEDIA_SYSINFO *pstSysInfo;
	int bPrintOverheadFlag;
	int iDspMask;
	int iForceYUV420;
	int iBufNum;
	unsigned int uiArmFlag;
} appArgs;

typedef struct appContent
{
	unsigned char *pucInBuf;
	int			   iBufSize;
	FILE		  *fpInFile;
	int			   iFileEndFlag;
	int abStatusFlag[MAX_META_DATA_COUNT];
}appContent;

char *pszMsg[MAX_LOG_LEVEL]		  = {"ERROR","WARNING","INFO","DEBUG"};
char *pszCodecName[MAX_CODEC_NUM] = {"h264","mpeg2","h263","mpeg4","wmv3","vc1","vp6f","vp6","Sorenson"};
static int g_exit_flag = 0;
static int iDebugLevel = 0;
static char *pszFrameType[8] = {"Unknown Frame Type","P Frame","B Frame","I Frame","SI Frame","SP Frame","IDR Frame","B Ref Frame"};

#define CPU_FEATURE_CONFIG_NUM 7
#define OPEN_ALL_CPU_FEATURE 0x80000000
INT32 aiCpuMask[CPU_FEATURE_CONFIG_NUM] =
{
	0,
	IMEDIA_CPU_MMX|IMEDIA_CPU_MMXEXT, 
	IMEDIA_CPU_MMX|IMEDIA_CPU_MMXEXT|IMEDIA_CPU_SSE, 
	IMEDIA_CPU_MMX|IMEDIA_CPU_MMXEXT|IMEDIA_CPU_SSE|IMEDIA_CPU_SSE2|IMEDIA_CPU_SSE2_IS_FAST, 
	IMEDIA_CPU_MMX|IMEDIA_CPU_MMXEXT|IMEDIA_CPU_SSE|IMEDIA_CPU_SSE2|IMEDIA_CPU_SSE2_IS_FAST|IMEDIA_CPU_SSE3|IMEDIA_CPU_SSSE3,
	IMEDIA_CPU_MMX|IMEDIA_CPU_MMXEXT|IMEDIA_CPU_SSE|IMEDIA_CPU_SSE2|IMEDIA_CPU_SSE2_IS_FAST|IMEDIA_CPU_SSE3|IMEDIA_CPU_SSSE3|IMEDIA_CPU_SSE4|IMEDIA_CPU_SSE42,
	OPEN_ALL_CPU_FEATURE
};

static UINT64 ullDecTime;
static UINT64 ullDecTotTime;

/******************************************************************************
* application help information
******************************************************************************/
static void help(void)
{
	printf("-h		 show this help! \n" \
		"usage:      decoder -i input -o output -c codectype [-n framenum] [-d debuglevel] [-t threadnum] [-p] [-m cpumask] [-f formatflag] [-b inBufSize] [-e bufnum] [-a arm_disable_flag]\n" \
		"input:      the source bitstream file name\n" \
		"output:     the decoded yuv file name\n" \
		"codectype:  codec type[0~6] 0->h264 1->mpeg2 2->h263 3->mpeg4 4->wmv3 5->vc1(ap) 6->vp6f 7->vp6 8->Sorenson\n" \
		"framenum:   option,specify the number of frame you want to decode ,default decode the whole input file\n" \
		"debuglevel: option,specify the debug level,default[ERR] 0->ERROR 1->WARNING 2->INFO 3->DEBUG\n" \
		"threadnum:	 option,specify the thread number,default[=inputfile num]\n" \
		"-p :		 option,specify if print decoder overhead information,default[0] 0:not print;1: print\n" \
		"cpumask:	 option,specify which cpu feature will be open,like mmx sse..,default[1] 0->close 1->open\n" \
		"formatflag: option,specify the output format,default[1] 0:output normal;1:output yuv420\n" \
		"inBufSize:	 option,specify the size of input buffer storing bitstream,default[16m],range[4096-67108864]\n" \
		"-e bufnum:	 option,specify the max buffer num for store yuv,default[16],range[3-32]\n" \
        "-a arm_disable_flag: option,specify the arm optimization flag, default[0] 0->enable 1->disable\n" \
		"example:    decoder -i input.264 -o output.yuv -c 0 -n 100 -d 0 -t 1 -p -m 1 -f \n");
}

/******************************************************************************
 * parse input Args
 ******************************************************************************/
static void ParseArgs(int argc, char *argv[], appArgs *argsp)
{
	extern char* optarg;
	int ch = 0;
	int iDecNumCnt = 0;
	int iCodecTypeCnt = 0;

	argsp->iInputFileNum  = 0;
	argsp->iOutputFileNum = 0;

	while ((ch = getopt(argc, argv, "hH?i:o:c:n:d:t:pm:f:b:e:a:")) != EOF) // opt: means requires option
	{
		switch(ch)
		{
		case 'h':
		case 'H':
		case '?':
			help();
			exit(EXIT_FAILURE);
			break;
		case 'i':
			strcpy(argsp->pszInputFileName[argsp->iInputFileNum++], (const char*)optarg);
			break;
		case 'o':
			strcpy(argsp->pszOutputFileName[argsp->iOutputFileNum++], optarg);
			break;
		case 'c':
			sscanf(optarg, "%d", &argsp->aiCodecType[iCodecTypeCnt++]);
			break;
		case 'n':
			sscanf(optarg, "%d", &argsp->aiDecFrameNum[iDecNumCnt++]);
			break;
		case 'd':
			sscanf(optarg, "%d", &argsp->iDebugLevel);
			iDebugLevel = argsp->iDebugLevel;
			break;
		case 't':
			argsp->threadNum = atoi(optarg);
			break;
		case 'p':
			argsp->bPrintOverheadFlag = 1;
			break;
		case 'm':
			argsp->iDspMask = atoi(optarg);
			break;
		case 'f':
			argsp->iForceYUV420 = atoi(optarg);
			break;
		case 'b':
			argsp->iInBufSize = atoi(optarg);
			break;
		case 'e':
			argsp->iBufNum = atoi(optarg);
			break;
		case 'a':
			argsp->uiArmFlag = atoi(optarg);
			break;
		default:
			break;
		}
	}
}

/******************************************************************************
* check input args
******************************************************************************/
static int CheckArgs(appArgs *pstAppArgs)
{
	int i;
	int iFileNum = 0;
	
	/* if pszInputFileName or pszOutputFileName or iCodecType is NULL or invalid, main will return */
	if(0 == pstAppArgs->iInputFileNum)
	{
		printf("Error: there is not any input file!\n");
		help();
		return ERR;
	}

	/* if pszInputFileName or pszOutputFileName or iCodecType is NULL or invalid, main will return */
	if(0 == pstAppArgs->iOutputFileNum)
	{
		/*printf("Error: there is not any output file!\n");
		help();
		return ERR;*/
		printf("warning: test performance only, not yuv output!\n");
	}

	/* compare the input file num with output file num , and get the min */
	iFileNum = (pstAppArgs->iInputFileNum >= pstAppArgs->iOutputFileNum && pstAppArgs->iOutputFileNum > 0) ? pstAppArgs->iOutputFileNum : pstAppArgs->iInputFileNum;
	if(pstAppArgs->iInputFileNum > iFileNum || pstAppArgs->iOutputFileNum > iFileNum)
	{
		printf("Warning: input/output file number[%d] is not equal output file number[%d]! Now, just decode the preive %d file.\n",
				pstAppArgs->iInputFileNum ,pstAppArgs->iOutputFileNum,iFileNum);
		pstAppArgs->iInputFileNum = pstAppArgs->iOutputFileNum = iFileNum;
	}

	if(pstAppArgs->threadNum > pstAppArgs->iInputFileNum)
	{
		printf("Warning: input thread Number[%d] is more than Input file number[%d]!Now, set it equal to input file number!\n",pstAppArgs->threadNum,pstAppArgs->iInputFileNum);
		pstAppArgs->threadNum = pstAppArgs->iInputFileNum;
	}

	if(pstAppArgs->threadNum == 0)
	{
		pstAppArgs->threadNum = pstAppArgs->iInputFileNum;
	}

//	g_exit_flag = pstAppArgs->threadNum+1;

	for(i = 0; i < iFileNum; i++)
	{
		/* if pszInputFileName or pszOutputFileName or iCodecType is NULL or invalid, main will return */
		if(IVIDEO_CODEC_H264 > pstAppArgs->aiCodecType[i] || IVIDEO_CODEC_VP6A < pstAppArgs->aiCodecType[i])
		{
			printf("Error: codec_id[%d] is not valid[0-8]! \n",pstAppArgs->aiCodecType[i]);
			help();
			return ERR;
		}

		/* check the frame num that wanted */
		if(0 >= pstAppArgs->aiDecFrameNum[i])
		{
			printf("Warning: the frame number that you want to decode for %s is zero! Now, set it to 0x7FFFFFFF !\n",pstAppArgs->pszInputFileName[i]);
			pstAppArgs->aiDecFrameNum[i] = 0x7FFFFFFF;
		}
	}

	if(IMEDIA_DEBUG < pstAppArgs->iDebugLevel || IMEDIA_ERROR > pstAppArgs->iDebugLevel)
	{
		pstAppArgs->iDebugLevel = iDebugLevel = IMEDIA_ERROR;
		printf("Warning: the debug level is invalid! Now, set it to IMEDIA_ERROR!\n");
	}

	if(pstAppArgs->iInBufSize < 4096 || pstAppArgs->iInBufSize > 67108864)
	{
		printf("Warning: pstAppArgs->iInBufSize [%d]\n", pstAppArgs->iInBufSize);
		pstAppArgs->iInBufSize = INBUF_SIZE;
	}

	return OK;
}

/******************************************************************************
* print input args
******************************************************************************/
static int PrintArgs(appArgs *pstAppArgs)
{
	int i;

	printf("==================input args=========================\n");
	for (i = 0; i < pstAppArgs->iInputFileNum; i++)
	{
		printf("%dth:	input: %s	output: %s	codec: %s	DecFrmNum: %d\n",
				i, pstAppArgs->pszInputFileName[i], pstAppArgs->pszOutputFileName[i], pszCodecName[pstAppArgs->aiCodecType[i]], pstAppArgs->aiDecFrameNum[i]);
	}

	printf("Total Decode File Number: %d	Debug Level: %s Thread Num: %d\n",pstAppArgs->iInputFileNum, pszMsg[pstAppArgs->iDebugLevel], pstAppArgs->threadNum);

	return 0;
}

/******************************************************************************
* deal signal
******************************************************************************/
#ifdef __GNUC__
#if ARCH_X86
#include <execinfo.h>
/* Obtain a backtrace and print it to stdout. */
void print_trace(void)
{
	void *array[10];
	size_t size;
	char **strings;
	size_t i;

	size = backtrace (array, 10);
	strings = backtrace_symbols (array, size);
	
	printf("There is segment!\n");

	printf ("Obtained %zd stack frames.\n", size);

	for (i = 0; i < size; i++)
		printf ("%s\n", strings[i]);

	free (strings);
}
#else
void print_trace(void)
{
}
#endif
#endif

static void AppDealSignal(int sig)
{
	printf("catch signal %d\n", sig);
	printf("There is segment!\n");
    fflush(stdout);

	switch (sig)
	{
	case SIGINT://ctrl-c
#ifdef WIN32 //close the window
	case SIGBREAK:
#else
	case SIGHUP:
#endif
		g_exit_flag = 1;
		break;
#ifdef __GNUC__
	case SIGSEGV:
	case SIGILL:
	case SIGFPE:
	//case SIGTERM:
	//case SIGABRT:
		signal(SIGSEGV,	NULL);
		signal(SIGILL,	NULL);
		signal(SIGFPE,	NULL);
		print_trace();
		break;
#endif
	default:;
	    break;
	}
}

/******************************************************************************
* system memory allocate founction
******************************************************************************/
void* AppMalloc(unsigned int len)
{
	g_stMemTab.malloc_times++;
	g_stMemTab.total_malloc_size += len;

	return malloc(len);
}

/******************************************************************************
* system memory free founction
******************************************************************************/
void AppFree(void *ptr)
{
	if(ptr)
	{
		g_stMemTab.free_times++;
		free(ptr);
	}
}

/******************************************************************************
* get system time founction
******************************************************************************/
void AppSysTime(struct timeval *tv)
{

}

/******************************************************************************
* system log print founction
******************************************************************************/
void AppPrintf(int level, const char *msg)
{
	if(level <= iDebugLevel)
	{
		printf("[%s]", pszMsg[level]);
		printf(msg);
	}
}

/******************************************************************************
* Store One Frame: just support YUV420 Format
******************************************************************************/
static void PictureStore(FILE *fpOutput, STRU_IVIDEO_PICTURE stPicture, int format)
{
	INT32 i;
	UINT8 *pucYBuf = stPicture.apucBuf[0];
	UINT8 *pucUBuf = stPicture.apucBuf[2];
	UINT8 *pucVBuf = stPicture.apucBuf[1];

	switch(format)
	{
		case IVIDEO_CSP_YUV420:
			{
				/* store luminance data into output file */
				for(i = 0;i < stPicture.usHeight; i++)
				{
					fwrite(pucYBuf, sizeof(UINT8), stPicture.usWidth, fpOutput);
					pucYBuf += stPicture.usWidthPitch;
				}

				/* store chroma(cb) data into output file */
				for(i = 0; i < stPicture.usHeight/2; i++)
				{
					fwrite(pucUBuf, sizeof(UINT8), stPicture.usWidth/2, fpOutput);
					pucUBuf += stPicture.usWidthPitch/2;
				}

				/* store chroma(cr) data into output file */
				for(i = 0;i < stPicture.usHeight/2;i++)
				{
					fwrite(pucVBuf, sizeof(UINT8), stPicture.usWidth/2, fpOutput);
					pucVBuf += stPicture.usWidthPitch/2;
				}
			}
			break;
		case IVIDEO_CSP_YUV422:
			{
				/* store luminance data into output file */
				for(i = 0;i < stPicture.usHeight; i++)
				{
					fwrite(pucYBuf, sizeof(UINT8), stPicture.usWidth, fpOutput);
					pucYBuf += stPicture.usWidthPitch;
				}

				/* store chroma(cr) data into output file */
				for(i = 0;i < stPicture.usHeight;i++)
				{
					fwrite(pucVBuf, sizeof(UINT8), stPicture.usWidth/2, fpOutput);
					pucVBuf += stPicture.usWidthPitch/2;
				}


				/* store chroma(cb) data into output file */
				for(i = 0; i < stPicture.usHeight; i++)
				{
					fwrite(pucUBuf, sizeof(UINT8), stPicture.usWidth/2, fpOutput);
					pucUBuf += stPicture.usWidthPitch/2;
				}
			}
			break;
		default: printf("Not Support color format now!\n");

	}


}

/******************************************************************************
* Print process OutArs 
******************************************************************************/
static void PrintOutArgs(STRU_IVIDDEC_OUT_ARGS stOutArgs)
{
	printf("OutArgs: ERRCode[%d] BytesConsumed[%d] ",
		stOutArgs.iErrorCode, stOutArgs.uiBytesConsumed);
	if(NULL != stOutArgs.stPicture.apucBuf[0])
	{
		printf("DisplayID[%d] LastFrame[%d] FrameType[%d] Width[%d] Height[%d] WidthPitch[%d] ContentType[%d] YBuf[%p] UBuf[%p] VBuf[%p] \n", 
			stOutArgs.uiDisplayID, stOutArgs.bLastFrameFlag, stOutArgs.eFrameType,stOutArgs.stPicture.usWidth, stOutArgs.stPicture.usHeight, stOutArgs.stPicture.usWidthPitch,
			stOutArgs.stPicture.eContentType, stOutArgs.stPicture.apucBuf[0],stOutArgs.stPicture.apucBuf[1],stOutArgs.stPicture.apucBuf[2]);
	}
	else
	{
		printf("\n");
	}
}

/******************************************************************************
* Print process InArgs 
******************************************************************************/
static void PrintInArgs(STRU_IVIDDEC_IN_ARGS stInArgs)
{
	printf("InArgs: BitstreamStatus[%d] BitstreamBuf[%p] NumBytes[%d]", stInArgs.eBitstreamStatus, stInArgs.pucBuf, stInArgs.uiNumBytes);
	if(BITSTREAM_SEGMENT_BEGIN == stInArgs.eBitstreamStatus)
	{
		if(NULL != stInArgs.pstMetaData && 0 != stInArgs.pstMetaData->iNumMetaData)
		{	
			int i;

			for(i=0;i<stInArgs.pstMetaData->iNumMetaData;i++)
			{
				printf("MetaData: Header%d[%p] size[%d]  ", i, stInArgs.pstMetaData->apucMetaData[i],stInArgs.pstMetaData->ausMetaDataLen[i]);
			}
			printf("MetaData Number[%d]\n", stInArgs.pstMetaData->iNumMetaData);
		}
	}
	else
	{
		printf("\n");
	}
}

/******************************************************************************
* Getting System Infomation
******************************************************************************/
static void SysInfoInit(STRU_IMEDIA_SYSINFO *pstSysInfo)
{
	int iRet = OK;

	/* init system founction */
	pstSysInfo->pfnMalloc  = AppMalloc;
	pstSysInfo->pfnFree	 = AppFree;
	pstSysInfo->pfnPrintf  = AppPrintf;

	/* get system infomation */
	/*iRet = IMedia_GetCpuCaps(&pstSysInfo->stCpuCaps);
	if (OK != iRet)
	{
		printf("Warning: Can not get the cpu infomation! return code[%d]\n",iRet);
		memset(&pstSysInfo->stCpuCaps, 0, sizeof(STRU_IMEDIA_CPU_CAPS));
	}*/

	iRet = IMedia_SetSysInfo(pstSysInfo);
}

/******************************************************************************
* get the header of bitstream and init the static params
******************************************************************************/
static int ProbeHeader(int iCodecType, STRU_IMEDIA_SINGLE_BUFFER *pstInArgs, STRU_IVIDDEC_META_DATA_OUT_ARGS *pstMetaOutArgs, appContent *pstAppCnt)
{
	int iRet = OK;
	
	int iSize = 0;
	int iSizeLeft = 0;
//	int abStatusFlag[MAX_META_DATA_COUNT] = {0};
	unsigned char *pucInBuf = NULL;
	int i , j;

	while(1)
	{
		iSize = (int)fread(pstAppCnt->pucInBuf + iSizeLeft, sizeof(unsigned char), pstAppCnt->iBufSize - iSizeLeft, pstAppCnt->fpInFile);
		if(0 == iSize && 0 == iSizeLeft)
		{
			/* if not find the header of bitstream until end of file, then set the Status to NOT_FOUND, and go out of loop */
			pstMetaOutArgs->eStatus = META_DATA_NOT_FOUND;
			break;
		}

		iSizeLeft += iSize;

		/* init the input ars */
		pstInArgs->pucBuf	 = pstAppCnt->pucInBuf;
		pstInArgs->uiSize  = (unsigned int)iSizeLeft;

		/* call the IMedia_Viddec_ProbeHeader() for getting the header infomation */
		iRet = IMedia_Viddec_ProbeHeader(iCodecType, pstInArgs, pstMetaOutArgs);
		if(OK != iRet)
		{
			printf("ERR: Probe Header ERR ! return code: %d\n",iRet);
			iRet = ERR;
			goto END;
		}

		/* if find some or all the headers of bitstream , then store it or them */
		if(META_DATA_NOT_FOUND != pstMetaOutArgs->eStatus  && pstMetaOutArgs->stMetaData.iNumMetaData)
		{
			for(i = 0; i < pstMetaOutArgs->stMetaData.iNumMetaData; i++)
			{
				for(j = 0;j < MAX_META_DATA_COUNT; j++)
				{
					/* find index of the free buf */ 
					if(!pstAppCnt->abStatusFlag[j] && pstMetaOutArgs->stMetaData.apucMetaData[j])
					{
						break;
					}
				}

				if(MAX_META_DATA_COUNT <= j)
				{
					printf("ERR: bitstream header buffer management ERR!\n");
					iRet = ERR;
					goto END;
				}

				pucInBuf = (unsigned char*)malloc(pstMetaOutArgs->stMetaData.ausMetaDataLen[j]);
				if(NULL == pucInBuf)
				{
					printf("ERR: malloc memory for storing Meta Data failed!\n");
					pstMetaOutArgs->stMetaData.apucMetaData[j] = NULL;
					iRet = ERR;
					goto END;
				}

				/* store the header of the bitstream */
				memcpy(pucInBuf,pstMetaOutArgs->stMetaData.apucMetaData[j],pstMetaOutArgs->stMetaData.ausMetaDataLen[j]);
				pstMetaOutArgs->stMetaData.apucMetaData[j] = pucInBuf;
				pstAppCnt->abStatusFlag[j] = 1;
				pucInBuf = NULL;
			}

			pstMetaOutArgs->stMetaData.iNumMetaData = 0;
		} /* end if(pstMetaOutArgs->eStatus != META_DATA_NOT_FOUND && stMetaData.iNumMetaData) */

		/* if find all header of the bitstream , then go out of the loop */
		if(META_DATA_FOUND == pstMetaOutArgs->eStatus)
		{
			/* caculate the header number of the bitstream */
			for(i = 0; i < MAX_META_DATA_COUNT; i++)
			{
				pstMetaOutArgs->stMetaData.iNumMetaData += pstAppCnt->abStatusFlag[i];
			}

			printf("Find the Header of the bitstream!");
			for(i = 0;i < pstMetaOutArgs->stMetaData.iNumMetaData; i++)
			{
				printf("  The %dth header length[%d]",i+1,pstMetaOutArgs->stMetaData.ausMetaDataLen[i]);
			}
			printf("!\n");

			break;
		}

		printf("ProbeHeader: input bytes: %d  consumed bytes: %d \n", iSizeLeft, pstMetaOutArgs->uiBytesConsumed);

		/* caculate the left bytes, if more than zero , copy the left bytes to the start of aucInBuf */
		iSizeLeft -= pstMetaOutArgs->uiBytesConsumed;
		if(0 < iSizeLeft)
		{
			memcpy(pstAppCnt->pucInBuf, pstAppCnt->pucInBuf + pstMetaOutArgs->uiBytesConsumed, iSizeLeft);
		}

		if(0 == pstMetaOutArgs->uiBytesConsumed && 0 == iSize)
		{
			goto END;
		}
		
	}	/* end while(1) */ 

	return iRet;

END:
	/* free the memory that has allocated for storing header bitstream */
	for(j = 0;j < MAX_META_DATA_COUNT; j++)        
	{
		if(pstMetaOutArgs->stMetaData.apucMetaData[j])
		{
			free(pstMetaOutArgs->stMetaData.apucMetaData[j]);
			pstMetaOutArgs->stMetaData.apucMetaData[j] = NULL;
		}
	}

	return iRet;
}
		
/******************************************************************************
* Decode one frame 
******************************************************************************/
static int DecodeOneFrame(IMEDIA_CODEC_CTX hDecHandle, STRU_IVIDDEC_STREAM *pstInArgs, STRU_IVIDDEC_OUT_ARGS *pstOutArgs, appContent *pstAppCnt, ENUM_IVIDEO_FRAME_TYPE *peFrameType)
{
	
	int iRet = OK;

	int iSize = pstInArgs->uiNumBytes;

	STRU_IVIDDEC_STREAM stInArgs;
    STRU_IVIDDEC_FRAME_PARSE_OUT_ARGS stOutArgs;

	pstOutArgs->stPicture.apucBuf[0] = NULL; 

	while(NULL == pstOutArgs->stPicture.apucBuf[0] && 1 != pstOutArgs->bLastFrameFlag)
	{
		if(0 >= iSize && 1 != pstAppCnt->iFileEndFlag)
		{
			iSize = (int)fread(pstAppCnt->pucInBuf, sizeof(unsigned char), pstAppCnt->iBufSize, pstAppCnt->fpInFile);
#ifdef TEMP_TEST
			filesize += iSize;
#endif
			/* if reach the end of bitstream , then set the File end Flag */
			if(iSize < pstAppCnt->iBufSize)
			{
				pstAppCnt->iFileEndFlag = 1;
//				pstInArgs->eBitstreamStatus = BITSTREAM_SEGMENT_END;
			}
		}
	
		/* if the size that fread consumed , the go out of loop */
		while(0 < iSize || (pstAppCnt->iFileEndFlag && 1 != pstOutArgs->bLastFrameFlag))
		{
			/* init the InArgs every time */
			if(0 == pstInArgs->uiNumBytes)
			{
				pstInArgs->uiNumBytes = iSize;
				pstInArgs->pucBuf	  = pstAppCnt->pucInBuf;
			}

			/* call IMedia_Viddec_Process(): calling it one time will decode one frame at most */
//			iRet = IMedia_Viddec_Process(hDecHandle, pstInArgs, pstOutArgs);
			memset(&stOutArgs,0,sizeof(stOutArgs));
			iRet = IMedia_Viddec_FrameParse(hDecHandle,pstInArgs,&stOutArgs);
			if(OK != iRet)
			{
				printf("Warning Parse Error Code: 0x%x\n",pstOutArgs->iErrorCode);
			}

			pstInArgs->pucBuf     += stOutArgs.uiBytesConsumed;
			pstInArgs->uiNumBytes -= stOutArgs.uiBytesConsumed;
			iSize				 -= stOutArgs.uiBytesConsumed;

			/* if reach the end of bitstream and not find one whole picture , then go out of the loop */
			if(NULL == stOutArgs.stFrame.pucBuf || 0 == stOutArgs.stFrame.uiNumBytes)
			{
				/* if reach the end of bitstream file, then not go out of the loop and keep on outputing the YUV stored in delay buffer */
				if(1 != pstAppCnt->iFileEndFlag && stOutArgs.uiBytesConsumed)
				{
					break;   /* 文件没有解完，但当前输入的buf中不足以找出完整的一帧 */
				}
				else if(0 == stOutArgs.stFrame.uiNumBytes && stOutArgs.uiBytesConsumed)
				{
					continue;  /* 文件的最后一帧，无法识别到帧结尾（通过将输入字节数设为0，再调用一次）*/
				}
			}

			stInArgs = stOutArgs.stFrame;

			ullDecTime = IMedia_OS_Milliseconds();
			iRet = IMedia_Viddec_FrameDecode(hDecHandle,&stInArgs,pstOutArgs);
			ullDecTotTime += IMedia_OS_Milliseconds() - ullDecTime;	
			
			*peFrameType = pstOutArgs->eFrameType;

			if(OK != pstOutArgs->iErrorCode)	
			{
				printf("Warning Codec Error Code: 0x%x\n",pstOutArgs->iErrorCode);
			}

			// 当前帧需要重新解码，目前的处理方法存在问题
			if(pstOutArgs->uiBytesConsumed == 0)
			{
				pstInArgs->pucBuf     -= stOutArgs.uiBytesConsumed;
				pstInArgs->uiNumBytes += stOutArgs.uiBytesConsumed;
				iSize				  += stOutArgs.uiBytesConsumed;
			}

			if(OK != iRet)
			{
				printf("Decode failed! return code: 0x%x\n",iRet);
				return ERR;
			}
			
			if(NULL != pstOutArgs->stPicture.apucBuf[0])
			{
				break;
			}
		} /* end while(iSize > 0) */
	}  

	return OK;
}


/******************************************************************************
* Control 
******************************************************************************/
static int DecControl(IMEDIA_CODEC_CTX hDecHandle, ENUM_IMEDIA_CMD cmd, void *pParams, void *pSize)
{
	int iRet = OK;

	STRU_IVIDDEC_STATUS *pstVidDecStatus;
	STRU_IVIDEO_STREAM_INFO *pstVideoStreamInfo;
	STRU_IVIDDEC_PARAMS *pstVidDecParams;

	iRet = IMedia_Viddec_Control(hDecHandle, cmd, pParams, NULL);
	if(OK != iRet)
	{
		printf("Control %d failed! Return Code: %d\n", cmd, iRet);
		return ERR;
	}
	
	switch(cmd)
	{
		case IMEDIA_GET_VERSION:
			{
				//printf("MS-Decoder Version: %s !\n",(char*)pParams);
			}
			break;
		case IMEDIA_GET_STATUS:
			{
				UINT32 uiTotalFrames = 0;
				pstVidDecStatus = (STRU_IVIDDEC_STATUS*)pParams;
				printf("============= Decoder Status ==============\n");
				printf("CodecStatus = %d\nERRCode = %d\nTotalErrors = %u\nAvgFPS = %u\n[%.3f]\n",
						pstVidDecStatus->eCodecStatus, pstVidDecStatus->iErrorCode, pstVidDecStatus->uiTotalErrors, pstVidDecStatus->uiAvgFps, (float)pstVidDecStatus->uiAvgFps/1000);
				
				uiTotalFrames = pstVidDecStatus->uiDecIFrames+pstVidDecStatus->uiDecPFrames+pstVidDecStatus->uiDecBFrames;
				printf("Total Frames: %u ", uiTotalFrames);

				printf("I[%u] P[%u] B[%u]\n", pstVidDecStatus->uiDecIFrames, pstVidDecStatus->uiDecPFrames, pstVidDecStatus->uiDecBFrames);

				printf("DisplayedFrames = %d\nInUsedBufNum = %d\nFreeBufNum = %d \n",
						pstVidDecStatus->uiDisplayedFrames, pstVidDecStatus->uiInUsedBufNum,pstVidDecStatus->uiFreeBufNum);
				printf("H263LoopFilterAvgFPS = %.3f\n", (float)pstVidDecStatus->uiH263LFFps/1000);

				printf("DecFps = %.3f\n", (float)(uiTotalFrames * 1000)/ ullDecTotTime);
			}
			break;
		case IMEDIA_GET_STREAM_INFO:
			{
				pstVideoStreamInfo = (STRU_IVIDEO_STREAM_INFO*)pParams;
				printf("Bitstream Information: CodecType = %d\tProfile = %d\tLevel = %d\tContentType = %d \n",
						pstVideoStreamInfo->eCodecType, pstVideoStreamInfo->eProfile, pstVideoStreamInfo->eLevel, pstVideoStreamInfo->eContentType);
				printf("\tColorSpaceType = %d\tusWidth = %d\tusHeight = %d\tuiRefFrameNum = %d\n",
						pstVideoStreamInfo->eColorSpaceType, pstVideoStreamInfo->usWidth,pstVideoStreamInfo->usHeight,pstVideoStreamInfo->uiRefFrameNum);
			}
			break;
		case IMEDIA_GET_PARAMS:
			{
				pstVidDecParams = (STRU_IVIDDEC_PARAMS *)pParams;
				printf("Getting Static Params: Profile = %d\tLevel = %d\tColorSpaceType = %d\n",
						pstVidDecParams->eProfile,pstVidDecParams->eLevel,pstVidDecParams->eColorSpaceType);
				printf("\tparams: Width = %d\tHeight = %d\tRefFrame = %d\n",
						pstVidDecParams->usMaxWidth,pstVidDecParams->usMaxHeight,pstVidDecParams->usMaxRefFrame);	
			}
			break;
		case IMEDIA_SET_DEBUG_FLAG:
			break;
		case IMEDIA_FLUSH:
			break;
		case IMEDIA_RESET:
			break;
		default: 
			printf("Input cmd[%d] is invalid!\n",cmd);
			break;
	}

	return iRet;
}

/******************************************************************************
* Close Decoder 
******************************************************************************/
static int DecClose(void *hDecHandle, STRU_IVIDDEC_META_DATA *pstMetaData)
{
	int iRet = OK;

	int j;

	/* release decoder handle and free the memory that has allocated */
	if(NULL != hDecHandle)
	{
		iRet = IMedia_Viddec_Delete((IMEDIA_CODEC_CTX)hDecHandle);    
		if(OK != iRet)
		{
			printf("IMedia_Viddec_Delete() failed! Return Code: %d\n",iRet);
		}
	}

	/* free the memory that has allocated for storing header bitstream */
	for(j = 0;j < MAX_META_DATA_COUNT; j++)        
	{
		if(pstMetaData->apucMetaData[j])
		{
			free(pstMetaData->apucMetaData[j]);
		}
	}

	return iRet;
}


#ifdef __GNUC__
void print_stack_info()
{
	char szLine[1024] = { 0 };
	FILE *fp = fopen("/proc/self/status", "r");
	if (!fp)
		return;

	while (!feof(fp))
	{
		if (!fgets(szLine, sizeof(szLine), fp))
			continue;

		if (!strstr(szLine, "VmStk"))
			continue;

		printf("%s", szLine);
		break;
	}

	fclose(fp);
}
#endif

static struct hw_thread g_thread = { 0 };

/******************************************************************************
* Decode Thread 
******************************************************************************/
static void DecThreadFxn(void *param)
{
	int iRet = OK;

	int thread_id = 0;
	int file_id	  = 0;
	int iDecFramNum = 0;
	appContent stDecContent = { 0 };
	appArgs	  *pstArgs		= (appArgs *)param;
	FILE      *fpInFile		= NULL;
	FILE      *fpOutFile	= NULL;
	int		  debug_flag    = 0;

	STRU_IVIDEO_PICTURE astPicStore[32];
	int iInputNum  = 0;
	int iOutputNum = 0;
//	int aiPicStatus[32];
	int iBufSize = 0;

#ifdef TEMP_TEST
	FILE *logfile = NULL;
	int tmp_size = 0;
#endif

	IMEDIA_CODEC_CTX hDecHandle = NULL;
	//STRU_IVIDDEC_IN_ARGS stInArgs;
	STRU_IVIDDEC_STREAM stInArgs;
	STRU_IMEDIA_SINGLE_BUFFER stSingleBuf;
	STRU_IVIDDEC_OUT_ARGS stOutArgs;
	STRU_IVIDDEC_META_DATA_OUT_ARGS stMetaOutArgs;
	STRU_IVIDDEC_STATUS stStatus;
	STRU_IVIDDEC_PARAMS stParams;
	STRU_IVIDEO_STREAM_INFO stBSInfo;
	ENUM_IVIDEO_FRAME_TYPE eFrameType;
	STRU_IVIDEO_ASPECT_RATIO stAspectRatio = {0xFFFF, 0xFFFF};
	STRU_IVIDDEC_MEMORY_INFO stMemInfo;

	/* init the inargs and outargs */
//	memset(&stMetaOutArgs.stParams,0,sizeof(STRU_IVIDDEC_PARAMS));
//	memset(&stMetaOutArgs.stMetaData,0,sizeof(STRU_IVIDDEC_META_DATA));
	memset(&stInArgs,0,sizeof(stInArgs));
	memset(&stSingleBuf,0,sizeof(stSingleBuf));
	memset(&stOutArgs,0,sizeof(stOutArgs));
	memset(&stMetaOutArgs,0,sizeof(stMetaOutArgs));
	memset(&stParams, 0, sizeof(stParams));
	memset(&stBSInfo, 0, sizeof(stBSInfo));
	
	memset(&stDecContent,0,sizeof(stDecContent));

	memset(astPicStore,0,sizeof(STRU_IVIDEO_PICTURE)*32);
//	memset(aiPicStatus,0,sizeof(int)*32);

	memset(&stMemInfo,0,sizeof(stMemInfo));

	stParams.bForceOutYUV420Flag = pstArgs->iForceYUV420;
	if (pstArgs->bPrintOverheadFlag)
		stParams.iFlags |= IMEDIA_FLAG_CALC_FPS;
	if (pstArgs->iDspMask == 0)
		stParams.iFlags |= IMEDIA_FLAG_DISABLE_ASM;

	if(pstArgs->uiArmFlag)
		stParams.iFlags |= IMEDIA_FLAG_DISABLE_ARM;

	thread_id = hw_get_current_thread_id();
	printf("Thread %d start...\n", thread_id);

	// 取当前处理文件ID
	hw_mutex_lock(&pstArgs->file_id_lock);
	file_id = pstArgs->iCurFileId++;
	hw_mutex_unlock(&pstArgs->file_id_lock);
	if (file_id >= pstArgs->iInputFileNum)
	{
		printf("The [%dth] thread has no task!\n", thread_id);
		goto EXIT_THREAD;
	}

	/* Open the First file */
	fpInFile = fopen(pstArgs->pszInputFileName[file_id], "rb");
	if(NULL == fpInFile)
	{
		printf("Open file %s failed!\n",pstArgs->pszInputFileName[file_id]);
		goto EXIT_THREAD;
	}

	/* init decoder content that willbe used by ProbeHeader and DeocdeOneFrame */
	stDecContent.fpInFile = fpInFile;
	if (NULL == stDecContent.pucInBuf)
		stDecContent.pucInBuf = malloc(pstArgs->iInBufSize);

	if(NULL == stDecContent.pucInBuf)
	{
		printf("Malloc memory[%d] for bitstream buffer failed!\n", pstArgs->iInBufSize);
		iRet = ERR;
		goto EXIT_THREAD;
	}
	stDecContent.iBufSize = pstArgs->iInBufSize;
	stDecContent.iFileEndFlag = 0;

#ifdef TEMP_TEST
	logfile = fopen("err_bit.csv","ab");
	if(NULL == logfile)
	{
		printf("open err_bit.csv failed!");
		goto EXIT_THREAD;
	}
	fseek(logfile,0,2);
	tmp_size = ftell(logfile);
	if(tmp_size == 0)
	{
		fprintf(logfile,"input,file length,consumed,used all,decoded frame num\n");
	}
	fseek(logfile,0,0);
	fseek(fpInFile,0,2);
	tmp_size = ftell(fpInFile);
	fseek(fpInFile,0,0);
	fprintf(logfile,"%s,%d,",pstArgs->pszInputFileName[file_id],tmp_size);
#endif
#define MAX_REF_FRAMES 16
	if(1/* pstArgs->bNotCallProbeHeader */)
	{
		/* init static params with the struture of bitstream info ouputed by probeheader function */
// 		stParams.usMaxWidth      = IVIDEO_MAX_WIDTH;
// 		stParams.usMaxHeight     = IVIDEO_MAX_HEIGHT;

		stParams.usMaxWidth      = 1280;
		stParams.usMaxHeight     = 720;

		stParams.usMaxRefFrame   = MAX_REF_FRAMES;
		stParams.eColorSpaceType = IVIDEO_CSP_YUV420;
		stParams.eProfile        = 0;
		stParams.eLevel          = 0;
		stParams.usMaxFrameBufNum = pstArgs->iBufNum;
	}
	else
	{
		/* Call ProbeHeader: get the header of the bitstream and static params */
		iRet = ProbeHeader(pstArgs->aiCodecType[file_id], &stSingleBuf, &stMetaOutArgs, &stDecContent);
		if(OK != iRet)
		{
			printf("ProbeHeader failed!\n");
			goto EXIT_THREAD;
		}

		if(stMetaOutArgs.eStatus != META_DATA_FOUND)
		{
			printf("ERR: the bitstream headers do not find!\n");
			goto EXIT_THREAD;
		}

		/* init static params with the struture of bitstream info ouputed by probeheader function */
		stParams.usMaxWidth      = stMetaOutArgs.stStreamInfo.usWidth;
		stParams.usMaxHeight     = stMetaOutArgs.stStreamInfo.usHeight;
		stParams.usMaxRefFrame   = stMetaOutArgs.stStreamInfo.uiRefFrameNum;
		stParams.eColorSpaceType = stMetaOutArgs.stStreamInfo.eColorSpaceType;
		stParams.eProfile        = stMetaOutArgs.stStreamInfo.eProfile;
		stParams.eLevel          = stMetaOutArgs.stStreamInfo.eLevel;
		printf("sar = %d:%d\n", stMetaOutArgs.stStreamInfo.stAspectRatio.usSarWidth, stMetaOutArgs.stStreamInfo.stAspectRatio.usSarHeight);
	}

	printf("########################The total size of malloc before creat is %d kbytes\n", g_stMemTab.total_malloc_size/1024);

//#define CREATE_DELETE
#ifdef CREATE_DELETE
	{
		int i;
		for(i=0;i<1000;i++)
		{
			iRet = IMedia_Viddec_Create(pstArgs->aiCodecType[file_id], &stParams, &hDecHandle);
			if(OK != iRet)
			{
				printf("ERR: %s decoder creat failed! Return Code: %d \n",pszCodecName[pstArgs->aiCodecType[file_id]],iRet);
				goto EXIT_THREAD;
			}

			if(NULL != hDecHandle)
			{
				iRet = IMedia_Viddec_Delete((IMEDIA_CODEC_CTX)hDecHandle);    
				if(OK != iRet)
				{
					printf("IMedia_Viddec_Delete() failed! Return Code: %d\n",iRet);
				}
			}

		}

		if(stDecContent.pucInBuf)
		{
			free(stDecContent.pucInBuf);
			stDecContent.pucInBuf = NULL;
		}

		return;
	}
#endif
	/* call query_memory_size function */
	stMemInfo.eColorFormat = IVIDEO_CSP_YUV420;
	stMemInfo.usBufNum     = stParams.usMaxFrameBufNum;
	stMemInfo.usWidth      = stParams.usMaxWidth;
	stMemInfo.usHeight     = stParams.usMaxHeight;

	iRet = IMedia_Viddec_QueryMemSize(pstArgs->aiCodecType[file_id], &stMemInfo, &stParams.iBufLength);
	if(OK != iRet)
	{
		printf("ERR: %s IMedia_Viddec_QueryMemSize failed! Return Code: %d \n",pszCodecName[pstArgs->aiCodecType[file_id]],iRet);
		goto EXIT_THREAD;
	}

	if(0 >= stParams.iBufLength)
	{
		printf("ERR: %s IMedia_Viddec_QueryMemSize return bufsize[%d] is not invalid!\n",pszCodecName[pstArgs->aiCodecType[file_id]],stParams.iBufLength);
		goto EXIT_THREAD;
	}

	stParams.iBufLength += 0x600000;  //for frame parse 6M

	stParams.pucBuf = malloc(stParams.iBufLength);
	if(NULL == stParams.pucBuf)
	{
		printf("ERR: Malloc memory[%d] for %s decoder failed!\n",stParams.iBufLength, pszCodecName[pstArgs->aiCodecType[file_id]]);
		goto EXIT_THREAD;
	}

	/* call decoder creat: creat decoder handle and init it */	
	iRet = IMedia_Viddec_Create(pstArgs->aiCodecType[file_id], &stParams, &hDecHandle);
	if(OK != iRet)
	{
		printf("ERR: %s decoder create failed! Return Code: %d \n",pszCodecName[pstArgs->aiCodecType[file_id]],iRet);
		goto EXIT_THREAD;
	}
// 	iRet = DecControl(hDecHandle, IMEDIA_RESET, NULL, NULL);
// 	if(OK != iRet)
// 	{
// 		printf("Reset %s Decoder[%p] failed!\n", pszCodecName[pstArgs->aiCodecType[file_id]], hDecHandle);
// 		goto EXIT_THREAD;
// 	}

	/* go back to the input file start */
	fseek(stDecContent.fpInFile,0,0); 
	
	/* init the InArgs that will be used by Process() */
	//stInArgs.pstMetaData = &(stMetaOutArgs.stMetaData);
	//stInArgs.eBitstreamStatus = BITSTREAM_SEGMENT_BEGIN;

	/* decode bitstream until all the input bitstream file finished */
	do 
	{
		int iCount;
		printf("Start Decode File %s\n", pstArgs->pszInputFileName[file_id]);
		
		iDecFramNum = 0;
		stOutArgs.bLastFrameFlag = 0;
		fpOutFile = NULL;

		memset(astPicStore,0,sizeof(STRU_IVIDEO_PICTURE)*32);
//		memset(aiPicStatus,0,sizeof(int)*32);
		iInputNum  = 0;
		iOutputNum = 0;

		if (strlen(pstArgs->pszOutputFileName[file_id]) > 0)
		{
			fpOutFile = fopen(pstArgs->pszOutputFileName[file_id],"wb");
			if(NULL == fpOutFile)
			{
				printf("Open file %s failed!\n",pstArgs->pszOutputFileName[file_id]);
				stOutArgs.bLastFrameFlag = 1;
			}
		}
		
		memset(stDecContent.abStatusFlag,0,sizeof(stDecContent.abStatusFlag));

		while(g_exit_flag != 1 && iDecFramNum < pstArgs->aiDecFrameNum[file_id] && 0 == stOutArgs.bLastFrameFlag)
		{
		
			iRet = DecodeOneFrame(hDecHandle, &stInArgs, &stOutArgs, &stDecContent, &eFrameType);
			if(OK != iRet)
			{
				printf(" %s Decoder[%p] decode file %s failed!\n", pszCodecName[pstArgs->aiCodecType[file_id]],hDecHandle,pstArgs->pszInputFileName[file_id]);
				break;
			}

			//if(iDecFramNum%100 == 99)
			//{
			//	iRet = DecControl(hDecHandle, IMEDIA_FLUSH, NULL, NULL);
			//	if(OK != iRet)
			//	{
			//		printf("Flush %s Decoder[%p] failed!\n", pszCodecName[pstArgs->aiCodecType[file_id]], hDecHandle);
			//		break;
			//	}
			//}

			/* store the yuv file */
			if(NULL != stOutArgs.stPicture.apucBuf[0])
			{
				int format;
				format = stParams.bForceOutYUV420Flag ? IVIDEO_CSP_YUV420 : stMetaOutArgs.stStreamInfo.eColorSpaceType;
				astPicStore[(iInputNum++)%pstArgs->iBufNum] = stOutArgs.stPicture;
				if(iInputNum >= pstArgs->iBufNum - 1)
				{
					// 2010/06/29 仅测性能时可以不存储YUV
					if (NULL != fpOutFile)
					{
						PictureStore(fpOutFile, astPicStore[iOutputNum%pstArgs->iBufNum],format);
					}

					// 释放当前YUV缓存的占用
					IMedia_Viddec_Control(hDecHandle,IMEDIA_PICTURE_RELEASE,&(astPicStore[iOutputNum%pstArgs->iBufNum]),NULL);
					iOutputNum++;
				}
//				if(iDecFramNum == 19)					
//					printf("Come in iDecFrameNum = %d\n",iDecFramNum);
#ifdef CHECK_STATUS
				/* get decoder status */
				DecControl(hDecHandle, IMEDIA_GET_STATUS, (void *)&stStatus, NULL);
				/* get bitstream status */
				DecControl(hDecHandle, IMEDIA_GET_STREAM_INFO, (void *)&stBSInfo, NULL);
#endif
				if (stAspectRatio.usSarWidth != stOutArgs.stPicture.stAspectRatio.usSarWidth || 
					stAspectRatio.usSarHeight != stOutArgs.stPicture.stAspectRatio.usSarHeight)
				{
					stAspectRatio.usSarWidth = stOutArgs.stPicture.stAspectRatio.usSarWidth;
					stAspectRatio.usSarHeight = stOutArgs.stPicture.stAspectRatio.usSarHeight;
					printf("sar = %d:%d\n", stAspectRatio.usSarWidth, stAspectRatio.usSarHeight);
				}
				printf("Decode Frame %d [Type-%d PTS-%d]\n",iDecFramNum, (int)stOutArgs.eFrameType, stOutArgs.iPTS);
				iDecFramNum++;
			}
			else
			{
				printf("YUV Delay Output\n");
			}
		}

		for(iCount=iOutputNum;iCount<iInputNum;iCount++)
		{
			if (NULL != fpOutFile)
			{
				PictureStore(fpOutFile, astPicStore[iCount%pstArgs->iBufNum],0);
			}
			// 释放当前YUV缓存的占用
			IMedia_Viddec_Control(hDecHandle,IMEDIA_PICTURE_RELEASE,&(astPicStore[iCount%pstArgs->iBufNum]),NULL);
		}

#ifdef TEMP_TEST
		fprintf(logfile,"%d,%s,%d",filesize,filesize==tmp_size?"ok":"failed",iDecFramNum);
#endif

		if(OK == iRet)
		{
			printf("Decode file %s finished! NeedDecFrmNum: %d AuctualDecFrmNum: %d\n",
					pstArgs->pszInputFileName[file_id], pstArgs->aiDecFrameNum[file_id],iDecFramNum);
			DecControl(hDecHandle, IMEDIA_GET_STATUS, (void *)&stStatus, NULL);
		}

		if(NULL != stDecContent.fpInFile)
		{
			fclose(stDecContent.fpInFile);
		}

		if(NULL != fpOutFile)
		{
			fclose(fpOutFile);
		}
		
		hw_mutex_lock(&pstArgs->file_id_lock);
		file_id = pstArgs->iCurFileId++;
		hw_mutex_unlock(&pstArgs->file_id_lock);
		if(file_id >= pstArgs->iInputFileNum)
		{
			printf("The [%dth] thread has no task!\n", thread_id);
			break;
		}
        printk("line %d \n",__LINE__);

		iRet = DecControl(hDecHandle, IMEDIA_RESET, NULL, NULL);
		if(OK != iRet)
		{
			printf("Reset %s Decoder[%p] failed!\n", pszCodecName[pstArgs->aiCodecType[file_id]], hDecHandle);
			break;
		}

		//debug_flag = 0x7f;
		//iRet = DecControl(hDecHandle, IMEDIA_SET_DEBUG_FLAG, &debug_flag, NULL);
		//if(OK != iRet)
		//{
		//	printf("Reset %s Decoder[%p] failed!\n", pszCodecName[pstArgs->aiCodecType[file_id]], hDecHandle);
		//	break;
		//}

		memset(&stInArgs,0,sizeof(stInArgs));  //每次reset后，清空输入参数

		stDecContent.fpInFile = fopen(pstArgs->pszInputFileName[file_id],"rb");
		if(NULL == stDecContent.fpInFile)
		{
			printf("Open input file %s failed!\n",pstArgs->pszInputFileName[file_id]);
			pstArgs->aiDecFrameNum[file_id] = 0;
			continue;
		}
		stDecContent.iFileEndFlag = 0;

		//stInArgs.eBitstreamStatus = BITSTREAM_OTHER;
		iRet = OK;
		
	} while (g_exit_flag != 1);


EXIT_THREAD:
	iRet = DecClose((void *)hDecHandle, &stMetaOutArgs.stMetaData);
	if(OK == iRet)
	{
		printf("The %dth thread: Decoder close successful!\n",thread_id);
	}

	if (NULL != stDecContent.pucInBuf)
	{
		free(stDecContent.pucInBuf);
		stDecContent.pucInBuf = NULL;
	}

	if(stParams.pucBuf)
	{
		free(stParams.pucBuf);
		stParams.pucBuf = NULL;
	}
#ifdef TEMP_TEST
	if(logfile)
	{
		fprintf(logfile,"\n");
		fclose(logfile);
	}
#endif
#ifdef __GNUC__
	print_stack_info();
#endif
	printf("The %dth thread exit!\n", thread_id);
}

int main(int argc, char *argv[])
{
	int iRet = OK;

	appArgs stAppArgs = {0};
	STRU_IMEDIA_SYSINFO stSysInfo;
	STRU_IMEDIA_VERSION stVersion = { 0 };
	int iNeedThreadNum = 0;
	hw_thread_t *pstThreads = NULL;
	int i;
	
#if defined(_MSC_VER)
	_CrtSetDbgFlag(_CRTDBG_ALLOC_MEM_DF|_CRTDBG_LEAK_CHECK_DF);
#endif

	stAppArgs.iForceYUV420 = 1;
	stAppArgs.iDspMask = 1;
	stAppArgs.iInBufSize = INBUF_SIZE;
	stAppArgs.iBufNum = 16;

	/* parse the input args */
	ParseArgs(argc, argv, &stAppArgs);

	iRet = CheckArgs(&stAppArgs);
	if(OK != iRet)
	{
		printf("check input args failed!\n");
		return ERR;
	}

	PrintArgs(&stAppArgs);

	SysInfoInit(&stSysInfo);
	//stSysInfo.stCpuCaps.uiCpuFlag = aiCpuMask[stAppArgs.iDspMmask];
	stAppArgs.pstSysInfo = &stSysInfo;

	/* init system interrupt setting */
	signal(SIGINT, AppDealSignal); // ctrl-c
#ifdef WIN32
	signal(SIGBREAK, AppDealSignal);// Ctrl-Break sequence | close window		
#else
	signal(SIGHUP,	AppDealSignal);//close window	
#endif

#ifdef __GNUC__
	signal(SIGSEGV,	AppDealSignal);
	signal(SIGILL,	AppDealSignal);
	signal(SIGFPE,	AppDealSignal);
	//signal(SIGTERM,	AppDealSignal);
	//signal(SIGABRT,	AppDealSignal);
#endif

	/* Getting Decoder Version */
	iRet = DecControl(NULL, IMEDIA_GET_VERSION, (void *)(&stVersion), NULL);
	if(OK != iRet)
	{
		printf("Warning: Get Decoder Version failed!\n");
		iRet = OK;
	}
	printf("version info: %s %s %d\n", stVersion.cVersionChar, stVersion.cReleaseTime, stVersion.uiCompileVersion);

	/* config the thread number */
	iNeedThreadNum = stAppArgs.threadNum;
	if (0 == stAppArgs.threadNum)
		iNeedThreadNum = stAppArgs.iInputFileNum;
		
	/* init the mutex */
	hw_mutex_init(&stAppArgs.file_id_lock);

	if (iNeedThreadNum < 2)
	{
		DecThreadFxn((void*)&stAppArgs);
	}
	else 
	{
		/* Create thread pool */
		pstThreads = malloc(iNeedThreadNum * sizeof(hw_thread_t));
		if (NULL == pstThreads)
		{
			printf("Malloc memory for thread pool failed!\n");
			goto EXIT_MAIN;
		}
		
		/* create threads */
		for (i = 0; i < iNeedThreadNum; i++)
		{
			(pstThreads + i)->fun = DecThreadFxn;
			(pstThreads + i)->args = (void*)&stAppArgs;
			hw_thread_create(pstThreads + i);
		}
	
		//while (1 != g_exit_flag)
		//{
		//	hw_thread_sleep(1000);
		//}
	
		/* destroy thread */
		for (i=0; i<iNeedThreadNum; i++)
		{
			if ((pstThreads + i)->handle > 0)
			{
				hw_thread_wait_destroy(pstThreads + i);
				memset(pstThreads + i, 0, sizeof(hw_thread_t));
			}
		}
	
		free(pstThreads);
	}

EXIT_MAIN:
	hw_mutex_destroy(&stAppArgs.file_id_lock);
	
	printf("============ Memory Status =========\n");
	printf("Malloc_Info: Times: %lu Size: %lu KB\n", g_stMemTab.malloc_times, g_stMemTab.total_malloc_size>>10);
	printf("Free_Info: Times: %lu\n", g_stMemTab.free_times);
	if (g_stMemTab.malloc_times != g_stMemTab.free_times)
	{
		printf("WARNING: memory leak\n");
	}

	return iRet;
}
