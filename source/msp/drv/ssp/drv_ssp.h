/*
 * extdrv/include/hi_ssp.h for Linux .
 *
 * History: 
 *      2006-4-11 create this file
 */ 
 
#ifndef __HI_SSP_H__
#define __HI_SSP_H__

int hi_ssp_set_frameform(unsigned char framemode,unsigned char spo,unsigned char sph,unsigned char datawidth);
int hi_ssp_readdata(void);
void hi_ssp_writedata(unsigned short data); 

void hi_ssp_enable(void);
void hi_ssp_disable(void);

int hi_ssp_set_serialclock(unsigned char,unsigned char);

void hi_ssp_dmac_enable(void);
void hi_ssp_dmac_disable(void);

int hi_ssp_dmac_init(void *,void *);
void hi_ssp_dmac_exit(void);
int hi_ssp_dmac_transfer(unsigned int,unsigned int,unsigned int);
    
#endif 

