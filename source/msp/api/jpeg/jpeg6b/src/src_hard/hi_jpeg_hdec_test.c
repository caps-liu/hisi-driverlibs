/******************************************************************************

  Copyright (C), 2013-2020, Hisilicon. Co., Ltd.

******************************************************************************
File Name	    : hi_jpeg_hdec_test.c
Version		    : Initial Draft
Author		    : y00181162
Created		    : 2013/06/20
Description	    : the test need some function
                  CNcomment: 测试用例需要的一些对外函数 CNend\n
Function List 	:

			  		  
History       	:
Date				Author        		Modification
2013/06/20		    y00181162		    Created file      	
******************************************************************************/

/*********************************add include here******************************/
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/ioctl.h>
#include <fcntl.h>
#include <unistd.h>

#include "jpeglib.h"

#include "jpeg_hdec_rwreg.h"
#include "jpeg_hdec_api.h"
#include "hi_jpeg_hdec_test.h"

#ifdef CONFIG_JPEG_TEST_CHIP_RANDOM_RESET
#include "hi_drv_jpeg_reg.h"
#endif

#if defined(CONFIG_JPEG_TEST_SAVE_BMP_PIC) || defined(CONFIG_JPEG_TEST_SAVE_YUVSP_DATA)
#include <sys/types.h>
#include <sys/stat.h>
#include <sys/unistd.h>
#endif


/***************************** Macro Definition ******************************/

#ifdef CONFIG_JPEG_FPGA_TEST_SUSPEND_ENABLE
static HI_S32 gs_s32SuspendDev = -1;
#endif


#ifdef CONFIG_JPEG_TEST_CHIP_RANDOM_RESET
static volatile HI_CHAR *g_pJpegRegVirAddr  = NULL; /** 寄存器基地址 **/
static HI_BOOL sg_bDecFinish       = HI_FALSE;
static HI_S32  sg_s32JpegDev       = -1;
#endif

/******************** to see which include file we want to use***************/



/*************************** Structure Definition ****************************/



/********************** Global Variable declaration **************************/




/******************************* API forward declarations *******************/
#ifdef CONFIG_JPEG_FPGA_TEST_SAVE_SCEN_ENABLE

/*****************************************************************************
* func			: HI_JPEG_OpenScenFile
* description	: open the scen file
				  CNcomment: 打开导现场的文件 CNend\n
* param[in]	    : cinfo.       CNcomment:解码对象     CNend\n
* retval		: NA
* others:		: NA
*****************************************************************************/
HI_S32 HI_JPEG_OpenScenFile(const struct jpeg_decompress_struct *cinfo)
{
	 JPEG_HDEC_HANDLE_S_PTR	pJpegHandle = (JPEG_HDEC_HANDLE_S_PTR)(cinfo->client_data);

	 char pFileName[256];
	 char pNum[20];
     static HI_S32 s32Cnt = 0;
	 
	 snprintf(pNum,sizeof(pNum), "%d", s32Cnt);
	 strncpy(pFileName, SCEN_FILE_NAME,strlen(SCEN_FILE_NAME));
	 pFileName[strlen(SCEN_FILE_NAME)] = '\0';
	 strncat(pFileName,pNum,strlen(pNum));
	 
	 pJpegHandle->pScenFile = fopen(pFileName,"wb");
	 if(NULL == pJpegHandle->pScenFile)
	 {
	 	JPEG_TRACE("open scen file failure\n");
		return HI_FAILURE;
	 }
	 s32Cnt++;

	 SCEN_PRINT(pJpegHandle->pScenFile,"=====================================================\n");
	 SCEN_PRINT(pJpegHandle->pScenFile,"the dec file name is %s\n",pJpegHandle->pScenFileName);
	 SCEN_PRINT(pJpegHandle->pScenFile,"=====================================================\n");

	 return HI_SUCCESS;
	 
}

/*****************************************************************************
* func			: HI_JPEG_CloseScenFile
* description	: close the scen file
				  CNcomment: 关闭导现场的文件 CNend\n
* param[in]	    : cinfo.       CNcomment:解码对象     CNend\n
* retval		: NA
* others:		: NA
*****************************************************************************/
HI_VOID HI_JPEG_CloseScenFile(const struct jpeg_decompress_struct *cinfo)
{
	 JPEG_HDEC_HANDLE_S_PTR	pJpegHandle = (JPEG_HDEC_HANDLE_S_PTR)(cinfo->client_data);
	 
	 if(NULL != pJpegHandle->pScenFile)
	 {
	 	fclose(pJpegHandle->pScenFile);
	 }
	 pJpegHandle->pScenFile = NULL;
}


/*****************************************************************************
* func			: HI_JPEG_GetScenData
* description	: get scen data.
				  CNcomment: 获取现场数据 CNend\n
* param[in]	    : cinfo.       CNcomment:解码对象     CNend\n
* retval		: NA
* others:		: NA
*****************************************************************************/
static HI_VOID HI_JPEG_GetScenData(const struct jpeg_decompress_struct *cinfo)
{

		HI_S32 offset      = 0;
		HI_S32 cnt         = 0;

	    JPEG_HDEC_HANDLE_S_PTR	pJpegHandle = (JPEG_HDEC_HANDLE_S_PTR)(cinfo->client_data);
	
		/* 寄存器(含表)，从VAHB_STRIDE开始 */
		for (offset = 0xc; offset <= 0x6bc; offset+=4)
		{

			if(JPGD_REG_STADD == offset)
			{
				cnt++;
			}
			else if(JPGD_REG_ENDADD == offset)
			{
				cnt++;
			}
			else
			{   
				pJpegHandle->s32RegData[cnt] = JPEG_HDEC_ReadReg(pJpegHandle->pJpegRegVirAddr,offset);
				cnt++;
			}
		}

}

/*****************************************************************************
* func			: HI_JPEG_PrintScenData
* description	: export the scen data.
				  CNcomment: 导出现场数据 CNend\n
* param[in]	    : cinfo.                 CNcomment:解码对象         CNend\n
* param[in]	    : pStreamStartBuf.       CNcomment:码流起始地址     CNend\n
* param[in]	    : pStreamEndBuf.         CNcomment:码流结束地址     CNend\n
* retval		: NA
* others:		: NA
*****************************************************************************/
static HI_VOID HI_JPEG_PrintScenData(const struct jpeg_decompress_struct *cinfo,HI_CHAR* pStreamStartBuf,HI_CHAR* pStreamEndBuf)
{

		HI_S32 offset      = 0;
		HI_S32 cnt        = 0;

		JPEG_HDEC_HANDLE_S_PTR	pJpegHandle = (JPEG_HDEC_HANDLE_S_PTR)(cinfo->client_data);

		if(NULL != pJpegHandle->pScenFile)
		{

			SCEN_PRINT(pJpegHandle->pScenFile,"=====================================================\n");
			SCEN_PRINT(pJpegHandle->pScenFile,"   the register data \n");
			SCEN_PRINT(pJpegHandle->pScenFile,"=====================================================\n");
			/* 寄存器(含表)，从VAHB_STRIDE开始 */
			for (offset = 0xc; offset <= 0x6bc; offset+=4)
			{

				if(JPGD_REG_STADD == offset)
				{
					PRN_SCENE(pJpegHandle->pScenFile,CV200_JPEG_BASE + offset, (HI_U32)pStreamStartBuf);
					cnt++;
				}
				else if(JPGD_REG_ENDADD == offset)
				{/**
				  **这个是码流buffer,一直在发生改变，所以这个数据不准确
				  **/
					PRN_SCENE(pJpegHandle->pScenFile,CV200_JPEG_BASE + offset, (HI_U32)pStreamEndBuf);
					cnt++;
				}
				else
				{
					PRN_SCENE(pJpegHandle->pScenFile,CV200_JPEG_BASE + offset, pJpegHandle->s32RegData[cnt]);
					cnt++;
				}
			}
		}


}

/*****************************************************************************
* func			: HI_JPEG_OutScenData
* description	: get the scen data
				  CNcomment: 获取现场数据 CNend\n
* param[in]	    : cinfo.                 CNcomment:解码对象         CNend\n
* param[in]	    : pStreamStartBuf.       CNcomment:码流起始地址     CNend\n
* param[in]	    : pStreamEndBuf.         CNcomment:码流结束地址     CNend\n
* param[in]	    : pData.                 CNcomment:数据地址         CNend\n
* param[in]	    : s32DataSize.           CNcomment:数据大小         CNend\n
* param[in]     : bStartFirst            CNcomment:第一次启动解码   CNend\n
* retval		: NA
* others:		: NA
*****************************************************************************/
HI_VOID HI_JPEG_OutScenData(const struct jpeg_decompress_struct *cinfo, \
                                         HI_CHAR* pStreamStartBuf,                    \
                                         HI_CHAR* pStreamEndBuf,                      \
                                         HI_CHAR* pData,                              \
                                         HI_U64  u64DataSize,                         \
                                         HI_BOOL bStartFirst)
{

		 HI_U32 data 	   = 0;
		 HI_S32 offset	   = 0;
		
		 JPEG_HDEC_HANDLE_S_PTR	pJpegHandle = (JPEG_HDEC_HANDLE_S_PTR)(cinfo->client_data);

		 /**
		  ** output the scen message to file
		  ** CNcomment:导解码现场 CNend\n
		  **/
		  HI_JPEG_GetScenData(cinfo);
		  HI_JPEG_PrintScenData(cinfo,pStreamStartBuf,pStreamEndBuf);
		  SCEN_PRINT(pJpegHandle->pScenFile,"=====================================================\n");
		  SCEN_PRINT(pJpegHandle->pScenFile,"	the dec data \n");
		  SCEN_PRINT(pJpegHandle->pScenFile,"=====================================================\n");
		  SCEN_PRINT(pJpegHandle->pScenFile,"======================= data begin ==================\n\n");
		  for(offset = 0; offset < u64DataSize; offset+=4)
		  {
		  
			   data =	(pData[offset+3] << 24)
					  | (pData[offset+2] << 16)
					  | (pData[offset+1] << 8)
					  | (pData[offset]);
			   
			   PRN_SCENE(pJpegHandle->pScenFile,(HI_U32)(pStreamStartBuf+offset),data);
			   /**
				**现场从左往右读，这里可能比实际多1或2或3个字节
				**/
		  
		  }
		  if(HI_TRUE == bStartFirst)
		  {
			  PRN_SCENE(pJpegHandle->pScenFile,CV200_JPEG_BASE,0x00000001);
		  }
		  else
		  {
			  PRN_SCENE(pJpegHandle->pScenFile,CV200_JPEG_BASE+4,0x00000001);
		  }
		  SCEN_PRINT(pJpegHandle->pScenFile,"\n======================= data end ==================\n");


}

/*****************************************************************************
* func			: HI_JPEG_SetSaveScen
* description	: if the decode failure, we want to debug should need the decode\n
                  scen,and use eda simulation.
				  CNcomment: 如果解码失败我们希望用EDA仿真进行定位，需要保存解码现\n
				             场用来调试使用 CNend\n
* param[in]	    :cinfo.       CNcomment:解码对象     CNend\n
* param[in]	    :bSaveScen.   CNcomment:是否保存现场 CNend\n
* param[in]     :pFileName    CNcomment:解码文件     CNend\n
* retval		: HI_SUCCESS  CNcomment: 成功	     CNend\n
* retval		: HI_FAILURE  CNcomment: 失败	     CNend\n
* others:		: NA
*****************************************************************************/
HI_S32 HI_JPEG_SetSaveScen(const struct jpeg_decompress_struct *cinfo,HI_BOOL bSaveScen,HI_CHAR* pFileName)
{

	JPEG_HDEC_HANDLE_S_PTR	pJpegHandle = (JPEG_HDEC_HANDLE_S_PTR)(cinfo->client_data);

	pJpegHandle->bSaveScen = bSaveScen;
	pJpegHandle->pScenFileName = pFileName;

	return HI_SUCCESS;
	
}
#endif


#ifdef CONFIG_JPEG_FPGA_TEST_SUSPEND_ENABLE
/*****************************************************************************
* func			: HI_JPEG_OpenDev
* description	: open the jpeg device.
				  CNcomment: 打开jpeg设备，待机使用的 CNend\n
* param[in]	    : NA
* retval		: NA
* others:		: NA
*****************************************************************************/
HI_VOID HI_JPEG_OpenDev()
{

	if(gs_s32SuspendDev < 0)
	{
		gs_s32SuspendDev = open(JPG_DEV, O_RDWR | O_SYNC);
		if(gs_s32SuspendDev < 0)
		{
		   JPEG_TRACE("==== open jpeg device failure\n");
		}
	}
}

/*****************************************************************************
* func			: HI_JPEG_CloseDev
* description	: close the jpeg device.
				  CNcomment: 关闭jpeg设备 CNend\n
* param[in]	    : NA
* retval		: NA
* others:		: NA
*****************************************************************************/
HI_VOID HI_JPEG_CloseDev()
{
	if(gs_s32SuspendDev >= 0)
	{
	   close(gs_s32SuspendDev);
	}
}

/*****************************************************************************
* func			: HI_JPEG_Suspend
* description	: test suspend.
				  CNcomment: 待机处理 CNend\n
* param[in]	    : NA
* retval		: HI_SUCCESS
* retval		: HI_FAILURE
* others:		: NA
*****************************************************************************/
HI_S32 HI_JPEG_Suspend()
{
	return ioctl(gs_s32SuspendDev, CMD_JPG_SUSPEND);
}

/*****************************************************************************
* func			: HI_JPEG_Resume
* description	: test resume.
				  CNcomment: 待机唤醒处理 CNend\n
* param[in]	    : NA
* retval		: HI_SUCCESS
* retval		: HI_FAILURE
* others:		: NA
*****************************************************************************/
HI_S32 HI_JPEG_Resume()
{
	return ioctl(gs_s32SuspendDev, CMD_JPG_RESUME);
}
#endif


/*****************************************************************************
* func			: HI_JPEG_GetDev
* description	: get the jpeg device.
			      CNcomment: 获取jpeg设备 CNend\n
* param[in] 	: s32JpegDev CNcomment: 打开的jpeg节点 CNend\n
* retval		: HI_SUCCESS
* retval		: HI_FAILURE
* others:		: NA
*****************************************************************************/
HI_S32 HI_JPEG_GetDev(HI_S32 s32JpegDev)
{
    return ioctl(s32JpegDev, CMD_JPG_GETDEVICE);
}


/*****************************************************************************
* func			: HI_JPEG_SaveBmp
* description	: save the phy data to bmp picture.
				  CNcomment: 保存解码后的数据到bmp图片
				             RGB565,ARGB4444,ARGB1555,RGB888 and ARGB8888 CNend\n
* param[in]	    : u32DataPhy
* param[in]	    : u32Width
* param[in]	    : u32Height
* param[in]	    : u32Stride
* param[in]	    : cinfo
* retval		: NA
* others:		: NA
*****************************************************************************/
HI_VOID HI_JPEG_SaveBmp(HI_U32 u32DataPhy,HI_U32 u32Width,HI_U32 u32Height,HI_U32 u32Stride,const struct jpeg_decompress_struct *cinfo)
{
#ifdef CONFIG_JPEG_TEST_SAVE_BMP_PIC
     HI_CHAR exec[256];
	 HI_CHAR pColorSpace[256];
	 HI_CHAR *pFile = "data";
	 HI_CHAR pFileName[256];
	 static HI_U32 u32Cnt = 0;

	 switch(cinfo->out_color_space)
	 {
         case JCS_ARGB_8888:
         	strncpy(pColorSpace,"ABGR8888",strlen("ABGR8888"));
			pColorSpace[strlen("ABGR8888")] = '\0';
			break;
		 case JCS_ABGR_8888:
		 	strncpy(pColorSpace,"ARGB8888",strlen("ARGB8888"));
			pColorSpace[strlen("ARGB8888")] = '\0';
			break;
		 case JCS_ARGB_1555:
		 	strncpy(pColorSpace,"ABGR1555",strlen("ABGR1555"));
			pColorSpace[strlen("ABGR1555")] = '\0';
			break;
		 case JCS_ABGR_1555:
		 	strncpy(pColorSpace,"ARGB1555",strlen("ARGB1555"));
			pColorSpace[strlen("ARGB1555")] = '\0';
			break;
		  case JCS_RGB:
		  case JCS_YCbCr:
		  	strncpy(pColorSpace,"BGR888",strlen("BGR888"));
			pColorSpace[strlen("BGR888")] = '\0';
		  	break;
		  case JCS_BGR:
		  case JCS_CrCbY:
		  	strncpy(pColorSpace,"RGB888",strlen("RGB888"));
			pColorSpace[strlen("RGB888")] = '\0';
		  	break;
		  case JCS_RGB_565:
		  	strncpy(pColorSpace,"BGR565",strlen("BGR565"));
			pColorSpace[strlen("BGR565")] = '\0';
		  	break;
		  case JCS_BGR_565:
		  	strncpy(pColorSpace,"RGB565",strlen("RGB565"));
			pColorSpace[strlen("RGB565")] = '\0';
		  	break;
		  default:
		  	break;
	 }
	 /**
	  **android可以放置的路径为 cd /data/ mkdir bmp
	  **则 /data/bmp/bmpGen, /data/bmp/.bmp
	  **/
	 snprintf(exec, 256, "./bmpGen 0x%x %d %d %d %s  %s/%s%d.bmp", 
              u32DataPhy,u32Width,u32Height,u32Stride,pColorSpace,BMP_DATA_FILE_DIR,pFile,u32Cnt);
	 
	 snprintf(pFileName,256,"%s/%s%d.bmp",BMP_DATA_FILE_DIR,pFile,u32Cnt);
	 	
     system(exec);
	 
	 u32Cnt++;

     #if 0
	 JPEG_TRACE("\n==================================================================================================\n");
	 JPEG_TRACE("has save the data to bmp picture,please press enter to save next picture!\n");
	 JPEG_TRACE("==================================================================================================\n");
	 getchar();
     #endif

	 //mkdir("./../res/test_save_data_bmp/", 0775 )
	 chmod(pFileName, S_IRUSR|S_IWUSR|S_IRGRP|S_IROTH);
     //chown("./../res/test_save_data_bmp/", 0, 0);

#endif
}

/*****************************************************************************
* func			: HI_JPEG_SaveYUVSP
* description	: save the yuv semi-planer data
		  		  CNcomment: 保存解码后的yuvsp数据 CNend\n
* param[in] 	: cinfo
* retval		: NA
* others:		: NA
*****************************************************************************/
HI_VOID HI_JPEG_SaveYUVSP(const struct jpeg_decompress_struct *cinfo)
{
#ifdef CONFIG_JPEG_TEST_SAVE_YUVSP_DATA
		HI_CHAR pFileName[256];
		HI_CHAR pHdrName[256];
		HI_CHAR *pFile = "yuvsp";
		static HI_U32 u32Count = 0;

		FILE* pOutFile = NULL;
		FILE* pHdrFile = NULL;
		HI_S32 s32Cnt     = 0;
		HI_S32 s32Cnt1    = 0;
		HI_CHAR *pTmp     = NULL;

		HI_CHAR pTmpCbCr[10000];   /** > 8192 **/

		HI_U32 u32YWidth  = 0;
		HI_U32 u32YHeight = 0;
		HI_U32 u32YStride = 0;
		HI_U32 u32CWidth  = 0;
		HI_U32 u32CHeight = 0;
		HI_U32 u32CStride = 0;
		HI_CHAR* pYAddr    = NULL;
		HI_CHAR* pUVAddr   = NULL;
		HI_JPEG_FMT_E eFmt = JPEG_FMT_BUTT;

		JPEG_HDEC_HANDLE_S_PTR	pJpegHandle = (JPEG_HDEC_HANDLE_S_PTR)(cinfo->client_data);

		snprintf(pFileName,256,"%s/%s%d.yuv",YUVSP_DATA_FILE_DIR,pFile,u32Count);
		snprintf(pHdrName,256,"%s/%s%d.hdr",YUVSP_DATA_FILE_DIR,pFile,u32Count);
		JPEG_TRACE("\n===============================================================================\n");
		JPEG_TRACE("the yuvsp file name is %s\n",pFileName);
		JPEG_TRACE("the hdr file name is %s\n",pHdrName);
		JPEG_TRACE("===============================================================================\n");

		pOutFile = fopen(pFileName,"wb");
		if(NULL == pOutFile)
		{
			JPEG_TRACE("open %s failure\n",pFileName);
		}
		u32YWidth  = pJpegHandle->stJpegSofInfo.u32YWidth;
		u32YHeight = pJpegHandle->stJpegSofInfo.u32YHeight;
		u32YStride = pJpegHandle->stJpegSofInfo.u32YStride;
		u32CWidth  = pJpegHandle->stJpegSofInfo.u32CWidth;
		u32CHeight = pJpegHandle->stJpegSofInfo.u32CHeight;
		u32CStride = pJpegHandle->stJpegSofInfo.u32CbCrStride;
		pYAddr     = pJpegHandle->stMiddleSurface.pMiddleVir[0];
		pUVAddr    = pJpegHandle->stMiddleSurface.pMiddleVir[1];
		eFmt       = pJpegHandle->enImageFmt;

		/**===============================================================
		保存Y亮度数据
		===============================================================**/
		if(0 != u32YWidth)
		{
			pTmp = pYAddr;
			for(s32Cnt = 0; s32Cnt < u32YHeight; s32Cnt++)
			{
				fwrite(pTmp, u32YWidth, 1, pOutFile);
				pTmp += u32YStride;
			}
		}
		if(0 != u32CWidth)
		{
			pTmp = pUVAddr;
			for( s32Cnt = 0; s32Cnt < u32CHeight; s32Cnt ++ )
			{

				for(s32Cnt1=0; s32Cnt1 < u32CWidth; s32Cnt1++ )
				{
					pTmpCbCr[s32Cnt1] = pTmp[2*s32Cnt1 + 1];
				}

				fwrite(pTmpCbCr, u32CWidth, 1, pOutFile );

				pTmp += u32CStride;
			}
			pTmp = pUVAddr;
			for( s32Cnt = 0; s32Cnt < u32CHeight; s32Cnt ++ )
			{

				for(s32Cnt1=0; s32Cnt1 < u32CWidth; s32Cnt1++ )
				{
					pTmpCbCr[s32Cnt1] = pTmp[2*s32Cnt1 + 0];
				}

				fwrite(pTmpCbCr, u32CWidth, 1, pOutFile);

				pTmp += u32CStride;
			}


		}

		fclose(pOutFile);


		pHdrFile = fopen(pHdrName,"wb");
		if(NULL == pHdrFile)
		{
			JPEG_TRACE("open %s failure\n",pHdrName);
		}
		switch(eFmt)
		{
			case JPEG_FMT_YUV400:
				DADA_WRITE(pHdrFile, "format = \"Y\" ;\n");
				break;
			case JPEG_FMT_YUV420:
				DADA_WRITE(pHdrFile, "format = \"YUV420\" ;\n");
				break;
			case JPEG_FMT_YUV422_12:
				DADA_WRITE(pHdrFile, "format = \"YUV422\" ;\n");
				break;
			case JPEG_FMT_YUV422_21:
				DADA_WRITE(pHdrFile, "format = \"YUV422\" ;\n");
				break;
			case JPEG_FMT_YUV444:
				DADA_WRITE(pHdrFile, "format = \"YUV444\" ;\n");
				break;
			default:
				JPEG_TRACE("format is unknow ;\n");
				break;
		}

		DADA_WRITE(pHdrFile, "offset = 0 ;\n");
		DADA_WRITE(pHdrFile, "width = %d ;\n", u32YWidth);
		DADA_WRITE(pHdrFile, "height = %d ;\n", u32YHeight);
		DADA_WRITE(pHdrFile, "framerate = 50 ;\n");
		DADA_WRITE(pHdrFile, "loop = 1 ;\n");

		fclose(pHdrFile);

		u32Count++;
		chmod(pFileName, S_IRUSR|S_IWUSR|S_IRGRP|S_IROTH);
		chmod(pHdrName, S_IRUSR|S_IWUSR|S_IRGRP|S_IROTH);
	
#endif
}


/*****************************************************************************
* func			: HI_JPEG_GetIfHardDec2ARGB8888
* description	: get if use jpeg hard decode to ARGB888,is not tde csc to ARGB8888
				  CNcomment: 获取是否使用JPEG硬件解码解成ARGB8888，这个时候是用解码分辨率的
							 真正的数据是显示分辨率，所以JPEG解码要裁剪成显示分辨率大小的，
							 这样输出数据就正确了。否则不设置裁剪会有多余数据的 CNend\n
* param[in] 	: cinfo 				   解码对象
* param[in] 	: pbJpegHardDecARGB8888    是否为JPEG硬件解码输出ARGB8888
* retval		: NA
* others:		: NA
*****************************************************************************/
HI_VOID HI_JPEG_GetIfHardDec2ARGB8888(const struct jpeg_decompress_struct *cinfo,HI_BOOL *pbJpegHardDecARGB8888)
{
	/** 是否使用JPEG硬件解码 **/
	#ifdef CONFIG_JPEG_HARDDEC2ARGB
	JPEG_HDEC_HANDLE_S_PTR	pJpegHandle = (JPEG_HDEC_HANDLE_S_PTR)(cinfo->client_data);
	*pbJpegHardDecARGB8888 = pJpegHandle->bDecARGB;
	#else
    *pbJpegHardDecARGB8888 = HI_FALSE;
	#endif
}


/*****************************************************************************
* func			: HI_JPEG_IfHardDec
* description	: whether is hard decode or soft decode
				  CNcomment: 是硬件解码还是软件解码 CNend\n
* param[in]	    : cinfo       解码对象
* param[in]	    : pHardDec    是否为硬件解码
* retval		: NA
* others:		: NA
*****************************************************************************/
HI_VOID HI_JPEG_IfHardDec(const struct jpeg_decompress_struct *cinfo,HI_BOOL *pHardDec)
{

    JPEG_HDEC_HANDLE_S_PTR	pJpegHandle = (JPEG_HDEC_HANDLE_S_PTR)(cinfo->client_data);
    if(HI_TRUE == pJpegHandle->bHdecEnd)
    {
       *pHardDec  = HI_TRUE;
    }
	else
	{
	   *pHardDec  = HI_FALSE;
	}

}


#ifdef CONFIG_JPEG_TEST_CHIP_RANDOM_RESET
/** 随机软复位测试 **/
/*****************************************************************************
* func			: HI_JPEG_HardDecNow
* description	: whether has hard decode now
		  CNcomment: 此刻是否启动了硬件解码 CNend\n
* retval		: HI_SUCCESS;
* retval		: HI_FAILURE;
* others:		: NA
*****************************************************************************/
HI_S32 HI_JPEG_HardDecNow()
{


		HI_S32 s32CapabilityReg = 0;

		if( (NULL != g_pJpegRegVirAddr) && (FALSE == sg_bDecFinish) && (sg_s32JpegDev >= 0))
		{
			s32CapabilityReg  = JPEG_HDEC_ReadReg(g_pJpegRegVirAddr, JPGD_REG_TIME);
		}
		if(0 == s32CapabilityReg)
		{
			return HI_FAILURE;
		}
		else
		{
			JPEG_TRACE("==========================================================\n");
			JPEG_TRACE("s32CapabilityReg = %d\n",s32CapabilityReg);
			JPEG_TRACE("==========================================================\n");
		}

		return HI_SUCCESS;
		
}

/*****************************************************************************
* func			: HI_JPEG_RandomReset
* description	: reset the hard decode register
		  CNcomment: 复位硬件解码寄存器 CNend\n
* retval		: NA
* others:		: NA
*****************************************************************************/
HI_VOID HI_JPEG_RandomReset()
{
	 if(sg_s32JpegDev >= 0)
	 {
	 	 JPEG_TRACE("================================================================\n");
		 JPEG_TRACE("开始复位\n");
		 JPEG_TRACE("================================================================\n");
         ioctl(sg_s32JpegDev, CMD_JPG_RESET);
		 sleep(5);
	 }
}
/*****************************************************************************
* func			: HI_JPEG_SetDecState
* description	: set hard decode state
				  CNcomment: 设置解码状态 CNend\n
* retval		: NA
* others:		: NA
*****************************************************************************/
HI_VOID HI_JPEG_SetDecState(HI_BOOL bDecState)
{
	sg_bDecFinish = bDecState;
}

/*****************************************************************************
* func			: HI_JPEG_SetJpegDev
* description	: set Jpeg Dev
				  CNcomment: 设置解码设备值 CNend\n
* retval		: NA
* others:		: NA
*****************************************************************************/
HI_VOID HI_JPEG_SetJpegDev(HI_S32 s32JpegDev)
{
	sg_s32JpegDev = s32JpegDev;
}

 /*****************************************************************************
* func			: HI_JPEG_SetJpegVir
* description	: set Jpeg map virtual value
				  CNcomment: 设置映射虚拟地址 CNend\n
* retval		: NA
* others:		: NA
*****************************************************************************/
HI_VOID HI_JPEG_SetJpegVir(volatile HI_CHAR *pRegisterVir)
{
	 g_pJpegRegVirAddr = pRegisterVir;
}

/*****************************************************************************
* func			: HI_JPEG_RandomResetInit
* description	: init the random reset valure
			      CNcomment: 初始化随机软复位测试的相关参数值 CNend\n
* retval		: NA
* others:		: NA
*****************************************************************************/
HI_VOID HI_JPEG_RandomResetInit()
{
	sg_bDecFinish     = HI_FALSE;
	sg_s32JpegDev     = -1;
	g_pJpegRegVirAddr = NULL;
}

#endif
