#include "mc96f8x16.h"
#include "log.h"
#include "mc96f8x16_uart.h"
#include <stdio.h>
#include <stdarg.h>

int putchar(int c)
{
    if(UART_Transmit((uint8_t *)&c, 1, 2000) == HAL_OK)
    {
        return c;
    }
    else
    {
        return -1;
    }
}