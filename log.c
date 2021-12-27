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

// void LOGI(const char *file, unsigned int line, char *fmt, ...)
// {
//     va_list args;
//     va_start(args, fmt);
//     printf(GREEN_COLOR"[I] %s:%u: ", file, line);
//     vprintf(fmt, args);
//     printf(RESET_COLOR);
//     va_end(args);
// }
// void LOGW(const char *file, unsigned int line, char *fmt, ...)
// {
//     va_list args;
//     va_start(args, fmt);
//     printf(YELLOW_COLOR"[W] %s:%u: ", file, line);
//     vprintf(fmt, args);
//     printf(RESET_COLOR);
//     va_end(args);
// }
// void LOGE(const char *file, unsigned int line, char *fmt, ...)
// {
//     va_list args;
//     va_start(args, fmt);
//     printf(RED_COLOR"[W] %s:%u: ", file, line);
//     vprintf(fmt, args);
//     printf(RESET_COLOR);
//     va_end(args);
// }
