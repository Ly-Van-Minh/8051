#include "mc96f8x16.h"
#include "mc96f8x16_tim.h"
#include "mc96f8x16_gpio.h"
volatile uint16_t Tick = 0;

void SysTick_Init(void)
{
    BITCR = 0x00;
    BITCR |= (BITCK_FX_DIV_1024 << 5u) | ((BCK_BIT2_OVFL << 0u) | BITCR_BCLR);
    IE3 = (IE3 & 0x0F) | (0x10);
}

uint16_t GetTick(void)
{
    return Tick;
}

void SysTick_ISR(void) __interrupt 23
{
    Tick++;
    // GPIOPin_Write(GPIO_LED2, GPIO_SET);
    BITCR |= BITCR_BCLR;
}

void Delayms(uint16_t Timeout)
{
    uint16_t StartTick = GetTick();
    if(StartTick + Timeout > StartTick)
    {
        while(GetTick() < StartTick + Timeout);
    }
    else
    {
        while((GetTick() < (Timeout - (0xFFFFU - StartTick))) || (GetTick() > StartTick));
    }
}

HAL_Status CheckTimeout(uint16_t Start, uint16_t Timeout)
{
    HAL_Status ret = HAL_OK;
    if(Start + Timeout > Start)
    {
        if(GetTick() < (Start + Timeout))
        {
            ret = HAL_OK;
        }
        else
        {
            ret = HAL_TIMEOUT;
        }
    }
    else
    {
        if((GetTick() < (Timeout - (0xFFFFU - Start))) || (GetTick() > Start))
        {
            ret = HAL_OK;
        }
        else
        {
            ret = HAL_TIMEOUT;
        }
    }
    return ret;
}