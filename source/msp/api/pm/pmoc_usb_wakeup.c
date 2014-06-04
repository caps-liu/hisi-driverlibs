/*
 * Copyright (c) International Business Machines Corp., 2006
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See
 * the GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
 *
 * Author: Artem B. Bityutskiy
 *
 * UBI (Unsorted Block Images) library.
 */

#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <fcntl.h>
#include <dirent.h>
#include <errno.h>
#include <sys/ioctl.h>
#include <linux/usbdevice_fs.h>
#include <linux/usb/ch9.h>

#include <unistd.h>
#include "hi_drv_pmoc.h"
#include "hi_osal.h"

#define USB_CLASS_HUB 9

#define USB_REQ_CLEAR_FEATURE 0x01
#define USB_REQ_SET_FEATURE 0x03

#define USB_CTRL_GET_TIMEOUT 5000
#define USB_CTRL_SET_TIMEOUT 5000
#define USB_DEVICE_REMOTE_WAKEUP 1      /* dev may initiate wakeup */
#define USB_RECIP_DEVICE 0x00

struct libusb
{
    char *sysfs;
    char *dev;
    char *devnode;
    char *sysfs_usb;
    char *usb_dev;
    char *remotewakeup;
    char *autosuspend;
    char *bDeviceClass;
};

/**
 * mkpath - compose full path from 2 given components.
 * @path: the first component
 * @name: the second component
 *
 * This function returns the resulting path in case of success and %NULL in
 * case of failure.
 */
static char *mkpath(const char *path, const char *name)
{
    char *n;
    int len1 = strlen(path);
    int len2 = strlen(name);

    n = malloc(len1 + len2 + 2);
    if (!n)
    {
        HI_ERR_PM("cannot allocate %d bytes \n", len1 + len2 + 2);
        return NULL;
    }

    memcpy(n, path, len1);
    if (n[len1 - 1] != '/')
    {
        n[len1++] = '/';
    }

    memcpy(n + len1, name, len2 + 1);
    return n;
}

struct libusb * libusb_open(void)
{
    int fd;
    struct libusb *lib;

    lib = calloc(1, sizeof(struct libusb));
    if (!lib)
    {
        return NULL;
    }

    /* TODO: this must be discovered instead */
    lib->sysfs = strdup("/sys");
    if (!lib->sysfs)
    {
        goto error;
    }

    /* TODO: this must be discovered instead */
    lib->dev = strdup("/dev");
    if (!lib->dev)
    {
        goto error;
    }

    lib->devnode = mkpath(lib->dev, "usbdev%c%c%c%c%c%c%c");
    if (!lib->devnode)
    {
        goto error;
    }

    lib->sysfs_usb = mkpath(lib->sysfs, "bus/usb/devices");
    if (!lib->sysfs_usb)
    {
        goto error;
    }

    /* Make sure present */
    fd = open(lib->sysfs_usb, O_RDONLY);
    if (fd == -1)
    {
        goto error;
    }

    close(fd);

    lib->usb_dev = mkpath(lib->sysfs_usb, "%s");
    if (!lib->usb_dev)
    {
        goto error;
    }

    lib->remotewakeup = mkpath(lib->usb_dev, "power/wakeup");
    if (!lib->remotewakeup)
    {
        goto error;
    }

    lib->autosuspend = mkpath(lib->usb_dev, "power/control");
    if (!lib->autosuspend)
    {
        goto error;
    }

    lib->bDeviceClass = mkpath(lib->usb_dev, "bDeviceClass");
    if (!lib->autosuspend)
    {
        goto error;
    }

    return lib;

error:
    free(lib->bDeviceClass);
    free(lib->remotewakeup);
    free(lib->autosuspend);
    free(lib->usb_dev);
    free(lib->sysfs_usb);
    free(lib->sysfs);
    free(lib->devnode);
    free(lib->dev);
    free(lib);
    return NULL;
}

void libusb_close(struct libusb * desc)
{
    struct libusb *lib = (struct libusb *)desc;

    free(lib->bDeviceClass);
    free(lib->remotewakeup);
    free(lib->autosuspend);
    free(lib->usb_dev);
    free(lib->sysfs_usb);
    free(lib->sysfs);
    free(lib->devnode);
    free(lib->dev);
    free(lib);
}

static int io_ctrl_set_devnode(const char *patt, char a, char b, char c, char d, char e, char f, char g)
{
    int fd, ret;
    struct usbdevfs_ctrltransfer ctrl;

    char file[strlen(patt) + 50];

    memset(file, 0, sizeof(file));
    HI_OSAL_Snprintf(file, sizeof(file), patt, a, b, c, d, e, f, g);
    HI_INFO_PM("%s\n", file);

    errno = 0;
    fd = open(&file[0], O_RDWR);
    if (fd < 0)
    {
        HI_ERR_PM("open failed: \n");
        return -1;
    }

    errno = 0;
    ctrl.bRequest = USB_REQ_SET_FEATURE;
    ctrl.bRequestType = USB_RECIP_DEVICE;
    ctrl.data = NULL;
    ctrl.timeout = USB_CTRL_SET_TIMEOUT;
    ctrl.wIndex	 = 0;
    ctrl.wLength = 0;
    ctrl.wValue	 = (USB_DEVICE_REMOTE_WAKEUP);

    errno = 0;
    ret = ioctl(fd, USBDEVFS_CONTROL, &ctrl);
    if (ret < 0)
    {
        HI_ERR_PM("IOCTL failed:\n");
        close(fd);
        return -1;
    }

    close(fd);

    return 0;
}

/**
 * dev_read_str - read an 'int' value from an UBI device's sysfs file.
 *
 * @patt     the file pattern to read from
 * @dev_num  UBI device number
 * @value    the result is stored here
 *
 * This function returns %0 in case of success and %-1 in case of failure.
 */
static int dev_read_str(const char *patt, char* string, char *value)
{
    int fd, rd;
    char buf[50];
    char file[strlen(patt) + 50];

    memset(file, 0, sizeof(file));
    HI_OSAL_Snprintf(file, sizeof(file), patt, string);
    fd = open(&file[0], O_RDONLY);
    if (fd == -1)
    {
        return -1;
    }

    rd = read(fd, &buf[0], 50);
    if (rd == -1)
    {
        goto error;
    }

    if (sscanf(&buf[0], "%9s", value) != 1)
    {
        /* This must be a UBI bug */
        HI_ERR_PM("bad string at sysfs file\n");
        goto error;
    }

    close(fd);
    return 0;

error:
    close(fd);
    return -1;
}

/**
 * dev_read_int - read an 'int' value from an UBI device's sysfs file.
 *
 * @patt     the file pattern to read from
 * @dev_num  UBI device number
 * @value    the result is stored here
 *
 * This function returns %0 in case of success and %-1 in case of failure.
 */
static int dev_write_str(const char *patt, char* string, char *value)
{
    int fd, rd;
    char file[strlen(patt) + 50];

    memset(file, 0, sizeof(file));
    HI_OSAL_Snprintf(file, sizeof(file), patt, string);   
    fd = open(&file[0], O_WRONLY);
    if (fd == -1)
    {
        return -1;
    }

    rd = write(fd, value, 4);
    if (rd == -1)
    {
        goto error;
    }

    close(fd);
    return 0;

error:
    close(fd);
    return -1;
}

static int dev_read_int(const char *patt, char* string, int *value)
{
    int fd, rd;
    char buf[50];
    char file[strlen(patt) + 50];

    memset(file, 0, sizeof(file));
    HI_OSAL_Snprintf(file, sizeof(file), patt, string);
    fd = open(&file[0], O_RDONLY);
    if (fd == -1)
    {
        return -1;
    }

    rd = read(fd, &buf[0], 50);
    if (rd == -1)
    {
        goto error;
    }

    if (sscanf(&buf[0], "%8x", value) != 1)
    {
        /* This must be a UBI bug */
        HI_ERR_PM("bad value at sysfs file\n");
        goto error;
    }

    close(fd);
    return 0;

error:
    close(fd);
    return -1;
}

int usb_set_remote(struct libusb * desc)
{
    DIR *sysfs_usb;
    struct dirent *dirent;
    struct libusb *lib = (struct libusb *)desc;
    char buf[10] = {
        0
    };
    int rc = 0, dev_cnt = 0;
    int value = 0;

    /*
     * We have to scan the USB sysfs directory to identify how many USB
     * devices are present.
     */
    sysfs_usb = opendir(lib->sysfs_usb);
    if (!sysfs_usb)
    {
        return -1;
    }

    while ((dirent = readdir(sysfs_usb)))
    {
        char *name = &dirent->d_name[0];

        /* dev of root hub support remote wakeup */
        {
            rc = dev_read_str(lib->remotewakeup, name, buf);

            /* remote wake up is supported */
            if (rc != -1)
            {
                rc = dev_read_int(lib->bDeviceClass, name, &value);
                if (rc != -1)
                {
                    /* hub is not consider */
                    if (value != USB_CLASS_HUB)
                    {
                        rc = dev_write_str(lib->autosuspend, name, "auto");
                        if (rc == -1)
                        {
                            goto close;
                        }

                        if (strlen(name) == 3)
                        {
                            rc = io_ctrl_set_devnode(lib->devnode, name[0], name[2], '\0', '\0', '\0', '\0', '\0');
                        }
                        else if (strlen(name) == 5)
                        {
                            rc = io_ctrl_set_devnode(lib->devnode, name[0], name[2], name[4], '\0', '\0', '\0', '\0');
                        }
                        else if (strlen(name) == 7)
                        {
                            rc = io_ctrl_set_devnode(lib->devnode, name[0], name[2], name[4], name[6], '\0', '\0', '\0');
                        }
                        else if (strlen(name) == 9)
                        {
                            rc = io_ctrl_set_devnode(lib->devnode, name[0], name[2], name[4], name[6], name[8], '\0',
                                                     '\0');
                        }
                        else if (strlen(name) == 11)
                        {
                            rc =
                                io_ctrl_set_devnode(lib->devnode, name[0], name[2], name[4], name[6], name[8], name[10],
                                                    '\0');
                        }
                        else if (strlen(name) == 13)
                        {
                            rc =
                                io_ctrl_set_devnode(lib->devnode, name[0], name[2], name[4], name[6], name[8], name[10],
                                                    name[12]);
                        }

                        if (rc == -1)
                        {
                            goto close;
                        }
                    }
                }
            }
        }
    }

    closedir(sysfs_usb);
    return dev_cnt;

close:
    closedir(sysfs_usb);
    return -1;
}

int usb_get_remote(struct libusb * desc, unsigned char * intmask)
{
    DIR *sysfs_usb;
    struct dirent *dirent;
    struct libusb *lib = (struct libusb *)desc;
    char buf[10] = {
        0
    };
    int rc, dev_cnt = 0;
    int value = 0;

    /*
     * We have to scan the USBsysfs directory to identify how many USB
     * devices are present.
     */

    if (intmask == NULL)
    {
        HI_ERR_PM(" initmask is NULL\n");
        return -1;
    }
    else
    {
        *intmask = 0;
    }

    sysfs_usb = opendir(lib->sysfs_usb);
    if (!sysfs_usb)
    {
        return -1;
    }

    while ((dirent = readdir(sysfs_usb)))
    {
        char *name = &dirent->d_name[0];

        /* dev of root hub support remote wakeup */
        {
            rc = dev_read_str(lib->remotewakeup, name, buf);

            /* remote wake up is supported */
            if (rc != -1)
            {
                rc = dev_read_int(lib->bDeviceClass, name, &value);
                if (rc != -1)
                {
                    /* hub is not consider */
                    if (value != USB_CLASS_HUB)
                    {
                        dev_cnt++;
                        *intmask |= (0x01 << (name[2] - 0x31));
                    }
                }
            }
        }
    }

    closedir(sysfs_usb);
    return dev_cnt;
}

/**
 * get_remotewakeup_devnum - get device number of support remote wakeup.
 *
 * This function returns  dev numbers in case of success and %-1 in case of failure.
 */
int get_remotewakeup_devnum(unsigned char * intmask)
{
    int rc = 0;
    struct libusb *lib;

    lib = libusb_open();
    if (lib == NULL)
    {
        HI_ERR_PM("libubi_open error. \n");
        return -1;
    }

    rc = usb_get_remote(lib, intmask);
    libusb_close(lib);
    return rc;
}

/**
 * set_remotewakeup - set device to support remote wakeup.
 *
 * This function returns 0 in case of success and %-1 in case of failure.
 */
int set_remotewakeup(void)
{
    int rc = 0;
    struct libusb *lib;

    lib = libusb_open();
    if (lib == NULL)
    {
        HI_ERR_PM("libubi_open error \n");
        return -1;
    }

    rc = usb_set_remote(lib);
    libusb_close(lib);
    return rc;
}
