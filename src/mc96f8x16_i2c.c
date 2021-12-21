#include "mc96f8x16.h"
#include "mc96f8x16_cg.h"
#include "mc96f8x16_i2c.h"
#include "mc96f8x16_tim.h"
#include "log.h"

void I2C_Config(I2C_Config_Typedef *I2C_Conf)
{
    I2CCR = (I2CCR & ~I2CCR_IMASTER) | ((I2C_Conf->Mode) << 2u);
    I2CSDHR = I2C_Conf->HoldTime;
    I2CSCLR = (uint8_t)(I2C_Conf->Period);
    I2CSCHR = (uint8_t)((I2C_Conf->Period) >> 8u);
    I2CCR |= (I2CCR_ACKEN | I2CCR_IICEN);
}

HAL_Status I2C_Master_Transmit(uint8_t DevAddr, uint8_t RegAddr, uint8_t Data,  uint16_t Timeout)
{
    uint16_t StartTick = GetTick();
    I2CDR = (DevAddr << 1u);
    while ((I2CSR & I2CSR_BUSY))
    {
        if(CheckTimeout(StartTick, Timeout) != HAL_OK)
        {
            return HAL_TIMEOUT;
        }
    }
    I2CCR |= I2CCR_STARTC;  /* Start transmit */
    while(!(I2CSR & I2CSR_RXACK))
    {
        if(CheckTimeout(StartTick, Timeout) != HAL_OK)
        {
            return HAL_TIMEOUT;
        }    
    }
    if(!(I2CSR & I2CSR_MLOST))  /* Check I2C maintains bus mastership */
    {
        I2CDR = RegAddr;
        while(!(I2CSR & I2CSR_RXACK))
        {
            if(CheckTimeout(StartTick, Timeout) != HAL_OK)
            {
                return HAL_TIMEOUT;
            }    
        }
        I2CDR = Data;
        while(!(I2CSR & I2CSR_RXACK))
        {
            if(CheckTimeout(StartTick, Timeout) != HAL_OK)
            {
                return HAL_TIMEOUT;
            }    
        }
    }
    else
    {
        return HAL_BUSY;
    }
    I2CCR |= I2CCR_STOPC;   /* Stop transmit */
    I2CSR &= ~(I2CSR_GCALL | I2CSR_TEND | I2CSR_STOPD | I2CSR_SSEL | I2CSR_MLOST);  /* Clear interrupt bits */  
    return HAL_OK;
}

HAL_Status I2C_Master_Receive(uint8_t DevAddr, uint8_t RegAddr, uint8_t *pData, uint16_t Timeout)
{
    uint16_t StartTick = GetTick();
    I2CDR = (DevAddr << 1u) | 0x01;
    while ((I2CSR & I2CSR_BUSY))
    {
        if(CheckTimeout(StartTick, Timeout) != HAL_OK)
        {
            return HAL_TIMEOUT;
        }
    }
    I2CCR |= I2CCR_STARTC;  /* Start transmit */
    while(!(I2CSR & I2CSR_RXACK))
    {
        if(CheckTimeout(StartTick, Timeout) != HAL_OK)
        {
            return HAL_TIMEOUT;
        }    
    }
    if(!(I2CSR & I2CSR_MLOST))  /* Check I2C maintains bus mastership */
    {
        I2CDR = RegAddr;
        while(!(I2CSR & I2CSR_RXACK))
        {
            if(CheckTimeout(StartTick, Timeout) != HAL_OK)
            {
                return HAL_TIMEOUT;
            }    
        }
        while(!(I2CSR & I2CSR_TEND))
        {
            if(CheckTimeout(StartTick, Timeout) != HAL_OK)
            {
                return HAL_TIMEOUT;
            }    
        }        
        *pData = I2CDR;
    }
    else
    {
        return HAL_BUSY;
    }
    I2CCR |= I2CCR_STOPC;   /* Stop transmit */
    I2CSR &= ~(I2CSR_GCALL | I2CSR_TEND | I2CSR_STOPD | I2CSR_SSEL | I2CSR_MLOST);  /* Clear interrupt bits */  
    return HAL_OK;
}