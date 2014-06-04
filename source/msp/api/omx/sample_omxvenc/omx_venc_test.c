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
#include <sys/mman.h>
#include <time.h>
#include <sys/ioctl.h>
#include <errno.h>
#include <pthread.h>
#include <semaphore.h>
#include <sys/time.h> //gettimeofday
#include <linux/videodev2.h>
#include <linux/fb.h>
#include "OMX_Core.h"
#include "OMX_Component.h"
#include "OMX_IVCommon.h"

#include "queue.h"
/************************************************************************/

//#define DEBUG
#ifdef DEBUG
#define DEBUG_PRINT	printf
#else
#define DEBUG_PRINT
#endif

#define DEBUG_PRINT_ERROR	printf

/************************************************************************/
#define FAILED(result) (result != OMX_ErrorNone)
#define SUCCEEDED(result) (result == OMX_ErrorNone)

#define DEFAULT_WIDTH	720
#define DEFAULT_HEIGHT	576
/************************************************************************/
//* OMX Spec Version supported by the wrappers. Version = 1.1 */
const OMX_U32 CURRENT_OMX_SPEC_VERSION = 0x00000101;

#define CONFIG_VERSION_SIZE(param) \
	param.nVersion.nVersion = CURRENT_OMX_SPEC_VERSION;\
	param.nSize = sizeof(param);
/************************************************************************/
typedef enum {
	GOOD_STATE = 0,
	PORT_SETTING_CHANGE_STATE,
	ERROR_STATE
} test_status;

typedef enum {
	CODEC_FORMAT_H264	= 0x0,
	CODEC_FORMAT_H263	= 0x1,
	CODEC_FORMAT_MP4	= 0x2,
	CODEC_FORMAT_MAX	
} codec_format;

typedef enum {
	false	=	0,
	true	=	1
}bool;

enum {
	INPUT_PORT_INDEX	= 0,
	OUTPUT_PORT_INDEX	= 1
};


struct buf_info {
	int index;
	unsigned int length;
	char *start;
};
typedef OMX_U8* OMX_U8_PTR;
static int (*Read_Buffer)(OMX_BUFFERHEADERTYPE  *pBufHdr );
/************************************************************************/
volatile int event_is_done = 0;

static int inputBufferFileFd;
//static FILE *inputBufferFile;

static FILE *outputBufferFile;
static int take264Log = 0;
static int test_option = 0;
static Queue *etb_queue = NULL;
static Queue *fbd_queue = NULL;

static pthread_t ebd_thread_id;
static pthread_t fbd_thread_id;          

//MUTEXT
static pthread_mutex_t	etb_lock;        /*empty_this_buffer lock*/
static pthread_mutex_t	fbd_lock;        /*fill_this_buffer lock*/
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

//OMX VAR
OMX_PARAM_COMPONENTROLETYPE  role;
OMX_PARAM_PORTDEFINITIONTYPE portFmt;
OMX_PORT_PARAM_TYPE portParam;
OMX_ERRORTYPE error;
OMX_COLOR_FORMATTYPE color_fmt;
OMX_COMPONENTTYPE *venc_handle = 0;
OMX_BUFFERHEADERTYPE **pInputYUVBufHdrs = NULL;
OMX_BUFFERHEADERTYPE **pOutputBufHdrs= NULL;
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
//static freeHandle_test freeHandle_option;
static int sent_disabled = 0;
static int waitForPortSettingsChanged = 1;
static test_status currentStatus = GOOD_STATE;

#if 0
static int vd_fd;
struct v4l2_requestbuffers reqbuf;
struct v4l2_format format;
struct v4l2_buffer buf;
#endif

struct timeval t_first = {0, 0};

/************************************************************************/
/*              GLOBAL FUNC DECL                                        */
/************************************************************************/
static void* ebd_thread(void*);
static void* fbd_thread(void*);
static int disable_output_port(void);
static int enable_output_port(void);
static int output_port_reconfig(void);
static void free_output_buffers(void);
static int Init_Encoder(void);
static int Play_Encoder(void);
static int open_video_file (void);
static void loop_function(void);

static OMX_ERRORTYPE Allocate_Buffers ( OMX_COMPONENTTYPE *venc_handle,
		OMX_BUFFERHEADERTYPE  ***pBufHdrs,
		OMX_U32 nPortIndex,
		long bufCntMin, long bufSize);

static OMX_ERRORTYPE EventHandler(OMX_IN OMX_HANDLETYPE hComponent,
		OMX_IN OMX_PTR pAppData,
		OMX_IN OMX_EVENTTYPE eEvent,
		OMX_IN OMX_U32 nData1, OMX_IN OMX_U32 nData2,
		OMX_IN OMX_PTR pEventData);

static OMX_ERRORTYPE EmptyBufferDone(OMX_IN OMX_HANDLETYPE hComponent,
		OMX_IN OMX_PTR pAppData,
		OMX_IN OMX_BUFFERHEADERTYPE* pBuffer);

static OMX_ERRORTYPE FillBufferDone(OMX_OUT OMX_HANDLETYPE hComponent,
        OMX_OUT OMX_PTR pAppData,
        OMX_OUT OMX_BUFFERHEADERTYPE* pBuffer);

static void do_freeHandle_and_clean_up(bool isDueToError);

static int last_cmd;
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
    DEBUG_PRINT("\n\nevent_complete :: cmd =%d\n",cmd);
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
		DEBUG_PRINT_ERROR("Error: i/p file %s open failed!\n",in_filename);
		error_code = -1;
	}
	if (take264Log)
	{
		outputBufferFile = fopen ("./venc_test.h264", "wb+");
		if (outputBufferFile == NULL)
		{
			DEBUG_PRINT_ERROR("ERROR: o/p file open failed\n");
			error_code = -1;
		}
	}
	return error_code;
}

static  int SampleTransFormat(unsigned char* srcData ,unsigned width, unsigned height,unsigned mode)
{
    unsigned char *olddata;
    olddata = ( unsigned char *)malloc(width*height*3/2*sizeof(unsigned char)); 
    if(NULL == olddata) return 1;
    long i,temp;  
    switch(mode)
    {
     case 0:
       memcpy(olddata, srcData , width*height*3/2);
       for(i = width * height; i <width * height*3/2; i=i+2)
        {     
             temp=width * height+(i-width * height)/2;  
             *(srcData+i+1) = *(olddata+temp);     
             temp=width * height+(i-width * height)/2+width*height/4;
             *(srcData+i+0) = *(olddata+temp);  
        } 
        free(olddata);
        break;
     default:
        break;
    } 
    return 0;
}

static int Read_Buffer_from_YUVFile (
		OMX_BUFFERHEADERTYPE  *pBufHdr)
{
	int bytes_read = 0,bytes_unit = 0;
    unsigned char u32TmpData[1920*1080*3/2];
    int frame_size = DEFAULT_WIDTH * DEFAULT_HEIGHT * 3/2;
	//DEBUG_PRINT("Inside Read_Buffer_from_EsRawStream\n");

	bytes_read = read(inputBufferFileFd, u32TmpData, frame_size); 
	
    if (bytes_read != frame_size  && bytes_read >= 0)
	{
		DEBUG_PRINT("read bytes reach end\n");
		if (test_option)
		{
            lseek(inputBufferFileFd,0,SEEK_SET);
            printf("Bytes read Zero After Read frame Size\n");
			bytes_read = read(inputBufferFileFd, u32TmpData, frame_size);
			if (bytes_read != frame_size  && bytes_read >= 0)
			{
			   printf("%s,%d,miss one FTB buffer!\n",__func__,__LINE__);
			   return bytes_read;
			}
		}
		else
		{
		   pBufHdr->nFlags |= OMX_BUFFERFLAG_EOS;
		   return bytes_read;
		}
		
	}
	else if(bytes_read < 0)
	{
		printf("read bytes ERROR\n");
		return bytes_read;
		
	}

    /*bytes_unit = fread(u32TmpData, frame_size,1,inputBufferFile);*/
    SampleTransFormat(u32TmpData, DEFAULT_WIDTH , DEFAULT_HEIGHT ,0);

    memcpy(pBufHdr->pBuffer, u32TmpData ,frame_size);
    
    /*if (1 == bytes_unit)
	{
		DEBUG_PRINT("read bytes %d\n",frame_size);
	}
	else if(bytes_unit == 0)
	{
		DEBUG_PRINT("Bytes read the end!!\n");
        pBufHdr->nFlags |= OMX_BUFFERFLAG_EOS;
        return 0;
	}*/
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

		    pthread_mutex_lock(&enable_lock);
	        sent_disabled = 0;
		    pthread_mutex_unlock(&enable_lock);
	    }
	    else if(OMX_CommandFlush == (OMX_COMMANDTYPE)nData1)
	    {
	        printf("*********************************************\n");
	        printf("Received FLUSH Event Command Complete[%d]\n",nData2);
	        printf("*********************************************\n");

				if (nData2 == 0) {
					printf("****flush in complete\n");
					flush_input_progress = 0;
					sem_post(&in_flush_sem);
				}
				else if (nData2 == 1) {
					printf("****flush out complete\n");
					flush_output_progress = 0;
					sem_post(&out_flush_sem);
				}
	    }

	    if (!flush_input_progress && !flush_output_progress)
		event_complete(nData1);
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
				DEBUG_PRINT("Event error in the middle of Encode\n");

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

	    DEBUG_PRINT("OMX_EventPortSettingsChanged\n", nData1);

	    currentStatus = PORT_SETTING_CHANGE_STATE;
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
    DEBUG_PRINT("Function %s cnt[%d]\n", __FUNCTION__, ebd_cnt);
	int readBytes =0; 
    int bufCnt=0;
	OMX_ERRORTYPE result;

	ebd_cnt++;

	if(bInputEosReached)
	{
		DEBUG_PRINT("*****EBD:Input EoS Reached************\n");
		return OMX_ErrorNone;
	}

	pthread_mutex_lock(&etb_lock);
	if(push(etb_queue, (void *) pBuffer) < 0)                                     //压入队列
	{
		printf("Error in enqueue  ebd data\n");
		pthread_mutex_unlock(&etb_lock);
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
    int ret;
	//DEBUG_PRINT("fill buffer done\n");

	pthread_mutex_lock(&fbd_lock);

	free_op_buf_cnt++;

    if (NULL == pBuffer->pOutputPortPrivate)
    {
       DEBUG_PRINT_ERROR("Error::pBuffer->pOutputPortPrivate = 0.\n");
	   pthread_mutex_unlock(&fbd_lock);
       return OMX_ErrorUndefined;
    }
   
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

	pthread_mutex_unlock(&fbd_lock);

	return OMX_ErrorNone;
}


static int Init_Encoder(void)
{

	OMX_ERRORTYPE omxresult;
	OMX_U32 total = 0;
	int i = 0, is_found = 0;
	long bufCnt = 0;

	char vencCompNames[] = "OMX.hisi.video.encoder";
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

	strncpy(compRole, "video_encoder.avc", OMX_MAX_STRINGNAME_SIZE);
	portFmt.format.video.eCompressionFormat = OMX_VIDEO_CodingAVC;

	for( i = 0; ; i++ )    /*function OMX_ComponentNameEnum can break this cycle !*/
	{
		char enumCompName[OMX_MAX_STRINGNAME_SIZE];
		memset(enumCompName, 0 , OMX_MAX_STRINGNAME_SIZE);

		omxresult = OMX_ComponentNameEnum(enumCompName,
			OMX_MAX_STRINGNAME_SIZE, i);

		if(OMX_ErrorNone != omxresult)
			break;

		if (!strncmp(enumCompName, vencCompNames, OMX_MAX_STRINGNAME_SIZE))
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

	/* Query for video encoders*/
	is_found = 0;
	OMX_GetRolesOfComponent(vencCompNames, &total, NULL);
	DEBUG_PRINT("\nOMX_GetRolesOfComponent %s, nums=%d\n", vencCompNames, total);

	if (total)
	{
		/* Allocate memory for pointers to component name */
		OMX_U8 **role = (OMX_U8**)malloc((sizeof(OMX_U8*)) * total);

		for (i = 0; i < total; ++i)
		{
		    role[i] = (OMX_U8*)malloc(sizeof(OMX_U8) * OMX_MAX_STRINGNAME_SIZE);
		}

		OMX_GetRolesOfComponent(vencCompNames, &total, role);

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
		DEBUG_PRINT_ERROR("No components found with Role:%s\n", vencCompNames);
		return -1;
	}

	DEBUG_PRINT("OpenMAX OMX_GetHandle....\n");

	omxresult = OMX_GetHandle((OMX_HANDLETYPE*)(&venc_handle),
	                      (OMX_STRING)vencCompNames, NULL, &call_back);                                  /*key!!*/
	if (FAILED(omxresult))
	{
		DEBUG_PRINT_ERROR("Failed to Load the component:%s\n", vencCompNames);
		return -1;
	}

	DEBUG_PRINT("OMX_GetHandle success\n", vencCompNames);

	CONFIG_VERSION_SIZE(role);
	strncpy((char*)role.cRole, compRole, OMX_MAX_STRINGNAME_SIZE);
	omxresult = OMX_SetParameter(venc_handle, OMX_IndexParamStandardComponentRole, &role);             //设置编码器编码的协议类型                 
	if(FAILED(omxresult))
	{
		DEBUG_PRINT_ERROR("ERROR - Failed to set param!\n");
		return -1;
	}
    DEBUG_PRINT("current role of component is %s\n", (char *)role.cRole);
	
	omxresult = OMX_GetParameter(venc_handle,OMX_IndexParamStandardComponentRole, &role);   //仅用于检查
	if(FAILED(omxresult))
	{
		DEBUG_PRINT_ERROR("ERROR - Failed to get role!\n");
		return -1;
	}
    if (strncmp((char *)role.cRole,compRole,OMX_MAX_STRINGNAME_SIZE))
    {
       DEBUG_PRINT_ERROR("ERROR - Set and Get not the same!!(line:%d)\n",__LINE__);
    }
	
	return 0;
}


static int Play_Encoder()
{
	OMX_VIDEO_PARAM_PORTFORMATTYPE videoportFmt = {0};
	int i, bufCnt, index = 0;
	int frameSize = 0;
	int flag = 0;
	OMX_ERRORTYPE ret = OMX_ErrorNone;
	OMX_BUFFERHEADERTYPE* pBuffer = NULL;
	OMX_STATETYPE state = OMX_StateInvalid;
	OMX_VIDEO_CONFIG_BITRATETYPE BitrateConfig;
    OMX_VIDEO_CONFIG_AVCINTRAPERIOD GopConfig;

	DEBUG_PRINT("Inside %s\n", __FUNCTION__);

	/* open the i/p and o/p files*/
	if(open_video_file() < 0)
	{
		DEBUG_PRINT_ERROR("Error in opening video file");
		return -1;
	}

	/* Get the port information */
	CONFIG_VERSION_SIZE(portParam);
	ret = OMX_GetParameter(venc_handle, OMX_IndexParamVideoInit,
	                        (OMX_PTR)&portParam);
	if(FAILED(ret))
	{
		DEBUG_PRINT_ERROR("ERROR - Failed to get Port Param\n");
		return -1;
	}

	DEBUG_PRINT("portParam.nPorts:%d\n", portParam.nPorts);
	DEBUG_PRINT("portParam.nStartPortNumber:%d\n", portParam.nStartPortNumber);

	/* Query the encoder input's  buf requirements */                                //设置输入端口的属性
	CONFIG_VERSION_SIZE(portFmt);
	portFmt.nPortIndex = portParam.nStartPortNumber;

	OMX_GetParameter(venc_handle, OMX_IndexParamPortDefinition, &portFmt);

	DEBUG_PRINT("Enc_Get(port:%d): Min Buffer Count %d\n",portFmt.nPortIndex, portFmt.nBufferCountMin);
	DEBUG_PRINT("Enc_Get(port:%d): Act Buffer Count %d\n",portFmt.nPortIndex, portFmt.nBufferCountActual);
	DEBUG_PRINT("Enc_Get(port:%d): Buffer Size %d\n", portFmt.nPortIndex,portFmt.nBufferSize);

	if(OMX_DirInput != portFmt.eDir)
	{
		DEBUG_PRINT_ERROR ("Enc: Expect Input Port\n");
		return -1;
	}

	portFmt.format.video.nFrameWidth  = DEFAULT_WIDTH;
	portFmt.format.video.nFrameHeight = DEFAULT_HEIGHT;
	portFmt.format.video.xFramerate   = 30;                                          //输入帧率
	portFmt.format.video.eColorFormat = OMX_COLOR_FormatYUV420SemiPlanar;            //输入格式
	portFmt.format.video.eCompressionFormat = OMX_VIDEO_CodingUnused;                
	OMX_SetParameter(venc_handle,OMX_IndexParamPortDefinition, &portFmt);

	/* get again to check */
	OMX_GetParameter(venc_handle, OMX_IndexParamPortDefinition, &portFmt);
	flag |= (portFmt.format.video.nFrameWidth != DEFAULT_WIDTH);
    flag |= (portFmt.format.video.nFrameHeight != DEFAULT_HEIGHT);
	flag |= (portFmt.format.video.xFramerate != 30);
	flag |= (portFmt.format.video.eColorFormat != OMX_COLOR_FormatYUV420SemiPlanar);
	flag |= (portFmt.format.video.eCompressionFormat != OMX_VIDEO_CodingUnused);
    if (flag)
    {
        DEBUG_PRINT_ERROR ("ERR:: SET ang GET not the same!!(line:%d)\n",__LINE__);
		return -1;
    }
	DEBUG_PRINT("input Video format: W x H (%d x %d)\n",
        		portFmt.format.video.nFrameWidth,
        		portFmt.format.video.nFrameHeight);

    printf("input Video format: W x H (%d x %d)\n",
        		portFmt.format.video.nFrameWidth,
        		portFmt.format.video.nFrameHeight);

	
#if 0    //have already done before
	/* set component video fmt */     //another kind to set the port vedio kind!
	CONFIG_VERSION_SIZE(videoportFmt);
	color_fmt = OMX_COLOR_FormatYUV420SemiPlanar;
	while (ret == OMX_ErrorNone)
	{
		videoportFmt.nPortIndex = INPUT_PORT_INDEX;
		videoportFmt.nIndex     = index;
		ret = OMX_GetParameter(venc_handle, OMX_IndexParamVideoPortFormat,(OMX_PTR)&videoportFmt);

		if((ret == OMX_ErrorNone) && (videoportFmt.eColorFormat == color_fmt))
		{
			DEBUG_PRINT("Format[%u] supported by OMX Encoder\n", color_fmt);
			break;
		}
		index++;
	}
	if(ret != OMX_ErrorNone)
	{
		DEBUG_PRINT_ERROR("Error in retrieving supported color formats\n");
		return -1;
	}

	ret = OMX_SetParameter(venc_handle,OMX_IndexParamVideoPortFormat, (OMX_PTR)&videoportFmt);
	if (ret != OMX_ErrorNone)
	{
	    DEBUG_PRINT_ERROR("Setting Tile format failed\n");
	    return -1;
	}
#endif

	/* Query the encoder output's  buf requirements */                                //设置输出端口的属性
	portFmt.nPortIndex = portParam.nStartPortNumber + 1;
	OMX_GetParameter(venc_handle, OMX_IndexParamPortDefinition, &portFmt);

	DEBUG_PRINT("Enc_Get(port:%d): Min Buffer Count %d\n", portFmt.nPortIndex,portFmt.nBufferCountMin);
	DEBUG_PRINT("Enc_Get(port:%d): Act Buffer Count %d\n", portFmt.nPortIndex,portFmt.nBufferCountActual);
	DEBUG_PRINT("Enc_Get(port:%d): Buffer Size %d\n", portFmt.nPortIndex,portFmt.nBufferSize);

	if(OMX_DirOutput != portFmt.eDir)
	{
		DEBUG_PRINT_ERROR ("Enc: Expect Output Port\n");
		return -1;
	}

	portFmt.format.video.nFrameWidth  = DEFAULT_WIDTH;
	portFmt.format.video.nFrameHeight = DEFAULT_HEIGHT;
	portFmt.format.video.xFramerate   = 30;                                          //输出帧率
	portFmt.format.video.eColorFormat = OMX_COLOR_FormatUnused;           
	portFmt.format.video.eCompressionFormat = OMX_VIDEO_CodingAVC;    	             //输出码流格式
	OMX_SetParameter(venc_handle,OMX_IndexParamPortDefinition, &portFmt);

	/* get again to check */
	OMX_GetParameter(venc_handle, OMX_IndexParamPortDefinition, &portFmt);
    flag |= (portFmt.format.video.nFrameWidth != DEFAULT_WIDTH);
    flag |= (portFmt.format.video.nFrameHeight != DEFAULT_HEIGHT);
	flag |= (portFmt.format.video.xFramerate != 30);
	flag |= (portFmt.format.video.eColorFormat != OMX_COLOR_FormatUnused);
	flag |= (portFmt.format.video.eCompressionFormat != OMX_VIDEO_CodingAVC);
    if (flag)
    {
        DEBUG_PRINT_ERROR ("ERR:: SET ang GET not the same!!(line:%d)\n",__LINE__);
		return -1;
    }
	DEBUG_PRINT("output stream format: W x H (%d x %d)\n",
        		portFmt.format.video.nFrameWidth,
        		portFmt.format.video.nFrameHeight);
	printf("output stream format: W x H (%d x %d)\n",
        		portFmt.format.video.nFrameWidth,
        		portFmt.format.video.nFrameHeight);
		
#if 0   // have already done before
	/* set component video fmt */
	CONFIG_VERSION_SIZE(videoportFmt);
    index = 0;
	while (ret == OMX_ErrorNone)
	{
		videoportFmt.nPortIndex = OUTPUT_PORT_INDEX;
		videoportFmt.nIndex     = index;
		ret = OMX_GetParameter(venc_handle, OMX_IndexParamVideoPortFormat,(OMX_PTR)&videoportFmt);

		if((ret == OMX_ErrorNone) && (videoportFmt.eCompressionFormat == OMX_VIDEO_CodingAVC))
		{
			DEBUG_PRINT("Format[%u] supported by OMX Encoder\n", OMX_VIDEO_CodingAVC);
			break;
		}
		index++;
	}
	if(ret != OMX_ErrorNone)
	{
		DEBUG_PRINT_ERROR("Error in retrieving supported Compression formats\n");
		return -1;
	}

	ret = OMX_SetParameter(venc_handle,OMX_IndexParamVideoPortFormat, (OMX_PTR)&videoportFmt);            //可以设置编码协议
	if (ret != OMX_ErrorNone)
	{
	    DEBUG_PRINT_ERROR("Setting Tile format failed\n");
	    return -1;
	}
#endif

    /* set the bitrate of output port*/
	CONFIG_VERSION_SIZE(BitrateConfig);
	BitrateConfig.nPortIndex = OUTPUT_PORT_INDEX;
    OMX_GetConfig(venc_handle,OMX_IndexConfigVideoBitrate,&BitrateConfig);

   if(portFmt.format.video.nFrameWidth > 1280)
   {
      BitrateConfig.nEncodeBitrate = 4*1024*1024;  
   }
   else if(portFmt.format.video.nFrameWidth > 720)
   {
      BitrateConfig.nEncodeBitrate = 3*1024*1024;  
   }
   else if(portFmt.format.video.nFrameWidth > 352)
   {
      BitrateConfig.nEncodeBitrate = 1*1024*1024;
   }
   else
   {
      BitrateConfig.nEncodeBitrate = 3/2*1024*1024;
   } 
   
	if (OMX_SetConfig(venc_handle,OMX_IndexConfigVideoBitrate,&BitrateConfig) != 0)
	{
	    printf("ERROR: OMX_SetConfig faild,%d...\n",__LINE__);
	    do_freeHandle_and_clean_up(true);
	    return -1;
	}

	/* set the GOP of output port*/
    CONFIG_VERSION_SIZE(GopConfig);
	GopConfig.nPortIndex = OUTPUT_PORT_INDEX;
    OMX_GetConfig(venc_handle,OMX_IndexConfigVideoAVCIntraPeriod,&GopConfig);
    GopConfig.nIDRPeriod = 100;
	if (OMX_SetConfig(venc_handle,OMX_IndexConfigVideoAVCIntraPeriod,&GopConfig) != 0)
	{
	    printf("ERROR: OMX_SetConfig faild,%d...\n",__LINE__);
	    do_freeHandle_and_clean_up(true);
	    return -1;
	}
	printf("OMX_SetConfig:gop change SUCESS!\n");

////////////////////////////////////////////////////////////////////////////////////////

	DEBUG_PRINT("OMX_SendCommand Encoder -> IDLE\n");

	OMX_SendCommand(venc_handle, OMX_CommandStateSet, OMX_StateIdle,0);                       //  LOAD -> IDLE   :: creat channel

	// Allocate buffer on encoder's i/p port
	portFmt.nPortIndex = INPUT_PORT_INDEX;
    OMX_GetParameter(venc_handle, OMX_IndexParamPortDefinition,&portFmt);

	used_ip_buf_cnt = portFmt.nBufferCountActual;
    
    DEBUG_PRINT("output buffer Size=%d\n", portFmt.nBufferSize);
	DEBUG_PRINT("output buffer cnt=%d\n", portFmt.nBufferCountActual);
    
	error = Allocate_Buffers(venc_handle, &pInputYUVBufHdrs, portFmt.nPortIndex,used_ip_buf_cnt, portFmt.nBufferSize);
	if (error != OMX_ErrorNone)
	{
		DEBUG_PRINT_ERROR("Error - OMX_AllocateBuffer Input buffer error\n");
		return -1;
	}
	DEBUG_PRINT("OMX_AllocateBuffer Input buffer success\n");

	//Allocate buffer on encoder's o/p port
	portFmt.nPortIndex = OUTPUT_PORT_INDEX;
	OMX_GetParameter(venc_handle, OMX_IndexParamPortDefinition, &portFmt);

	free_op_buf_cnt = portFmt.nBufferCountActual;
	used_op_buf_cnt = portFmt.nBufferCountActual;

	DEBUG_PRINT("output buffer Size=%d", portFmt.nBufferSize);
	DEBUG_PRINT("output buffer cnt=%d", portFmt.nBufferCountActual);

	error = Allocate_Buffers(venc_handle, &pOutputBufHdrs, portFmt.nPortIndex,
	                       used_op_buf_cnt, portFmt.nBufferSize);
	if (error != OMX_ErrorNone)
	{
		DEBUG_PRINT_ERROR("Error - OMX_AllocateBuffer Output buffer error\n");
		return -1;
	}
	DEBUG_PRINT("OMX_AllocateBuffer Output buffer success\n");

	/* wait component state change from loaded->idle */
	wait_for_event(OMX_CommandStateSet);
    
	if (currentStatus == ERROR_STATE)
	{
		do_freeHandle_and_clean_up(true);
		return -1;
	}

	OMX_GetState(venc_handle, &state);
	if (state != OMX_StateIdle)
	{
		DEBUG_PRINT_ERROR("Error - OMX state error\n");
		do_freeHandle_and_clean_up(true);
		return -1;
	}

#if 0
	/* init v4l2 */
	if (displayYuv)
	{
		int i;
		struct buf_info buf_info[10];

		DEBUG_PRINT("prepare to sync user ptr with v4l2\n");
		for (i = 0; i < used_op_buf_cnt; i++)
		{
			buf_info[i].start  = pOutputBufHdrs[i]->pBuffer;
			buf_info[i].length = portFmt.nBufferSize;
			buf_info[i].index  = i;

			DEBUG_PRINT("buf[%d] start:%p, length:%d\n",
				i, buf_info[i].start, buf_info[i].length);
		}

		if (v4l2_init(DEFAULT_WIDTH, DEFAULT_HEIGHT,
				used_op_buf_cnt, buf_info) < 0)
			return -1;

		DEBUG_PRINT("v4l2 init ok!!\n");
	}

	if (freeHandle_option == FREE_HANDLE_AT_IDLE)
	{
		OMX_STATETYPE state = OMX_StateInvalid;
		OMX_GetState(venc_handle, &state);

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
#endif

	DEBUG_PRINT("OMX_SendCommand Encoder -> IDLE\n");

	OMX_SendCommand(venc_handle, OMX_CommandStateSet, OMX_StateExecuting, 0);                //start venc channel

	wait_for_event(OMX_CommandStateSet);
	if (currentStatus == ERROR_STATE)
	{
		DEBUG_PRINT_ERROR("OMX_SendCommand Encoder -> Executing\n");
		do_freeHandle_and_clean_up(true);
		return -1;
	}
	OMX_GetState(venc_handle, &state);

	if (state != OMX_StateExecuting)
	{
		DEBUG_PRINT_ERROR("Error - OMX state error, state %d\n", state);
		do_freeHandle_and_clean_up(true);
		return -1;
	}
/////////////////////////////////////////////////////////////////////////

	DEBUG_PRINT("\nstart OMX_FillThisBuffer ...\n");

	for(bufCnt = 0; bufCnt < used_op_buf_cnt; ++bufCnt)
	{
		DEBUG_PRINT("OMX_FillThisBuffer on output buf no.%d\n",bufCnt);

		pOutputBufHdrs[bufCnt]->nOutputPortIndex = 1;
		pOutputBufHdrs[bufCnt]->nFlags &= ~OMX_BUFFERFLAG_EOS;              

		ret = OMX_FillThisBuffer(venc_handle, pOutputBufHdrs[bufCnt]);

		if (OMX_ErrorNone != ret)
		{
			DEBUG_PRINT_ERROR("Error - OMX_FillThisBuffer failed!!\n");
			//do_freeHandle_and_clean_up(true);                                          //qs
			//return -1;
		}
		else
		{
			DEBUG_PRINT("OMX_FillThisBuffer success! buffer heard :: %p\n",pOutputBufHdrs[bufCnt]);
			free_op_buf_cnt--;
		}

	}

////////////////////////////////////////////////////////////////////////
	DEBUG_PRINT("\nstart OMX_EmptyThisBuffer!\n");

	for (bufCnt = 0; bufCnt < used_ip_buf_cnt; bufCnt++)    //一次插入6帧
	{
		pInputYUVBufHdrs[bufCnt]->nInputPortIndex = 0;
		pInputYUVBufHdrs[bufCnt]->nOffset = 0;

		frameSize = Read_Buffer(pInputYUVBufHdrs[bufCnt]);
		if (frameSize <= 0)
		{
			DEBUG_PRINT("NO FRAME READ\n");
			pInputYUVBufHdrs[bufCnt]->nFilledLen = frameSize;
			pInputYUVBufHdrs[bufCnt]->nInputPortIndex = 0;
			pInputYUVBufHdrs[bufCnt]->nFlags |= OMX_BUFFERFLAG_EOS;;
			//pInputYUVBufHdrs = 1;

			OMX_EmptyThisBuffer(venc_handle, pInputYUVBufHdrs[bufCnt]);
			etb_count++;
			DEBUG_PRINT("File is small::Either EOS or Error while reading file\n");
			break;
		}

		pInputYUVBufHdrs[bufCnt]->nFilledLen = frameSize;
		pInputYUVBufHdrs[bufCnt]->nInputPortIndex = 0;
		pInputYUVBufHdrs[bufCnt]->nFlags = 0;

		ret = OMX_EmptyThisBuffer(venc_handle, pInputYUVBufHdrs[bufCnt]);        
		if (OMX_ErrorNone != ret)
		{
			DEBUG_PRINT_ERROR("ERROR: OMX_EmptyThisBuffer failed\n");
			do_freeHandle_and_clean_up(true);
			return -1;
		}
		else
		{
			/*if (bufCnt == 0)
			{
				gettimeofday(&t_first, NULL);       //??
			}*/
			DEBUG_PRINT("OMX_EmptyThisBuffer success!\n");
			etb_count++;
		}
	}

	if(0 != pthread_create(&ebd_thread_id, NULL, ebd_thread, NULL))
	{
		DEBUG_PRINT_ERROR("Error in Creating ebd_thread\n");
		do_freeHandle_and_clean_up(true);
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

	DEBUG_PRINT("**cmd_str = %s**\n", curr_seq_command);

	return 0;
}
static int process_current_command(const char *seq_command)
{
	char *data_str = NULL;
	unsigned int data = 0, bufCnt = 0, i = 0;
	int frameSize;
	OMX_STATETYPE state = OMX_StateMax;
    OMX_VIDEO_CONFIG_AVCINTRAPERIOD omx_gop_config;
    OMX_VIDEO_CONFIG_BITRATETYPE omx_bitrate_config;
    OMX_CONFIG_FRAMERATETYPE     omx_framerate_config;
	if(strcmp(seq_command, "pause") == 0)
	{
		printf("$$$$$   PAUSE    $$$$$\n");
		printf("Sending PAUSE cmd to OMX compt\n");
		OMX_SendCommand(venc_handle, OMX_CommandStateSet, OMX_StatePause,0);
		wait_for_event(OMX_CommandStateSet);
		OMX_GetState(venc_handle, &state);
		if (OMX_StatePause == state)
		{
			printf("***************************\n");
			printf("EventHandler for PAUSE DONE\n");
			printf("***************************\n");
		}
		else
		{
			printf("*****************************\n");
			printf("EventHandler for PAUSE FAILED\n");
			printf("Curent State is %d\n",state);
			printf("*****************************\n");		
		}
		
	}
	else if(strcmp(seq_command, "resume") == 0)
	{
		printf("$$$$$   RESUME    $$$$$\n");
		printf("Sending RESUME cmd to OMX compt\n");
		OMX_SendCommand(venc_handle, OMX_CommandStateSet, OMX_StateExecuting,0);
		wait_for_event(OMX_CommandStateSet);
		OMX_GetState(venc_handle, &state);
		if (OMX_StateExecuting == state)
		{
			printf("***************************\n");
			printf("EventHandler for RESUME DONE\n");
			printf("***************************\n");
		}
		else
		{
			printf("*****************************\n");
			printf("EventHandler for RESUME FAILED\n");
			printf("Curent State is %d\n",state);
			printf("*****************************\n");		
		}		
	}
	else if(strcmp(seq_command, "flush_out") == 0)
	{
		printf("$$$$$   FLUSH    $$$$$\n");
		printf("Sending FLUSH cmd to OMX compt\n");

		flush_output_progress = 1;
		OMX_SendCommand(venc_handle, OMX_CommandFlush, OUTPUT_PORT_INDEX, 0);
		wait_for_event(OMX_CommandFlush);
		printf("Sending FLUSH OP cmd ok!\n");
	}
    else if(strcmp(seq_command, "flush_in") == 0)
	{
		printf("$$$$$   FLUSH    $$$$$\n");
		printf("Sending FLUSH cmd to OMX compt\n");

		flush_input_progress = 1;
		OMX_SendCommand(venc_handle, OMX_CommandFlush, INPUT_PORT_INDEX, 0);
		wait_for_event(OMX_CommandFlush);
		printf("Sending FLUSH IP cmd ok!\n");
	}
    else if(strcmp(seq_command, "flush_all") == 0)
	{
		printf("$$$$$   FLUSH    $$$$$\n");
		printf("Sending FLUSH cmd to OMX compt\n");

		flush_output_progress = 1;
        flush_input_progress  = 1;
		OMX_SendCommand(venc_handle, OMX_CommandFlush, 0xFFFFFFFF, 0);
		wait_for_event(OMX_CommandFlush);
		printf("Sending FLUSH ALL cmd ok!\n");
	}
	else if(strcmp(seq_command, "dis-op") == 0)
	{
		printf("$$$$$   DISABLE OP PORT   $$$$$\n");
		printf("Sending DISABLE OP cmd to OMX compt\n");

		if (disable_output_port() != 0)
		{
		    printf("ERROR: While DISABLE OP...\n");
		    do_freeHandle_and_clean_up(true);
		    return -1;
		}
		printf("***************************\n");
		printf("DISABLE OP PORT SUCESS!\n");
		printf("***************************\n");
	}
	else if(strstr(seq_command, "en-op") == seq_command)
	{
		printf("$$$$$   ENABLE OP PORT    $$$$$\n");
		printf("Sending ENABLE OP cmd to OMX compt\n");

		if (enable_output_port() != 0)
		{
		    printf("ERROR: While ENABLE OP...\n");
		    do_freeHandle_and_clean_up(true);
		    return -1;
		}
		printf("***************************\n");
		printf("ENABLE OP PORT SUCESS!\n");
		printf("***************************\n");
	}
    else if(strstr(seq_command, "Gop_to_50") == seq_command)
	{
		printf("$$$$$   CHANGE GOP      $$$$$\n");
		//printf("Sending ENABLE OP cmd to OMX compt\n");
		CONFIG_VERSION_SIZE(omx_gop_config);
		omx_gop_config.nPortIndex = OUTPUT_PORT_INDEX;
        OMX_GetConfig(venc_handle,OMX_IndexConfigVideoAVCIntraPeriod,&omx_gop_config);
        omx_gop_config.nIDRPeriod = 50;
		if (OMX_SetConfig(venc_handle,OMX_IndexConfigVideoAVCIntraPeriod,&omx_gop_config) != 0)
		{
		    printf("ERROR: OMX_SetConfig faild,%d...\n",__LINE__);
		    do_freeHandle_and_clean_up(true);
		    return -1;
		}
		printf("OMX_SetConfig:gop change SUCESS!\n");
	}
    else if(strstr(seq_command, "inFrmRate_to_30") == seq_command)
	{
		printf("$$$$$   CHANGE input_FrmRate      $$$$$\n");
		CONFIG_VERSION_SIZE(omx_framerate_config);
		omx_framerate_config.nPortIndex = INPUT_PORT_INDEX;
        OMX_GetConfig(venc_handle,OMX_IndexConfigVideoFramerate,&omx_framerate_config);
        omx_framerate_config.xEncodeFramerate = 30;
		if (OMX_SetConfig(venc_handle,OMX_IndexConfigVideoFramerate,&omx_framerate_config) != 0)
		{
		    printf("ERROR: OMX_SetConfig faild,%d...\n",__LINE__);
		    do_freeHandle_and_clean_up(true);
		    return -1;
		}
		printf("OMX_SetConfig:input FrmRate change SUCESS!\n");
	}
    else if(strstr(seq_command, "outFrmRate_to_30") == seq_command)
	{
		printf("$$$$$   CHANGE output_FrmRate      $$$$$\n");
		CONFIG_VERSION_SIZE(omx_framerate_config);
		omx_framerate_config.nPortIndex = OUTPUT_PORT_INDEX;
        OMX_GetConfig(venc_handle,OMX_IndexConfigVideoFramerate,&omx_framerate_config);
        omx_framerate_config.xEncodeFramerate = 30;
		if (OMX_SetConfig(venc_handle,OMX_IndexConfigVideoFramerate,&omx_framerate_config) != 0)
		{
		    printf("ERROR: OMX_SetConfig faild,%d...\n",__LINE__);
		    do_freeHandle_and_clean_up(true);
		    return -1;
		}
		printf("OMX_SetConfig:output FrmRate change SUCESS!\n");
	}
    else if(strstr(seq_command, "BitRate_to_2M") == seq_command)
	{
		printf("$$$$$   CHANGE BitRate      $$$$$\n");
		CONFIG_VERSION_SIZE(omx_bitrate_config);
		omx_bitrate_config.nPortIndex = OUTPUT_PORT_INDEX;
        OMX_GetConfig(venc_handle,OMX_IndexConfigVideoBitrate,&omx_bitrate_config);
        omx_bitrate_config.nEncodeBitrate = 2*1024*1024;
		if (OMX_SetConfig(venc_handle,OMX_IndexConfigVideoBitrate,&omx_bitrate_config) != 0)
		{
		    printf("ERROR: OMX_SetConfig faild,%d...\n",__LINE__);
		    do_freeHandle_and_clean_up(true);
		    return -1;
		}
		printf("OMX_SetConfig:BitRate change SUCESS!\n");
	}
	else
	{
		DEBUG_PRINT_ERROR(" $$$$$   INVALID CMD    $$$$$\n");
		DEBUG_PRINT_ERROR("seq_command[%s] is invalid\n", seq_command);
	}

	return 0;
}

static void* ebd_thread(void* pArg)
{
    int ret;
    OMX_STATETYPE current_state = OMX_StateInvalid;
	while(currentStatus != ERROR_STATE)
	{
		int readBytes =0;
		OMX_BUFFERHEADERTYPE* pBuffer = NULL;

		if(flush_input_progress)
		{
			DEBUG_PRINT("EBD_thread flush wait start\n");
			sem_wait(&in_flush_sem);
			DEBUG_PRINT("EBD_thread flush wait complete\n");
		}
		sem_wait(&etb_sem);
		if (ebd_thread_exit)  break;
        if (bInputEosReached )break;
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

			/*DEBUG_PRINT("%s: Timestamp sent(%lld)\n", __func__,
				pBuffer->nTimeStamp);*/

			ret = OMX_EmptyThisBuffer(venc_handle,pBuffer);
            if(OMX_ErrorInvalidState == ret)
            {
                do{
                    sleep(1);
                    OMX_GetState(venc_handle, &current_state);
                    DEBUG_PRINT("%d,current_state = %d\n",__LINE__,current_state);
                }while((current_state!= OMX_StateExecuting) && (currentStatus != ERROR_STATE));
                ret = OMX_EmptyThisBuffer(venc_handle,pBuffer);
            }
			etb_count++;
		}
		else
		{
		    if (test_option) /*recycle to read the YUV file*/
		    {
		        sem_post(&etb_sem);
		        continue;
		    }
			pBuffer->nFlags |= OMX_BUFFERFLAG_EOS;
			bInputEosReached = true;
			pBuffer->nFilledLen = readBytes;

			OMX_EmptyThisBuffer(venc_handle,pBuffer);
     
			printf/*DEBUG_PRINT*/("EBD::Either EOS or Some Error while reading file\n");
			etb_count++;
			break;
		}
	}

	return NULL;
}


static void* fbd_thread(void* pArg)                     /*fill_buffer_done Thread*/
{
	//struct timeval t_before = {0, 0};
	//struct timeval t_after  = {0, 0};
	
	OMX_BUFFERHEADERTYPE *pBuffer = NULL;
	int free_done = 0;
	int ret = 0;
	static int first = 1;

	DEBUG_PRINT("First Inside %s", __FUNCTION__);

	//pthread_mutex_lock(&eos_lock);

	while(currentStatus != ERROR_STATE)
	{
		//pthread_mutex_unlock(&eos_lock);
		if(flush_output_progress)
		{
			DEBUG_PRINT("FBD_thread flush wait start\n");
			sem_wait(&out_flush_sem);
			DEBUG_PRINT("FBD_thread flush wait complete\n");
		}
		sem_wait(&fbd_sem);
		if (fbd_thread_exit)
			break;
        if (bInputEosReached )break;
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
			if (take264Log)
			{
				size_t bytes_written;
				bytes_written = fwrite((const char *)pBuffer->pBuffer,1,pBuffer->nFilledLen, outputBufferFile);
                if(bytes_written != pBuffer->nFilledLen)
                {
				     DEBUG_PRINT_ERROR("\nfwrite err, write size=%d, slclen=%d\n",bytes_written, pBuffer->nFilledLen);   
                }
                else DEBUG_PRINT("\nfwrite success, write size=%d, slclen=%d\n",bytes_written, pBuffer->nFilledLen); 
			}
  
			++fbd_cnt;
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
				sem_post(&fbd_sem);

			pthread_mutex_unlock(&fbd_lock);
		}
		else
		{
			//pthread_mutex_lock(&fbd_lock);
			//pthread_mutex_lock(&eos_lock);

			if ( OMX_FillThisBuffer(venc_handle, pBuffer) == OMX_ErrorNone )    //KEYPOINT
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


int main(int argc, char **argv)
{
	int i = 0;
	int bufCnt = 0;
	int num = 0;
	unsigned int outputOption = 0;
	int pic_order = 0;
	OMX_ERRORTYPE result;

	sliceheight = height = DEFAULT_HEIGHT;
	stride      = width   = DEFAULT_WIDTH;
	waitForPortSettingsChanged = 1;

	if (argc != 2)
	{
		return -1;
	}

	strncpy(in_filename, argv[1], strlen(argv[1])+1);
	printf("Input values: inputfilename[%s]\n", in_filename);
    codec_format_option  = 0 ;
	
	printf("*********************************************\n");
	printf("please enter output take option:\n");
	printf("*********************************************\n");
	printf("0 --> Take h264 stream file\n");
	printf("1 --> NO h264 stream output\n");
	fflush(stdin);
	scanf("%d", &outputOption);
	fflush(stdin);

	printf("*********************************************\n");
	printf("please enter test option\n");
	printf("*********************************************\n");
	printf("0 --> Play the clip till the end\n");
	printf("1 --> Recycle play the clip.\n");
	fflush(stdin);
	scanf("%d", &test_option);
	fflush(stdin);

	if (outputOption == 0)
	{
		take264Log = 1;
	}
	else if (outputOption == 1)
	{
		take264Log = 0;
	}
	else
	{
		printf("Wrong option of output option. Assume you want to take the h264 stream file\n");
		take264Log = 1;
	}

	if (test_option > 1)
	{
		printf("Wrong option of test option. Assume you want to Play the clip till the end\n");
        test_option = 0;
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
		DEBUG_PRINT_ERROR("Error - sem_init failed %d\n", errno);
	}

	if (-1 == sem_init(&fbd_sem, 0, 0))
	{
		DEBUG_PRINT_ERROR("Error - sem_init failed %d\n", errno);
	}

	if (-1 == sem_init(&in_flush_sem, 0, 0))
	{
		DEBUG_PRINT_ERROR("Error - sem_init failed %d\n", errno);
	}

	if (-1 == sem_init(&out_flush_sem, 0, 0))
	{
		DEBUG_PRINT_ERROR("Error - sem_init failed %d\n", errno);
	}

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

	Read_Buffer = Read_Buffer_from_YUVFile;
	if(Init_Encoder() < 0)
	{
		DEBUG_PRINT_ERROR("Error - Encoder Init failed\n");
		return -1;
	}

	if(Play_Encoder() < 0)
	{
		DEBUG_PRINT_ERROR("Error - Encoder Play failed\n");
		return -1;
	}

	printf("*********prepare to run test *******\n");

/////////////////////////////////////////

	loop_function();

/////////////////////////////////////////  收尾工作
    ebd_thread_exit = 1;
	fbd_thread_exit = 1;
	pthread_join(ebd_thread_id, NULL);
	pthread_join(fbd_thread_id, NULL);


	do_freeHandle_and_clean_up(false);



	pthread_cond_destroy(&cond);
	pthread_cond_destroy(&eos_cond);

	pthread_mutex_destroy(&lock);
	pthread_mutex_destroy(&etb_lock);
	pthread_mutex_destroy(&fbd_lock);
	pthread_mutex_destroy(&enable_lock);

	pthread_mutex_destroy(&eos_lock);

	if (-1 == sem_destroy(&etb_sem))
	{
		DEBUG_PRINT_ERROR("Error - sem_destroy failed %d\n", errno);
	}
    
	if (-1 == sem_destroy(&fbd_sem))
	{
		DEBUG_PRINT_ERROR("Error - sem_destroy failed %d\n", errno);
	}

	if (-1 == sem_destroy(&in_flush_sem))
	{
		DEBUG_PRINT_ERROR("Error - sem_destroy failed %d\n", errno);
	}

	if (-1 == sem_destroy(&out_flush_sem))
	{
		DEBUG_PRINT_ERROR("Error - sem_destroy failed %d\n", errno);
	}

	return 0;
}


static void loop_function(void)
{
	int cmd_error = 0;

	printf("Cmd test for control, cmds as follows:        \n");
	printf("** pause, resume                              **\n");
	printf("** flush_output ,flush_input, flush_all       **\n");
	printf("** dis-op, en-op                              **\n");
    printf("** Gop_to_50,inFrmRate_to_30,outFrmRate_to_30 **\n");
	printf("** BitRate_to_2M                              **\n");
	printf("Note: use \"exit\"to esc**\n\n\n");

	while (bOutputEosReached == false && (cmd_error == 0))
	{
		fflush(stdin);
		scanf("%s", curr_seq_command);

		if (!strcmp(curr_seq_command, "exit")) 
        {
			printf("test-case exit!!\n");
			break;
		}

		cmd_error = process_current_command(curr_seq_command);

	}
}


static OMX_ERRORTYPE Allocate_Buffers ( OMX_COMPONENTTYPE *venc_handle,
                                       OMX_BUFFERHEADERTYPE  ***pBufHdrs,
                                       OMX_U32 nPortIndex,
                                       long bufCntMin, long bufSize)
{
	DEBUG_PRINT("Inside %s \n", __FUNCTION__);
	OMX_ERRORTYPE error = OMX_ErrorNone;
	long bufCnt=0;

	DEBUG_PRINT("pBufHdrs = %x,bufCntMin = %d\n", pBufHdrs, bufCntMin);
	*pBufHdrs= (OMX_BUFFERHEADERTYPE **) malloc(sizeof(OMX_BUFFERHEADERTYPE)*bufCntMin);

	for(bufCnt=0; bufCnt < bufCntMin; ++bufCnt) 
    {
		DEBUG_PRINT("\nOMX_AllocateBuffer No %d\n", bufCnt);
		error = OMX_AllocateBuffer(venc_handle, &((*pBufHdrs)[bufCnt]),
	                           nPortIndex, NULL, bufSize);
	}

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
			OMX_FreeBuffer(venc_handle, 1, pBuffer);
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

	OMX_GetState(venc_handle, &state);

	if (state == OMX_StateExecuting || state == OMX_StatePause)
	{
		DEBUG_PRINT("Requesting transition to Idle\n");
		OMX_SendCommand(venc_handle, OMX_CommandStateSet, OMX_StateIdle, 0);   
        
		wait_for_event(OMX_CommandStateSet);
		if (currentStatus == ERROR_STATE)
		{
			DEBUG_PRINT_ERROR("executing -> idle state trans error\n");
			return;
		}

		OMX_GetState(venc_handle, &state);
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
		OMX_SendCommand(venc_handle, OMX_CommandStateSet, OMX_StateLoaded, 0);

		for(bufCnt = 0; bufCnt < used_ip_buf_cnt; ++bufCnt)
		{
			OMX_FreeBuffer(venc_handle, 0, pInputYUVBufHdrs[bufCnt]);
		}

		if (pInputYUVBufHdrs)
		{
			free(pInputYUVBufHdrs);
			pInputYUVBufHdrs = NULL;
		}

		DEBUG_PRINT("free ip buffer ok!\n");

		for(bufCnt = 0; bufCnt < used_op_buf_cnt; ++bufCnt)
		{
			OMX_FreeBuffer(venc_handle, 1, pOutputBufHdrs[bufCnt]);
		}

		if (pOutputBufHdrs)
		{
			free(pOutputBufHdrs);
			pOutputBufHdrs = NULL;
		}

		free_op_buf_cnt = 0;

		DEBUG_PRINT("free op buffer ok!\n");

		wait_for_event(OMX_CommandStateSet);
		if (currentStatus == ERROR_STATE)
		{
			DEBUG_PRINT_ERROR("idle -> loaded state trans error\n");
			return;
		}

		OMX_GetState(venc_handle, &state);
		if (state != OMX_StateLoaded)
		{
			DEBUG_PRINT_ERROR("current component state :%d error!\n", state);
			return;
		}

		DEBUG_PRINT("current component state :%d\n", state);
	}

	DEBUG_PRINT("[OMX VENC Test] - Free omx handle\n");

	result = OMX_FreeHandle(venc_handle);
	if (result != OMX_ErrorNone)
	{
		DEBUG_PRINT_ERROR("OMX_FreeHandle error. Error code: %d\n", result);
		return;
	}

	DEBUG_PRINT("[OMX VENC Test] - Free omx handle ok!!\n");

	venc_handle = NULL;

	/* Deinit OpenMAX */
	DEBUG_PRINT("De-initializing OMX \n");
	OMX_Deinit();

	//printf(" De-intailizing v4l2 \n");
	//v4l2_deinit();

	DEBUG_PRINT("closing all files \n");
	if(inputBufferFileFd > 0)
	{
		close(inputBufferFileFd);
		inputBufferFileFd = -1;
	}
	/*if(inputBufferFile != NULL)
    {
		fclose(inputBufferFile);
		inputBufferFile = -1;        
    }*/   
	printf("after free inputfile \n");

	if (take264Log && outputBufferFile)
	{
		fclose(outputBufferFile);
		outputBufferFile = NULL;
	}
	DEBUG_PRINT("after free outputfile \n");/**/

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

	printf("*****************************************\n");
}



static int disable_output_port(void)
{
	DEBUG_PRINT("prepre to disable output port\n");

	// Send DISABLE command.
	pthread_mutex_lock(&enable_lock);
	sent_disabled = 1;
	pthread_mutex_unlock(&enable_lock);

    printf("%s %d\n", __func__, __LINE__);
	DEBUG_PRINT("%s %d\n", __func__, __LINE__);

	OMX_SendCommand(venc_handle, OMX_CommandPortDisable, OUTPUT_PORT_INDEX, 0);
	wait_for_event(OMX_CommandPortDisable);

	if (currentStatus == ERROR_STATE)
	{
		do_freeHandle_and_clean_up(true);
		return -1;
	}

	printf("%s %d\n", __func__, __LINE__);
	DEBUG_PRINT("%s %d\n", __func__, __LINE__);

	return 0;
}


static int enable_output_port(void)
{
	int bufCnt = 0;
	OMX_ERRORTYPE ret = OMX_ErrorNone;

	DEBUG_PRINT("prepare to enable output port\n");

	// Send Enable command
	OMX_SendCommand(venc_handle, OMX_CommandPortEnable, OUTPUT_PORT_INDEX, 0);

	/* Allocate buffer on decoder's o/p port */
	portFmt.nPortIndex = 1;
	error = Allocate_Buffers(venc_handle, &pOutputBufHdrs, portFmt.nPortIndex,
	portFmt.nBufferCountActual, portFmt.nBufferSize);

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

		pOutputBufHdrs[bufCnt]->nOutputPortIndex = 1;
		pOutputBufHdrs[bufCnt]->nFlags &= ~OMX_BUFFERFLAG_EOS;

		ret = OMX_FillThisBuffer(venc_handle, pOutputBufHdrs[bufCnt]);
		if (OMX_ErrorNone != ret) {
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

	OMX_GetParameter(venc_handle,OMX_IndexParamPortDefinition,&portFmt);

	DEBUG_PRINT("Min Buffer Count=%d\n", portFmt.nBufferCountMin);
	DEBUG_PRINT("Buffer Size=%d\n", portFmt.nBufferSize);

	if(OMX_DirOutput != portFmt.eDir)
	{
		DEBUG_PRINT_ERROR("Error - Expect Output Port\n");
		return -1;
	}

	height = portFmt.format.video.nFrameHeight;
	width = portFmt.format.video.nFrameWidth;
	stride = portFmt.format.video.nStride;
	sliceheight = portFmt.format.video.nSliceHeight;

	/*fix me : reinit v4l2 devices !!! -- liucan*/

	if (enable_output_port() != 0)
	{
		DEBUG_PRINT_ERROR("enable output port failed\n");
		return -1;
	}

	DEBUG_PRINT("PORT_SETTING_CHANGE DONE!\n");
	return 0;
}
