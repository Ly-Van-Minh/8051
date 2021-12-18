#include <MC96F8316.h>
#include "mc96f8x16.h"
#include "mc96f8x16_cg.h"


#define FX                  8000000

void SysClock_Config(void)
{
    OSCCR = (FIRC_8MHZ << 3U); /* Select INT-RC/2 (8MHz) */
    SCCR = SYS_CLK_SEL_FIRC;    /* Select f(IRC) for system clock */
    _nop_();
}

