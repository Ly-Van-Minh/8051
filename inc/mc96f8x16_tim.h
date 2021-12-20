#ifndef __MC96F8X16_TIM_H
#define __MC96F8X16_TIM_H

#ifdef __cplusplus
    extern "C"{
#endif

#define BITCK_FX_DIV_4096   0U
#define BITCK_FX_DIV_1024   1U
#define BITCK_FX_DIV_128    2U
#define BITCK_FX_DIV_16     3U

#define BCK_BIT0_OVFL       0U
#define BCK_BIT1_OVFL       1U
#define BCK_BIT2_OVFL       2U
#define BCK_BIT3_OVFL       3U
#define BCK_BIT4_OVFL       4U
#define BCK_BIT5_OVFL       5U
#define BCK_BIT6_OVFL       6U
#define BCK_BIT7_OVFL       7U

#define BITCR_BCK0          (0x01 << 0u)
#define BITCR_BCK1          (0x01 << 1u)
#define BITCR_BCK2          (0x01 << 2u)
#define BITCR_BCLR          (0x01 << 3u)
#define BITCR_BITCK0        (0x01 << 5u)
#define BITCR_BITCK1        (0x01 << 6u)
#define BITCR_BITIFR        (0x01 << 7u)


void SysTick_Init(void);
uint16_t GetTick(void);
void Delayms(uint16_t Timeout);
HAL_Status CheckTimeout(uint16_t Start, uint16_t Timeout);

#ifdef __cplusplus
    }
#endif

#endif /* !__MC96F8X16_TIM_H */
