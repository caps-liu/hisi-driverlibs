/* 
 * Copyright (C) 2000-2001 the xine project
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
 * sys/time.h - There is no seperate sys/time.h for win32 so we simply
 *              include the standard time header as well as our xine
 *				timer functions.
 */

#ifndef __MPLAYER_TIME_T__
#define __MPLAYER_TIME_T__

#include <time.h>
#include <sys/timeb.h>

#if !defined( _WINSOCKAPI_)

/*
* Structure used in select() call, taken from the BSD file sys/time.h.
*/
struct timeval {
	long    tv_sec;         /* seconds */
	long    tv_usec;        /* and microseconds */
};

#endif

void gettimeofday(struct timeval* t,void* timezone); 
//{
//	struct timeb timebuffer;
//	ftime( &timebuffer );
//	t->tv_sec=timebuffer.time;
//	t->tv_usec=1000*timebuffer.millitm;
//}

#endif
