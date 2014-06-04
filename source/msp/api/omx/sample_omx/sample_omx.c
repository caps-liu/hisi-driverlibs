/*--------------------------------------------------------------------------
Copyright (c) 2010-2011, Code Aurora Forum. All rights reserved.

Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions are met:
    * Redistributions of source code must retain the above copyright
      notice, this list of conditions and the following disclaimer.
    * Redistributions in binary form must reproduce the above copyright
      notice, this list of conditions and the following disclaimer in the
      documentation and/or other materials provided with the distribution.
    * Neither the name of Code Aurora nor
      the names of its contributors may be used to endorse or promote
      products derived from this software without specific prior written
      permission.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
IMPLIED WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NON-INFRINGEMENT ARE DISCLAIMED.  IN NO EVENT SHALL THE COPYRIGHT OWNER OR
CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS;
OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR
OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF
ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
--------------------------------------------------------------------------*/
/*
    An Open max test application ....
*/

#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <unistd.h>
#include <fcntl.h>
//#include <sys/types.h>
#include <sys/mman.h>
#include <time.h>
#include <sys/ioctl.h>
#include <errno.h>
#include <pthread.h>
#include <semaphore.h>
#include <sys/time.h> //gettimeofday
//#include <linux/android_pmem.h>
#include <linux/videodev2.h>
#include <linux/fb.h>
#include <signal.h>

#include "OMX_Core.h"
#include "OMX_Component.h"
#include "OMX_IVCommon.h"
#include "OMX_Custom.h"
#include "sample_queue.h"
#include "hi_common.h"

/********************************
//#define SupportNative
********************************/

/************************************************************************/
#define  SAMPLETRACE()        printf("fun: %s, line: %d\n", __func__, __LINE__)
#define  DEBUG_PRINT          //printf
#define  DEBUG_PRINT_ERROR    printf

/************************************************************************/

#define FAILED(result) (result != OMX_ErrorNone)
#define SUCCEEDED(result) (result == OMX_ErrorNone)

#define DEFAULT_WIDTH	1920
#define DEFAULT_HEIGHT	1080

#define ALIGN_SIZE		4096

#define EnableAndroidNativeBuffers       "OMX.google.android.index.enableAndroidNativeBuffers"
#define GetAndroidNativeBufferUsage    "OMX.google.android.index.getAndroidNativeBufferUsage"
#define UseAndroidNativeBuffer2            "OMX.google.android.index.useAndroidNativeBuffer2"

/************************************************************************/
//* OMX Spec Version supported by the wrappers. Version = 1.1 */
const OMX_U32 CURRENT_OMX_SPEC_VERSION = 0x00000101;

#define CONFIG_VERSION_SIZE(param) \
	param.nVersion.nVersion = CURRENT_OMX_SPEC_VERSION;\
	param.nSize = sizeof(param);

#define SWAPBYTES(ptrA, ptrB) { char t = *ptrA; *ptrA = *ptrB; *ptrB = t;}

/************************************************************************/

typedef enum {
	CODEC_FORMAT_H264	= 0x0,
	CODEC_FORMAT_VC1	= 0x1,
	CODEC_FORMAT_MP4	= 0x2,
	CODEC_FORMAT_MP2	= 0x3,
	CODEC_FORMAT_H263	= 0x4,
	CODEC_FORMAT_DIVX3	= 0x5,
	CODEC_FORMAT_MAX	= CODEC_FORMAT_DIVX3
} codec_format;

typedef enum {
	GOOD_STATE = 0,
	PORT_SETTING_CHANGE_STATE,
	ERROR_STATE
} test_status;


typedef enum {
	FREE_HANDLE_AT_LOADED = 1,
	FREE_HANDLE_AT_IDLE,
	FREE_HANDLE_AT_EXECUTING,
	FREE_HANDLE_AT_PAUSE
} freeHandle_test;

enum {
	false	=	0,
	true	=	1
};

struct buf_info {
	int index;
	unsigned int length;
	char *start;
};

typedef int	bool;
typedef OMX_U8* OMX_U8_PTR;

static int (*Read_Buffer)(OMX_BUFFERHEADERTYPE  *pBufHdr );

/************************************************************************/
volatile int event_is_done = 0;

static int inputBufferFileFd;
static FILE *outputBufferFile;

static Queue *etb_queue = NULL;
static Queue *fbd_queue = NULL;

static pthread_t ebd_thread_id;
static pthread_t fbd_thread_id;

//MUTEXT
static pthread_mutex_t	etb_lock;
static pthread_mutex_t	fbd_lock;
static pthread_mutex_t	lock;
static pthread_cond_t	cond;
static pthread_mutex_t	eos_lock;
static pthread_cond_t   eos_cond;
static pthread_mutex_t  enable_lock;

//SEMA
static sem_t etb_sem;
static sem_t fbd_sem;
static sem_t in_flush_sem;
static sem_t out_flush_sem;
static sem_t esc_sem;

//OMX VAR
OMX_PARAM_COMPONENTROLETYPE  role;
OMX_PARAM_PORTDEFINITIONTYPE portFmt;
OMX_PORT_PARAM_TYPE portParam;
OMX_ERRORTYPE error;
OMX_COLOR_FORMATTYPE color_fmt;
OMX_S64 timeStampLfile = 0;
OMX_COMPONENTTYPE *dec_handle = 0;
OMX_BUFFERHEADERTYPE **pInputBufHdrs = NULL;
OMX_BUFFERHEADERTYPE **pOutYUVBufHdrs= NULL;

static int height = 0;
static int width = 0;
static int sliceheight = 0;
static int stride = 0;
static int used_ip_buf_cnt = 0;
static int used_op_buf_cnt = 0;
static int ebd_cnt= 0;
static int fbd_cnt = 0;
static int bInputEosReached = 0;
static int bOutputEosReached = 0;
static int flush_input_progress = 0;
static int flush_output_progress = 0;
static int fbd_thread_exit = 0;
static int ebd_thread_exit = 0;

static unsigned cmd_data = ~(unsigned)0;
static unsigned etb_count = 0;
static unsigned free_op_buf_cnt = 0;

static char in_filename[512];
static char curr_seq_command[512];

static int fps = 30;
static unsigned int timestampInterval = 33333;
static codec_format codec_format_option;
static int alloc_use_option = 0;
static freeHandle_test freeHandle_option;
static int sent_disabled = 0;
static int waitForPortSettingsChanged = 1;
static test_status currentStatus = GOOD_STATE;
static test_status preStatus;

HI_MMZ_BUF_S buffer[10];

struct timeval t_first = {0, 0};

static int last_cmd;

/************************************************************************/
/*              GLOBAL FUNC DECL                        */
/************************************************************************/
static void* ebd_thread(void*);
static void* fbd_thread(void*);
static int disable_output_port(void);
static int enable_output_port(void);
static int output_port_reconfig(void);
static void free_output_buffers(void);
static int Init_Decoder(void);
static int Play_Decoder(void);
static int open_video_file (void);
static void loop_function(void);

static OMX_ERRORTYPE Allocate_Buffers(OMX_COMPONENTTYPE *dec_handle,
		OMX_BUFFERHEADERTYPE  ***pBufHdrs,
		OMX_U32 nPortIndex,
		long bufCntMin, 
		long bufSize);

static OMX_ERRORTYPE Use_Buffers(OMX_COMPONENTTYPE *dec_handle,
		OMX_BUFFERHEADERTYPE  ***pBufHdrs,
		OMX_U32 nPortIndex,
		long bufCntMin, 
		long bufSize);

static OMX_ERRORTYPE EventHandler(OMX_IN OMX_HANDLETYPE hComponent,
		OMX_IN OMX_PTR pAppData,
		OMX_IN OMX_EVENTTYPE eEvent,
		OMX_IN OMX_U32 nData1, 
		OMX_IN OMX_U32 nData2,
		OMX_IN OMX_PTR pEventData);

static OMX_ERRORTYPE EmptyBufferDone(OMX_IN OMX_HANDLETYPE hComponent,
		OMX_IN OMX_PTR pAppData,
		OMX_IN OMX_BUFFERHEADERTYPE* pBuffer);

static OMX_ERRORTYPE FillBufferDone(OMX_OUT OMX_HANDLETYPE hComponent,
        OMX_OUT OMX_PTR pAppData,
        OMX_OUT OMX_BUFFERHEADERTYPE* pBuffer);

static void do_freeHandle_and_clean_up(bool isDueToError);

static inline int clip2(int x)
{
	x = x - 1;
	x = x | x >> 1;
	x = x | x >> 2;
	x = x | x >> 4;
	x = x | x >> 16;
	x = x + 1;
	return x;
}

static void wait_for_event(int cmd)
{
	pthread_mutex_lock(&lock);
	while(1)
	{
		if((event_is_done == 1) && (last_cmd == cmd))
		{
			event_is_done = 0;
			break;
		}
		pthread_cond_wait(&cond, &lock);

	}
	pthread_mutex_unlock(&lock);
}

static void event_complete(int cmd)
{
	pthread_mutex_lock(&lock);
	if(event_is_done == 0)
		event_is_done = 1;

	pthread_cond_broadcast(&cond);
	last_cmd = cmd;
	pthread_mutex_unlock(&lock);
}


/*************************************************************************
				file operation functions
************************************************************************/

static int open_video_file ()
{
	int error_code = 0;

	DEBUG_PRINT("Inside %s filename=%s\n",
			__FUNCTION__, in_filename);

	inputBufferFileFd = open(in_filename, O_RDONLY);
	if (inputBufferFileFd < 0)
	{
		DEBUG_PRINT_ERROR("Error: i/p file %s open failed, errno = %d\n",
				in_filename, errno);
		error_code = -1;
	}

	return error_code;
}


unsigned long char_to_long(char *buf, int len)
{
    int i;
    long frame_len = 0;

    for (i=0; i<len; i++)
    {
        frame_len += (buf[i] << 8*i);
    }

    return frame_len;
}


static int Read_Buffer_from_EsRawStream (OMX_BUFFERHEADERTYPE  *pBufHdr)
{
	int bytes_read = 0;
       char tmp_buf[4];
       static unsigned long frame_len = 0;
       unsigned long read_len = 0;
       static int frame_flag = 0;
       static int send_cnt = 0;

	DEBUG_PRINT("Inside Read_Buffer_from_EsRawStream\n");

       if (CODEC_FORMAT_H263 == codec_format_option)
       {
           if (0 == frame_flag)
           {
               bytes_read = read(inputBufferFileFd, tmp_buf, 4);
               if (bytes_read < 4)
               {
                   DEBUG_PRINT("read bytes reach end0\n");
                   printf("H263 stream send done!\n");
                   pBufHdr->nFlags |= OMX_BUFFERFLAG_EOS;  
               }
               else
               {
                   frame_len = char_to_long(tmp_buf, 4);
                   frame_flag = 1;
               }
           }

           if (1 == frame_flag)
           {
               if (frame_len > pBufHdr->nAllocLen)
               {
                   read_len =  pBufHdr->nAllocLen;
                   frame_len = frame_len - read_len;
               }
               else
               {
                   read_len = frame_len;
                   frame_len = 0;
                   frame_flag = 0;
               }

               bytes_read = read(inputBufferFileFd, pBufHdr->pBuffer, read_len);
               if (bytes_read < read_len)
               {
                   DEBUG_PRINT("read bytes reach end1\n");
                   printf("H263 stream send done!\n");
                   pBufHdr->nFlags |= OMX_BUFFERFLAG_EOS;  
               }
               
               if (0 == frame_flag)
               {
                   send_cnt++;
                   //printf("Stream send: %d\n", send_cnt);
                   pBufHdr->nFlags |= OMX_BUFFERFLAG_ENDOFFRAME;
               }
           }
       }
       else
       {
           bytes_read = read(inputBufferFileFd, pBufHdr->pBuffer, pBufHdr->nAllocLen);
           if (bytes_read < pBufHdr->nAllocLen)
           {
           	printf("read bytes reach end, send cnt = %d\n", send_cnt);
           	pBufHdr->nFlags |= OMX_BUFFERFLAG_EOS;  
           }
           else if(bytes_read == 0)
           {
           	DEBUG_PRINT("Bytes read Zero After Read frame Size\n");
           }
           //printf("Stream send: %d\n", send_cnt);
           send_cnt++;
       }

	return bytes_read;
}


/*************************************************************************
				omx interface functions
************************************************************************/

OMX_ERRORTYPE EventHandler(OMX_IN OMX_HANDLETYPE hComponent,
                           OMX_IN OMX_PTR pAppData,
                           OMX_IN OMX_EVENTTYPE eEvent,
                           OMX_IN OMX_U32 nData1, OMX_IN OMX_U32 nData2,
                           OMX_IN OMX_PTR pEventData)
{
	DEBUG_PRINT("Function %s\n", __FUNCTION__);

	switch(eEvent)
	{
	case OMX_EventCmdComplete:

		DEBUG_PRINT("OMX_EventCmdComplete\n");

	    if(OMX_CommandPortDisable == (OMX_COMMANDTYPE)nData1)
	    {
	        printf("*********************************************\n");
	        printf("Recieved DISABLE Event Command Complete[%d]\n",nData2);
	        printf("*********************************************\n");

	    }
	    else if(OMX_CommandPortEnable == (OMX_COMMANDTYPE)nData1)
	    {
	        printf("*********************************************\n");
	        printf("Recieved ENABLE Event Command Complete[%d]\n",nData2);
	        printf("*********************************************\n");

		//pthread_mutex_lock(&enable_lock);
	        sent_disabled = 0;
		//pthread_mutex_unlock(&enable_lock);
	    }
	    else if(OMX_CommandFlush == (OMX_COMMANDTYPE)nData1)
	    {
	        printf("*********************************************\n");
	        printf("Received FLUSH Event Command Complete[%d]\n",nData2);
	        printf("*********************************************\n");

				if (nData2 == 0) {
					printf("**** Flush In Complete ****\n");
					flush_input_progress = 0;
					sem_post(&in_flush_sem);
				}
				else if (nData2 == 1) {
					printf("**** Flush Out Complete ****\n");
					flush_output_progress = 0;
					sem_post(&out_flush_sem);
				}
	    }

	    if (!flush_input_progress && !flush_output_progress)
           {   
		event_complete(nData1);
           }
	    break;

	case OMX_EventError:

	    printf("*********************************************\n");
	    printf("Received OMX_EventError Event Command !\n");
	    printf("*********************************************\n");

	    currentStatus = ERROR_STATE;

		if (OMX_ErrorInvalidState == (OMX_ERRORTYPE)nData1 ||
		OMX_ErrorHardware == (OMX_ERRORTYPE)nData1)
		{
			DEBUG_PRINT_ERROR("Invalid State or hardware error\n");

			if(event_is_done == 0)
			{
				DEBUG_PRINT("Event error in the middle of Decode\n");

				pthread_mutex_lock(&eos_lock);
				bOutputEosReached = true;
				pthread_mutex_unlock(&eos_lock);
			}
		}

		if (waitForPortSettingsChanged)
		{
		    waitForPortSettingsChanged = 0;
		    event_complete(-1);
		}
		break;

	case OMX_EventPortSettingsChanged:

	    printf("OMX_EventPortSettingsChanged\n");
        
        preStatus = currentStatus;
	    currentStatus = PORT_SETTING_CHANGE_STATE;
	    sem_post(&fbd_sem);
        
	    if (waitForPortSettingsChanged)
	    {
           waitForPortSettingsChanged = 0;
           event_complete(-1);
	    }
	    else
	    {
	        pthread_mutex_lock(&eos_lock);
	        pthread_cond_broadcast(&eos_cond);
	        pthread_mutex_unlock(&eos_lock);
	    }
	    break;

	case OMX_EventBufferFlag:

	    DEBUG_PRINT("OMX_EventBufferFlag\n", nData1, nData2);

		if (nData1 == 1 && (nData2 & OMX_BUFFERFLAG_EOS)) {
	        pthread_mutex_lock(&eos_lock);
	        bOutputEosReached = true;
	        pthread_mutex_unlock(&eos_lock);
            printf("Receive last frame, thank you!\n");
	    }
	    else
	    {
	        DEBUG_PRINT("OMX_EventBufferFlag Event not handled\n");
	    }
	    break;

	default:
	    DEBUG_PRINT_ERROR("ERROR - Unknown Event\n");
	    break;
	}

	return OMX_ErrorNone;
}


OMX_ERRORTYPE EmptyBufferDone(OMX_IN OMX_HANDLETYPE hComponent,
                              OMX_IN OMX_PTR pAppData,
                              OMX_IN OMX_BUFFERHEADERTYPE* pBuffer)
{
	int readBytes =0; int bufCnt=0;
	OMX_ERRORTYPE result;

	DEBUG_PRINT("Function %s cnt[%d]\n", __FUNCTION__, ebd_cnt);
	ebd_cnt++;

	if(bInputEosReached)
	{
		DEBUG_PRINT("*****EBD:Input EoS Reached************\n");
		return OMX_ErrorNone;
	}

	pthread_mutex_lock(&etb_lock);
	if(push(etb_queue, (void *) pBuffer) < 0)
	{
		DEBUG_PRINT_ERROR("Error in enqueue  ebd data\n");
		return OMX_ErrorUndefined;
	}

	pthread_mutex_unlock(&etb_lock);
	sem_post(&etb_sem);

	 return OMX_ErrorNone;
}


OMX_ERRORTYPE FillBufferDone(OMX_OUT OMX_HANDLETYPE hComponent,
                             OMX_OUT OMX_PTR pAppData,
                             OMX_OUT OMX_BUFFERHEADERTYPE* pBuffer)
{
	/* Test app will assume there is a dynamic port setting
	* In case that there is no dynamic port setting, OMX will not call event cb,
	* instead OMX will send empty this buffer directly and we need to clear an event here
	*/

       static int frame_cnt = 0;
    
	DEBUG_PRINT("fill buffer done\n");

       if (pBuffer->nFilledLen != 0)
       {
           printf("Frame: %d\n", frame_cnt);
           frame_cnt++;
       }

	pthread_mutex_lock(&fbd_lock);

	free_op_buf_cnt++;

	if (!sent_disabled)
	{
		if(push(fbd_queue, (void *)pBuffer) < 0)
		{
			pthread_mutex_unlock(&fbd_lock);
			DEBUG_PRINT_ERROR("Error in enqueueing fbd_data\n");
			return OMX_ErrorUndefined;
		}
		sem_post(&fbd_sem);
	}
    else
    {
       if (0 == alloc_use_option)
       {
           OMX_FreeBuffer(dec_handle, 1, pBuffer);
       }
       else
       {
           OMX_FreeBuffer(dec_handle, 1, pBuffer);
           HI_MMZ_Free(&buffer[pBuffer->nTickCount]);
       }
    }

	pthread_mutex_unlock(&fbd_lock);

	return OMX_ErrorNone;
}


static int Init_Decoder(void)
{

	OMX_ERRORTYPE omxresult;
	OMX_U32 total = 0;
	int i = 0, is_found = 0;
	long bufCnt = 0;

	 char vdecCompNames[] = "OMX.hisi.video.decoder";
	char compRole[OMX_MAX_STRINGNAME_SIZE];
	int roles;

	static OMX_CALLBACKTYPE call_back = {
		&EventHandler,
		&EmptyBufferDone,
		&FillBufferDone
	};

	DEBUG_PRINT("Inside %s\n", __FUNCTION__);

	/* Init. the OpenMAX Core */
	DEBUG_PRINT("Initializing OpenMAX Core....\n");
	omxresult = OMX_Init();
	if(OMX_ErrorNone != omxresult) {
		DEBUG_PRINT_ERROR("Failed to Init OpenMAX core\n");
		return -1;
	}

	DEBUG_PRINT("OpenMAX Core Init sucess!\n");

	if (codec_format_option == CODEC_FORMAT_H264)
	{
		strncpy(compRole, "video_decoder.avc", OMX_MAX_STRINGNAME_SIZE);
		portFmt.format.video.eCompressionFormat = OMX_VIDEO_CodingAVC;
	}
	else if (codec_format_option == CODEC_FORMAT_MP4)
	{
		strncpy(compRole, "video_decoder.mpeg4", OMX_MAX_STRINGNAME_SIZE);
		portFmt.format.video.eCompressionFormat = OMX_VIDEO_CodingMPEG4;
	}
	else if (codec_format_option == CODEC_FORMAT_MP2)
	{
		strncpy(compRole, "video_decoder.mpeg2", OMX_MAX_STRINGNAME_SIZE);
		portFmt.format.video.eCompressionFormat = OMX_VIDEO_CodingMPEG2;
	}
	else if (codec_format_option == CODEC_FORMAT_H263)
	{
		strncpy(compRole, "video_decoder.h263", OMX_MAX_STRINGNAME_SIZE);
		portFmt.format.video.eCompressionFormat = OMX_VIDEO_CodingH263;
	}
	else
	{
		DEBUG_PRINT_ERROR("Error: Unsupported codec %d\n", codec_format_option);
		return -1;
	}

	for( i = 0; ; i++ )
	{
		char enumCompName[OMX_MAX_STRINGNAME_SIZE];
		memset(enumCompName, 0 , OMX_MAX_STRINGNAME_SIZE);

		omxresult = OMX_ComponentNameEnum(enumCompName,
			OMX_MAX_STRINGNAME_SIZE, i);

		if(OMX_ErrorNone != omxresult)
			break;

		if (!strncmp(enumCompName, vdecCompNames, OMX_MAX_STRINGNAME_SIZE))
		{
			is_found = 1;
			break;
		}
	}

	if (!is_found)
	{
		DEBUG_PRINT_ERROR("Error: cannot find match component!\n");
		return -1;
	}

	/* Query for video decoders*/
	is_found = 0;
	OMX_GetRolesOfComponent(vdecCompNames, &total, NULL);
	DEBUG_PRINT("OMX_GetRolesOfComponent %s, nums=%d\n", vdecCompNames, total);

	if (total)
	{
		/* Allocate memory for pointers to component name */
		OMX_U8 **role = (OMX_U8**)malloc((sizeof(OMX_U8*)) * total);

		for (i = 0; i < total; ++i)
		{
		    role[i] = (OMX_U8*)malloc(sizeof(OMX_U8) * OMX_MAX_STRINGNAME_SIZE);
		}

		OMX_GetRolesOfComponent(vdecCompNames, &total, role);

		for (i = 0; i < total; ++i)
		{
			DEBUG_PRINT("role name is %s \n", role[i]);

			if (!strncmp(role[i], compRole, OMX_MAX_STRINGNAME_SIZE))
			{
				is_found = 1;
			}

			free(role[i]);
		}

		free(role);

		if (!is_found)
		{
			DEBUG_PRINT_ERROR("No Role finded \n");
			return -1;
		}

	}
	else
	{
		DEBUG_PRINT_ERROR("No components found with Role:%s\n", vdecCompNames);
		return -1;
	}

	DEBUG_PRINT("OpenMAX OMX_GetHandle....\n");

	omxresult = OMX_GetHandle((OMX_HANDLETYPE*)(&dec_handle),
	                      (OMX_STRING)vdecCompNames, NULL, &call_back);
	if (FAILED(omxresult))
	{
		DEBUG_PRINT_ERROR("Failed to Load the component:%s\n", vdecCompNames);
		return -1;
	}

	DEBUG_PRINT("OMX_GetHandle success\n", vdecCompNames);

	CONFIG_VERSION_SIZE(role);
	strncpy((char*)role.cRole, compRole, OMX_MAX_STRINGNAME_SIZE);

	omxresult = OMX_SetParameter(dec_handle,
			OMX_IndexParamStandardComponentRole, &role);
	if(FAILED(omxresult))
	{
		DEBUG_PRINT_ERROR("ERROR - Failed to set param!\n");
		return -1;
	}

	omxresult = OMX_GetParameter(dec_handle,
			OMX_IndexParamStandardComponentRole, &role);

	if(FAILED(omxresult))
	{
		DEBUG_PRINT_ERROR("ERROR - Failed to get role!\n");
		return -1;
	}

	DEBUG_PRINT("cur role of component is %s\n", (char *)role.cRole);

	return 0;
}


static int Play_Decoder()
{
	OMX_VIDEO_PARAM_PORTFORMATTYPE videoportFmt = {0};
	int i, bufCnt, index = 0;
	int frameSize = 0;
	OMX_ERRORTYPE ret = OMX_ErrorNone;
	OMX_BUFFERHEADERTYPE* pBuffer = NULL;
	OMX_STATETYPE state = OMX_StateInvalid;
       OMX_INDEXTYPE index_type;

	DEBUG_PRINT("Inside %s\n", __FUNCTION__);

	/* open the i/p and o/p files*/
	if(open_video_file() < 0)
	{
		DEBUG_PRINT_ERROR("Error in opening video file");
		return -1;
	}

	/* Get the port information */
	CONFIG_VERSION_SIZE(portParam);
	ret = OMX_GetParameter(dec_handle, OMX_IndexParamVideoInit,
	                        (OMX_PTR)&portParam);
	if(FAILED(ret))
	{
		DEBUG_PRINT_ERROR("ERROR - Failed to get Port Param\n");
		return -1;
	}

	DEBUG_PRINT("portParam.nPorts:%d\n", portParam.nPorts);
	DEBUG_PRINT("portParam.nStartPortNumber:%d\n", portParam.nStartPortNumber);

	/* Query the decoder input's  buf requirements */
	CONFIG_VERSION_SIZE(portFmt);
	portFmt.nPortIndex = portParam.nStartPortNumber;

	OMX_GetParameter(dec_handle, OMX_IndexParamPortDefinition, &portFmt);

	DEBUG_PRINT("Dec: Min Buffer Count %d\n", portFmt.nBufferCountMin);
	DEBUG_PRINT("Dec: Act Buffer Count %d\n", portFmt.nBufferCountActual);
	DEBUG_PRINT("Dec: Buffer Size %d\n", portFmt.nBufferSize);

	if(OMX_DirInput != portFmt.eDir)
	{
		DEBUG_PRINT_ERROR ("Dec: Expect Input Port\n");
		return -1;
	}

	portFmt.format.video.nFrameWidth  = DEFAULT_WIDTH;
	portFmt.format.video.nFrameHeight = DEFAULT_HEIGHT;
	portFmt.format.video.xFramerate = 30;
       if (CODEC_FORMAT_H263 == codec_format_option)
       {
           portFmt.nBufferSize = (unsigned int)(20 << 10);
           portFmt.nBufferCountActual = 8;
       }
       else if (CODEC_FORMAT_MP4 == codec_format_option)
       {
           portFmt.nBufferSize = (unsigned int)(250 << 10);
       }
	OMX_SetParameter(dec_handle,OMX_IndexParamPortDefinition, &portFmt);

	/* get again to check */
	OMX_GetParameter(dec_handle, OMX_IndexParamPortDefinition, &portFmt);
	DEBUG_PRINT("Dec: New Min Buffer Count %d\n", portFmt.nBufferCountMin);

	/* set component video fmt */
	CONFIG_VERSION_SIZE(videoportFmt);
	color_fmt = OMX_COLOR_FormatYUV420SemiPlanar;
	while (ret == OMX_ErrorNone)
	{
		videoportFmt.nPortIndex = 1;
		videoportFmt.nIndex = index;
		ret = OMX_GetParameter(dec_handle, OMX_IndexParamVideoPortFormat,
				(OMX_PTR)&videoportFmt);

		if((ret == OMX_ErrorNone) && (videoportFmt.eColorFormat ==
			color_fmt))
		{
			DEBUG_PRINT("Format[%u] supported by OMX Decoder\n", color_fmt);
			break;
		}
		index++;
	}

	if(ret != OMX_ErrorNone)
	{
		DEBUG_PRINT_ERROR("Error in retrieving supported color formats\n");
		return -1;
	}

	ret = OMX_SetParameter(dec_handle,
		OMX_IndexParamVideoPortFormat, (OMX_PTR)&videoportFmt);
	if (ret != OMX_ErrorNone)
	{
	    DEBUG_PRINT_ERROR("Setting Tile format failed\n");
	    return -1;
	}

	DEBUG_PRINT("Video format: W x H (%d x %d)\n",
	portFmt.format.video.nFrameWidth,
	portFmt.format.video.nFrameHeight);

	DEBUG_PRINT("OMX_SendCommand Decoder -> IDLE\n");

	OMX_SendCommand(dec_handle, OMX_CommandStateSet, OMX_StateIdle,0);

	// Allocate buffer on decoder's i/p port
	used_ip_buf_cnt = portFmt.nBufferCountActual;
       error = Allocate_Buffers(dec_handle, &pInputBufHdrs, portFmt.nPortIndex, used_ip_buf_cnt, portFmt.nBufferSize);
       if (error != OMX_ErrorNone)
       {
           DEBUG_PRINT_ERROR("Error - OMX_AllocateBuffer Input buffer error\n");
           return -1;
       }
       DEBUG_PRINT("OMX_AllocateBuffer Input buffer success\n");

	//Allocate buffer on decoder's o/p port
	portFmt.nPortIndex = portParam.nStartPortNumber + 1;
	OMX_GetParameter(dec_handle, OMX_IndexParamPortDefinition, &portFmt);
	if(OMX_DirOutput != portFmt.eDir)
	{
		DEBUG_PRINT_ERROR("Error - Expect Output Port\n");
		return -1;
	}

	free_op_buf_cnt = portFmt.nBufferCountActual;
	used_op_buf_cnt = portFmt.nBufferCountActual;

	DEBUG_PRINT("buffer Size=%d\n", portFmt.nBufferSize);
	DEBUG_PRINT("buffer cnt=%d\n", portFmt.nBufferCountActual);

       if (0 == alloc_use_option)
       {
           error = Allocate_Buffers(dec_handle, &pOutYUVBufHdrs, portFmt.nPortIndex, used_op_buf_cnt, portFmt.nBufferSize);
           if (error != OMX_ErrorNone)
           {
               DEBUG_PRINT_ERROR("Error - OMX_AllocateBuffer Output buffer error\n");
               return -1;
           }
           DEBUG_PRINT("OMX_AllocateBuffer Output buffer success\n");
       }
       
#ifdef SupportNative
       else
       {
            error = OMX_GetExtensionIndex(dec_handle, EnableAndroidNativeBuffers, &index_type);
            if (error != OMX_ErrorNone)
            {
                DEBUG_PRINT_ERROR("Error - OMX_GetExtensionIndex EnableAndroidNativeBuffers error\n");
                return -1;
            }
            
            EnableAndroidNativeBuffersParams param_data;
            param_data.nPortIndex = portFmt.nPortIndex;
            param_data.bEnable = true;
            OMX_SetParameter(dec_handle, index_type, &param_data);
            
            error = OMX_GetExtensionIndex(dec_handle, UseAndroidNativeBuffer2, &index_type);
            if (error != OMX_ErrorNone)
            {
                DEBUG_PRINT_ERROR("Error - OMX_GetExtensionIndex UseAndroidNativeBuffer2 error\n");
                return -1;
            }
       
            error = Use_Buffers(dec_handle, &pOutYUVBufHdrs, portFmt.nPortIndex, used_op_buf_cnt, portFmt.nBufferSize);
            if (error != OMX_ErrorNone)
            {
                DEBUG_PRINT_ERROR("Error - OMX_UseBuffer Output buffer error\n");
                return -1;
            }
            DEBUG_PRINT("OMX_UseBuffer Output buffer success\n");
       }
    #endif

	/* wait component state change from loaded->idle */
	wait_for_event(OMX_CommandStateSet);
	if (currentStatus == ERROR_STATE)
	{
		do_freeHandle_and_clean_up(true);
		return -1;
	}

	OMX_GetState(dec_handle, &state);
	if (state != OMX_StateIdle)
	{
		DEBUG_PRINT_ERROR("Error - OMX state error\n");
		do_freeHandle_and_clean_up(true);
		return -1;
	}

	if (freeHandle_option == FREE_HANDLE_AT_IDLE)
	{
		OMX_STATETYPE state = OMX_StateInvalid;
		OMX_GetState(dec_handle, &state);

		if (state == OMX_StateIdle)
		{
			DEBUG_PRINT("Comp OMX_StateIdle,trying to call OMX_FreeHandle\n");
			do_freeHandle_and_clean_up(false);
		}
		else
		{
			DEBUG_PRINT_ERROR("Comp: Decoder in state %d, "
				"trying to call OMX_FreeHandle\n", state);
			do_freeHandle_and_clean_up(true);
		}
		return -1;
	}

	DEBUG_PRINT("OMX_SendCommand Decoder -> Executing\n");

	OMX_SendCommand(dec_handle, OMX_CommandStateSet, OMX_StateExecuting, 0);

	DEBUG_PRINT("OMX_SendCommand Decoder -> Executing, wait_for_event\n");
	wait_for_event(OMX_CommandStateSet);

	DEBUG_PRINT("OMX_SendCommand Decoder -> Executing, wait_for_event ok\n");
	if (currentStatus == ERROR_STATE)
	{
		DEBUG_PRINT_ERROR("OMX_SendCommand Decoder -> Executing\n");
		do_freeHandle_and_clean_up(true);
		return -1;
	}

	OMX_GetState(dec_handle, &state);

	if (state != OMX_StateExecuting)
	{
		DEBUG_PRINT_ERROR("Error - OMX state error, state %d\n", state);
		do_freeHandle_and_clean_up(true);
		return -1;
	}

	DEBUG_PRINT("start OMX_FillThisBuffer ...\n");

	for(bufCnt = 0; bufCnt < used_op_buf_cnt; ++bufCnt)
	{
		DEBUG_PRINT("OMX_FillThisBuffer on output buf no.%d\n",bufCnt);

		pOutYUVBufHdrs[bufCnt]->nOutputPortIndex = 1;
		pOutYUVBufHdrs[bufCnt]->nFlags &= ~OMX_BUFFERFLAG_EOS;

		ret = OMX_FillThisBuffer(dec_handle, pOutYUVBufHdrs[bufCnt]);

		if (OMX_ErrorNone != ret)
		{
			DEBUG_PRINT_ERROR("Error - OMX_FillThisBuffer failed!!\n");
			do_freeHandle_and_clean_up(true);
			return -1;
		}
		else
		{
			DEBUG_PRINT("OMX_FillThisBuffer success!\n");
			free_op_buf_cnt--;
		}
	}

	DEBUG_PRINT("start OMX_EmptyThisBuffer!\n");

	for (bufCnt = 0; bufCnt < used_ip_buf_cnt; bufCnt++)
	{
		pInputBufHdrs[bufCnt]->nInputPortIndex = 0;
		pInputBufHdrs[bufCnt]->nOffset = 0;

		frameSize = Read_Buffer(pInputBufHdrs[bufCnt]);
		if (pInputBufHdrs[bufCnt]->nFlags & OMX_BUFFERFLAG_EOS)
		{
			pInputBufHdrs[bufCnt]->nFilledLen = frameSize;
			pInputBufHdrs[bufCnt]->nInputPortIndex = 0;
                     printf("***** EBD: Input EoS Reached(1) *****\n");
			bInputEosReached = true;

			OMX_EmptyThisBuffer(dec_handle, pInputBufHdrs[bufCnt]);
			etb_count++;
			DEBUG_PRINT("File is small::Either EOS or Error while reading file\n");
			break;
		}

		pInputBufHdrs[bufCnt]->nFilledLen = frameSize;
		pInputBufHdrs[bufCnt]->nInputPortIndex = 0;
		//pInputBufHdrs[bufCnt]->nFlags = 0;

		//pBufHdr[bufCnt]->pAppPrivate = this;
		//DEBUG_PRINT("%s: Timestamp sent(%lld)", __FUNCTION__,
		//pInputBufHdrs[i]->nTimeStamp);

		ret = OMX_EmptyThisBuffer(dec_handle, pInputBufHdrs[bufCnt]);
		if (OMX_ErrorNone != ret)
		{
			DEBUG_PRINT_ERROR("ERROR: OMX_EmptyThisBuffer failed\n");
			do_freeHandle_and_clean_up(true);
			return -1;
		}
		else
		{
			if (bufCnt == 0)
			{
				gettimeofday(&t_first, NULL);
			}
			DEBUG_PRINT("OMX_EmptyThisBuffer success!\n");
			etb_count++;
		}
	}

	if(0 != pthread_create(&ebd_thread_id, NULL, ebd_thread, NULL))
	{
		DEBUG_PRINT_ERROR("Error in Creating fbd_thread\n");
		do_freeHandle_and_clean_up(true);
		return -1;
	}

	if (freeHandle_option == FREE_HANDLE_AT_EXECUTING)
	{
		OMX_STATETYPE state = OMX_StateInvalid;
		OMX_GetState(dec_handle, &state);
		if (state == OMX_StateExecuting)
		{
			DEBUG_PRINT("State OMX_StateExecuting, trying OMX_FreeHandle\n");
			do_freeHandle_and_clean_up(false);
		}
		else
		{
			DEBUG_PRINT_ERROR("Error: state %d , trying OMX_FreeHandle\n", state);
			do_freeHandle_and_clean_up(true);
		}
		return -1;
	}
	else if (freeHandle_option == FREE_HANDLE_AT_PAUSE)
	{
		OMX_SendCommand(dec_handle, OMX_CommandStateSet, OMX_StatePause,0);
		wait_for_event(OMX_CommandStateSet);

		OMX_STATETYPE state = OMX_StateInvalid;
		OMX_GetState(dec_handle, &state);

		if (state == OMX_StatePause)
		{
			DEBUG_PRINT("Decoder is in OMX_StatePause , call OMX_FreeHandle\n");
			do_freeHandle_and_clean_up(false);
		}
		else
		{
			DEBUG_PRINT_ERROR("Error - Decoder is in state %d ,call OMX_FreeHandle\n", state);
			do_freeHandle_and_clean_up(true);
		}
		return -1;
	}

	return 0;
}


static int get_next_command(FILE *seq_file)
{
	int i = -1;

	do {
		i++;
		if(fread(&curr_seq_command[i], 1, 1, seq_file) != 1)
			return -1;
	} while(curr_seq_command[i] != '\n');

	curr_seq_command[i] = 0;

	printf("**cmd_str = %s**\n", curr_seq_command);

	return 0;
}


static int process_current_command(const char *seq_command)
{
	char *data_str = NULL;
	unsigned int data = 0, bufCnt = 0, i = 0;
	int frameSize;

       if (currentStatus == PORT_SETTING_CHANGE_STATE)
       {
		DEBUG_PRINT_ERROR("\nCurrent Status = PORT_SETTING_CHANGE_STATE, Command Rejected !\n", seq_command);
              return 0;
       }


	if(strcmp(seq_command, "pause") == 0)
	{
		printf("$$$$$   PAUSE    $$$$$\n");
		printf("Sending PAUSE cmd to OMX compt\n");
		OMX_SendCommand(dec_handle, OMX_CommandStateSet, OMX_StatePause,0);
		wait_for_event(OMX_CommandStateSet);
		printf("EventHandler for PAUSE DONE\n\n");
	}
	else if(strcmp(seq_command, "resume") == 0)
	{
		printf("$$$$$   RESUME    $$$$$\n");
		printf("Immediate effect\n");
		printf("Sending RESUME cmd to OMX compt\n");
		OMX_SendCommand(dec_handle, OMX_CommandStateSet, OMX_StateExecuting,0);
		wait_for_event(OMX_CommandStateSet);
		printf("EventHandler for RESUME DONE\n\n");
	}
	else if(strcmp(seq_command, "flush") == 0)
	{
		printf("$$$$$   FLUSH    $$$$$\n");
		printf("Sending FLUSH cmd to OMX compt\n");

		flush_input_progress = 1;
		flush_output_progress = 1;
		OMX_SendCommand(dec_handle, OMX_CommandFlush, OMX_ALL, 0);
		wait_for_event(OMX_CommandFlush);
		printf("Sending FLUSH cmd DONE\n\n");
	}
	else if(strcmp(seq_command, "flush-in") == 0)
	{
		printf("$$$$$   FLUSH-IN    $$$$$\n");
		printf("Sending FLUSH-IN cmd to OMX compt\n");

		flush_input_progress = 1;
		OMX_SendCommand(dec_handle, OMX_CommandFlush, 0, 0);
		wait_for_event(OMX_CommandFlush);
		printf("Sending FLUSH-IN cmd DONE\n\n");
	}
	else if(strcmp(seq_command, "flush-out") == 0)
	{
		printf("$$$$$   FLUSH-OUT    $$$$$\n");
		printf("Sending FLUSH-OUT cmd to OMX compt\n");

		flush_output_progress = 1;
		OMX_SendCommand(dec_handle, OMX_CommandFlush, 1, 0);
		wait_for_event(OMX_CommandFlush);
		printf("Sending FLUSH-OUT cmd DONE\n\n");
	}
	/*else if(strcmp(seq_command, "disable-op") == 0)
	{
		printf("$$$$$   DISABLE OP PORT   $$$$$\n");
		printf("Sending DISABLE OP cmd to OMX compt\n");

		if (disable_output_port() != 0)
		{
		    printf("ERROR: While DISABLE OP...\n");
		    do_freeHandle_and_clean_up(true);
		    return -1;
		}
		printf("DISABLE OP PORT SUCESS!\n\n");
	}
	else if(strstr(seq_command, "enable-op") == seq_command)
	{
		printf("$$$$$   ENABLE OP PORT    $$$$$\n");
		printf("Sending ENABLE OP cmd to OMX compt\n");

		if (enable_output_port() != 0)
		{
		    printf("ERROR: While ENABLE OP...\n");
		    do_freeHandle_and_clean_up(true);
		    return -1;
		}
		printf("ENABLE OP PORT SUCESS!\n\n");
	}*/
	else
	{
		DEBUG_PRINT_ERROR("$$$$$   INVALID CMD [%s]   $$$$$\n", seq_command);
	}

	return 0;
}


static void* ebd_thread(void* pArg)
{
	while(currentStatus != ERROR_STATE)
	{
		int readBytes =0;
		OMX_BUFFERHEADERTYPE* pBuffer = NULL;

		if(flush_input_progress)
		{
			sem_wait(&in_flush_sem);
		}

		sem_wait(&etb_sem);

		if (ebd_thread_exit)
			break;

              if (bInputEosReached)
                     break;

		pthread_mutex_lock(&etb_lock);
		pBuffer = (OMX_BUFFERHEADERTYPE *) pop(etb_queue);
		pthread_mutex_unlock(&etb_lock);

		if(pBuffer == NULL)
		{
			DEBUG_PRINT_ERROR("Error - No etb pBuffer to dequeue\n");
			continue;
		}

		pBuffer->nOffset = 0;
        
		if((readBytes = Read_Buffer(pBuffer)) > 0)
		{
			pBuffer->nFilledLen = readBytes;

			DEBUG_PRINT("%s: Timestamp sent(%lld)\n", __func__, pBuffer->nTimeStamp);

			OMX_EmptyThisBuffer(dec_handle,pBuffer);
			etb_count++;
			
			if (pBuffer->nFlags & OMX_BUFFERFLAG_EOS)
				break;
		}
		else
		{
			bInputEosReached = true;
			sem_post(&esc_sem);
			pBuffer->nFilledLen = readBytes;
                     printf("***** EBD: Input EoS Reached *****\n");

			OMX_EmptyThisBuffer(dec_handle,pBuffer);

			DEBUG_PRINT("EBD::Either EOS or Some Error while reading file\n");
			etb_count++;
			break;
		}
	}

	return NULL;
}


static void* fbd_thread(void* pArg)
{
	struct timeval t_before = {0, 0};
	struct timeval t_after  = {0, 0};
	OMX_BUFFERHEADERTYPE *pBuffer = NULL;
	int free_done = 0;
	int ret = 0;
	static int first = 1;

	DEBUG_PRINT("First Inside %s", __FUNCTION__);

	//pthread_mutex_lock(&eos_lock);

	while(currentStatus != ERROR_STATE)
	{
		//pthread_mutex_unlock(&eos_lock);

		DEBUG_PRINT("Inside %s\n", __FUNCTION__);

		if(flush_output_progress)
		{
			sem_wait(&out_flush_sem);
		}

		sem_wait(&fbd_sem);

		DEBUG_PRINT("%s %d\n", __func__, __LINE__);

		if (ebd_thread_exit)
			break;

              if (currentStatus == PORT_SETTING_CHANGE_STATE)
              {
                  printf("\nRECONFIG OP PORT\n\n");
                  
                  if (output_port_reconfig() != 0)
                  {
                      printf("ERROR: While Reconfig OP...\n");
                      do_freeHandle_and_clean_up(true);
                      break;
                  }
                  printf("\nRECONFIG OP PORT DONE!\n\n");
                  currentStatus = preStatus;
              }

		pthread_mutex_lock(&fbd_lock);
		pBuffer = (OMX_BUFFERHEADERTYPE *)pop(fbd_queue);
		pthread_mutex_unlock(&fbd_lock);

		if (!pBuffer)
		{
			DEBUG_PRINT("Error - No pBuffer to dequeue\n");
			//pthread_mutex_lock(&eos_lock);
			continue;
		}

		if (pBuffer->nFilledLen > 0)
		{
			if (fbd_cnt == 0 )
			{
				gettimeofday(&t_before, NULL);
				if (first == 1)
				{
					int ms;
					ms = (t_before.tv_sec - t_first.tv_sec)*1000 +
						(t_before.tv_usec - t_first.tv_usec)/1000;
					DEBUG_PRINT("######!!!!!first delay time is :%d\n", ms);
					first = 0;
				}
			}

			++fbd_cnt;
			if (fbd_cnt == 59)
			{
				int ms;

				gettimeofday(&t_after, NULL);
				ms = (t_after.tv_sec - t_before.tv_sec)*1000 +
						(t_after.tv_usec - t_before.tv_usec)/1000;
				fbd_cnt = 0;
				DEBUG_PRINT("60 fps consume ms:%d\n",ms);

			}

			DEBUG_PRINT("%s: fbd_cnt(%d) Buf(%p) Cnt(%08x)\n",
				__FUNCTION__, fbd_cnt, pBuffer,
				pBuffer->nFilledLen);
		}

		/********************************************************************/
		/* De-Initializing the open max and relasing the buffers and */
		/* closing the files.*/
		/********************************************************************/

		pthread_mutex_lock(&enable_lock);
		if (flush_output_progress)
		{
			pBuffer->nFilledLen = 0;
			pBuffer->nFlags &= ~OMX_BUFFERFLAG_EXTRADATA;

			pthread_mutex_lock(&fbd_lock);

			if(push(fbd_queue, (void *)pBuffer) < 0)
			{
				DEBUG_PRINT_ERROR("Error in enqueueing fbd_data\n");
			}
			else
                     {         
				sem_post(&fbd_sem);
                     }
			pthread_mutex_unlock(&fbd_lock);
		}
		else
		{
			//pthread_mutex_lock(&fbd_lock);
			//pthread_mutex_lock(&eos_lock);

			if ( OMX_FillThisBuffer(dec_handle, pBuffer) == OMX_ErrorNone )
				free_op_buf_cnt--;

			//pthread_mutex_unlock(&eos_lock);
			//pthread_mutex_unlock(&fbd_lock);
		}
        
		pthread_mutex_unlock(&enable_lock);
		//pthread_mutex_lock(&eos_lock);
	}

	//pthread_cond_broadcast(&eos_cond);

	//pthread_mutex_unlock(&eos_lock);
	return NULL;
}

/****************************************************************************/
/* 捕获ctrl + c 信号量                                                      */
/****************************************************************************/
void SignalHandle(int sig)
{
	printf("Signal Handle - I got signal %d\n", sig);
	(void) signal(SIGINT,SIG_IGN);
	do_freeHandle_and_clean_up(true);
	(void) signal(SIGINT, SIG_DFL);
}

int main(int argc, char **argv)
{
	int i = 0;
	int bufCnt = 0;
	int num = 0;
	int test_option = 0;
	int pic_order = 0;
	OMX_ERRORTYPE result;

	sliceheight = height = DEFAULT_HEIGHT;
	stride = width = DEFAULT_WIDTH;
	waitForPortSettingsChanged = 1;

	if (argc != 2)
	{
		printf("Command line argument is not available\n");
		printf("To use it: ./omx_test <in-filename>,  then: <codec> <islog> <play-till-end>\n");
		return -1;
	}

	strncpy(in_filename, argv[1], strlen(argv[1])+1);
	printf("Input values: inputfilename[%s]\n", in_filename);


 /*
    codec_format_option = 0;  //yyc  test
    test_option = 1;
*/


	printf("Command line argument is available\n");
	printf("*********************************************\n");
	printf("please enter codec format option\n");
	printf("*********************************************\n");
	printf("0--> H264\n");
	printf("1--> VC1\n");
	printf("2--> MP4\n");
	printf("3--> MP2\n");
	printf("4--> H263\n");
	printf("5--> DIVX3\n");

	fflush(stdin);
	scanf("%d", &codec_format_option);

	fflush(stdin);
	if (codec_format_option > CODEC_FORMAT_MAX)
	{
		printf("Wrong test case...[%d]\n", codec_format_option);
		return -1;
	}
#ifdef SupportNative
    printf("*********************************************\n");
	printf("please enter alloc/use option\n");
	printf("*********************************************\n");
	printf("0--> Alloc Buffers\n");
	printf("1--> Use Buffers\n");

	fflush(stdin);
	scanf("%d", &alloc_use_option);

	fflush(stdin);
	if (alloc_use_option != 0 && alloc_use_option != 1)
	{
		printf("Wrong test option...[%d]\n", alloc_use_option);
		return -1;
	}
#endif

	printf("*********************************************\n");
	printf("please enter test option\n");
	printf("*********************************************\n");
	printf("1 --> Play the clip till the end\n");
	printf("2 --> Run compliance test. Do NOT expect any display for most option.\n");
	printf("Please only see \"TEST SUCCESSFULL\"to indicate test pass\n");
	fflush(stdin);
	scanf("%d", &test_option);
	fflush(stdin);

	switch (codec_format_option)
	{
        	case CODEC_FORMAT_H264:
        		DEBUG_PRINT("codec 264 selected\n");
        		break;
        	case CODEC_FORMAT_MP4:
        		DEBUG_PRINT("codec MP4 selected\n");
        		break;
        	case CODEC_FORMAT_MP2:
        		DEBUG_PRINT("codec MP2 selected\n");
        		break;
        	case CODEC_FORMAT_H263:
        		DEBUG_PRINT("codec H263 selected\n");
        		break;
        	case CODEC_FORMAT_VC1:
        		DEBUG_PRINT("codec VC1 selected\n");
        		break;
        	default:
        		DEBUG_PRINT_ERROR("Error: Unknown code %d\n", codec_format_option);
        		break;
	}

	if (test_option == 2)
	{
		printf("*********************************************\n");
		printf("ENTER THE COMPLIANCE TEST YOU WOULD LIKE TO EXECUTE\n");
		printf("*********************************************\n");
		printf("1 --> Call Free Handle at the OMX_StateLoaded\n");
		printf("2 --> Call Free Handle at the OMX_StateIdle\n");
		printf("3 --> Call Free Handle at the OMX_StateExecuting\n");
		printf("4 --> Call Free Handle at the OMX_StatePause\n");

		fflush(stdin);
		scanf("%d", &freeHandle_option);
		fflush(stdin);
	}
	else
	{
		freeHandle_option = (freeHandle_test)0;
	}

	DEBUG_PRINT("*********get cmd line ok! *******\n");



	pthread_cond_init(&cond, 0);
	pthread_cond_init(&eos_cond, 0);
	pthread_mutex_init(&eos_lock, 0);
	pthread_mutex_init(&lock, 0);
	pthread_mutex_init(&etb_lock, 0);
	pthread_mutex_init(&fbd_lock, 0);
	pthread_mutex_init(&enable_lock, 0);

	if (-1 == sem_init(&etb_sem, 0, 0))
	{
		DEBUG_PRINT("Error - sem_init failed %d\n", errno);
	}

	if (-1 == sem_init(&fbd_sem, 0, 0))
	{
		DEBUG_PRINT("Error - sem_init failed %d\n", errno);
	}

	if (-1 == sem_init(&in_flush_sem, 0, 0))
	{
		DEBUG_PRINT("Error - sem_init failed %d\n", errno);
	}

	if (-1 == sem_init(&out_flush_sem, 0, 0))
	{
		DEBUG_PRINT("Error - sem_init failed %d\n", errno);
	}

	if (-1 == sem_init(&esc_sem, 0, 0))
	{
		DEBUG_PRINT("Error - sem_init failed %d\n", errno);
	}

    /* 注册ctrl c 函数 */
    //(void) signal(SIGINT, SignalHandle);
     
	DEBUG_PRINT("%s %d\n", __func__, __LINE__);
	etb_queue = alloc_queue();
	if (etb_queue == NULL)
	{
		DEBUG_PRINT_ERROR("Error in Creating etb_queue\n");
		return -1;
	}

	fbd_queue = alloc_queue();
	if (fbd_queue == NULL)
	{
		DEBUG_PRINT_ERROR("Error in Creating fbd_queue\n");
		free_queue(etb_queue);
		return -1;
	}

	if(0 != pthread_create(&fbd_thread_id, NULL, fbd_thread, NULL))
	{
		DEBUG_PRINT_ERROR("Error in Creating fbd_thread\n");
		free_queue(etb_queue);
		free_queue(fbd_queue);
		return -1;
	}

	Read_Buffer = Read_Buffer_from_EsRawStream;
	if(Init_Decoder() < 0)
	{
		DEBUG_PRINT_ERROR("Error - Decoder Init failed\n");
		return -1;
	}

	if(Play_Decoder() < 0)
	{
		DEBUG_PRINT_ERROR("Error - Decode Play failed\n");
		return -1;
	}

    if (0)
    {	
        printf("wait for exit...\n");
        sem_wait(&esc_sem);
        printf("prepare to exit.\n");
    }
    else
    {
        loop_function();
    }
    
	ebd_thread_exit = 1;
	fbd_thread_exit = 1;
	sem_post(&etb_sem);  
	sem_post(&fbd_sem);

	do_freeHandle_and_clean_up(false);

	pthread_cond_destroy(&cond);
	pthread_cond_destroy(&eos_cond);

	pthread_mutex_destroy(&lock);
	pthread_mutex_destroy(&etb_lock);
	pthread_mutex_destroy(&fbd_lock);
	pthread_mutex_destroy(&enable_lock);

	pthread_mutex_destroy(&eos_lock);
	DEBUG_PRINT("%s %d\n", __func__, __LINE__);

	//pthread_join(ebd_thread_id, NULL);
	//DEBUG_PRINT_ERROR("%s %d\n", __func__, __LINE__);

	//pthread_join(fbd_thread_id, NULL);
	//DEBUG_PRINT_ERROR("%s %d\n", __func__, __LINE__);

	if (-1 == sem_destroy(&etb_sem))
	{
		DEBUG_PRINT_ERROR("L%d Error - sem_destroy failed %d\n", __LINE__, errno);
	}

	if (-1 == sem_destroy(&fbd_sem))
	{
		DEBUG_PRINT_ERROR("L%d Error - sem_destroy failed %d\n", __LINE__, errno);
	}

	if (-1 == sem_destroy(&in_flush_sem))
	{
		DEBUG_PRINT_ERROR("L%d Error - sem_destroy failed %d\n", __LINE__, errno);
	}

	if (-1 == sem_destroy(&out_flush_sem))
	{
		DEBUG_PRINT_ERROR("L%d Error - sem_destroy failed %d\n", __LINE__, errno);
	}

	if (-1 == sem_destroy(&esc_sem))
	{
		DEBUG_PRINT_ERROR("L%d Error - sem_destroy failed %d\n", __LINE__, errno);
	}
	return 0;
}


static void loop_function(void)
{
	int cmd_error = 0;

	printf("\nCmd test for control, cmds as follows:\n");
	printf("** pause, resume, flush, flush-in, flush-out **\n");
	printf("** note: use \"esc\" to exit **\n");

	while (bOutputEosReached == false && (cmd_error == 0))
	{
		fflush(stdin);
		scanf("%s", curr_seq_command);
        
              if (bOutputEosReached)
              {
                  break;
              }

		if (!strcmp(curr_seq_command, "q")) 
              {
                  printf("test-case exit!!\n");
                  break;
		}

		cmd_error = process_current_command(curr_seq_command);
	}
}


static OMX_ERRORTYPE Allocate_Buffers ( OMX_COMPONENTTYPE *dec_handle,
                                       OMX_BUFFERHEADERTYPE  ***pBufHdrs,
                                       OMX_U32 nPortIndex,
                                       long bufCntMin, long bufSize)
{
	DEBUG_PRINT("Inside %s \n", __FUNCTION__);
	OMX_ERRORTYPE error = OMX_ErrorNone;
	long bufCnt=0;

	DEBUG_PRINT("pBufHdrs = %x,bufCntMin = %d\n", pBufHdrs, bufCntMin);
	*pBufHdrs= (OMX_BUFFERHEADERTYPE **)malloc(sizeof(OMX_BUFFERHEADERTYPE*)*bufCntMin);

	for(bufCnt=0; bufCnt < bufCntMin; ++bufCnt)
    {
		DEBUG_PRINT("OMX_AllocateBuffer No %d\n", bufCnt);
		error = OMX_AllocateBuffer(dec_handle, &((*pBufHdrs)[bufCnt]),
	                           nPortIndex, NULL, bufSize);
	}

	return error;
}


static OMX_ERRORTYPE Use_Buffers ( OMX_COMPONENTTYPE *dec_handle,
                                       OMX_BUFFERHEADERTYPE  ***pBufHdrs,
                                       OMX_U32 nPortIndex,
                                       long bufCntMin, long bufSize)
{
	DEBUG_PRINT("Inside %s \n", __FUNCTION__);
	OMX_ERRORTYPE error = OMX_ErrorNone;
	long bufCnt=0;
    
#ifdef SupportNative
       private_handle_t private_handle;

	DEBUG_PRINT("pBufHdrs = %x,bufCntMin = %d\n", pBufHdrs, bufCntMin);
	*pBufHdrs= (OMX_BUFFERHEADERTYPE **)malloc(sizeof(OMX_BUFFERHEADERTYPE*)*bufCntMin);

	for(bufCnt=0; bufCnt < bufCntMin; ++bufCnt) 
       {
		DEBUG_PRINT("OMX_UseBuffer No %d\n", bufCnt);
              HI_MMZ_Malloc(&buffer[bufCnt]);
              buffer[bufCnt].bufsize = (bufSize + ALIGN_SIZE - 1) & ~(ALIGN_SIZE - 1);
              buffer[bufCnt].bufsize += 0x40;
              if (0 == nPortIndex)
              {
                  strcpy(buffer[bufCnt].bufname, "OMX_VDEC_IN");
              }
              else
              {
                  strcpy(buffer[bufCnt].bufname, "OMX_VDEC_OUT");
              }
              private_handle.ion_phy_addr = buffer[bufCnt].phyaddr;
		error = OMX_UseBuffer(dec_handle, &((*pBufHdrs)[bufCnt]),
	                           nPortIndex, NULL, bufSize, (OMX_U8*)&private_handle);
              (*pBufHdrs)[bufCnt]->nTickCount = bufCnt;  //暂时找个地方存一下物理地址
	}
#endif

	return error;
}


static void free_output_buffers()
{
	int index = 0;
	OMX_BUFFERHEADERTYPE *pBuffer = NULL;

	pBuffer = (OMX_BUFFERHEADERTYPE *)pop(fbd_queue);

	while (index < portFmt.nBufferCountActual)
	{
		if (pBuffer)
		{
			DEBUG_PRINT("Free output buffer[%d] addr %p\n", index, pBuffer);
                     if (0 == alloc_use_option)
                     {
                        OMX_FreeBuffer(dec_handle, 1, pBuffer);
                     }
                     else
                     {
                        OMX_FreeBuffer(dec_handle, 1, pBuffer);
                        HI_MMZ_Free(&buffer[pBuffer->nTickCount]);
                     }
			index++;
		}
		pBuffer = (OMX_BUFFERHEADERTYPE *)pop(fbd_queue);
	}
}


static void do_freeHandle_and_clean_up(bool isDueToError)
{
	int bufCnt = 0;
	OMX_STATETYPE state = OMX_StateInvalid;
	OMX_ERRORTYPE result = OMX_ErrorNone;

	OMX_GetState(dec_handle, &state);

	flush_input_progress = 1;
	flush_output_progress = 1;
	OMX_SendCommand(dec_handle, OMX_CommandFlush, OMX_ALL, 0);
	wait_for_event(OMX_CommandFlush);

	if (state == OMX_StateExecuting || state == OMX_StatePause)
	{
		DEBUG_PRINT("Requesting transition to Idle\n");
		OMX_SendCommand(dec_handle, OMX_CommandStateSet, OMX_StateIdle, 0);
		wait_for_event(OMX_CommandStateSet);
		if (currentStatus == ERROR_STATE)
		{
			DEBUG_PRINT_ERROR("executing -> idle state trans error\n");
			return;
		}

		OMX_GetState(dec_handle, &state);
		if (state != OMX_StateIdle)
		{
			DEBUG_PRINT_ERROR("current component state :%d error!\n", state);
			return;
		}

		DEBUG_PRINT("current component state :%d\n", state);
	}

	if (state == OMX_StateIdle)
	{
		DEBUG_PRINT("Requesting transition to Loaded\n");
		OMX_SendCommand(dec_handle, OMX_CommandStateSet, OMX_StateLoaded, 0);

		for(bufCnt=0; bufCnt < used_ip_buf_cnt; ++bufCnt)
		{
			OMX_FreeBuffer(dec_handle, 0, pInputBufHdrs[bufCnt]);
		}

		if (pInputBufHdrs)
		{
			free(pInputBufHdrs);
			pInputBufHdrs = NULL;
		}

		DEBUG_PRINT("free ip buffer ok!\n");
        
		for(bufCnt = 0; bufCnt < used_op_buf_cnt; ++bufCnt)
		{
		     OMX_FreeBuffer(dec_handle, 1, pOutYUVBufHdrs[bufCnt]);
		}

		if (pOutYUVBufHdrs)
		{
			free(pOutYUVBufHdrs);
			pOutYUVBufHdrs = NULL;
		}

		free_op_buf_cnt = 0;

		DEBUG_PRINT("free op buffer ok!\n");

		wait_for_event(OMX_CommandStateSet);
		if (currentStatus == ERROR_STATE)
		{
			DEBUG_PRINT_ERROR("idle -> loaded state trans error\n");
			return;
		}

		OMX_GetState(dec_handle, &state);
		if (state != OMX_StateLoaded)
		{
			DEBUG_PRINT_ERROR("current component state :%d error!\n", state);
			return;
		}

              if (alloc_use_option)
              {
                 for(bufCnt=0; bufCnt < used_op_buf_cnt; ++bufCnt)
                 {
                     HI_MMZ_Free(&buffer[bufCnt]);
                 }
              }
              
		DEBUG_PRINT("current component state :%d\n", state);
        
	}

	DEBUG_PRINT("[OMX Vdec Test] - Free omx handle\n");

	result = OMX_FreeHandle(dec_handle);
	if (result != OMX_ErrorNone)
	{
		DEBUG_PRINT_ERROR("OMX_FreeHandle error. Error code: %d\n", result);
		return;
	}

	DEBUG_PRINT("[OMX Vdec Test] - Free omx handle ok!!\n");

	dec_handle = NULL;

	/* Deinit OpenMAX */
	DEBUG_PRINT("De-initializing OMX \n");
	OMX_Deinit();

	DEBUG_PRINT(" closing all files \n");
	if(inputBufferFileFd != -1)
	{
		close(inputBufferFileFd);
		inputBufferFileFd = -1;
	}
	DEBUG_PRINT(" after free inputfile \n");

	if(etb_queue)
	{
		free_queue(etb_queue);
		etb_queue = NULL;
	}

	DEBUG_PRINT("after free etb_queue\n");
	if(fbd_queue)
	{
		free_queue(fbd_queue);
		fbd_queue = NULL;
	}
	DEBUG_PRINT("after free iftb_queue\n");

	printf("*****************************************\n");

	if (isDueToError)
		printf("************...TEST FAILED...************\n");
	else
		printf("**********...TEST SUCCESSFULL...*********\n");

	printf("*****************************************\n\n\n");
}


static int disable_output_port(void)
{
       int q_flag = 0;
	OMX_BUFFERHEADERTYPE *pBuffer = NULL;
       
	DEBUG_PRINT("prepre to disable output port\n");

	// Send DISABLE command.
	pthread_mutex_lock(&enable_lock);
	sent_disabled = 1;
	pthread_mutex_unlock(&enable_lock);

	DEBUG_PRINT("%s %d\n", __func__, __LINE__);

	OMX_SendCommand(dec_handle, OMX_CommandPortDisable, 1, 0);

       do
       {
           pthread_mutex_lock(&fbd_lock);
           pBuffer = (OMX_BUFFERHEADERTYPE *)pop(fbd_queue);
           pthread_mutex_unlock(&fbd_lock);
           
           if (NULL != pBuffer)
           {
               if (0 == alloc_use_option)
               {
                   OMX_FreeBuffer(dec_handle, 1, pBuffer);
               }
               else
               {
                   OMX_FreeBuffer(dec_handle, 1, pBuffer);
                   HI_MMZ_Free(&buffer[pBuffer->nTickCount]);
               }
           }
           else
           {
               q_flag = 1;
           }
       }while (!q_flag);

	wait_for_event(OMX_CommandPortDisable);

	if (currentStatus == ERROR_STATE)
	{
		do_freeHandle_and_clean_up(true);
		return -1;
	}

	DEBUG_PRINT("%s %d\n", __func__, __LINE__);

	return 0;
}


static int enable_output_port(void)
{
	int bufCnt = 0;
	OMX_ERRORTYPE ret = OMX_ErrorNone;

	DEBUG_PRINT("prepare to enable output port\n");

	// Send Enable command
	OMX_SendCommand(dec_handle, OMX_CommandPortEnable, 1, 0);

	/* Allocate buffer on decoder's o/p port */
	portFmt.nPortIndex = 1;
       if (0 == alloc_use_option)
       {
	    error = Allocate_Buffers(dec_handle, &pOutYUVBufHdrs, portFmt.nPortIndex, portFmt.nBufferCountActual, portFmt.nBufferSize);

           if (error != OMX_ErrorNone)
           {
               DEBUG_PRINT_ERROR("OMX_AllocateBuffer Output buffer error\n");
               return -1;
           }
           else
           {
               DEBUG_PRINT("OMX_AllocateBuffer Output buffer success\n");
               free_op_buf_cnt = portFmt.nBufferCountActual;
           }
       }
       else
       {
	    error = Use_Buffers(dec_handle, &pOutYUVBufHdrs, portFmt.nPortIndex, portFmt.nBufferCountActual, portFmt.nBufferSize);

           if (error != OMX_ErrorNone)
           {
               DEBUG_PRINT_ERROR("OMX_UseBuffer Output buffer error\n");
               return -1;
           }
           else
           {
               DEBUG_PRINT("OMX_UseBuffer Output buffer success\n");
               free_op_buf_cnt = portFmt.nBufferCountActual;
           }
       }

	// wait for enable event to come back
	DEBUG_PRINT("waiting enable done....\n");

	wait_for_event(OMX_CommandPortEnable);

	if (currentStatus == ERROR_STATE)
	{
		DEBUG_PRINT_ERROR("start error!\n");
		do_freeHandle_and_clean_up(true);
		return -1;
	}

	DEBUG_PRINT("wake up to fill buffers\n");

	for(bufCnt=0; bufCnt < portFmt.nBufferCountActual; ++bufCnt)
	{
		DEBUG_PRINT("OMX_FillThisBuffer on output buf no.%d\n",bufCnt);

		pOutYUVBufHdrs[bufCnt]->nOutputPortIndex = 1;
		pOutYUVBufHdrs[bufCnt]->nFlags &= ~OMX_BUFFERFLAG_EOS;

		ret = OMX_FillThisBuffer(dec_handle, pOutYUVBufHdrs[bufCnt]);
		if (OMX_ErrorNone != ret) 
        {
			DEBUG_PRINT_ERROR("OMX_FillThisBuffer failed, result %d\n", ret);
		}
		else
		{
			DEBUG_PRINT("OMX_FillThisBuffer success!\n");
			free_op_buf_cnt--;
		}
	}

	DEBUG_PRINT("OP PORT ENABLED!\n");
	return 0;
}


static int output_port_reconfig()
{
	DEBUG_PRINT("PORT_SETTING_CHANGE_STATE\n");

	if (disable_output_port() != 0)
	{
		DEBUG_PRINT_ERROR("disable output port failed\n");
		return -1;
	}
	/* Port for which the Client needs to obtain info */

	portFmt.nPortIndex = 1;

	OMX_GetParameter(dec_handle,OMX_IndexParamPortDefinition,&portFmt);

	DEBUG_PRINT("Min Buffer Count = %d\n", portFmt.nBufferCountMin);
	DEBUG_PRINT("Buffer Size = %d\n", portFmt.nBufferSize);

	if(OMX_DirOutput != portFmt.eDir)
	{
		DEBUG_PRINT_ERROR("Error - Expect Output Port\n");
		return -1;
	}

	height = portFmt.format.video.nFrameHeight;
	width = portFmt.format.video.nFrameWidth;
	stride = portFmt.format.video.nStride;
	sliceheight = portFmt.format.video.nSliceHeight;

	DEBUG_PRINT("height = %d\n", height);
	DEBUG_PRINT("width = %d\n", width);
	DEBUG_PRINT("stride = %d\n", stride);
	DEBUG_PRINT("sliceheight = %d\n", sliceheight);

	if (enable_output_port() != 0)
	{
		DEBUG_PRINT_ERROR("enable output port failed\n");
		return -1;
	}

	DEBUG_PRINT("PORT_SETTING_CHANGE DONE!\n");
	return 0;
}



