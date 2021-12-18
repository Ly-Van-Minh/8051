#ifndef __MC96F8X16_UART_H
#define __MC96F8X16_UART_H

#ifdef __cplusplus
    extern "C"{
#endif

typedef struct
{
    uint8_t Baud;
    uint8_t Parity;
    uint8_t DataLength;
    uint8_t StopBits;
} UARTConfig_Typedef;



#define UART_DATA_LEN_5BIT      0U
#define UART_DATA_LEN_6BIT      1U
#define UART_DATA_LEN_7BIT      2U
#define UART_DATA_LEN_8BIT      3U
#define UART_DATA_LEN_9BIT      7U

#define UART_NO_PARITY          0U
#define UART_EVEN_PARITY        2U
#define UART_ODD_PARITY         3U

#define UART_1_STOP_BIT         0U
#define UART_2_STOP_BIT         1U

#define UARTCR1_USIZE0          (0x01 << 1u)
#define UARTCR1_USIZE1          (0x01 << 2u)
#define UARTCR1_USIZE2          (0x01 << 3u)
#define UARTCR1_UPM0            (0x01 << 4u)
#define UARTCR1_UPM1            (0x01 << 5u)

#define UARTCR2_U2X             (0x01 << 0u)
#define UARTCR2_UARTEN          (0x01 << 1u)
#define UARTCR2_RXE             (0x01 << 2u)
#define UARTCR2_TXE             (0x01 << 3u)
#define UARTCR2_WAKEIE          (0x01 << 4u)
#define UARTCR2_RXCIE           (0x01 << 5u)
#define UARTCR2_TXCIE           (0x01 << 6u)
#define UARTCR2_UDRIE           (0x01 << 7u)

#define UARTCR3_RX8             (0x01 << 0u)
#define UARTCR3_TX8             (0x01 << 1u)
#define UARTCR3_USBS            (0x01 << 2u)
#define UARTCR3_LOOPS           (0x01 << 6u)

#define UARTST_PE               (0x01 << 0u)
#define UARTST_FE               (0x01 << 1u)
#define UARTST_DOR              (0x01 << 2u)
#define UARTST_SOFTRST          (0x01 << 3u)
#define UARTST_WAKE             (0x01 << 4u)
#define UARTST_RXC              (0x01 << 5u)
#define UARTST_TXC              (0x01 << 6u)
#define UARTST_UDRE             (0x01 << 7u)

void UART_Config(UARTConfig_Typedef *UART_Conf);
HAL_Status UART_Transmit(uint8_t *Buffer, uint16_t Size, uint16_t Timeout);
HAL_Status UART_Receive(uint8_t *Buffer, uint16_t Size, uint16_t Timeout);

#ifdef __cplusplus
    }
#endif

#endif /* !__MC96F8X16_UART_H */
