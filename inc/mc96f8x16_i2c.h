#ifndef __MC96F8X16_I2C_H
#define __MC96F8X16_I2C_H

#ifdef __cplusplus
    extern "C"{
#endif

typedef enum
{
    I2C_SLAVE = 0,
    I2C_MASTER
} I2C_Mode_Typedef;

typedef struct
{
    I2C_Mode_Typedef Mode;
    uint8_t HoldTime;
    uint16_t Period;
    uint16_t SlaveAddr;
} I2C_Config_Typedef;

// #define GET_I2CSCL_VALUE(FREQUENCY)
// do
// {
//     return (uint16_t)((FX/(4*FREQUENCY)) - 1);
// } while(0)

#define I2CCR_STARTC            (0x01 << 0u)
#define I2CCR_STOPC             (0x01 << 1u)
#define I2CCR_IMASTER           (0x01 << 2u)
#define I2CCR_ACKEN             (0x01 << 3u)
#define I2CCR_IICIE             (0x01 << 4u)
#define I2CCR_TXDLYENB          (0x01 << 5u)
#define I2CCR_IICEN             (0x01 << 6u)
#define I2CCR_IICRST            (0x01 << 7u)

#define I2CSR_RXACK             (0x01 << 0u)
#define I2CSR_TMODE             (0x01 << 1u)
#define I2CSR_BUSY              (0x01 << 2u)
#define I2CSR_MLOST             (0x01 << 3u)
#define I2CSR_SSEL              (0x01 << 4u)
#define I2CSR_STOPD             (0x01 << 5u)
#define I2CSR_TEND              (0x01 << 6u)
#define I2CSR_GCALL             (0x01 << 7u)


void I2C_Config(I2C_Config_Typedef *I2C_Conf);
HAL_Status I2C_Master_Transmit(uint8_t DevAddr, uint8_t RegAddr, uint8_t Data, uint16_t Timeout);
HAL_Status I2C_Master_Receive(uint8_t DevAddr, uint8_t RegAddr, uint8_t *pData, uint16_t Timeout);

#ifdef __cplusplus
    }
#endif

#endif /* !__MC96F8X16_I2C_H */
