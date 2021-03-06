#include <sound/core.h>
#include <sound/pcm.h>
#include <sound/pcm_params.h>
#include <sound/soc.h>
#include <sound/soc-dapm.h>

#include "tlv320aic3x.h"
#include "alsa_i2c.h"

//Audio Codec Select   HI_ALSA_TLV320_SUPPORT
#define AIC3104 1
#define AIC31 0
#define CODEC_CHIP_NAME AIC3104  

#define tlv320aic31_write(chip_addr, reg_addr, value)   \
    snd_soc_update_bits(codec, reg_addr, 0xff, value)


struct snd_soc_codec *codec_copy;

static const struct snd_soc_dapm_widget aic3x_dapm_widgets[] = {
	SND_SOC_DAPM_LINE("Audio Out", NULL),
	SND_SOC_DAPM_LINE("Audio In", NULL),
};

static const struct snd_soc_dapm_route audio_map[] = {
	{"Audio Out", NULL, "HPLOUT"},
	{"Audio Out", NULL, "HPROUT"},

	{"LINE1L", NULL, "Mic Bias 2V"},
	{"LINE1R", NULL, "Mic Bias 2V"},
	{"Mic Bias 2V", NULL, "Audio In"},
};

static void time_delay_us(int usec)
{
	int i, j;

	usec = usec;

	/*for(i=0;i<usec * 5;i++)*/
	for (i = 0; i < usec * 5; i++)
	{
		for (j = 0; j < 47; j++)
		{
			;
		}
	}
}
/*
static void aic31_set_filter(struct snd_soc_codec *codec)
{
#define tlv320aic31_write(chip_addr, reg_addr, value)	\
	snd_soc_update_bits(codec, reg_addr, 0xff, value)

	tlv320aic31_write(I2C_AIC31, 12, 0x00);
	tlv320aic31_write(I2C_AIC31, 0, 0x01);
	tlv320aic31_write(I2C_AIC31, 1, 0x7F);
	tlv320aic31_write(I2C_AIC31, 2, 0x7c);
	tlv320aic31_write(I2C_AIC31, 3, 0x80);
	tlv320aic31_write(I2C_AIC31, 4, 0x84);
	tlv320aic31_write(I2C_AIC31, 5, 0x7f);
	tlv320aic31_write(I2C_AIC31, 6, 0x7c);
	
	tlv320aic31_write(I2C_AIC31, 7, 0x1B);
	tlv320aic31_write(I2C_AIC31, 8, 0x4a);
	
	tlv320aic31_write(I2C_AIC31, 9, 0x1B);
	tlv320aic31_write(I2C_AIC31, 10, 0x4a);
	
	tlv320aic31_write(I2C_AIC31, 11, 0x1b);
	tlv320aic31_write(I2C_AIC31, 12, 0x4a);
	
	tlv320aic31_write(I2C_AIC31, 13, 0x7f);
	tlv320aic31_write(I2C_AIC31, 14, 0x7c);
	tlv320aic31_write(I2C_AIC31, 15, 0x81);
	tlv320aic31_write(I2C_AIC31, 16, 0x07);
	tlv320aic31_write(I2C_AIC31, 17, 0x15);
	tlv320aic31_write(I2C_AIC31, 18, 0xb5);
	tlv320aic31_write(I2C_AIC31, 19, 0xe7);
	tlv320aic31_write(I2C_AIC31, 20, 0x6d);
	tlv320aic31_write(I2C_AIC31, 21, 0x3a);
	tlv320aic31_write(I2C_AIC31, 22, 0xf3);
	tlv320aic31_write(I2C_AIC31, 23, 0xf4);
	tlv320aic31_write(I2C_AIC31, 24, 0xc3);
	tlv320aic31_write(I2C_AIC31, 25, 0x50);
	tlv320aic31_write(I2C_AIC31, 26, 0x4b);
	tlv320aic31_write(I2C_AIC31, 27, 0x7f);
	tlv320aic31_write(I2C_AIC31, 28, 0x7c);
	tlv320aic31_write(I2C_AIC31, 29, 0x80);
	tlv320aic31_write(I2C_AIC31, 30, 0x84);
	tlv320aic31_write(I2C_AIC31, 31, 0x7f);
	tlv320aic31_write(I2C_AIC31, 32, 0x7c);
	
	tlv320aic31_write(I2C_AIC31, 33, 0x1b);
	tlv320aic31_write(I2C_AIC31, 34, 0x4a);
	
	tlv320aic31_write(I2C_AIC31, 35, 0x1b);
	tlv320aic31_write(I2C_AIC31, 36, 0x4a);
	
	tlv320aic31_write(I2C_AIC31, 37, 0x1b);
	tlv320aic31_write(I2C_AIC31, 38, 0x4a);
	
	tlv320aic31_write(I2C_AIC31, 39, 0x7f);
	tlv320aic31_write(I2C_AIC31, 40, 0x7c);
	tlv320aic31_write(I2C_AIC31, 41, 0x81);
	tlv320aic31_write(I2C_AIC31, 42, 0x07);
	tlv320aic31_write(I2C_AIC31, 43, 0x15);
	tlv320aic31_write(I2C_AIC31, 44, 0xb5);
	tlv320aic31_write(I2C_AIC31, 45, 0xe7);
	tlv320aic31_write(I2C_AIC31, 46, 0x6d);
	tlv320aic31_write(I2C_AIC31, 47, 0x3a);
	tlv320aic31_write(I2C_AIC31, 48, 0xf3);
	tlv320aic31_write(I2C_AIC31, 49, 0xf4);
	tlv320aic31_write(I2C_AIC31, 50, 0xc3);
	tlv320aic31_write(I2C_AIC31, 51, 0x50);
	tlv320aic31_write(I2C_AIC31, 52, 0x4b);
	tlv320aic31_write(I2C_AIC31, 0, 0x00);
	tlv320aic31_write(I2C_AIC31, 12, 0x5a);
}
*/
int hisi_alsa_codec_init(struct snd_soc_pcm_runtime *rtd)
{

	struct snd_soc_codec *codec = rtd->codec;
	struct snd_soc_dapm_context *dapm = &codec->dapm;

	codec_copy = codec;

	godbox_aic31_reset();
	
	snd_soc_dapm_new_controls(dapm, aic3x_dapm_widgets,
			ARRAY_SIZE(aic3x_dapm_widgets));
	snd_soc_dapm_add_routes(dapm, audio_map, ARRAY_SIZE(audio_map));


	/* not connected on Godbox */
	snd_soc_dapm_nc_pin(dapm, "HPLCOM");
	snd_soc_dapm_nc_pin(dapm, "HPRCOM");
	snd_soc_dapm_nc_pin(dapm, "LLOUT");
	snd_soc_dapm_nc_pin(dapm, "RLOUT");
	snd_soc_dapm_nc_pin(dapm, "MONO_LOUT");
//	snd_soc_dapm_nc_pin(codec, "LINE1R");
	snd_soc_dapm_nc_pin(dapm, "LINE2L");
	snd_soc_dapm_nc_pin(dapm, "LINE2R");
	snd_soc_dapm_nc_pin(dapm, "MIC3L");
	snd_soc_dapm_nc_pin(dapm, "MIC3R");

	/* fixed route */
	snd_soc_dapm_enable_pin(dapm, "Audio Out");
	snd_soc_dapm_enable_pin(dapm, "Audio In");

	snd_soc_dapm_sync(dapm);

	tlv320aic31_write(I2C_AIC31, 0x1, 0x80);	

	time_delay_us(50);

	/*modified by yubo(yKF48767), in order to set the Band-pass filter*/
	#if CODEC_CHIP_NAME
	///aic31_set_filter(codec);
	tlv320aic31_write(I2C_AIC31, 12, 0x0);
	#else
	tlv320aic31_write(I2C_AIC31, 12, 0x5a);
	#endif

    /* Mclk = 12.288M,not PLL mode*/
 //   tlv320aic31_write(I2C_AIC31, 102, 0x32); //if pll,p=r=1,k=8

    tlv320aic31_write(I2C_AIC31, 102, 0xc2);
    tlv320aic31_write(I2C_AIC31, 101, 0x01);
    tlv320aic31_write(I2C_AIC31, 3, 0x10);

    tlv320aic31_write(I2C_AIC31, 2, 0x0);
    tlv320aic31_write(I2C_AIC31, 8, 0x30);


    tlv320aic31_write(I2C_AIC31, 9, 0x27 );  //16bits
    tlv320aic31_write(I2C_AIC31, 25, 0x80 ); // enable mic bias
  
    tlv320aic31_write(I2C_AIC31, 17, 0xf );
    tlv320aic31_write(I2C_AIC31, 18, 0xf0);


	tlv320aic31_write(I2C_AIC31, 15, 0x18);
	tlv320aic31_write(I2C_AIC31, 16, 0x18); 
    //tlv320aic31_write(I2C_AIC31, 19, 0x07); //left adc single_end mode, 0dB volume; ena power
    tlv320aic31_write(I2C_AIC31, 19, 0x04); //left adc single_end mode, 0dB volume; ena power
    tlv320aic31_write(I2C_AIC31, 22, 0x07); //right adc single_end mode, 0dB volume; ena power
   
	tlv320aic31_write(I2C_AIC31, 28, 0);
    tlv320aic31_write(I2C_AIC31, 31, 0);
    tlv320aic31_write(I2C_AIC31, 26, 0x00);
    tlv320aic31_write(I2C_AIC31, 29, 0x00);

    tlv320aic31_write(I2C_AIC31, 7, 0xa); //set Fsref;dual rate mode or not;D1~D4 set I2S into dac,both dac open
    tlv320aic31_write(I2C_AIC31, 14, 0x80); //high-power outputs for ac-coupled
    tlv320aic31_write(I2C_AIC31, 37, 0xc0);   //left and right dac power
    tlv320aic31_write(I2C_AIC31, 38, 0x10);   //left and right dac power
    tlv320aic31_write(I2C_AIC31, 40, 0x80); //Output common-mode voltage 1.65v, disable soft_step volume

    tlv320aic31_write(I2C_AIC31, 41, 0x00); //select DAC_L(R)1 to hi-power;left and right volume dependent controls

    tlv320aic31_write(I2C_AIC31, 42, 0x68); //Output Driver Pop Reduction(medium)

	tlv320aic31_write(I2C_AIC31, 43, 0x19); //left DAC channel not muted;DAC Digital Volume Control(attenuation,adjust value level)
	tlv320aic31_write(I2C_AIC31, 44, 0x19); //right DAC channel not muted;DAC Digital Volume Control(attenuation,adjust value level)

    //tlv320aic31_write(I2C_AIC31, 47, 0x80); //DAC_L1 is routed to HPLOUT;Output Stage Volume Control(no attenuation)  //in order to evade the channel opposite
    //tlv320aic31_write(I2C_AIC31, 64, 0x80); //DAC_L1 is routed to HPROUT;Output Stage Volume Control(no attenuation)  ////in order to evade the channel opposite

    //change reg51 & reg65 from 0x9f to 0x9a, in order to remove the pop when initing
    tlv320aic31_write(I2C_AIC31, 51, 0x0a); //left output level control(enlarge,max);output mute,power;
    tlv320aic31_write(I2C_AIC31, 65, 0x0a); //right output level control(enlarge,max);output mute,power;
    /* enable LEFT_LOP/M and RIGHT_LOP/M */
    tlv320aic31_write(I2C_AIC31, 81, 0x00); //0: PGA_L is not routed to LEFT_LOP/M;
    tlv320aic31_write(I2C_AIC31, 82, 0x80); //0: DAC_L1 is routed to LEFT_LOP/M
    tlv320aic31_write(I2C_AIC31, 86, 0x0b); //left LEFT_LOP level 0dB, un-mute, power up;

    tlv320aic31_write(I2C_AIC31, 91, 0x00); //0: PGA_R is not routed to RIGHT_LOP/M;
    tlv320aic31_write(I2C_AIC31, 92, 0x80); //0: DAC_R1 is routed to RIGHT_LOP/M
    tlv320aic31_write(I2C_AIC31, 93, 0x0b); //left LEFT_LOP level 0dB, un-mute, power up;

    tlv320aic31_write(I2C_AIC31, 47, 0x80); //DAC_L1 is routed to HPLOUT;Output Stage Volume Control(no attenuation)
    tlv320aic31_write(I2C_AIC31, 50, 0x00); //DAC_L1 is routed to HPLOUT;Output Stage Volume Control(no attenuation)
    tlv320aic31_write(I2C_AIC31, 61, 0x00); //DAC_R1 is routed to HPROUT;Output Stage Volume Control(no attenuation)
    tlv320aic31_write(I2C_AIC31, 64, 0x80); //DAC_R1 is routed to HPROUT;Output Stage Volume Control(no attenuation)

	snd_soc_dapm_sync(dapm);

	return 0;
}
