/******************************************************************************

  Copyright (C), 2001-2011, Hisilicon. Co., Ltd.

******************************************************************************
File Name	    : hi_jpeg_config.h
Version		    : Initial Draft
Author		    : 
Created		    : 2012/05/14
Description	    : config the gao an macro and other CFLASS
Function List 	: 

			  		  
History       	:
Date				Author        		Modification
2011/11/23		            		    Created file      	
******************************************************************************/

#ifndef __HI_JPEG_CONFIG__
#define __HI_JPEG_CONFIG__


/*********************************add include here******************************/

/*****************************************************************************/


/*****************************************************************************/


#ifdef __cplusplus
      #if __cplusplus
   
extern "C" 
{

      #endif
#endif /* __cplusplus */

    /***************************** Macro Definition ******************************/
 
    #if defined(HI_ADVCA_SUPPORT) && defined(HI_ADVCA_FUNCTION_RELEASE)
	  
	      #define GRAPHICS_ADVCA_VERSION 
		  
          #define HIJPEG_TRACE(fmt, args... )

    #else
	
          #ifdef YANJIANQING_DEBUG
		  
				#ifdef __KERNEL__
			        #define HIJPEG_TRACE(fmt, args... )\
			        do { \
			           printk(fmt, ##args );\
			        } while (0)
		        #else
			        #define HIJPEG_TRACE(fmt, args... )\
			        do { \
			           printf("%s\n %s(): %d Line\n: ", __FILE__,  __FUNCTION__,  __LINE__ );\
			           printf(fmt, ##args );\
			        } while (0)
		        #endif
				
		   #else
		   
                #define HIJPEG_TRACE(fmt, args... )
				
		   #endif
	
    #endif

     #if 0
	 #ifdef HI_ADVCA_SUPPORT
          #define __INIT__
          #define __EXIT__
     #else
          #define __INIT__  __init
          #define __EXIT__  __exit
     #endif
	 #endif
	
    /*************************** Structure Definition ****************************/


    /***************************  The enum of Jpeg image format  ******************/

    /********************** Global Variable declaration **************************/



    /******************************* API declaration *****************************/


    #ifdef __cplusplus

        #if __cplusplus



}
      
        #endif
        
   #endif /* __cplusplus */

#endif /* __HI_JPEG_CONFIG__*/
