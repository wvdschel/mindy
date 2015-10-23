#if defined(__CYGWIN__)
#define __extension__
#include <machine/types.h>
#endif
#if defined(_WIN32)
#include "Windows.h"
#endif

#include <time.h>

extern int my_timezone(void);
extern int my_daylight(void);

