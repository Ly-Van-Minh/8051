#include "MC96F8316.h"
#include "mc96f8x16.h"
#include "mc96f8x16_uart.h"
#include "mc96f8x16_tim.h"
#include "mc96f8x16_gpio.h"

volatile uint8_t RxData = 0;

void UART_Config(UARTConfig_Typedef *UART_Conf)
{
    UARTBD = UART_Conf->Baud;
    UARTCR1 = (UARTCR1 & 0x0F) | ((UART_Conf->Parity) << 4u);
    UARTCR1 = (UARTCR1 & 0xF0) | ((UART_Conf->DataLength) << 1u);
    UARTCR3 = (UARTCR3 & 0xF4) | (UART_Conf->StopBits);
    UARTCR2 = (UARTCR2 & 0xD1) | (UARTCR2_RXE | UARTCR2_RXCIE | UARTCR2_TXE | UARTCR2_UARTEN);
    IE1 = (IE1 & 0xF7) | (0x08);
}

HAL_Status UART_Transmit(uint8_t *Buffer, uint16_t Size, uint16_t Timeout)
{
    uint16_t i = 0;
    uint16_t StartTick = GetTick();
    while(Size--)
    {
        if(CheckTimeout(StartTick, Timeout) == HAL_OK)
        {
            while(!(UARTST & UARTST_UDRE))
            {
                if(CheckTimeout(StartTick, Timeout) != HAL_OK)
                {
                    return HAL_TIMEOUT;
                }
            }
            UARTDR = *(Buffer + i);
            i++;
        }
        else
        {
            return HAL_TIMEOUT;
        }
    }
    return HAL_OK;
}

HAL_Status UART_Receive(uint8_t *Buffer, uint16_t Size, uint16_t Timeout)
{
    uint16_t i = 0;
    uint16_t StartTick = GetTick();
    while(Size--)
    {
        if(CheckTimeout(StartTick, Timeout) == HAL_OK)
        {
            while(!(UARTST & UARTST_RXC))
            {
                if(CheckTimeout(StartTick, Timeout) != HAL_OK)
                {
                    return HAL_TIMEOUT;
                }                
            }
            *(Buffer + i) = UARTDR;
            i++;
        }
        else
        {
            return HAL_TIMEOUT;
        }
    }
    return HAL_OK;
}

void UART_Receive_ISR(void) __interrupt 10
{
    RxData = UARTDR;
}