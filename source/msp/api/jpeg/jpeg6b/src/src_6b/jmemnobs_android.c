/*
 * Copyright (C) 2007-2008 The Android Open Source Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#define JPEG_INTERNALS
#include "jinclude.h"
#include "jpeglib.h"
#include "jmemsys.h"		/* import the system-dependent declarations */

#include <cutils/ashmem.h>
#include <unistd.h>
#include <sys/mman.h>

#include "jpeg_hdec_api.h"


#ifndef HAVE_STDLIB_H		/* <stdlib.h> should declare malloc(),free() */
extern void * malloc JPP((size_t size));
extern void free JPP((void *ptr));
#endif


/*
 * Memory allocation and freeing are controlled by the regular library
 * routines malloc() and free().
 */

GLOBAL(void *)
jpeg_get_small (j_common_ptr cinfo, size_t sizeofobject)
{
  	return (void *) malloc(sizeofobject);
}

GLOBAL(void)
jpeg_free_small (j_common_ptr cinfo, void * object, size_t sizeofobject)
{
  	free(object);
}


/*
 * "Large" objects are treated the same as "small" ones.
 * NB: although we include FAR keywords in the routine declarations,
 * this file won't actually work in 80x86 small/medium model; at least,
 * you probably won't be able to process useful-size images in only 64KB.
 */

GLOBAL(void FAR *)
jpeg_get_large (j_common_ptr cinfo, size_t sizeofobject)
{


		/**
		 ** revise at 2011-11-4
		 ** because if you use mmz malloc the mem, the capability of decode
		 ** will reduce
		 **/
        return (void FAR *) malloc(sizeofobject);

}

GLOBAL(void)
jpeg_free_large (j_common_ptr cinfo, void FAR * object, size_t sizeofobject)
{

       free(object);
		
}


/*
 * This routine computes the total memory space available for allocation.
 * It's impossible to do this in a portable way; our current solution is
 * to make the user tell us (with a default value set at compile time).
 * If you can actually get the available space, it's a good idea to subtract
 * a slop factor of 5% or so.
 */

#ifndef DEFAULT_MAX_MEM		/* so can override from makefile */
#define DEFAULT_MAX_MEM		10000000L /* default: ten megabyte */
#endif

GLOBAL(long)
jpeg_mem_available (j_common_ptr cinfo, long min_bytes_needed,
		    long max_bytes_needed, long already_allocated)
{

		/**
		** if you use the file to save the data that the mem is
		** insufficiency, the speed will down
		**/
#if 1
		return max_bytes_needed;
#else
		/**
         ** 这个地方是回写的，性能会变差
         **/
		return cinfo->mem->max_memory_to_use - already_allocated;
#endif
    
}


/*
 * Backing store (temporary file) management.
 * Backing store objects are only used when the value returned by
 * jpeg_mem_available is less than the total space needed.  You can dispense
 * with these routines if you have plenty of virtual memory; see jmemnobs.c.
 */


METHODDEF(void)
read_backing_store (j_common_ptr cinfo, backing_store_ptr info,
		    void FAR * buffer_address,
		    long file_offset, long byte_count)
{
  	memmove(buffer_address, info->addr + file_offset, byte_count);
}


METHODDEF(void)
write_backing_store (j_common_ptr cinfo, backing_store_ptr info,
		     void FAR * buffer_address,
		     long file_offset, long byte_count)
{
  	memmove(info->addr + file_offset, buffer_address, byte_count);
}


METHODDEF(void)
close_backing_store (j_common_ptr cinfo, backing_store_ptr info)
{
  	munmap(info->addr, info->size);
  	close(info->temp_file);
}


LOCAL(int)
get_ashmem(backing_store_ptr info, long total_bytes_needed)
{

	char path[1024];
	snprintf(path, 1023, "%d.tmp.ashmem", getpid());
	int fd = ashmem_create_region(path, total_bytes_needed);
	if (fd == -1)
	{
		return -1;
	}
	int err = ashmem_set_prot_region(fd, PROT_READ | PROT_WRITE);
	if (err) 
	{
		return -1;
	}
	
	info->addr = mmap(NULL, total_bytes_needed, PROT_READ | PROT_WRITE, MAP_PRIVATE, fd, 0);
	info->size = total_bytes_needed;
	info->temp_file = fd;
	
	return fd;
	
}


/*
 * Initial opening of a backing-store object.
 *
 * This version uses tmpfile(), which constructs a suitable file name
 * behind the scenes.  We don't have to use info->temp_name[] at all;
 * indeed, we can't even find out the actual name of the temp file.
 */

GLOBAL(void)
jpeg_open_backing_store (j_common_ptr cinfo, backing_store_ptr info,
			 long total_bytes_needed)
{

	if (get_ashmem(info, total_bytes_needed) == -1)
	{
		ERREXITS(cinfo, JERR_TFILE_CREATE, "");
	}
	
	info->read_backing_store  = read_backing_store;
	info->write_backing_store = write_backing_store;
	info->close_backing_store = close_backing_store;
  
}


/*
 * These routines take care of any system-dependent initialization and
 * cleanup required.
 */

GLOBAL(long)
jpeg_mem_init (j_common_ptr cinfo)
{

	/**
	** if you use the file to save the data that the mem is
	** insufficiency, the speed will down
	**/
#if 1
	/** 有多少分多少的 **/
	return 0;	
#else
	/** 可以分配的最大内存，当内存不足的时候这个地方就会发生异常 **/
	return DEFAULT_MAX_MEM;	/* default for max_memory_to_use */
#endif
		
}

GLOBAL(void)
jpeg_mem_term (j_common_ptr cinfo)
{
		/* no work */
		if (cinfo->is_decompressor)
		{
			/** revise at 2011-11-4
			 ** only decompress use the hard device, at this release device
			 ** this fuction should realse at jpeg_finish_decompress and destroy_decompress.
			 ** because it maybe call create decompressor is one time, and finish
			 ** will maybe many times but not call destory decompressor fuction,so
			 ** the device is not closed but has opened, so the signal has not realsed
			 ** this function can call many times, because at this function has check the device
			 **/
			JPEG_HDEC_CloseDev(cinfo);
		}
		JPEG_HDEC_Destroy(cinfo);
}
