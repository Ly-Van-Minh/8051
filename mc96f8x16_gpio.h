#ifndef __MC96F8X16_GPIO_H
#define __MC96F8X16_GPIO_H

#ifdef __cplusplus
    extern "C"{
#endif

/* Defines P0 */
#define P00IO           (0x01 << 0u)
#define P01IO           (0x01 << 1u)
#define P02IO           (0x01 << 2u)
#define P03IO           (0x01 << 3u)
#define P04IO           (0x01 << 4u)
#define P05IO           (0x01 << 5u)
#define P06IO           (0x01 << 6u)

#define P00PU           (0x01 << 0u)
#define P01PU           (0x01 << 1u)
#define P02PU           (0x01 << 2u)
#define P03PU           (0x01 << 3u)
#define P04PU           (0x01 << 4u)
#define P05PU           (0x01 << 5u)
#define P06PU           (0x01 << 6u)

#define P00OD           (0x01 << 0u)
#define P01OD           (0x01 << 1u)
#define P02OD           (0x01 << 2u)
#define P03OD           (0x01 << 3u)
#define P04OD           (0x01 << 4u)
#define P05OD           (0x01 << 5u)
#define P060OD          (0x01 << 6u)

#define P0FSR0          (0x01 << 0u)
#define P0FSR1          (0x01 << 1u)
#define P0FSR2          (0x01 << 2u)
#define P0FSR3          (0x01 << 3u)
#define P0FSR4          (0x01 << 4u)
#define P0FSR5          (0x01 << 5u)
#define P0FSR6          (0x01 << 6u)
#define P0FSR7          (0x01 << 7u)

/* Defines P1 */
#define P10IO           (0x01 << 0u)
#define P11IO           (0x01 << 1u)
#define P12IO           (0x01 << 2u)
#define P13IO           (0x01 << 3u)
#define P14IO           (0x01 << 4u)
#define P15IO           (0x01 << 5u)
#define P16IO           (0x01 << 6u)
#define P17IO           (0x01 << 7u)

#define P10PU           (0x01 << 0u)
#define P11PU           (0x01 << 1u)
#define P12PU           (0x01 << 2u)
#define P13PU           (0x01 << 3u)
#define P14PU           (0x01 << 4u)
#define P15PU           (0x01 << 5u)
#define P16PU           (0x01 << 6u)
#define P17PU           (0x01 << 7u)

#define P1FSRH0         (0x01 << 0U)
#define P1FSRH1         (0x01 << 1U)
#define P1FSRH2         (0x01 << 2U)
#define P1FSRH3         (0x01 << 3U)
#define P1FSRH4         (0x01 << 4U)
#define P1FSRH5         (0x01 << 5U)
#define P1FSRH6         (0x01 << 6U)

#define P1FSRL0         (0x01 << 0u)
#define P1FSRL1         (0x01 << 1u)
#define P1FSRL2         (0x01 << 2u)
#define P1FSRL3         (0x01 << 3u)
#define P1FSRL4         (0x01 << 4u)
#define P1FSRL5         (0x01 << 5u)
#define P1FSRL6         (0x01 << 6u)

/* Defines P2 */
#define P20IO           (0x01 << 0u)
#define P21IO           (0x01 << 1u)
#define P22IO           (0x01 << 2u)
#define P23IO           (0x01 << 3u)
#define P24IO           (0x01 << 4u)
#define P25IO           (0x01 << 5u)
#define P26IO           (0x01 << 6u)

#define P20PU           (0x01 << 0u)
#define P21PU           (0x01 << 1u)
#define P22PU           (0x01 << 2u)
#define P23PU           (0x01 << 3u)
#define P24PU           (0x01 << 4u)
#define P25PU           (0x01 << 5u)
#define P26PU           (0x01 << 6u)

#define P2FSR0          (0x01 << 0u)
#define P2FSR1          (0x01 << 1u)

/* Defines P2 */
#define P30IO           (0x01 << 0u)
#define P31IO           (0x01 << 1u)
#define P32IO           (0x01 << 2u)
#define P33IO           (0x01 << 3u)
#define P34IO           (0x01 << 4u)
#define P35IO           (0x01 << 5u)
#define P36IO           (0x01 << 6u)
#define P37IO           (0x01 << 7u)

#define P30PU           (0x01 << 0u)
#define P31PU           (0x01 << 1u)
#define P32PU           (0x01 << 2u)
#define P33PU           (0x01 << 3u)
#define P34PU           (0x01 << 4u)
#define P35PU           (0x01 << 5u)
#define P36PU           (0x01 << 6u)
#define P37PU           (0x01 << 7u)

#define P3FSR0          (0x01 << 0u)
#define P3FSR1          (0x01 << 1u)
#define P3FSR2          (0x01 << 2u)
#define P3FSR3          (0x01 << 3u)
#define P3FSR4          (0x01 << 4u)
#define P3FSR5          (0x01 << 5u)
#define P3FSR6          (0x01 << 6u)
#define P3FSR7          (0x01 << 7u)


typedef enum
{
    GPIO_LED1 = 0,
    GPIO_LED2,
    GPIO_LED3,
    GPIO_5V_CNTL,
    GPIO_DCDC_EN,
    GPIO_COM_MODE,
    GPIO_MAX = 6
} OUTPUTPin_t;

typedef enum
{
    GPIO_RESET = 0,
    GPIO_SET = !GPIO_RESET
}GPIOPin_State;

void GPIO_Config(void);
void GPIOPin_Write(OUTPUTPin_t GPIO_Pin, GPIOPin_State PIN_State);
GPIOPin_State GPIOPin_Read(OUTPUTPin_t GPIO_Pin);
void GPIOPin_Toggle(OUTPUTPin_t GPIO_Pin);

#ifdef __cplusplus
    }
#endif

#endif /* !__MC96F8X16_GPIO_H */
