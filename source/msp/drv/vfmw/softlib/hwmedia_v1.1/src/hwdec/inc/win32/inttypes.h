/* 
 * Copyright (C) 2000-2004 the xine project
 * 
 * This file is part of xine, a unix video player.
 * 
 * xine is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 * 
 * xine is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 * 
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA
 *
 * WIN32 PORT,
 * by Matthew Grooms <elon@altavista.com>
 *
 * inttypes.h - Standard integer definitions.
 *
 */

#ifndef _SYS_INTTYPES_H_
#define _SYS_INTTYPES_H_

#include <stdint.h>
#include <strings.h>
#include <float.h>

/* 7.18.1.1  Exact-width integer types */
typedef signed char int8_t;
typedef unsigned char   uint8_t;
typedef short  int16_t;
typedef unsigned short  uint16_t;
typedef int  int32_t;
typedef unsigned   uint32_t;

#ifdef __GNUC__
typedef long long  int64_t;
typedef unsigned long long   uint64_t;
#else
typedef __int64  int64_t;
typedef unsigned __int64   uint64_t;
#endif

#ifndef offset_t
typedef int64_t offset_t;
#endif

/* 7.18.1.2  Minimum-width integer types */
typedef signed char int_least8_t;
typedef unsigned char   uint_least8_t;
typedef short  int_least16_t;
typedef unsigned short  uint_least16_t;
typedef int  int_least32_t;
typedef unsigned   uint_least32_t;

#ifdef __GNUC__
typedef long long  int_least64_t;
typedef unsigned long long   uint_least64_t;
#else
typedef __int64  int_least64_t;
typedef unsigned __int64   uint_least64_t;
#endif

/*  7.18.1.3  Fastest minimum-width integer types 
 *  Not actually guaranteed to be fastest for all purposes
 *  Here we use the exact-width types for 8 and 16-bit ints. 
 */
typedef char int_fast8_t;
typedef unsigned char uint_fast8_t;
typedef short  int_fast16_t;
typedef unsigned short  uint_fast16_t;
typedef int  int_fast32_t;
typedef unsigned  int  uint_fast32_t;

#ifdef __GNUC__
typedef long long  int_fast64_t;
typedef unsigned long long   uint_fast64_t;
#else
typedef __int64  int_fast64_t;
typedef unsigned __int64   uint_fast64_t;
#endif

/* 7.18.1.4  Integer types capable of holding object pointers */
typedef int intptr_t;
typedef unsigned uintptr_t;

/* 7.18.1.5  Greatest-width integer types */
#ifdef __GNUC__
typedef long long  intmax_t;
typedef unsigned long long   uintmax_t;
#else
typedef __int64  intmax_t;
typedef unsigned __int64   uintmax_t;
#endif

#define __WORDSIZE 32

/* The ISO C99 standard specifies that these macros must only be
   defined if explicitly requested.  */
#if !defined __cplusplus || defined __STDC_FORMAT_MACROS

# if __WORDSIZE == 64
#  define __PRI64_PREFIX        "l"
#  define __PRIPTR_PREFIX       "l"
# else
#  define __PRI64_PREFIX        "I64"
#  define __PRIPTR_PREFIX
# endif

/* Macros for printing format specifiers.  */

/* Decimal notation.  */
# define PRId8          "d"
# define PRId16         "d"
# define PRId32         "d"
# define PRId64         __PRI64_PREFIX "d"

# define PRIdLEAST8     "d"
# define PRIdLEAST16    "d"
# define PRIdLEAST32    "d"
# define PRIdLEAST64    __PRI64_PREFIX "d"

# define PRIdFAST8      "d"
# define PRIdFAST16     "d"
# define PRIdFAST32     "d"
# define PRIdFAST64     __PRI64_PREFIX "d"


# define PRIi8          "i"
# define PRIi16         "i"
# define PRIi32         "i"
# define PRIi64         __PRI64_PREFIX "i"

# define PRIiLEAST8     "i"
# define PRIiLEAST16    "i"
# define PRIiLEAST32    "i"
# define PRIiLEAST64    __PRI64_PREFIX "i"

# define PRIiFAST8      "i"
# define PRIiFAST16     "i"
# define PRIiFAST32     "i"
# define PRIiFAST64     __PRI64_PREFIX "i"

/* Octal notation.  */
# define PRIo8          "o"
# define PRIo16         "o"
# define PRIo32         "o"
# define PRIo64         __PRI64_PREFIX "o"

# define PRIoLEAST8     "o"
# define PRIoLEAST16    "o"
# define PRIoLEAST32    "o"
# define PRIoLEAST64    __PRI64_PREFIX "o"

# define PRIoFAST8      "o"
# define PRIoFAST16     "o"
# define PRIoFAST32     "o"
# define PRIoFAST64     __PRI64_PREFIX "o"

/* Unsigned integers.  */
# define PRIu8          "u"
# define PRIu16         "u"
# define PRIu32         "u"
# define PRIu64         __PRI64_PREFIX "u"

# define PRIuLEAST8     "u"
# define PRIuLEAST16    "u"
# define PRIuLEAST32    "u"
# define PRIuLEAST64    __PRI64_PREFIX "u"

# define PRIuFAST8      "u"
# define PRIuFAST16     "u"
# define PRIuFAST32     "u"
# define PRIuFAST64     __PRI64_PREFIX "u"

/* lowercase hexadecimal notation.  */
# define PRIx8          "x"
# define PRIx16         "x"
# define PRIx32         "x"
# define PRIx64         __PRI64_PREFIX "x"

# define PRIxLEAST8     "x"
# define PRIxLEAST16    "x"
# define PRIxLEAST32    "x"
# define PRIxLEAST64    __PRI64_PREFIX "x"

# define PRIxFAST8      "x"
# define PRIxFAST16     "x"
# define PRIxFAST32     "x"
# define PRIxFAST64     __PRI64_PREFIX "x"

/* UPPERCASE hexadecimal notation.  */
# define PRIX8          "X"
# define PRIX16         "X"
# define PRIX32         "X"
# define PRIX64         __PRI64_PREFIX "X"

# define PRIXLEAST8     "X"
# define PRIXLEAST16    "X"
# define PRIXLEAST32    "X"
# define PRIXLEAST64    __PRI64_PREFIX "X"

# define PRIXFAST8      "X"
# define PRIXFAST16     "X"
# define PRIXFAST32     "X"
# define PRIXFAST64     __PRI64_PREFIX "X"


/* Macros for printing `intmax_t' and `uintmax_t'.  */
# define PRIdMAX        __PRI64_PREFIX "d"
# define PRIiMAX        __PRI64_PREFIX "i"
# define PRIoMAX        __PRI64_PREFIX "o"
# define PRIuMAX        __PRI64_PREFIX "u"
# define PRIxMAX        __PRI64_PREFIX "x"
# define PRIXMAX        __PRI64_PREFIX "X"


/* Macros for printing `intptr_t' and `uintptr_t'.  */
# define PRIdPTR        __PRIPTR_PREFIX "d"
# define PRIiPTR        __PRIPTR_PREFIX "i"
# define PRIoPTR        __PRIPTR_PREFIX "o"
# define PRIuPTR        __PRIPTR_PREFIX "u"
# define PRIxPTR        __PRIPTR_PREFIX "x"
# define PRIXPTR        __PRIPTR_PREFIX "X"


/* Macros for scanning `intmax_t' and `uintmax_t'. */
#define SCNdMAX         __PRI64_PREFIX "d"
#define SCNiMAX         __PRI64_PREFIX "i"
#define SCNoMAX         __PRI64_PREFIX "o"
#define SCNuMAX         __PRI64_PREFIX "u"
#define SCNxMAX         __PRI64_PREFIX "x"
#define SCNXMAX         __PRI64_PREFIX "X"

#endif /* !defined __cplusplus || defined __STDC_FORMAT_MACROS */


#include <math.h>
#define rint(x)		(floor((x)+0.5f))
#define lrint(x)	(floor((x)+0.5f))
#define llrint(x)	(floor((x)+0.5f))

/* Define misc values if they are not available from math.h. UNIX
 * systems typically have these defines, and MSWindows systems don't.
 */
#ifndef M_E
#define M_E 2.7182818284590452354
#endif /* !M_E */
#ifndef M_LOG2E
#define M_LOG2E 1.4426950408889634074
#endif /* !M_LOG2E */
#ifndef M_LOG10E
#define M_LOG10E 0.43429448190325182765
#endif /* !M_LOG10E */
#ifndef M_LN2
#define M_LN2 0.69314718055994530942
#endif /* !M_LN2 */
#ifndef M_LN10
#define M_LN10 2.30258509299404568402
#endif /* !M_LN10 */
#ifndef M_PI
#define M_PI 3.14159265358979323846
#endif /* !M_PI */
#ifndef M_TWOPI
#define M_TWOPI (M_PI * 2.0)
#endif /* !M_TWOPI */
#ifndef M_PI_2
#define M_PI_2 1.57079632679489661923
#endif /* !M_PI_2 */
#ifndef M_PI_4
#define M_PI_4 0.78539816339744830962
#endif /* !M_PI_4 */
#ifndef M_3PI_4
#define M_3PI_4 2.3561944901923448370E0
#endif /* !M_3PI_4 */
#ifndef M_SQRTPI
#define M_SQRTPI 1.77245385090551602792981
#endif /* !M_SQRTPI */
#ifndef M_1_PI
#define M_1_PI 0.31830988618379067154
#endif /* !M_1_PI */
#ifndef M_2_PI
#define M_2_PI 0.63661977236758134308
#endif /* !M_2_PI */
#ifndef M_2_SQRTPI
#define M_2_SQRTPI 1.12837916709551257390
#endif /* !M_2_SQRTPI */
#ifndef M_SQRT2
#define M_SQRT2 1.41421356237309504880
#endif /* !M_SQRT2 */
#ifndef M_SQRT1_2
#define M_SQRT1_2 0.70710678118654752440
#endif /* !M_SQRT1_2 */
#ifndef M_LN2LO
#define M_LN2LO 1.9082149292705877000E-10
#endif /* !M_LN2LO */
#ifndef M_LN2HI
#define M_LN2HI 6.9314718036912381649E-1
#endif /* !M_LN2HI */
#ifndef M_SQRT3
#define M_SQRT3 1.73205080756887719000
#endif /* !M_SQRT3 */
#ifndef M_IVLN10
#define M_IVLN10 0.43429448190325182765 /* 1 / log(10) */
#endif /* !M_IVLN10 */
#ifndef M_LOG2_E
#define M_LOG2_E 0.693147180559945309417
#endif /* !M_LOG2_E */
#ifndef M_INVLN2
#define M_INVLN2 1.4426950408889633870E0 /* 1 / log(2) */
#endif /* !M_INVLN2 */

#ifndef ssize_t
#define ssize_t size_t
#endif

#ifndef snprintf
#define snprintf _snprintf
#endif

#ifndef isnan
#define isnan _isnan
#endif

// stat
#include <sys/stat.h>

#ifndef S_ISREG
#ifndef S_IFREG
#ifndef _S_IFREG
#define S_IFREG		(-1)
#else
#define S_IFREG		_S_IFREG
#endif
#endif
#define S_ISREG(m)	(((m)&S_IFREG)==S_IFREG)
#endif

#ifndef S_ISBLK
#ifndef S_IFBLK
#ifndef _S_IFBLK
#define S_IFBLK		(-1)
#else
#define S_IFBLK		_S_IFBLK
#endif
#endif
#define S_ISBLK(m)	(((m)&S_IFBLK)==S_IFBLK)
#endif

#ifndef S_ISCHR
#ifndef S_IFCHR
#ifndef _S_IFCHR
#define S_IFCHR		(-1)
#else
#define S_IFCHR		_S_IFCHR
#endif
#endif
#define S_ISCHR(m)	(((m)&S_IFCHR)==S_IFCHR)
#endif

#ifndef S_ISDIR
#ifndef S_IFDIR
#ifndef _S_IFDIR
#define S_IFDIR		(-1)
#else
#define S_IFDIR		_S_IFDIR
#endif
#endif
#define S_ISDIR(m)	(((m)&S_IFDIR)==S_IFDIR)
#endif

#ifndef S_ISFIFO
#ifndef S_IFIFO
#ifndef _S_IFIFO
#define S_IFIFO		(-1)
#else
#define S_IFIFO		_S_IFIFO
#endif
#endif
#define S_ISFIFO(m)	(((m)&S_IFIFO)==S_IFIFO)
#endif

#ifndef S_ISSUID
#ifndef S_ISUID
#ifndef _S_ISUID
#define S_ISUID		(-1)
#else
#define S_ISUID		_S_ISUID
#endif
#endif
#define S_ISSUID(m)	(((m)&S_ISUID)==S_ISUID)
#endif

#ifndef S_ISSGID
#ifndef S_ISGID
#ifndef _S_ISGID
#define S_ISGID		(-1)
#else
#define S_ISGID		_S_ISGID
#endif
#endif
#define S_ISSGID(m)	(((m)&S_ISGID)==S_ISGID)
#endif

#ifndef S_IRUSR
#define S_IRUSR		0x0100
#endif
#ifndef S_IWUSR
#define S_IWUSR		0x0080
#endif
#ifndef S_IXUSR
#define S_IXUSR		0x0040
#endif
#ifndef S_IRGRP
#define S_IRGRP		0x0020
#endif
#ifndef S_IWGRP
#define S_IWGRP		0x0010
#endif
#ifndef S_IXGRP
#define S_IXGRP		0x0008
#endif
#ifndef S_IROTH
#define S_IROTH		0x0004
#endif
#ifndef S_IWOTH
#define S_IWOTH		0x0002
#endif
#ifndef S_IXOTH
#define S_IXOTH		0x0001
#endif

#endif
