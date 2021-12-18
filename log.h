#ifndef __LOG_H
#define __LOG_H

#ifdef __cplusplus
    extern "C"{
#endif
#include <stdio.h>
#include <stdarg.h>

#define RED_COLOR           "\x1b[31m"
#define GREEN_COLOR         "\x1b[32m"
#define YELLOW_COLOR        "\x1b[33m"
#define BLUE_COLOR          "\x1b[34m"
#define RESET_COLOR         "\x1b[0m"

extern int putchar(int c);

// void LOGI(const char *file, unsigned int line, char *fmt, ...);
// void LOGW(const char *file, unsigned int line, char *fmt, ...);
// void LOGE(const char *file, unsigned int line, char *fmt, ...);

#define LOGI(fmt, ...)      printf(GREEN_COLOR"[I] %s:%d:%s()"fmt RESET_COLOR, __FILE__, __LINE__, __func__, ##__VA_ARGS__)
#define LOGW(fmt, ...)      printf(YELLOW_COLOR"[W] %s:%d:%s()"fmt RESET_COLOR, __FILE__, __LINE__, __func__, ##__VA_ARGS__)
#define LOGE(fmt, ...)      printf(RED_COLOR"[E] %s:%d:%s()"fmt RESET_COLOR, __FILE__, __LINE__, __func__, ##__VA_ARGS__)

#ifdef __cplusplus
    }
#endif


#endif /* !__LOG_H */
