#include <linux/i2c.h>
#include <linux/i2c-algo-bit.h>
#include <linux/i2c-gpio.h>
#include <linux/platform_device.h>
#include <linux/slab.h>
#include <linux/delay.h>

#include <asm/io.h>
#include <mach/hardware.h>
#include <mach/platform.h>

#include <linux/module.h>



#include "hi_type.h"
#include "hi_unf_common.h"
#include "drv_gpioi2c_ext.h"
#include "hi_module.h"
#include "hi_drv_module.h"
#include "drv_i2c_ext.h"
#include "hi_drv_i2c.h"

#include "alsa_i2c.h"
#include "drv_gpio_ext.h"
#include "hi_reg_common.h"

//#define DEBUG_GPIO_I2C
#ifdef DEBUG_GPIO_I2C
	#define TRC(x...) printk(KERN_ALERT x)
	//#define TRC(x...) printk(KERN_DEBUG x)
#else
	#define TRC(x...) do {} while (0)
#endif
#define TRP() TRC("%s called\n", __func__)

//HI_ALSA_TLV320_SUPPORT

#define AIC31_I2C_ADDRESS		0x18

#define SLAC_RESET_GPIO_GNUM_S40 2
#define SLAC_RESET_GPIO_PNUM_S40 1

#define SCL_GPIO_GNUM_S40 2
#define SCL_GPIO_PNUM_S40 3


#define SDA_GPIO_GNUM_S40 2
#define SDA_GPIO_PNUM_S40 4

#define SDA (((SDA_GPIO_GNUM_S40)*8)+(SDA_GPIO_PNUM_S40))
#define SCL	(((SCL_GPIO_GNUM_S40)*8)+(SCL_GPIO_PNUM_S40))


#define HI_gpio_dir_OUT(x) \
	HI_DRV_GPIO_SetDirBit(x,HI_FALSE )

#define HI_gpio_dir_IN(x) \
	HI_DRV_GPIO_SetDirBit(x, HI_TRUE)

#define HI_gpio_set_VAL(x, y) \
	HI_DRV_GPIO_WriteBit(x, y)

#define HI_gpio_get_VAL(x, y) \
	HI_DRV_GPIO_ReadBit(x, y)


static struct i2c_adapter *adapter;

static inline void i2c_pin_mf_config(void)
{
	HI_U32 u32RegI2c2Scl,u32RegI2c2Sda;
	/* ToDo: need IO_CONFIG for this GPIO pin */
	TRP();

    g_pstRegIO->ioshare_reg19.u32 = 0x0;  //set I2C2_SCL pin
    g_pstRegIO->ioshare_reg20.u32 = 0x0;  //set I2C2_SDA pin
	
	

}

static inline void i2c_pin_init(void)
{
	/* This must be compatible with I2C STOP condition.
	 * But, hi_gpio_write_bit() requires direction config first.
	 * So... this could conflicts with I2C bus spec.
	 */
	TRP();
	HI_gpio_dir_OUT(SDA);
	HI_gpio_dir_OUT(SCL);
	HI_gpio_set_VAL(SDA, HI_TRUE);
	HI_gpio_set_VAL(SCL, HI_TRUE);	
}

static inline void i2c_pin_release(void)
{
	TRP();
	HI_gpio_dir_IN(SDA);
	HI_gpio_dir_IN(SCL);
}

/* prevent typo */


int hi_gpio_i2c_bit_getSDA(void *data) 
{ 
	int val; 
    
	HI_gpio_dir_IN(SDA); 
	HI_gpio_get_VAL(SDA, &val); 
	return val; 
}


void hi_gpio_i2c_bit_setSDA(void *data, int state) 
{ 
    
	HI_gpio_dir_OUT(SDA); 
	if (state) 
		HI_gpio_set_VAL(SDA, HI_TRUE); 
	else 
		HI_gpio_set_VAL(SDA, HI_FALSE); 
}

int hi_gpio_i2c_bit_getSCL(void *data) 
{ 
	int val; 
   
	HI_gpio_dir_IN(SCL); 
	HI_gpio_get_VAL(SCL, &val); 
	return val; 
}


void hi_gpio_i2c_bit_setSCL(void *data, int state) 
{ 
    
	HI_gpio_dir_OUT(SCL); 
	if (state) 
		HI_gpio_set_VAL(SCL, HI_TRUE); 
	else 
		HI_gpio_set_VAL(SCL, HI_FALSE); 
}



void i2c_pins_init(void)
{
	i2c_pin_mf_config();
	i2c_pin_init();
}

int init_i2c(void)
{
	int err;
	struct i2c_client *client;
	struct i2c_board_info info;
	struct i2c_algo_bit_data *bit_data;

	TRP();
	i2c_pin_mf_config();
	i2c_pin_init();	

	adapter = kzalloc(sizeof(struct i2c_adapter), GFP_KERNEL);
	if (!adapter) {
		printk(KERN_ERR "%s(): couldnot alloc mem\n", __func__);
		return -ENOMEM;
	}

	bit_data = kzalloc(sizeof(struct i2c_algo_bit_data), GFP_KERNEL);
	if (!bit_data) {
		printk(KERN_ERR "%s(): couldnot alloc mem\n", __func__);
		kfree(adapter);
		return -ENOMEM;
	}

	bit_data->setsda = hi_gpio_i2c_bit_setSDA;
	bit_data->getsda = hi_gpio_i2c_bit_getSDA;
	bit_data->setscl = hi_gpio_i2c_bit_setSCL;
	bit_data->getscl = hi_gpio_i2c_bit_getSCL;
	bit_data->udelay = 10; /* 100 KHz */
	bit_data->timeout = msecs_to_jiffies(100);
	bit_data->data = adapter;

	snprintf(adapter->name, sizeof(adapter->name), "tlv320");
	adapter->owner = THIS_MODULE;
	adapter->class = I2C_CLASS_HWMON;
	adapter->algo_data = bit_data;

	err = i2c_bit_add_bus(adapter);
	if (err) {
		printk(KERN_ERR "Adapter %s registration failed(%d)\n",
				adapter->name, err);
		kfree(adapter);
		return err;
	}
    memset(&info, 0, sizeof(struct i2c_board_info));
    info.addr = AIC31_I2C_ADDRESS;
    strlcpy(info.type, "tlv320aic3x", I2C_NAME_SIZE);

    client = i2c_new_device(adapter, &info);
    i2c_put_adapter(adapter);
    if (!client) {
        printk(KERN_ERR "can't add i2c device at 0x%x\n",(unsigned int)info.addr);
		kfree(adapter);
        return -ENOTTY;
    }
	
	return 0;
}

int remove_i2c(void)
{
	int err;
	TRP();

	err = i2c_del_adapter(adapter);
	if (!err) {
		kfree(adapter);
	}

	return err;
}

int hi_gpio_i2c_pdrv_suspend(void)
{
	i2c_pin_release();
	return 0;
}

int hi_gpio_i2c_pdrv_resume(void)
{
	i2c_pin_init();
	return 0;
}

void godbox_aic31_reset(void)
{

	HI_U32 u32RegReset;
    
	TRP();	
    
	u32RegReset = g_pstRegIO->ioshare_reg17.u32;
	g_pstRegIO->ioshare_reg17.u32 = (u32RegReset)&(~0x7);	//set tlv320 reset pin 
	 
	 HI_DRV_GPIO_SetDirBit(SLAC_RESET_GPIO_GNUM_S40*8+SLAC_RESET_GPIO_PNUM_S40, 0);
	 HI_DRV_GPIO_WriteBit(SLAC_RESET_GPIO_GNUM_S40*8+SLAC_RESET_GPIO_PNUM_S40, 0);
	 ndelay(20);
	 
	 HI_DRV_GPIO_WriteBit(SLAC_RESET_GPIO_GNUM_S40*8+SLAC_RESET_GPIO_PNUM_S40, 1);
     ndelay(10);
}

