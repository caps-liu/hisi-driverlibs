
/* pngread.c - read a PNG file
 *
 * Last changed in libpng 1.4.0 [January 3, 2010]
 * Copyright (c) 1998-2010 Glenn Randers-Pehrson
 * (Version 0.96 Copyright (c) 1996, 1997 Andreas Dilger)
 * (Version 0.88 Copyright (c) 1995, 1996 Guy Eric Schalnat, Group 42, Inc.)
 *
 * This code is released under the libpng license.
 * For conditions of distribution and use, see the disclaimer
 * and license in png.h
 *
 * This file contains routines that an application calls directly to
 * read a PNG file or stream.
 */

#define PNG_NO_PEDANTIC_WARNINGS
#include "png.h"

#ifdef HIPNG_ACCELERATE
#include "hipng_accelerate.h"
#include "hi_common.h"
#endif

#ifdef PNG_READ_SUPPORTED
#include "pngpriv.h"

FILE *g_DebugFile = NULL;

/* Create a PNG structure for reading, and allocate any memory needed. */
png_structp PNGAPI
png_create_read_struct(png_const_charp user_png_ver, png_voidp error_ptr,
   png_error_ptr error_fn, png_error_ptr warn_fn)
{

#ifdef PNG_USER_MEM_SUPPORTED
   return (png_create_read_struct_2(user_png_ver, error_ptr, error_fn,
      warn_fn, NULL, NULL, NULL));
}

/* Alternate create PNG structure for reading, and allocate any memory needed. */
png_structp PNGAPI
png_create_read_struct_2(png_const_charp user_png_ver, png_voidp error_ptr,
   png_error_ptr error_fn, png_error_ptr warn_fn, png_voidp mem_ptr,
   png_malloc_ptr malloc_fn, png_free_ptr free_fn)
{
#endif /* PNG_USER_MEM_SUPPORTED */

#ifdef PNG_SETJMP_SUPPORTED
   volatile
#endif
   png_structp png_ptr;
   volatile int png_cleanup_needed = 0;

#ifdef PNG_SETJMP_SUPPORTED
#ifdef USE_FAR_KEYWORD
   jmp_buf jmpbuf;
#endif
#endif

   int i;

   png_debug(1, "in png_create_read_struct");

#ifdef PNG_USER_MEM_SUPPORTED
   png_ptr = (png_structp)png_create_struct_2(PNG_STRUCT_PNG,
      malloc_fn, mem_ptr);
#else
   png_ptr = (png_structp)png_create_struct(PNG_STRUCT_PNG);
#endif
   if (png_ptr == NULL)
      return (NULL);

   /* Added at libpng-1.2.6 */
#ifdef PNG_SET_USER_LIMITS_SUPPORTED
   png_ptr->user_width_max = PNG_USER_WIDTH_MAX;
   png_ptr->user_height_max = PNG_USER_HEIGHT_MAX;
   /* Added at libpng-1.4.0 */
   png_ptr->user_chunk_cache_max = PNG_USER_CHUNK_CACHE_MAX;
#endif

#ifdef PNG_SETJMP_SUPPORTED
/* Applications that neglect to set up their own setjmp() and then
   encounter a png_error() will longjmp here.  Since the jmpbuf is
   then meaningless we abort instead of returning. */
#ifdef USE_FAR_KEYWORD
   if (setjmp(jmpbuf))
#else
   if (setjmp(png_jmpbuf(png_ptr))) /* Sets longjmp to match setjmp */
#endif
      PNG_ABORT();
#ifdef USE_FAR_KEYWORD
   png_memcpy(png_jmpbuf(png_ptr), jmpbuf, png_sizeof(jmp_buf));
#endif
#endif /* PNG_SETJMP_SUPPORTED */

#ifdef PNG_USER_MEM_SUPPORTED
   png_set_mem_fn(png_ptr, mem_ptr, malloc_fn, free_fn);
#endif

   png_set_error_fn(png_ptr, error_ptr, error_fn, warn_fn);

   if (user_png_ver)
   {
      i = 0;
      do
      {
         if (user_png_ver[i] != png_libpng_ver[i])
            png_ptr->flags |= PNG_FLAG_LIBRARY_MISMATCH;
      } while (png_libpng_ver[i++]);
    }
    else
         png_ptr->flags |= PNG_FLAG_LIBRARY_MISMATCH;


    if (png_ptr->flags & PNG_FLAG_LIBRARY_MISMATCH)
    {
       /* Libpng 0.90 and later are binary incompatible with libpng 0.89, so
       * we must recompile any applications that use any older library version.
       * For versions after libpng 1.0, we will be compatible, so we need
       * only check the first digit.
       */
      if (user_png_ver == NULL || user_png_ver[0] != png_libpng_ver[0] ||
          (user_png_ver[0] == '1' && user_png_ver[2] != png_libpng_ver[2]) ||
          (user_png_ver[0] == '0' && user_png_ver[2] < '9'))
      {
#ifdef PNG_STDIO_SUPPORTED
         char msg[80];
         if (user_png_ver)
         {
           png_snprintf(msg, 80,
              "Application was compiled with png.h from libpng-%.20s",
              user_png_ver);
           png_warning(png_ptr, msg);
         }
         png_snprintf(msg, 80,
             "Application  is  running with png.c from libpng-%.20s",
             png_libpng_ver);
         png_warning(png_ptr, msg);
#endif
#ifdef PNG_ERROR_NUMBERS_SUPPORTED
         png_ptr->flags = 0;
#endif
         png_warning(png_ptr,
            "Incompatible libpng version in application and library");

         png_cleanup_needed = 1;
      }
   }

   if (!png_cleanup_needed)
   {
   /* Initialize zbuf - compression buffer */
   png_ptr->zbuf_size = PNG_ZBUF_SIZE;
   png_ptr->zbuf = (png_bytep)png_malloc_warn(png_ptr,
     png_ptr->zbuf_size);
   if (png_ptr->zbuf == NULL)
        png_cleanup_needed = 1;
   }
   png_ptr->zstream.zalloc = png_zalloc;
   png_ptr->zstream.zfree = png_zfree;
   png_ptr->zstream.opaque = (voidpf)png_ptr;

   if (!png_cleanup_needed)
   {
      switch (inflateInit(&png_ptr->zstream))
      {
         case Z_OK: /* Do nothing */ break;
         case Z_MEM_ERROR:
         case Z_STREAM_ERROR: png_warning(png_ptr, "zlib memory error");
            png_cleanup_needed = 1; break;
         case Z_VERSION_ERROR: png_warning(png_ptr, "zlib version error");
            png_cleanup_needed = 1; break;
         default: png_warning(png_ptr, "Unknown zlib error");
            png_cleanup_needed = 1;
      }
   }

   if (png_cleanup_needed)
   {
      /* Clean up PNG structure and deallocate any memory. */
      png_free(png_ptr, png_ptr->zbuf);
      png_ptr->zbuf = NULL;
#ifdef PNG_USER_MEM_SUPPORTED
      png_destroy_struct_2((png_voidp)png_ptr,
         (png_free_ptr)free_fn, (png_voidp)mem_ptr);
#else
      png_destroy_struct((png_voidp)png_ptr);
#endif
      return (NULL);
   }

   png_ptr->zstream.next_out = png_ptr->zbuf;
   png_ptr->zstream.avail_out = (uInt)png_ptr->zbuf_size;

   png_set_read_fn(png_ptr, NULL, NULL);

#ifdef HIPNG_ACCELERATE
   png_ptr->private_ptr = (png_voidp)hipng_create_read_struct_hw(NULL, NULL, NULL, NULL);
#endif


   return (png_ptr);
}


#ifdef PNG_SEQUENTIAL_READ_SUPPORTED
/* Read the information before the actual image data.  This has been
 * changed in v0.90 to allow reading a file that already has the magic
 * bytes read from the stream.  You can tell libpng how many bytes have
 * been read from the beginning of the stream (up to the maximum of 8)
 * via png_set_sig_bytes(), and we will only check the remaining bytes
 * here.  The application can then have access to the signature bytes we
 * read if it is determined that this isn't a valid PNG file.
 */
void PNGAPI
png_read_info(png_structp png_ptr, png_infop info_ptr)
{
   png_debug(1, "in png_read_info");
 
   if (png_ptr == NULL || info_ptr == NULL)
      return;
 
   /* If we haven't checked all of the PNG signature bytes, do so now. */
   if (png_ptr->sig_bytes < 8)
   {
      png_size_t num_checked = png_ptr->sig_bytes,
                 num_to_check = 8 - num_checked;

#ifdef PNG_IO_STATE_SUPPORTED
      png_ptr->io_state = PNG_IO_READING | PNG_IO_SIGNATURE;
#endif

      png_read_data(png_ptr, &(info_ptr->signature[num_checked]), num_to_check);
      png_ptr->sig_bytes = 8;

      if (png_sig_cmp(info_ptr->signature, num_checked, num_to_check))
      {
         if (num_checked < 4 &&
             png_sig_cmp(info_ptr->signature, num_checked, num_to_check - 4))
            png_error(png_ptr, "Not a PNG file");
         else
            png_error(png_ptr, "PNG file corrupted by ASCII conversion");
      }
      if (num_checked < 3)
         png_ptr->mode |= PNG_HAVE_PNG_SIGNATURE;
   }

   for (;;)
   {
      PNG_IHDR;
      PNG_IDAT;
      PNG_IEND;
      PNG_PLTE;
#ifdef PNG_READ_bKGD_SUPPORTED
      PNG_bKGD;
#endif
#ifdef PNG_READ_cHRM_SUPPORTED
      PNG_cHRM;
#endif
#ifdef PNG_READ_gAMA_SUPPORTED
      PNG_gAMA;
#endif
#ifdef PNG_READ_hIST_SUPPORTED
      PNG_hIST;
#endif
#ifdef PNG_READ_iCCP_SUPPORTED
      PNG_iCCP;
#endif
#ifdef PNG_READ_iTXt_SUPPORTED
      PNG_iTXt;
#endif
#ifdef PNG_READ_oFFs_SUPPORTED
      PNG_oFFs;
#endif
#ifdef PNG_READ_pCAL_SUPPORTED
      PNG_pCAL;
#endif
#ifdef PNG_READ_pHYs_SUPPORTED
      PNG_pHYs;
#endif
#ifdef PNG_READ_sBIT_SUPPORTED
      PNG_sBIT;
#endif
#ifdef PNG_READ_sCAL_SUPPORTED
      PNG_sCAL;
#endif
#ifdef PNG_READ_sPLT_SUPPORTED
      PNG_sPLT;
#endif
#ifdef PNG_READ_sRGB_SUPPORTED
      PNG_sRGB;
#endif
#ifdef PNG_READ_tEXt_SUPPORTED
      PNG_tEXt;
#endif
#ifdef PNG_READ_tIME_SUPPORTED
      PNG_tIME;
#endif
#ifdef PNG_READ_tRNS_SUPPORTED
      PNG_tRNS;
#endif
#ifdef PNG_READ_zTXt_SUPPORTED
      PNG_zTXt;
#endif
      png_uint_32 length = png_read_chunk_header(png_ptr);
      PNG_CONST png_bytep chunk_name = png_ptr->chunk_name;

      /* This should be a binary subdivision search or a hash for
       * matching the chunk name rather than a linear search.
       */
      if (!png_memcmp(chunk_name, png_IDAT, 4))
        if (png_ptr->mode & PNG_AFTER_IDAT)
          png_ptr->mode |= PNG_HAVE_CHUNK_AFTER_IDAT;

      if (!png_memcmp(chunk_name, png_IHDR, 4))
         png_handle_IHDR(png_ptr, info_ptr, length);
      else if (!png_memcmp(chunk_name, png_IEND, 4))
         png_handle_IEND(png_ptr, info_ptr, length);
#ifdef PNG_HANDLE_AS_UNKNOWN_SUPPORTED
      else if (png_handle_as_unknown(png_ptr, chunk_name))
      {
         if (!png_memcmp(chunk_name, png_IDAT, 4))
            png_ptr->mode |= PNG_HAVE_IDAT;
         png_handle_unknown(png_ptr, info_ptr, length);
         if (!png_memcmp(chunk_name, png_PLTE, 4))
            png_ptr->mode |= PNG_HAVE_PLTE;
         else if (!png_memcmp(chunk_name, png_IDAT, 4))
         {
            if (!(png_ptr->mode & PNG_HAVE_IHDR))
               png_error(png_ptr, "Missing IHDR before IDAT");
            else if (png_ptr->color_type == PNG_COLOR_TYPE_PALETTE &&
                     !(png_ptr->mode & PNG_HAVE_PLTE))
               png_error(png_ptr, "Missing PLTE before IDAT");
            break;
         }
      }
#endif
      else if (!png_memcmp(chunk_name, png_PLTE, 4))
         png_handle_PLTE(png_ptr, info_ptr, length);
      else if (!png_memcmp(chunk_name, png_IDAT, 4))
      {
         if (!(png_ptr->mode & PNG_HAVE_IHDR))
            png_error(png_ptr, "Missing IHDR before IDAT");
         else if (png_ptr->color_type == PNG_COLOR_TYPE_PALETTE &&
                  !(png_ptr->mode & PNG_HAVE_PLTE))
            png_error(png_ptr, "Missing PLTE before IDAT");

         png_ptr->idat_size = length;
         png_ptr->mode |= PNG_HAVE_IDAT;
         break;
      }
#ifdef PNG_READ_bKGD_SUPPORTED
      else if (!png_memcmp(chunk_name, png_bKGD, 4))
         png_handle_bKGD(png_ptr, info_ptr, length);
#endif
#ifdef PNG_READ_cHRM_SUPPORTED
      else if (!png_memcmp(chunk_name, png_cHRM, 4))
         png_handle_cHRM(png_ptr, info_ptr, length);
#endif
#ifdef PNG_READ_gAMA_SUPPORTED
      else if (!png_memcmp(chunk_name, png_gAMA, 4))
         png_handle_gAMA(png_ptr, info_ptr, length);
#endif
#ifdef PNG_READ_hIST_SUPPORTED
      else if (!png_memcmp(chunk_name, png_hIST, 4))
         png_handle_hIST(png_ptr, info_ptr, length);
#endif
#ifdef PNG_READ_oFFs_SUPPORTED
      else if (!png_memcmp(chunk_name, png_oFFs, 4))
         png_handle_oFFs(png_ptr, info_ptr, length);
#endif
#ifdef PNG_READ_pCAL_SUPPORTED
      else if (!png_memcmp(chunk_name, png_pCAL, 4))
         png_handle_pCAL(png_ptr, info_ptr, length);
#endif
#ifdef PNG_READ_sCAL_SUPPORTED
      else if (!png_memcmp(chunk_name, png_sCAL, 4))
         png_handle_sCAL(png_ptr, info_ptr, length);
#endif
#ifdef PNG_READ_pHYs_SUPPORTED
      else if (!png_memcmp(chunk_name, png_pHYs, 4))
         png_handle_pHYs(png_ptr, info_ptr, length);
#endif
#ifdef PNG_READ_sBIT_SUPPORTED
      else if (!png_memcmp(chunk_name, png_sBIT, 4))
         png_handle_sBIT(png_ptr, info_ptr, length);
#endif
#ifdef PNG_READ_sRGB_SUPPORTED
      else if (!png_memcmp(chunk_name, png_sRGB, 4))
         png_handle_sRGB(png_ptr, info_ptr, length);
#endif
#ifdef PNG_READ_iCCP_SUPPORTED
      else if (!png_memcmp(chunk_name, png_iCCP, 4))
         png_handle_iCCP(png_ptr, info_ptr, length);
#endif
#ifdef PNG_READ_sPLT_SUPPORTED
      else if (!png_memcmp(chunk_name, png_sPLT, 4))
         png_handle_sPLT(png_ptr, info_ptr, length);
#endif
#ifdef PNG_READ_tEXt_SUPPORTED
      else if (!png_memcmp(chunk_name, png_tEXt, 4))
         png_handle_tEXt(png_ptr, info_ptr, length);
#endif
#ifdef PNG_READ_tIME_SUPPORTED
      else if (!png_memcmp(chunk_name, png_tIME, 4))
         png_handle_tIME(png_ptr, info_ptr, length);
#endif
#ifdef PNG_READ_tRNS_SUPPORTED
      else if (!png_memcmp(chunk_name, png_tRNS, 4))
         png_handle_tRNS(png_ptr, info_ptr, length);
#endif
#ifdef PNG_READ_zTXt_SUPPORTED
      else if (!png_memcmp(chunk_name, png_zTXt, 4))
         png_handle_zTXt(png_ptr, info_ptr, length);
#endif
#ifdef PNG_READ_iTXt_SUPPORTED
      else if (!png_memcmp(chunk_name, png_iTXt, 4))
         png_handle_iTXt(png_ptr, info_ptr, length);
#endif
      else
         png_handle_unknown(png_ptr, info_ptr, length);
   }
}
#endif /* PNG_SEQUENTIAL_READ_SUPPORTED */

/* Optional call to update the users info_ptr structure */
void PNGAPI
png_read_update_info(png_structp png_ptr, png_infop info_ptr)
{
   png_debug(1, "in png_read_update_info");
 
   if (png_ptr == NULL)
      return;
   if (!(png_ptr->flags & PNG_FLAG_ROW_INIT))
      png_read_start_row(png_ptr);
   else
      png_warning(png_ptr,
      "Ignoring extra png_read_update_info() call; row buffer not reallocated");

   png_read_transform_info(png_ptr, info_ptr);
}

#ifdef PNG_SEQUENTIAL_READ_SUPPORTED
/* Initialize palette, background, etc, after transformations
 * are set, but before any reading takes place.  This allows
 * the user to obtain a gamma-corrected palette, for example.
 * If the user doesn't call this, we will do it ourselves.
 */
void PNGAPI
png_start_read_image(png_structp png_ptr)
{
   png_debug(1, "in png_start_read_image");
 
   if (png_ptr == NULL)
      return;
   if (!(png_ptr->flags & PNG_FLAG_ROW_INIT))
      png_read_start_row(png_ptr);
}
#endif /* PNG_SEQUENTIAL_READ_SUPPORTED */

#ifdef PNG_SEQUENTIAL_READ_SUPPORTED
void PNGAPI
png_read_row(png_structp png_ptr, png_bytep row, png_bytep dsp_row)
{
   PNG_IDAT;
   PNG_CONST int png_pass_dsp_mask[7] = {0xff, 0x0f, 0xff, 0x33, 0xff, 0x55,
      0xff};
   PNG_CONST int png_pass_mask[7] = {0x80, 0x08, 0x88, 0x22, 0xaa, 0x55, 0xff};
   int ret;
 
   if (png_ptr == NULL)
      return;
 
   png_debug2(1, "in png_read_row (row %lu, pass %d)",
      (unsigned long) png_ptr->row_number, png_ptr->pass);

   if (!(png_ptr->flags & PNG_FLAG_ROW_INIT))
      png_read_start_row(png_ptr);
   
   if (png_ptr->row_number == 0 && png_ptr->pass == 0)
   {
   /* Check for transforms that have been set but were defined out */
#if defined(PNG_WRITE_INVERT_SUPPORTED) && !defined(PNG_READ_INVERT_SUPPORTED)
   if (png_ptr->transformations & PNG_INVERT_MONO)
      png_warning(png_ptr, "PNG_READ_INVERT_SUPPORTED is not defined");
#endif
#if defined(PNG_WRITE_FILLER_SUPPORTED) && !defined(PNG_READ_FILLER_SUPPORTED)
   if (png_ptr->transformations & PNG_FILLER)
      png_warning(png_ptr, "PNG_READ_FILLER_SUPPORTED is not defined");
#endif
#if defined(PNG_WRITE_PACKSWAP_SUPPORTED) && !defined(PNG_READ_PACKSWAP_SUPPORTED)
   if (png_ptr->transformations & PNG_PACKSWAP)
      png_warning(png_ptr, "PNG_READ_PACKSWAP_SUPPORTED is not defined");
#endif
#if defined(PNG_WRITE_PACK_SUPPORTED) && !defined(PNG_READ_PACK_SUPPORTED)
   if (png_ptr->transformations & PNG_PACK)
      png_warning(png_ptr, "PNG_READ_PACK_SUPPORTED is not defined");
#endif
#if defined(PNG_WRITE_SHIFT_SUPPORTED) && !defined(PNG_READ_SHIFT_SUPPORTED)
   if (png_ptr->transformations & PNG_SHIFT)
      png_warning(png_ptr, "PNG_READ_SHIFT_SUPPORTED is not defined");
#endif
#if defined(PNG_WRITE_BGR_SUPPORTED) && !defined(PNG_READ_BGR_SUPPORTED)
   if (png_ptr->transformations & PNG_BGR)
      png_warning(png_ptr, "PNG_READ_BGR_SUPPORTED is not defined");
#endif
#if defined(PNG_WRITE_SWAP_SUPPORTED) && !defined(PNG_READ_SWAP_SUPPORTED)
   if (png_ptr->transformations & PNG_SWAP_BYTES)
      png_warning(png_ptr, "PNG_READ_SWAP_SUPPORTED is not defined");
#endif
   }

#ifdef PNG_READ_INTERLACING_SUPPORTED
   /* If interlaced and we do not need a new row, combine row and return */
   if (png_ptr->interlaced && (png_ptr->transformations & PNG_INTERLACE))
   {
      switch (png_ptr->pass)
      {
         case 0:
            if (png_ptr->row_number & 0x07)
            {
               if (dsp_row != NULL)
                  png_combine_row(png_ptr, dsp_row,
                     png_pass_dsp_mask[png_ptr->pass]);
               png_read_finish_row(png_ptr);
               return;
            }
            break;
         case 1:
            if ((png_ptr->row_number & 0x07) || png_ptr->width < 5)
            {
               if (dsp_row != NULL)
                  png_combine_row(png_ptr, dsp_row,
                     png_pass_dsp_mask[png_ptr->pass]);
               png_read_finish_row(png_ptr);
               return;
            }
            break;
         case 2:
            if ((png_ptr->row_number & 0x07) != 4)
            {
               if (dsp_row != NULL && (png_ptr->row_number & 4))
                  png_combine_row(png_ptr, dsp_row,
                     png_pass_dsp_mask[png_ptr->pass]);
               png_read_finish_row(png_ptr);
               return;
            }
            break;
         case 3:
            if ((png_ptr->row_number & 3) || png_ptr->width < 3)
            {
               if (dsp_row != NULL)
                  png_combine_row(png_ptr, dsp_row,
                     png_pass_dsp_mask[png_ptr->pass]);
               png_read_finish_row(png_ptr);
               return;
            }
            break;
         case 4:
            if ((png_ptr->row_number & 3) != 2)
            {
               if (dsp_row != NULL && (png_ptr->row_number & 2))
                  png_combine_row(png_ptr, dsp_row,
                     png_pass_dsp_mask[png_ptr->pass]);
               png_read_finish_row(png_ptr);
               return;
            }
            break;
         case 5:
            if ((png_ptr->row_number & 1) || png_ptr->width < 2)
            {
               if (dsp_row != NULL)
                  png_combine_row(png_ptr, dsp_row,
                     png_pass_dsp_mask[png_ptr->pass]);
               png_read_finish_row(png_ptr);
               return;
            }
            break;
         case 6:
            if (!(png_ptr->row_number & 1))
            {
               png_read_finish_row(png_ptr);
               return;
            }
            break;
      }
   }
#endif

   if (!(png_ptr->mode & PNG_HAVE_IDAT))
      png_error(png_ptr, "Invalid attempt to read row data");

   png_ptr->zstream.next_out = png_ptr->row_buf;
   png_ptr->zstream.avail_out = (uInt)png_ptr->irowbytes;
   do
   {
      if (!(png_ptr->zstream.avail_in))
      {
         while (!png_ptr->idat_size)
         {
            png_crc_finish(png_ptr, 0);

            png_ptr->idat_size = png_read_chunk_header(png_ptr);
            if (png_memcmp(png_ptr->chunk_name, png_IDAT, 4))
               png_error(png_ptr, "Not enough image data");
         }
         png_ptr->zstream.avail_in = (uInt)png_ptr->zbuf_size;
         png_ptr->zstream.next_in = png_ptr->zbuf;
         if (png_ptr->zbuf_size > png_ptr->idat_size)
            png_ptr->zstream.avail_in = (uInt)png_ptr->idat_size;
         png_crc_read(png_ptr, png_ptr->zbuf,
            (png_size_t)png_ptr->zstream.avail_in);
         png_ptr->idat_size -= png_ptr->zstream.avail_in;
      }
      ret = inflate(&png_ptr->zstream, Z_PARTIAL_FLUSH);
      if (ret == Z_STREAM_END)
      {
         if (png_ptr->zstream.avail_out || png_ptr->zstream.avail_in ||
            png_ptr->idat_size)
            png_benign_error(png_ptr, "Extra compressed data");
         png_ptr->mode |= PNG_AFTER_IDAT;
         png_ptr->flags |= PNG_FLAG_ZLIB_FINISHED;
         break;
      }
      if (ret != Z_OK)
         png_error(png_ptr, png_ptr->zstream.msg ? png_ptr->zstream.msg :
                   "Decompression error");

   } while (png_ptr->zstream.avail_out);

   png_ptr->row_info.color_type = png_ptr->color_type;
   png_ptr->row_info.width = png_ptr->iwidth;
   png_ptr->row_info.channels = png_ptr->channels;
   png_ptr->row_info.bit_depth = png_ptr->bit_depth;
   png_ptr->row_info.pixel_depth = png_ptr->pixel_depth;
   png_ptr->row_info.rowbytes = PNG_ROWBYTES(png_ptr->row_info.pixel_depth,
       png_ptr->row_info.width);

   #ifdef PNGDEBUG
    if (g_DebugFile == NULL)
    {
        g_DebugFile = fopen("debug.txt", "wb+");
    }
   
   fprintf(g_DebugFile, "[%d pass]before filter:\n", png_ptr->pass);
    {
        unsigned int i;
        for (i = 0; i < png_ptr->row_info.rowbytes; i++)
        {
            fprintf(g_DebugFile, "%u ", png_ptr->row_buf[i+1]);
        }
    }
    fprintf(g_DebugFile, "\n");
   #endif
   
   if (png_ptr->row_buf[0])
   png_read_filter_row(png_ptr, &(png_ptr->row_info),
      png_ptr->row_buf + 1, png_ptr->prev_row + 1,
      (int)(png_ptr->row_buf[0]));

    #ifdef PNGDEBUG
    fprintf(g_DebugFile, "[%d pass]after filter:\n", png_ptr->pass);
    {
        unsigned int i;
        for (i = 0; i < png_ptr->row_info.rowbytes; i++)
        {
            fprintf(g_DebugFile, "%u ", png_ptr->row_buf[i+1]);
        }
    }
    fprintf(g_DebugFile, "\n");
    #endif

   png_memcpy(png_ptr->prev_row, png_ptr->row_buf, png_ptr->rowbytes + 1);

#ifdef PNG_MNG_FEATURES_SUPPORTED
   if ((png_ptr->mng_features_permitted & PNG_FLAG_MNG_FILTER_64) &&
      (png_ptr->filter_type == PNG_INTRAPIXEL_DIFFERENCING))
   {
      /* Intrapixel differencing */
      png_do_read_intrapixel(&(png_ptr->row_info), png_ptr->row_buf + 1);
   }
#endif


   if (png_ptr->transformations || (png_ptr->flags&PNG_FLAG_STRIP_ALPHA))
      png_do_read_transformations(png_ptr);

#ifdef PNG_READ_INTERLACING_SUPPORTED
   /* Blow up interlaced rows to full size */
   if (png_ptr->interlaced &&
      (png_ptr->transformations & PNG_INTERLACE))
   {
      if (png_ptr->pass < 6)
         /* Old interface (pre-1.0.9):
          * png_do_read_interlace(&(png_ptr->row_info),
          *    png_ptr->row_buf + 1, png_ptr->pass, png_ptr->transformations);
          */
         png_do_read_interlace(png_ptr);

      if (dsp_row != NULL)
         png_combine_row(png_ptr, dsp_row,
            png_pass_dsp_mask[png_ptr->pass]);
      if (row != NULL)
         png_combine_row(png_ptr, row,
            png_pass_mask[png_ptr->pass]);
   }
   else
#endif
   {
      if (row != NULL)
         png_combine_row(png_ptr, row, 0xff);
      if (dsp_row != NULL)
         png_combine_row(png_ptr, dsp_row, 0xff);
   }
   png_read_finish_row(png_ptr);

   if (png_ptr->read_row_fn != NULL)
      (*(png_ptr->read_row_fn))(png_ptr, png_ptr->row_number, png_ptr->pass);
}
#endif /* PNG_SEQUENTIAL_READ_SUPPORTED */

#ifdef PNG_SEQUENTIAL_READ_SUPPORTED
/* Read one or more rows of image data.  If the image is interlaced,
 * and png_set_interlace_handling() has been called, the rows need to
 * contain the contents of the rows from the previous pass.  If the
 * image has alpha or transparency, and png_handle_alpha()[*] has been
 * called, the rows contents must be initialized to the contents of the
 * screen.
 *
 * "row" holds the actual image, and pixels are placed in it
 * as they arrive.  If the image is displayed after each pass, it will
 * appear to "sparkle" in.  "display_row" can be used to display a
 * "chunky" progressive image, with finer detail added as it becomes
 * available.  If you do not want this "chunky" display, you may pass
 * NULL for display_row.  If you do not want the sparkle display, and
 * you have not called png_handle_alpha(), you may pass NULL for rows.
 * If you have called png_handle_alpha(), and the image has either an
 * alpha channel or a transparency chunk, you must provide a buffer for
 * rows.  In this case, you do not have to provide a display_row buffer
 * also, but you may.  If the image is not interlaced, or if you have
 * not called png_set_interlace_handling(), the display_row buffer will
 * be ignored, so pass NULL to it.
 *
 * [*] png_handle_alpha() does not exist yet, as of this version of libpng
 */

void PNGAPI
png_read_rows(png_structp png_ptr, png_bytepp row,
   png_bytepp display_row, png_uint_32 num_rows)
{
   png_uint_32 i;
   png_bytepp rp;
   png_bytepp dp;

   png_debug(1, "in png_read_rows");
 
   if (png_ptr == NULL)
      return;
   rp = row;
   dp = display_row;
   if (rp != NULL && dp != NULL)
      for (i = 0; i < num_rows; i++)
      {
         png_bytep rptr = *rp++;
         png_bytep dptr = *dp++;

         png_read_row(png_ptr, rptr, dptr);
      }
   else if (rp != NULL)
      for (i = 0; i < num_rows; i++)
      {
         png_bytep rptr = *rp;
         png_read_row(png_ptr, rptr, NULL);
         rp++;
      }
   else if (dp != NULL)
      for (i = 0; i < num_rows; i++)
      {
         png_bytep dptr = *dp;
         png_read_row(png_ptr, NULL, dptr);
         dp++;
      }
}
#endif /* PNG_SEQUENTIAL_READ_SUPPORTED */

#ifdef PNG_SEQUENTIAL_READ_SUPPORTED
/* Read the entire image.  If the image has an alpha channel or a tRNS
 * chunk, and you have called png_handle_alpha()[*], you will need to
 * initialize the image to the current image that PNG will be overlaying.
 * We set the num_rows again here, in case it was incorrectly set in
 * png_read_start_row() by a call to png_read_update_info() or
 * png_start_read_image() if png_set_interlace_handling() wasn't called
 * prior to either of these functions like it should have been.  You can
 * only call this function once.  If you desire to have an image for
 * each pass of a interlaced image, use png_read_rows() instead.
 *
 * [*] png_handle_alpha() does not exist yet, as of this version of libpng
 */

#ifdef HIPNG_ACCELERATE

#define MAX_WIDTH 8192
#define MAX_HEIGHT 8192
#define MIN_HEIGHT 1

void png_read_image_sw(png_structp png_ptr, png_bytepp image);

void png_select_decmode(png_structp png_ptr, png_bytepp image)
{
    hipng_struct_hwctl_s *pstHwStruct = (hipng_struct_hwctl_s *)(png_ptr->private_ptr);
    HI_U32 u32Phyaddr = 0;
    HI_U32 u32Size;
    HI_U32 u32Stride = 0;
    HI_S32 s32Ret;
    HI_U32 i;

    if (png_ptr->interlaced || (png_ptr->transformations & PNG_PACK)
        || (png_ptr->transformations & PNG_SHIFT)
        || (png_ptr->transformations & PNG_SWAP_BYTES)
        || (png_ptr->transformations & PNG_INVERT_MONO)
        || (png_ptr->transformations & PNG_DITHER)
        || (png_ptr->transformations & PNG_BACKGROUND)
        || (png_ptr->transformations & PNG_BACKGROUND_EXPAND)
        || (png_ptr->transformations & PNG_GAMMA)
        || (png_ptr->transformations & PNG_INVERT_ALPHA)
        || (png_ptr->transformations & PNG_USER_TRANSFORM)
        || (png_ptr->transformations & PNG_RGB_TO_GRAY_ERR)
        || (png_ptr->transformations & PNG_RGB_TO_GRAY_WARN)
        || (png_ptr->transformations & PNG_RGB_TO_GRAY) 
        || ((png_ptr->transformations & PNG_FILLER) && (!(png_ptr->flags & PNG_FLAG_FILLER_AFTER) || !(png_ptr->transformations & PNG_ADD_ALPHA)))
        || (png_ptr->width >= MAX_WIDTH)
        || (png_ptr->height >= MAX_HEIGHT || png_ptr->height == MIN_HEIGHT))
    {
        pstHwStruct->u8DecMode &= ~HIPNG_HWDEC_MASK;
        goto CHECKSOFT;
    }

    /* 判断目标内存是否为物理内存且stride是否满足要求 */
    s32Ret = HI_MMZ_GetPhyaddr(image[0], &u32Phyaddr, &u32Size);
    if (s32Ret < 0)
    {
        //pstHwStruct->u8DecMode &= ~HIPNG_HWDEC_MASK;
        pstHwStruct->u8DecMode |= HIPNG_DEC_COPY;
        goto CHECKSOFT;
    }

    if ( (image[1] - image[0] < 0) ||(image[1] - image[0] > u32Size) ||  (((image[1] - image[0]) & 0xf) != 0))
    {
        //pstHwStruct->u8DecMode &= ~HIPNG_HWDEC_MASK;
        pstHwStruct->u8DecMode |= HIPNG_DEC_COPY;
        goto CHECKSOFT;
    }

    u32Stride = image[1] - image[0];

    for (i = 2; i < png_ptr->height; i++)
    {
        if ((image[i] - image[0] > u32Size) || ((image[i] - image[i - 1]) != u32Stride)
            || (image[i] - image[0]  < 0) || (image[i] - image[i - 1] < 0))
        {
            //pstHwStruct->u8DecMode &= ~HIPNG_HWDEC_MASK;
            pstHwStruct->u8DecMode |= HIPNG_DEC_COPY;
            goto CHECKSOFT;
        }
    }

CHECKSOFT:

    if ((png_ptr->transformations & HIPNG_ARGB1555)
        || (png_ptr->transformations & HIPNG_ARGB4444)
        || (png_ptr->transformations & HIPNG_RGB565)
        || (png_ptr->transformations & HIPNG_RGB555)
        || (png_ptr->transformations & HIPNG_RGB444))
    {
        pstHwStruct->u8DecMode &= ~HIPNG_SWDEC_MASK;
    }

    pstHwStruct->u8DecMode &= (pstHwStruct->u8UserDecMode | 0xfc);

    
    if ((pstHwStruct->u8DecMode & HIPNG_SWDEC_MASK) && (pstHwStruct->u8DecMode & HIPNG_HWDEC_MASK))
    {
        if (png_ptr->height * png_ptr->width < pstHwStruct->u32InflexionSize)
    
{
            pstHwStruct->u8DecMode &= ~HIPNG_HWDEC_MASK;
       }
    }

    if ((pstHwStruct->u8DecMode & HIPNG_HWDEC_MASK) && (pstHwStruct->u8DecMode & HIPNG_DEC_COPY))
    {
        pstHwStruct->u32Phyaddr = (HI_U32)HI_MMZ_New(((pstHwStruct->u32Stride + 0xf)&0xfffffff0) * png_ptr->height, 
            16, HI_NULL, "HIPNG_IMAGE_BUF");
        if (0 == pstHwStruct->u32Phyaddr)
        {
            pstHwStruct->u8DecMode &= ~HIPNG_HWDEC_MASK;
        }
    }
    else
    {
    pstHwStruct->u32Phyaddr = u32Phyaddr;
    pstHwStruct->u32Stride = u32Stride;
    }


    if (!(pstHwStruct->u8DecMode & HIPNG_SWDEC_MASK) && !(pstHwStruct->u8DecMode & HIPNG_HWDEC_MASK))
    {
        png_error(png_ptr, "Unsupport!\n");
    }

    return;
}

void png_read_fn(png_structp png_ptr, png_bytep pbuf, png_size_t size)
{
    hipng_struct_hwctl_s *pstHwStruct = (hipng_struct_hwctl_s *)(png_ptr->private_ptr);
    png_size_t read = 0;

    read = pstHwStruct->read_data_fn_hw(pbuf, size, pstHwStruct->s32Handle);
    if (read != size)
    {
        size -= read;
        pstHwStruct->read_data_fn(png_ptr, pbuf + read, size);
    }

    return;
}

void png_switch_swdec(png_structp png_ptr, png_bytepp image)
{
    hipng_struct_hwctl_s *pstHwStruct = (hipng_struct_hwctl_s *)(png_ptr->private_ptr);
    HI_S32 s32Ret = 0;
    
    pstHwStruct->read_data_fn = png_ptr->read_data_fn;
    s32Ret = hipng_get_readfn_hw(png_ptr);
    if (s32Ret < 0)
    {
        png_error(png_ptr, "Internal Err!\n");
    }

    if (pstHwStruct->read_data_fn_hw != NULL)
    {
        png_ptr->read_data_fn = png_read_fn;
        png_ptr->idat_size = png_read_chunk_header(png_ptr);
        printf("[%s, %d]%x\n", __FILE__, __LINE__, png_ptr->idat_size);
    }

    /*Start software decode*/
    /*CNcomment:启动软解码*/
    png_read_image_sw(png_ptr, image);

    /*Resume original IO funciton after finishing decode*/
    /*CNcomment:解码完成后，恢复原来的IO接口 */
    png_ptr->read_data_fn = pstHwStruct->read_data_fn;

    return;
}

void hipng_copy_image(png_structp png_ptr, png_bytepp image)
{
    HI_U32 i;
    HI_U8 *pImage = HI_NULL;
    hipng_struct_hwctl_s *pstHwStruct = HI_NULL;

    //assert(png_ptr != HI_NULL);

    pstHwStruct = (hipng_struct_hwctl_s *)(png_ptr->private_ptr);

    //assert(pstHwStruct != HI_NULL);

    pImage = HI_MMZ_Map(pstHwStruct->u32Phyaddr, HI_FALSE);
    
    for (i = 0; i < png_ptr->height; i++)
    {
        memcpy(image[i], pImage + ((pstHwStruct->u32Stride + 0xf)&0xfffffff0) * i, pstHwStruct->u32Stride);
    }

    HI_MMZ_Unmap(pstHwStruct->u32Phyaddr);

    return;
}

void png_read_image_2(png_structp png_ptr, png_bytepp image)
{    
    hipng_struct_hwctl_s *pstHwStruct = (hipng_struct_hwctl_s *)(png_ptr->private_ptr);
    HI_S32 s32Ret = 0;

    if (HI_NULL == pstHwStruct)
    {
        if ((png_ptr->transformations & HIPNG_ARGB1555)
        || (png_ptr->transformations & HIPNG_ARGB4444)
        || (png_ptr->transformations & HIPNG_RGB565)
        || (png_ptr->transformations & HIPNG_RGB555)
        || (png_ptr->transformations & HIPNG_RGB444))
        {
            png_error(png_ptr, "Unsupport!\n");    
        }
        else
        {
            png_read_image_sw(png_ptr, image); 
            
            return;
        }
    
    }

    pstHwStruct->image = image;
    pstHwStruct->eState = HI_PNG_STATE_DECING;
    
    /*Select software or hareware decode*/
    /*CNcomment:软硬件解码策略选择 */
    png_select_decmode(png_ptr, image);

    if (pstHwStruct->u8DecMode & HIPNG_HWDEC_MASK)
    {
        s32Ret = hipng_read_image_hw(png_ptr);
        if (s32Ret < 0)
        {
            pstHwStruct->eState = HI_PNG_STATE_ERR;
            if (!(pstHwStruct->u8DecMode & HIPNG_SWDEC_MASK))
            {
                png_error(png_ptr, "Internal Err!\n");
            }

            png_switch_swdec(png_ptr, image);   

            pstHwStruct->eState = HI_PNG_STATE_FINISH;
        }
        else if ( pstHwStruct->u8DecMode & HIPNG_DEC_COPY)
        {
            hipng_copy_image(png_ptr, image);
        }
    }
    else
    {
        /*Start software decode*/
        /*CNcomment:启动软解码 */
        png_read_image_sw(png_ptr, image);

        pstHwStruct->eState = HI_PNG_STATE_FINISH;    
    }

    if (pstHwStruct && pstHwStruct->bSyncDec)
    {
        pstHwStruct->eState = HI_PNG_STATE_FINISH;
    }
    
    return;
}

void PNGAPI 
png_read_image_async(png_structp png_ptr, png_bytepp image)
{    
    hipng_struct_hwctl_s *pstHwStruct = NULL;
    
    if (NULL == png_ptr)
    {
        return;
    }
    
    pstHwStruct = (hipng_struct_hwctl_s *)(png_ptr->private_ptr);
    if (pstHwStruct)
        pstHwStruct->bSyncDec = HI_FALSE;

    png_read_image_2(png_ptr, image);

    return;
}

void PNGAPI
png_get_state(png_structp png_ptr, PNG_BOOL bBlock,PNG_STATE_E *pState)
{
    HI_S32 s32Ret = 0;
    hipng_struct_hwctl_s *pstHwStruct = NULL;

    if ((NULL == png_ptr) || (NULL == pState))
    {
        return;
    }

    pstHwStruct = (hipng_struct_hwctl_s *)(png_ptr->private_ptr);

    if (NULL == pstHwStruct)
    {
        if (png_ptr->flags & PNG_FLAG_ZLIB_FINISHED)
        {
            *pState = HI_PNG_STATE_FINISH;
        }
        else
        {
            *pState = HI_PNG_STATE_NOSTART;
        }
        return;
    }

    if (pstHwStruct->bSyncDec)
    {
        *pState = pstHwStruct->eState;
    }
    else
    {
        if (pstHwStruct->eState == HI_PNG_STATE_DECING)
        {
            s32Ret = hipng_get_result(png_ptr, bBlock);
            if (s32Ret < 0)
            {
                png_error(png_ptr, "Internal Err!\n");
            }
        }
        
        if (pstHwStruct->eState == HI_PNG_STATE_ERR)
        {   
            png_switch_swdec(png_ptr, pstHwStruct->image);
            pstHwStruct->eState = HI_PNG_STATE_FINISH;
            *pState = HI_PNG_STATE_FINISH;
        }
        else
        {
            *pState = pstHwStruct->eState;
            if (*pState == HI_PNG_STATE_FINISH)
            {
                if ((pstHwStruct->u8DecMode & HIPNG_HWDEC_MASK) 
                    && (pstHwStruct->u8DecMode & HIPNG_DEC_COPY)
                    && !(png_ptr->flags & PNG_FLAG_ZLIB_FINISHED))
                {
                    hipng_copy_image(png_ptr, pstHwStruct->image);
                }
            }
        }
    }

    return;
}

void PNGAPI
png_set_inflexion(png_structp png_ptr, png_uint_32 u32InflexionSize)
{
    hipng_struct_hwctl_s *pstHwStruct = NULL;
    if (NULL == png_ptr)
    {
        return;
    }
    
    pstHwStruct = (hipng_struct_hwctl_s *)(png_ptr->private_ptr);
    if (NULL == pstHwStruct)
    {
        return;    
    }
    
    pstHwStruct->u32InflexionSize = u32InflexionSize;

    return;
}

#endif

#ifdef HIPNG_ACCELERATE
void PNGAPI
png_read_image(png_structp png_ptr, png_bytepp image)
{
    hipng_struct_hwctl_s *pstHwStruct = NULL;

    if (NULL == png_ptr)
    {
        return;
    }

    pstHwStruct = (hipng_struct_hwctl_s *)(png_ptr->private_ptr);
    if (pstHwStruct)
    {
        pstHwStruct->bSyncDec = HI_TRUE;
    }

    png_read_image_2(png_ptr, image);

    return;
}

void PNGAPI
png_read_image_sw(png_structp png_ptr, png_bytepp image)
{
   png_uint_32 i, image_height;
   int pass, j;
   png_bytepp rp;

   png_debug(1, "in png_read_image");
 
   if (png_ptr == NULL)
      return;

#ifdef PNG_READ_INTERLACING_SUPPORTED
   pass = png_set_interlace_handling(png_ptr);
#else
   if (png_ptr->interlaced)
      png_error(png_ptr,
        "Cannot read interlaced image -- interlace handler disabled");
   pass = 1;
#endif


   image_height=png_ptr->height;
   png_ptr->num_rows = image_height; /* Make sure this is set correctly */

   for (j = 0; j < pass; j++)
   {
      rp = image;
      for (i = 0; i < image_height; i++)
      {
         png_read_row(png_ptr, *rp, NULL);
         rp++;
      }
   }
}
#else
void PNGAPI
png_read_image(png_structp png_ptr, png_bytepp image)
{
   png_uint_32 i, image_height;
   int pass, j;
   png_bytepp rp;

   png_debug(1, "in png_read_image");
 
   if (png_ptr == NULL)
      return;

#ifdef PNG_READ_INTERLACING_SUPPORTED
   pass = png_set_interlace_handling(png_ptr);
#else
   if (png_ptr->interlaced)
      png_error(png_ptr,
        "Cannot read interlaced image -- interlace handler disabled");
   pass = 1;
#endif

   image_height=png_ptr->height;
   png_ptr->num_rows = image_height; /* Make sure this is set correctly */

   for (j = 0; j < pass; j++)
   {
      rp = image;
      for (i = 0; i < image_height; i++)
      {
         png_read_row(png_ptr, *rp, NULL);
         rp++;
      }
   }
}

#endif  /* HIPNG_ACCELERATE */

#endif /* PNG_SEQUENTIAL_READ_SUPPORTED */

#ifdef PNG_SEQUENTIAL_READ_SUPPORTED
/* Read the end of the PNG file.  Will not read past the end of the
 * file, will verify the end is accurate, and will read any comments
 * or time information at the end of the file, if info is not NULL.
 */
void PNGAPI
png_read_end(png_structp png_ptr, png_infop info_ptr)
{
   png_debug(1, "in png_read_end");
 
   if (png_ptr == NULL)
      return;

      PNG_IHDR;
      PNG_IDAT;
      PNG_IEND;
      PNG_PLTE;
#ifdef PNG_READ_bKGD_SUPPORTED
      PNG_bKGD;
#endif
#ifdef PNG_READ_cHRM_SUPPORTED
      PNG_cHRM;
#endif
#ifdef PNG_READ_gAMA_SUPPORTED
      PNG_gAMA;
#endif
#ifdef PNG_READ_hIST_SUPPORTED
      PNG_hIST;
#endif
#ifdef PNG_READ_iCCP_SUPPORTED
      PNG_iCCP;
#endif
#ifdef PNG_READ_iTXt_SUPPORTED
      PNG_iTXt;
#endif
#ifdef PNG_READ_oFFs_SUPPORTED
      PNG_oFFs;
#endif
#ifdef PNG_READ_pCAL_SUPPORTED
      PNG_pCAL;
#endif
#ifdef PNG_READ_pHYs_SUPPORTED
      PNG_pHYs;
#endif
#ifdef PNG_READ_sBIT_SUPPORTED
      PNG_sBIT;
#endif
#ifdef PNG_READ_sCAL_SUPPORTED
      PNG_sCAL;
#endif
#ifdef PNG_READ_sPLT_SUPPORTED
      PNG_sPLT;
#endif
#ifdef PNG_READ_sRGB_SUPPORTED
      PNG_sRGB;
#endif
#ifdef PNG_READ_tEXt_SUPPORTED
      PNG_tEXt;
#endif
#ifdef PNG_READ_tIME_SUPPORTED
      PNG_tIME;
#endif
#ifdef PNG_READ_tRNS_SUPPORTED
      PNG_tRNS;
#endif
#ifdef PNG_READ_zTXt_SUPPORTED
      PNG_zTXt;
#endif

#ifdef HIPNG_ACCELERATE
    hipng_struct_hwctl_s *pstHwStruct = (hipng_struct_hwctl_s *)(png_ptr->private_ptr);
    png_uint_32 length;
    png_bytep chunk_name;
    //printf("%x, %s\n", pstHwStruct->idat_size, pstHwStruct->chunk_name);
    if (pstHwStruct != NULL && pstHwStruct->chunk_name[0] != '\0')
    {
        length = pstHwStruct->idat_size;
        chunk_name = pstHwStruct->chunk_name;
        png_ptr->crc = pstHwStruct->crc;
        //printf("%x, %s\n", length, chunk_name);
        goto ACCELERATE;            
    }
#endif
   png_crc_finish(png_ptr, 0); /* Finish off CRC from last IDAT chunk */

   do
   {
#ifndef HIPNG_ACCELERATE
      png_uint_32 length = png_read_chunk_header(png_ptr);
      PNG_CONST png_bytep chunk_name = png_ptr->chunk_name;
#else
      length = png_read_chunk_header(png_ptr);
      chunk_name = png_ptr->chunk_name;
#endif
      
#ifdef HIPNG_ACCELERATE
ACCELERATE:
#endif
      if (!png_memcmp(chunk_name, png_IHDR, 4))
         png_handle_IHDR(png_ptr, info_ptr, length);
      else if (!png_memcmp(chunk_name, png_IEND, 4))
         png_handle_IEND(png_ptr, info_ptr, length);
#ifdef PNG_HANDLE_AS_UNKNOWN_SUPPORTED
      else if (png_handle_as_unknown(png_ptr, chunk_name))
      {
         if (!png_memcmp(chunk_name, png_IDAT, 4))
         {
            if ((length > 0) || (png_ptr->mode & PNG_HAVE_CHUNK_AFTER_IDAT))
               png_benign_error(png_ptr, "Too many IDATs found");
         }
         png_handle_unknown(png_ptr, info_ptr, length);
         if (!png_memcmp(chunk_name, png_PLTE, 4))
            png_ptr->mode |= PNG_HAVE_PLTE;
      }
#endif
      else if (!png_memcmp(chunk_name, png_IDAT, 4))
      {
         /* Zero length IDATs are legal after the last IDAT has been
          * read, but not after other chunks have been read.
          */
         if ((length > 0) || (png_ptr->mode & PNG_HAVE_CHUNK_AFTER_IDAT))
            png_benign_error(png_ptr, "Too many IDATs found");
         png_crc_finish(png_ptr, length);
      }
      else if (!png_memcmp(chunk_name, png_PLTE, 4))
         png_handle_PLTE(png_ptr, info_ptr, length);
#ifdef PNG_READ_bKGD_SUPPORTED
      else if (!png_memcmp(chunk_name, png_bKGD, 4))
         png_handle_bKGD(png_ptr, info_ptr, length);
#endif
#ifdef PNG_READ_cHRM_SUPPORTED
      else if (!png_memcmp(chunk_name, png_cHRM, 4))
         png_handle_cHRM(png_ptr, info_ptr, length);
#endif
#ifdef PNG_READ_gAMA_SUPPORTED
      else if (!png_memcmp(chunk_name, png_gAMA, 4))
         png_handle_gAMA(png_ptr, info_ptr, length);
#endif
#ifdef PNG_READ_hIST_SUPPORTED
      else if (!png_memcmp(chunk_name, png_hIST, 4))
         png_handle_hIST(png_ptr, info_ptr, length);
#endif
#ifdef PNG_READ_oFFs_SUPPORTED
      else if (!png_memcmp(chunk_name, png_oFFs, 4))
         png_handle_oFFs(png_ptr, info_ptr, length);
#endif
#ifdef PNG_READ_pCAL_SUPPORTED
      else if (!png_memcmp(chunk_name, png_pCAL, 4))
         png_handle_pCAL(png_ptr, info_ptr, length);
#endif
#ifdef PNG_READ_sCAL_SUPPORTED
      else if (!png_memcmp(chunk_name, png_sCAL, 4))
         png_handle_sCAL(png_ptr, info_ptr, length);
#endif
#ifdef PNG_READ_pHYs_SUPPORTED
      else if (!png_memcmp(chunk_name, png_pHYs, 4))
         png_handle_pHYs(png_ptr, info_ptr, length);
#endif
#ifdef PNG_READ_sBIT_SUPPORTED
      else if (!png_memcmp(chunk_name, png_sBIT, 4))
         png_handle_sBIT(png_ptr, info_ptr, length);
#endif
#ifdef PNG_READ_sRGB_SUPPORTED
      else if (!png_memcmp(chunk_name, png_sRGB, 4))
         png_handle_sRGB(png_ptr, info_ptr, length);
#endif
#ifdef PNG_READ_iCCP_SUPPORTED
      else if (!png_memcmp(chunk_name, png_iCCP, 4))
         png_handle_iCCP(png_ptr, info_ptr, length);
#endif
#ifdef PNG_READ_sPLT_SUPPORTED
      else if (!png_memcmp(chunk_name, png_sPLT, 4))
         png_handle_sPLT(png_ptr, info_ptr, length);
#endif
#ifdef PNG_READ_tEXt_SUPPORTED
      else if (!png_memcmp(chunk_name, png_tEXt, 4))
         png_handle_tEXt(png_ptr, info_ptr, length);
#endif
#ifdef PNG_READ_tIME_SUPPORTED
      else if (!png_memcmp(chunk_name, png_tIME, 4)) 
         png_handle_tIME(png_ptr, info_ptr, length);  
#endif
#ifdef PNG_READ_tRNS_SUPPORTED
      else if (!png_memcmp(chunk_name, png_tRNS, 4))
         png_handle_tRNS(png_ptr, info_ptr, length);
#endif
#ifdef PNG_READ_zTXt_SUPPORTED
      else if (!png_memcmp(chunk_name, png_zTXt, 4))
         png_handle_zTXt(png_ptr, info_ptr, length);
#endif
#ifdef PNG_READ_iTXt_SUPPORTED
      else if (!png_memcmp(chunk_name, png_iTXt, 4))
         png_handle_iTXt(png_ptr, info_ptr, length);
#endif
      else
         png_handle_unknown(png_ptr, info_ptr, length);
   } while (!(png_ptr->mode & PNG_HAVE_IEND));
}
#endif /* PNG_SEQUENTIAL_READ_SUPPORTED */

/* Free all memory used by the read */
void PNGAPI
png_destroy_read_struct(png_structpp png_ptr_ptr, png_infopp info_ptr_ptr,
   png_infopp end_info_ptr_ptr)
{
   png_structp png_ptr = NULL;
   png_infop info_ptr = NULL, end_info_ptr = NULL;
#ifdef PNG_USER_MEM_SUPPORTED
   png_free_ptr free_fn = NULL;
   png_voidp mem_ptr = NULL;
#endif

   png_debug(1, "in png_destroy_read_struct");
 
   if (png_ptr_ptr != NULL)
      png_ptr = *png_ptr_ptr;
   if (png_ptr == NULL)
      return;
   
#ifdef PNG_USER_MEM_SUPPORTED
   free_fn = png_ptr->free_fn;
   mem_ptr = png_ptr->mem_ptr;
#endif

   if (info_ptr_ptr != NULL)
      info_ptr = *info_ptr_ptr;

   if (end_info_ptr_ptr != NULL)
      end_info_ptr = *end_info_ptr_ptr;

   png_read_destroy(png_ptr, info_ptr, end_info_ptr);

   if (info_ptr != NULL)
   {
#ifdef PNG_TEXT_SUPPORTED
      png_free_data(png_ptr, info_ptr, PNG_FREE_TEXT, -1);
#endif

#ifdef PNG_USER_MEM_SUPPORTED
      png_destroy_struct_2((png_voidp)info_ptr, (png_free_ptr)free_fn,
          (png_voidp)mem_ptr);
#else
      png_destroy_struct((png_voidp)info_ptr);
#endif
      *info_ptr_ptr = NULL;
   }


   if (end_info_ptr != NULL)
   {
#ifdef PNG_READ_TEXT_SUPPORTED
      png_free_data(png_ptr, end_info_ptr, PNG_FREE_TEXT, -1);
#endif
#ifdef PNG_USER_MEM_SUPPORTED
      png_destroy_struct_2((png_voidp)end_info_ptr, (png_free_ptr)free_fn,
         (png_voidp)mem_ptr);
#else
      png_destroy_struct((png_voidp)end_info_ptr);
#endif
      *end_info_ptr_ptr = NULL;
   }

   if (png_ptr != NULL)
   {
#ifdef PNG_USER_MEM_SUPPORTED
      png_destroy_struct_2((png_voidp)png_ptr, (png_free_ptr)free_fn,
          (png_voidp)mem_ptr);
#else
      png_destroy_struct((png_voidp)png_ptr);
#endif
      *png_ptr_ptr = NULL;
   }
}

/* Free all memory used by the read (old method) */
void /* PRIVATE */
png_read_destroy(png_structp png_ptr, png_infop info_ptr, png_infop end_info_ptr)
{
#ifdef PNG_SETJMP_SUPPORTED
   jmp_buf tmp_jmp;
#endif
   png_error_ptr error_fn;
   png_error_ptr warning_fn;
   png_voidp error_ptr;
#ifdef PNG_USER_MEM_SUPPORTED
   png_free_ptr free_fn;
#endif

   png_debug(1, "in png_read_destroy");
 
   if (info_ptr != NULL)
      png_info_destroy(png_ptr, info_ptr);

   if (end_info_ptr != NULL)
      png_info_destroy(png_ptr, end_info_ptr);

   png_free(png_ptr, png_ptr->zbuf);
   png_free(png_ptr, png_ptr->big_row_buf);
   png_free(png_ptr, png_ptr->prev_row);
   png_free(png_ptr, png_ptr->chunkdata);
#ifdef PNG_READ_DITHER_SUPPORTED
   png_free(png_ptr, png_ptr->palette_lookup);
   png_free(png_ptr, png_ptr->dither_index);
#endif
#ifdef PNG_READ_GAMMA_SUPPORTED
   png_free(png_ptr, png_ptr->gamma_table);
#endif
#ifdef PNG_READ_BACKGROUND_SUPPORTED
   png_free(png_ptr, png_ptr->gamma_from_1);
   png_free(png_ptr, png_ptr->gamma_to_1);
#endif
   if (png_ptr->free_me & PNG_FREE_PLTE)
      png_zfree(png_ptr, png_ptr->palette);
   png_ptr->free_me &= ~PNG_FREE_PLTE;
#if defined(PNG_tRNS_SUPPORTED) || \
    defined(PNG_READ_EXPAND_SUPPORTED) || defined(PNG_READ_BACKGROUND_SUPPORTED)
   if (png_ptr->free_me & PNG_FREE_TRNS)
      png_free(png_ptr, png_ptr->trans_alpha);
   png_ptr->free_me &= ~PNG_FREE_TRNS;
#endif
#ifdef PNG_READ_hIST_SUPPORTED
   if (png_ptr->free_me & PNG_FREE_HIST)
      png_free(png_ptr, png_ptr->hist);
   png_ptr->free_me &= ~PNG_FREE_HIST;
#endif
#ifdef PNG_READ_GAMMA_SUPPORTED
   if (png_ptr->gamma_16_table != NULL)
   {
      int i;
      int istop = (1 << (8 - png_ptr->gamma_shift));
      for (i = 0; i < istop; i++)
      {
         png_free(png_ptr, png_ptr->gamma_16_table[i]);
      }
   png_free(png_ptr, png_ptr->gamma_16_table);
   }
#ifdef PNG_READ_BACKGROUND_SUPPORTED
   if (png_ptr->gamma_16_from_1 != NULL)
   {
      int i;
      int istop = (1 << (8 - png_ptr->gamma_shift));
      for (i = 0; i < istop; i++)
      {
         png_free(png_ptr, png_ptr->gamma_16_from_1[i]);
      }
   png_free(png_ptr, png_ptr->gamma_16_from_1);
   }
   if (png_ptr->gamma_16_to_1 != NULL)
   {
      int i;
      int istop = (1 << (8 - png_ptr->gamma_shift));
      for (i = 0; i < istop; i++)
      {
         png_free(png_ptr, png_ptr->gamma_16_to_1[i]);
      }
   png_free(png_ptr, png_ptr->gamma_16_to_1);
   }
#endif
#endif
#ifdef PNG_TIME_RFC1123_SUPPORTED
   png_free(png_ptr, png_ptr->time_buffer);
#endif

   inflateEnd(&png_ptr->zstream);
#ifdef PNG_PROGRESSIVE_READ_SUPPORTED
   png_free(png_ptr, png_ptr->save_buffer);
#endif

#ifdef PNG_PROGRESSIVE_READ_SUPPORTED
#ifdef PNG_TEXT_SUPPORTED
   png_free(png_ptr, png_ptr->current_text);
#endif /* PNG_TEXT_SUPPORTED */
#endif /* PNG_PROGRESSIVE_READ_SUPPORTED */

   /* Save the important info out of the png_struct, in case it is
    * being used again.
    */
#ifdef PNG_SETJMP_SUPPORTED
   png_memcpy(tmp_jmp, png_ptr->jmpbuf, png_sizeof(jmp_buf));
#endif

   error_fn = png_ptr->error_fn;
   warning_fn = png_ptr->warning_fn;
   error_ptr = png_ptr->error_ptr;
#ifdef PNG_USER_MEM_SUPPORTED
   free_fn = png_ptr->free_fn;
#endif

#ifdef HIPNG_ACCELERATE
       if (png_ptr->private_ptr != NULL)
       {
           hipng_struct_hwctl_s *pstHwStruct = (hipng_struct_hwctl_s *)(png_ptr->private_ptr);
           if ((pstHwStruct->u8DecMode & HIPNG_HWDEC_MASK)
            && (pstHwStruct->u8DecMode & HIPNG_DEC_COPY)
            && pstHwStruct->u32Phyaddr)
            {
                HI_MMZ_Delete(pstHwStruct->u32Phyaddr);
            }
           hipng_destroy_read_struct_hw(png_ptr->private_ptr);
           png_ptr->private_ptr = HI_NULL;
       }
#endif

   png_memset(png_ptr, 0, png_sizeof(png_struct));

   png_ptr->error_fn = error_fn;
   png_ptr->warning_fn = warning_fn;
   png_ptr->error_ptr = error_ptr;
#ifdef PNG_USER_MEM_SUPPORTED
   png_ptr->free_fn = free_fn;
#endif

#ifdef PNG_SETJMP_SUPPORTED
   png_memcpy(png_ptr->jmpbuf, tmp_jmp, png_sizeof(jmp_buf));
#endif

}

void PNGAPI
png_set_read_status_fn(png_structp png_ptr, png_read_status_ptr read_row_fn)
{
   if (png_ptr == NULL)
      return;
   png_ptr->read_row_fn = read_row_fn;
}


#ifdef PNG_SEQUENTIAL_READ_SUPPORTED
#ifdef PNG_INFO_IMAGE_SUPPORTED
#ifdef HIPNG_ACCELERATE

void PNGAPI
png_read_png_2(png_structp png_ptr, png_infop info_ptr,
                               int transforms,
                               png_voidp params);

void PNGAPI
png_read_png(png_structp png_ptr, png_infop info_ptr,
                                   int transforms,
                                   voidp params)
{
    hipng_struct_hwctl_s *pstHwStruct = NULL;

    if (NULL == png_ptr)
    {
        return;
    }

    pstHwStruct = (hipng_struct_hwctl_s *)(png_ptr->private_ptr);

    pstHwStruct->bSyncDec = 1;

    png_read_png_2(png_ptr, info_ptr, transforms, params);
    
}

void PNGAPI
png_read_png_async(png_structp png_ptr, png_infop info_ptr,
                                   int transforms,
                                   png_voidp params)
{
    hipng_struct_hwctl_s *pstHwStruct = (hipng_struct_hwctl_s *)(png_ptr->private_ptr);

    pstHwStruct->bSyncDec = 0;

    png_read_png_2(png_ptr, info_ptr, transforms, params);
}


void PNGAPI
png_read_png_2(png_structp png_ptr, png_infop info_ptr,
                               int transforms,
                               png_voidp params)
#else
void PNGAPI
png_read_png(png_structp png_ptr, png_infop info_ptr,
                           int transforms,
                           voidp params)
#endif                           
{
   int row;

   if (png_ptr == NULL)
      return;

   /* png_read_info() gives us all of the information from the
    * PNG file before the first IDAT (image data chunk).
    */
   png_read_info(png_ptr, info_ptr);
   if (info_ptr->height > PNG_UINT_32_MAX/png_sizeof(png_bytep))
      png_error(png_ptr, "Image is too high to process with png_read_png()");

   /* -------------- image transformations start here ------------------- */

#ifdef PNG_READ_16_TO_8_SUPPORTED
   /* Tell libpng to strip 16 bit/color files down to 8 bits per color.
    */
   if (transforms & PNG_TRANSFORM_STRIP_16)
      png_set_strip_16(png_ptr);
#endif

#ifdef PNG_READ_STRIP_ALPHA_SUPPORTED
   /* Strip alpha bytes from the input data without combining with
    * the background (not recommended).
    */
   if (transforms & PNG_TRANSFORM_STRIP_ALPHA)
      png_set_strip_alpha(png_ptr);
#endif

#if defined(PNG_READ_PACK_SUPPORTED) && !defined(PNG_READ_EXPAND_SUPPORTED)
   /* Extract multiple pixels with bit depths of 1, 2, or 4 from a single
    * byte into separate bytes (useful for paletted and grayscale images).
    */
   if (transforms & PNG_TRANSFORM_PACKING)
      png_set_packing(png_ptr);
#endif

#ifdef PNG_READ_PACKSWAP_SUPPORTED
   /* Change the order of packed pixels to least significant bit first
    * (not useful if you are using png_set_packing).
    */
   if (transforms & PNG_TRANSFORM_PACKSWAP)
      png_set_packswap(png_ptr);
#endif

#ifdef PNG_READ_EXPAND_SUPPORTED
   /* Expand paletted colors into true RGB triplets
    * Expand grayscale images to full 8 bits from 1, 2, or 4 bits/pixel
    * Expand paletted or RGB images with transparency to full alpha
    * channels so the data will be available as RGBA quartets.
    */
   if (transforms & PNG_TRANSFORM_EXPAND)
      if ((png_ptr->bit_depth < 8) ||
          (png_ptr->color_type == PNG_COLOR_TYPE_PALETTE) ||
          (png_get_valid(png_ptr, info_ptr, PNG_INFO_tRNS)))
         png_set_expand(png_ptr);
#endif

   /* We don't handle background color or gamma transformation or dithering.
    */

#ifdef PNG_READ_INVERT_SUPPORTED
   /* Invert monochrome files to have 0 as white and 1 as black
    */
   if (transforms & PNG_TRANSFORM_INVERT_MONO)
      png_set_invert_mono(png_ptr);
#endif

#ifdef PNG_READ_SHIFT_SUPPORTED
   /* If you want to shift the pixel values from the range [0,255] or
    * [0,65535] to the original [0,7] or [0,31], or whatever range the
    * colors were originally in:
    */
   if ((transforms & PNG_TRANSFORM_SHIFT)
       && png_get_valid(png_ptr, info_ptr, PNG_INFO_sBIT))
   {
      png_color_8p sig_bit;

      png_get_sBIT(png_ptr, info_ptr, &sig_bit);
      png_set_shift(png_ptr, sig_bit);
   }
#endif

#ifdef PNG_READ_BGR_SUPPORTED
   /* Flip the RGB pixels to BGR (or RGBA to BGRA)
    */
   if (transforms & PNG_TRANSFORM_BGR)
      png_set_bgr(png_ptr);
#endif

#ifdef PNG_READ_SWAP_ALPHA_SUPPORTED
   /* Swap the RGBA or GA data to ARGB or AG (or BGRA to ABGR)
    */
   if (transforms & PNG_TRANSFORM_SWAP_ALPHA)
       png_set_swap_alpha(png_ptr);
#endif

#ifdef PNG_READ_SWAP_SUPPORTED
   /* Swap bytes of 16 bit files to least significant byte first
    */
   if (transforms & PNG_TRANSFORM_SWAP_ENDIAN)
      png_set_swap(png_ptr);
#endif

/* Added at libpng-1.2.41 */
#ifdef PNG_READ_INVERT_ALPHA_SUPPORTED
   /* Invert the alpha channel from opacity to transparency
    */
   if (transforms & PNG_TRANSFORM_INVERT_ALPHA)
       png_set_invert_alpha(png_ptr);
#endif

/* Added at libpng-1.2.41 */
#ifdef PNG_READ_GRAY_TO_RGB_SUPPORTED
   /* Expand grayscale image to RGB
    */
   if (transforms & PNG_TRANSFORM_GRAY_TO_RGB)
       png_set_gray_to_rgb(png_ptr);
#endif

#ifdef PNG_DO_PREMULTI_TO_ALPHA  
if (transforms & PNG_TRANSFORM_PREMULTI_ALPHA)
       png_set_premulti_alpha(png_ptr);
#endif

#ifdef HIPNG_ACCELERATE
    if (transforms & HIPNG_TRANSFORM_ARGB1555)
        png_set_outfmt(png_ptr, HIPNG_FMT_ARGB1555);
    if (transforms & HIPNG_TRANSFORM_ARGB4444)
        png_set_outfmt(png_ptr, HIPNG_FMT_ARGB4444);
    if (transforms & HIPNG_TRANSFORM_RGB565)
        png_set_outfmt(png_ptr, HIPNG_FMT_RGB565);
    if (transforms & HIPNG_TRANSFORM_RGB555)
        png_set_outfmt(png_ptr, HIPNG_FMT_RGB555);
    if (transforms & HIPNG_TRANSFORM_RGB444)
        png_set_outfmt(png_ptr, HIPNG_FMT_RGB444);
#endif

   /* We don't handle adding filler bytes */

   /* Optional call to gamma correct and add the background to the palette
    * and update info structure.  REQUIRED if you are expecting libpng to
    * update the palette for you (i.e., you selected such a transform above).
    */
   png_read_update_info(png_ptr, info_ptr);

   /* -------------- image transformations end here ------------------- */

   png_free_data(png_ptr, info_ptr, PNG_FREE_ROWS, 0);
   if (info_ptr->row_pointers == NULL)
   {
    png_uint_32 iptr;

      info_ptr->row_pointers = (png_bytepp)png_malloc(png_ptr,
         info_ptr->height * png_sizeof(png_bytep));
      for (iptr=0; iptr<info_ptr->height; iptr++)
         info_ptr->row_pointers[iptr] = NULL;

      info_ptr->free_me |= PNG_FREE_ROWS;

#ifdef HIPNG_ACCELERATE
{
     png_uint_32 u32RowBytes;
     png_uint_32 u32Phyaddr;
     png_voidp *pVir = HI_NULL;

     u32RowBytes = (png_get_rowbytes(png_ptr, info_ptr) + 0xf) & ~0xf;
     u32Phyaddr = (png_uint_32)HI_MMZ_New(u32RowBytes * info_ptr->height, 16, HI_NULL, HI_NULL);
     if(u32Phyaddr)
     {
        pVir = HI_MMZ_Map(u32Phyaddr, 0);
        if (NULL == pVir)
        {
            HI_MMZ_Delete(u32Phyaddr);
        }

        for (row = 0; row < (int)info_ptr->height; row++)
            info_ptr->row_pointers[row] = (png_bytep)pVir + row * u32RowBytes;
     }

     if (NULL == pVir)
    {
        for (row = 0; row < (int)info_ptr->height; row++)
         info_ptr->row_pointers[row] = (png_bytep)png_malloc(png_ptr,
            png_get_rowbytes(png_ptr, info_ptr));
    }
}
#else
      for (row = 0; row < (int)info_ptr->height; row++)
         info_ptr->row_pointers[row] = (png_bytep)png_malloc(png_ptr,
            png_get_rowbytes(png_ptr, info_ptr));
#endif
   }

#ifdef HIPNG_ACCELERATE
   png_read_image_2(png_ptr, info_ptr->row_pointers);
#else
   png_read_image(png_ptr, info_ptr->row_pointers);
#endif
   info_ptr->valid |= PNG_INFO_IDAT;

   /* Read rest of file, and get additional chunks in info_ptr - REQUIRED */
   png_read_end(png_ptr, info_ptr);

   transforms = transforms; /* Quiet compiler warnings */
   params = params;

}
#endif /* PNG_INFO_IMAGE_SUPPORTED */
#endif /* PNG_SEQUENTIAL_READ_SUPPORTED */
#endif /* PNG_READ_SUPPORTED */
