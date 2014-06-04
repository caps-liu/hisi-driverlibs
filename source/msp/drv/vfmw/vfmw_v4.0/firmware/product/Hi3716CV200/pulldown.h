/****************************************************
Copyright (C), 1988-2009, Huawei Tech. Co., Ltd.
File name:      pulldown.h
Author:   z00128410  Version:   1.0     Date: 2009-1-6
Description:    该文件主要完成了pulldown检测模块中需要
用到的结构体类型定义、宏定义、函数原型的定义。
pulldown检测模块pulldown.cpp中需要包含该文件。
Others:         // 其它内容的说明
Function List:  // 主要函数列表，每条记录应包括函数名及功能简要说明
1. ....
History:        // 修改历史记录列表，每条修改记录应包括修改日期、修改
// 者及修改内容简述  
1. Date:
Author:
Modification:
2. ...
****************************************************/


#ifndef __PULLDOWN_HEADER__
#define __PULLDOWN_HEADER__

#define FIELD_BOTTOM_FIRST  0
#define FIELD_TOP_FIRST     1
#define FIELD_UNKNOWN       2

#define MyAssert(x) { if (!(x)) { printf("\nErr @ (%s, %d)\n", __FILE__, __LINE__); \
exit(-__LINE__); } }


//检测计算用的顶底场计数器值结构体： PULLDOWN_INPUT_CNT_S
typedef struct
{
    int FC_T;  
    int SC_T;  
    int TC_T;
    int FC_B;
    int SC_B;
    int TC_B;
    int z14;
    int z32;
    int z34;
    int mbNum;
}PULLDOWN_INPUT_CNT_S;

//3:2检测所需水线结构体：Pdown32Thd
typedef struct
{
    int FThresh;
    int SThresh;
    int TThresh;
}Pdwn32Thd;

//13:12检测所需水线结构体：Pdown1312Thd
typedef struct 
{
	int FThresh;
	int SThresh;
	int TThresh;
	int zthr;
}Pdwn1312Thd;


//枚举类型Pattern：标示场组合方式
typedef enum
{Tc = 0, Bc, TcBc, TcBl, TcBn, BcTl, BcTn} 
PATTERN_LIST;

//输出参数结构体PULLDOWN_OUTPUT_PARAM_S
typedef struct
{
	int Fieldorder;      //标示场序
    int CopyTime;        //标示当前场已经出现的次数   
	PATTERN_LIST Pattern;//标示当前场与哪一场组合可以组成一帧
}PULLDOWN_OUTPUT_PARAM_S;


//存放3:2检测的中间数据变量：CTXT32
typedef struct
{
    int frame_cnt;
    int pdcnt;
	int btmode;
    int flg;
    int FV_c;  
    int SV_c;  
    int TV_c;  
    int FV_p;  
    int SV_p;  
    int TV_p;	
    int FM[5]; 
    int SM[5]; 
    int TM[5]; 
}CTXT32;

//存放1312检测的中间数据变量：CTXT1312
typedef struct  
{
	int frame_cnt;
    int pdcnt;
	int btmode;
    int flg;
    int FV_c;  
    int SV_c;  
    int TV_c;  
    int FV_p;  
    int SV_p;  
    int TV_p; 
    int z14;
    int z32;
    int z34;	
    int FM[25]; 
    int SM[25]; 
    int TM[25];
}CTXT1312;

//查询数据结构体，供调试用
typedef struct 
{
	int FC_T;
	int SC_T;
	int TC_T;
	int FC_B;
	int SC_B;
	int TC_B;
	int z14;
	int z32;
	int z34;
	int PD32flg_T;
	int PD32flg_B;
	int PD32cnt_T;
	int PD32cnt_B;
	int PD32btmode;
	int PD1312flg_T;
	int PD1312flg_B;
	int PD1312cnt_T;
	int PD1312cnt_B;
	int PD1312btmode;
}PULLDOWN_PRIVATE_DATA_S;


//初始化函数
void InitPulldown(int mbNum);
//检测计算函数
void CalcPulldown(PULLDOWN_INPUT_CNT_S pdownInputCnt, PULLDOWN_OUTPUT_PARAM_S *ppdownOutputTop,
				  PULLDOWN_OUTPUT_PARAM_S *ppdownOutputBtm);
//查询中间数据函数，打印信息
void InspectPlldwnData(PULLDOWN_PRIVATE_DATA_S *pPrivateData);

#endif
