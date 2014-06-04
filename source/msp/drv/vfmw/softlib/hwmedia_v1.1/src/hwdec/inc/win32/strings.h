#ifndef _STRINGS_H
#define _STRINGS_H

#include <string.h>

#ifndef strcasecmp
#define strcasecmp stricmp
#endif

#ifndef strncasecmp
#define strncasecmp strnicmp
#endif

#endif /* _STRINGS_H */
