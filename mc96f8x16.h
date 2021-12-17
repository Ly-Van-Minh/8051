#ifndef __MC96F8X16_H
#define __MC96F8X16_H

#ifdef __cplusplus
    extern "C"{
#endif

#define MAX_DELAY       0xFFFFU

typedef unsigned char uint8_t;
typedef unsigned int uint16_t;
// typedef unsigned long uint32_t;
typedef char int8_t;
typedef int int16_t;
// typedef long int32_t;


typedef enum
{
    HAL_NONE = 0,
    HAL_OK,
    HAL_TIMEOUT,
    HAL_ERROR,
    HAL_BUSY
} HAL_Status;


#ifdef __cplusplus
    }
#endif

#endif /* !__MC96F8X16_H */
