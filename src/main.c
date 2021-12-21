#include <stdio.h>
#include <string.h>
#include "main.h"
#include "MC96F8316.h"
#include "mc96f8x16.h"
#include "mc96f8x16_cg.h"
#include "mc96f8x16_tim.h"
#include "mc96f8x16_gpio.h"
#include "mc96f8x16_uart.h"
#include "mc96f8x16_wdt.h"
#include "mc96f8x16_i2c.h"
#include "log.h"
#include "et9562b.h"

int i = 0;
// extern volatile uint8_t RxData;
uint8_t Buf;
// uint8_t I2CReadData;


int main(void)
{

    UARTConfig_Typedef uart;
    I2C_Config_Typedef i2c;
    uart.Baud       = 12;
    uart.Parity     = UART_NO_PARITY;
    uart.DataLength = UART_DATA_LEN_8BIT;
    uart.StopBits   = UART_1_STOP_BIT;
    /* Disable Interrupt */

    // i2c.HoldTime    = 0x0F;
    // i2c.Mode        = I2C_MASTER;
    // i2c.Period      = 0xFFFF;
    // i2c.SlaveAddr   = ;
    cli();

    SysClock_Config();
    UART_Config(&uart);
    I2C_Config(&i2c);
    GPIO_Config();
    SysTick_Init();
    // WDT_Config(0xFF);
    /* Enable Interrupt */
    sei();
    GPIOPin_Write(GPIO_LED2, GPIO_SET);
    GPIOPin_Write(GPIO_COM_MODE, GPIO_RESET);
    GPIOPin_Write(GPIO_DCDC_EN, GPIO_SET);
    GPIOPin_Write(GPIO_5V_CNTL, GPIO_SET);
    
    while(1)
    {
        
        // Delayms(10);
        // UART_Transmit("Xin chao cac con vo\r\n", strlen("Xin chao cac con vo\r\n"), 2000);
        
        // GPIOPin_Toggle(GPIO_LED2);
        // Delayms(1000);
        // UARTCR2 |= 0x04;
        // Delayms(10);
        // if(RxData == '1')
        // {
            // UART_Receive(&Buf, 1, 1000);
            Delayms(2000);
            UARTCR2 = (UARTCR2 & (~UARTCR2_RXE));
            // LOGI(__FILE__, __LINE__, "Hello world %u %u!\r\n", (int)100, (int)200);
            // Delayms(100);
            // LOGW(__FILE__, __LINE__, "Size char type %u\r\n", (unsigned int)sizeof(char));
            // Delayms(100);
            // LOGE(__FILE__, __LINE__, "Size int type %u\r\n", (unsigned int)sizeof(int));
            // Delayms(100);
            // LOGE(__FILE__, __LINE__, "Size long type %u\r\n", (unsigned int)sizeof(long));
            // Delayms(100);
           
            UARTCR2 = ((UARTCR2 & (~UARTCR2_RXE)) | UARTCR2_RXE);
            // if(I2C_Master_Receive(ET9562B_ADDR, ISCR, &I2CReadData, 2000) == HAL_OK)
            // {
            //     LOGI(__FILE__, __LINE__, "I2C_Master_Receive() function successfully!\r\n");
            //     LOGI(__FILE__, __LINE__,"I2C read value = %u", I2CReadData);
            // }
            // else
            // {
            //     LOGE(__FILE__, __LINE__, "I2C_Master_Receive() function error!\r\n");      
            // } 
            // UART_Send("Hello World 123!\r\n", strlen("Hello World 123!\r\n"));
            // if(Buf == '0')
            // {
                // GPIOPin_Write(GPIO_LED2, GPIO_SET);
            GPIOPin_Toggle(GPIO_LED2);
            
                // Buf = 0;
            // }
        // }
        // if(RxData == '0')
        // {
            // if(UART_Receive(&Buf, 1, 1000) == HAL_OK)
            // {
            //     GPIOPin_Write(GPIO_LED2, GPIO_RESET);
            // }
        // }
        
        // WDT_Clear();
        // Delayms(2000);
        // Delay(0xFFFF);
        // GPIOPin_Write(GPIO_LED2, GPIO_RESET);
        // Delayms(2000);
        // Delay(0xFFFF);
    }
}
