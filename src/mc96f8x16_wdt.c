#include "MC96F8316.h"
#include "mc96f8x16.h"
#include "mc96f8x16_wdt.h"

void WDT_Config(uint8_t Time)
{
    WDTDR = Time;
    WDTCR = WDTCK | WDTCL | WDTRSON | WDTEN; 
}

void WDT_Clear(void)
{
    WDTCR |= WDTCL;
}