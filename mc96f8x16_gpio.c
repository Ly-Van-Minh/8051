#include <MC96F8316.h>
#include "mc96f8x16.h"
#include "mc96f8x16_gpio.h"


void GPIO_Config(void)
{
    /* Configure P0 */
    P0IO = 0x00;    /* All Pins P0 are input */
    P0PU = 0x00;    /* All Pins P0 are no pull */
    P0FSR = (P0FSR3 | P0FSR4);   /* Select P02 is AN2 and P03 is AN3 */

    /* Configure P1: P10 as EINT5, P11 as EINT6, P12 as EINT11, 
        P13 as EINT12, P14 as Output, P15 as AN12, P16 as AN13 */
    
    P1IO = P14IO;   /* Select P14 as Output and Pin remain as Input */
    P1FSRH = (P1FSRH5 | P1FSRH3);     /* Select P15 as AN12, P16 as AN13 */

    /* Configure P2: P23 as EINTA, P24 as I2C_SDA, P25 as I2C_SCL */
    P2FSR = (P2FSR0 | P2FSR1);    /* Select Pin I2C */

    /* Configure P3: P30 as UART_TX, P31 as UART_RX, P33-P37 as Ouputs */
    P3IO = (uint8_t)(P30IO | P33IO | P34IO | P35IO | P36IO | P37IO);
    P3FSR = P3FSR0;
    // P3PU |= (P30PU | P31PU);
}

void GPIOPin_Write(OUTPUTPin_t GPIO_Pin, GPIOPin_State PIN_State)
{
    switch (GPIO_Pin)
    {
    case GPIO_LED1:
        if(PIN_State == GPIO_RESET)
        {
            P33 = 0;
        }
        else
        {
            P33 = 1;
        }
        break;
    case GPIO_LED2:
        if(PIN_State == GPIO_RESET)
        {
            P34 = 0;
        }
        else
        {
            P34 = 1;
        }
        break;
    case GPIO_LED3:
        if(PIN_State == GPIO_RESET)
        {
            P35 = 0;
        }
        else
        {
            P35 = 1;
        }
        break;
    case GPIO_5V_CNTL:
        if(PIN_State == GPIO_RESET)
        {
            P36 = 0;
        }
        else
        {
            P36 = 1;
        }
        break;
    case GPIO_DCDC_EN:
        if(PIN_State == GPIO_RESET)
        {
            P37 = 0;
        }
        else
        {
            P37 = 1;
        }
        break;
    case GPIO_COM_MODE:
        if(PIN_State == GPIO_RESET)
        {
            P14 = 0;
        }
        else
        {
            P14 = 1;
        }
        break;
    default:
        break;
    }
}

GPIOPin_State GPIOPin_Read(OUTPUTPin_t GPIO_Pin)
{
    GPIOPin_State ret = GPIO_RESET;
    switch (GPIO_Pin)
    {
        case GPIO_LED1:
            ret = P33;
            break;
        case GPIO_LED2:
            ret = P34;
            break;
        case GPIO_LED3:
            ret = P35;
            break;
        case GPIO_5V_CNTL:
            ret = P36;
            break;
        case GPIO_DCDC_EN:
            ret = P37;
            break;
        case GPIO_COM_MODE:
            ret = P14;
            break;
        default:
            break;
    }
    return ret;
}

void GPIOPin_Toggle(OUTPUTPin_t GPIO_Pin)
{
    switch (GPIO_Pin)
    {
        case GPIO_LED1:
            P33 = !P33;
            break;
        case GPIO_LED2:
            P34 = !P34;
            break;
        case GPIO_LED3:
            P35 = !P35;
            break;
        case GPIO_5V_CNTL:
            P36 = !P36;
            break;
        case GPIO_DCDC_EN:
            P37 = !P37;
            break;
        case GPIO_COM_MODE:
            P14 = !P14;
            break;
        default:
            break;
    }
}