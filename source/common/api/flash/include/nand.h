#ifndef NANDH
#define NANDH
/******************************************************************************/

#define MTD_ABSENT      0
#define MTD_RAM         1
#define MTD_ROM         2
#define MTD_SPIFLASH        3
#define MTD_NANDFLASH       4
#define MTD_DATAFLASH       6
#define MTD_UBIVOLUME       7

#define MAX_PARTS         32    /* Flash max partition number*/
#define MAX_MTD_PARTITION   (MAX_PARTS)

#if defined (ANDROID)
#define DEV_MTDBASE         "/dev/mtd/mtd"
#else
#define DEV_MTDBASE         "/dev/mtd"
#endif

#define PROC_MTD_FILE       "/proc/mtd"

#ifndef __kernel_loff_t
    typedef long long   __kernel_loff_t;
#endif

#ifndef PRINTF_CA
#ifdef  CONFIG_SUPPORT_CA_RELEASE
#define PRINTF_CA(fmt, ...)
#else
#define PRINTF_CA(fmt, args...) do{\
        printf("%s(%d): " fmt, __FILE__, __LINE__, ##args); \
} while (0)
#endif
#endif

/*****************************************************************************/

struct mtd_info_user {
    unsigned char type;
    unsigned long flags;
    unsigned long size;
    unsigned long erasesize;
    unsigned long writesize;
    unsigned long oobsize;
    unsigned long ecctype;
    unsigned long eccsize;
};
#define MEMGETINFO      _IOR('M', 1, struct mtd_info_user)

struct erase_info_user64 {
    unsigned long long start;
    unsigned long long length;
};
#define MEMERASE64      _IOW('M', 20, struct erase_info_user64)


struct mtd_oob_buf {
    unsigned long start;
    unsigned long length;
    unsigned char *ptr;
};
#define MEMREADOOB      _IOWR('M', 4, struct mtd_oob_buf)


struct mtd_epage_buf {
    unsigned long long start;
    unsigned long data_len;
    unsigned long oob_len;
    unsigned char *data_ptr;
    unsigned char *oob_ptr;
};
#define MEMEWRITEPAGE       _IOWR('M', 25, struct mtd_epage_buf)

#define MEMGETBADBLOCK      _IOW('M', 11, __kernel_loff_t)

#define MEMSETBADBLOCK      _IOW('M', 12, __kernel_loff_t)

#define MEMFORCEERASEBLOCK  _IOW('M', 128, __kernel_loff_t)

/*****************************************************************************/

struct mtd_partition
{
    unsigned long long start;
    unsigned long long end;
    int readonly;
    enum ACCESS_PERM perm;
#if defined (ANDROID)
    char mtddev[25];
#else
    char mtddev[12];
#endif
    int fd;
};

struct nand_raw_ctrl
{
    int num_partition;
    unsigned long long size;

    unsigned long pagesize;
    unsigned long blocksize;
    unsigned long oobsize;
    unsigned long oobused;

    unsigned long pageshift;
    unsigned long blockshift;

    unsigned long pagemask;
    unsigned long blockmask;

    struct mtd_partition partition[1];
};

#if 0
#  define DBG_OUT(fmt, arg...) \
    printf("  %s[%d]: " fmt, __FUNCTION__, __LINE__, ##arg)
#else
#  define DBG_OUT(fmt, arg...)
#endif

char *int_to_size(unsigned long long size);

int get_max_partition(void);

int offshift(unsigned long n);

int flash_partition_info_init(void);

HI_Flash_PartInfo_S * get_flash_partition_info(HI_FLASH_TYPE_E FlashType, const char * devname);

unsigned long long get_flash_total_size(HI_FLASH_TYPE_E FlashType);

/******************************************************************************/
#endif /* NANDH */

