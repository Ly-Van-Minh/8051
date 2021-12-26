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

__sfr __at (0x80)   P0;             /* P0 Data Register */
    __sbit __at (0x80)  P00;
    __sbit __at (0x81)  P01;
    __sbit __at (0x82)  P02;
    __sbit __at (0x83)  P03;
    __sbit __at (0x84)  P04;
    __sbit __at (0x85)  P05;
    __sbit __at (0x86)  P06;
    __sbit __at (0x87)  P07;

__sfr __at (0xA1)   P0IO;           /* P0 Direction Register */
__sfr __at (0x91)   P0OD;           /* P0 Open-drain Selection Register */
__sfr __at (0xAC)   P0PU;           /* P0 Pull-up Resistor Selection Register */
__sfr __at (0xDE)   P03DB;          /* P0/P3 Debounce Enable Register */

__sfr __at (0x88)   P1;             /* P1 Data Register */
    __sbit __at (0x88)  P10;
    __sbit __at (0x89)  P11;
    __sbit __at (0x8A)  P12;
    __sbit __at (0x8B)  P13;
    __sbit __at (0x8C)  P14;
    __sbit __at (0x8D)  P15;
    __sbit __at (0x8E)  P16;
    __sbit __at (0x8F)  P17;
	
__sfr __at (0xB1)   P1IO;           /* P1 Direction Register */
__sfr __at (0x92)   P1OD;           /* P1 Open-drain Selection Register */
__sfr __at (0xAD)   P1PU;           /* P1 Pull-up Resistor Selection Register */
__sfr __at (0xDF)   P12DB;          /* P1/P2 Debounce Enable Register */

__sfr __at (0x90)   P2;             /* P2 Data Register */
    __sbit __at (0x90)  P20;
    __sbit __at (0x91)  P21;
    __sbit __at (0x92)  P22;
    __sbit __at (0x93)  P23;
    __sbit __at (0x94)  P24;
    __sbit __at (0x95)  P25;
    __sbit __at (0x96)  P26;
    __sbit __at (0x97)  P27;

__sfr __at (0xB9)   P2IO;           /* P2 Direction Register */
__sfr __at (0x93)   P2OD;           /* P2 Open-drain Selection Register */
__sfr __at (0xAE)   P2PU;           /* P2 Pull-up Resistor Selection Register */

__sfr __at (0x98)   P3;			    /* P3 Data Register */
    __sbit __at (0x98)  P30;
    __sbit __at (0x99)  P31;
    __sbit __at (0x9A)  P32;
    __sbit __at (0x9B)  P33;
    __sbit __at (0x9C)  P34;
    __sbit __at (0x9D)  P35;
    __sbit __at (0x9E)  P36;
    __sbit __at (0x9F)  P37;

__sfr __at (0xC1)   P3IO;           /* P3 Direction Register*/
__sfr __at (0x94)   P3OD;           /* P3 Open-drain Selection Register */
__sfr __at (0xAF)   P3PU;           /* P3 Pull-up Resistor Selection Register */
   			
__sfr __at (0xD3)   P0FSR;          /* P0 Function Selection Register */
__sfr __at (0xD4)   P1FSRL;         /* P1 Function Selection Low Register */
__sfr __at (0xD5)   P1FSRH;         /* P1 Function Selection High Register */
__sfr __at (0xD6)   P2FSR;          /* P2 Function Selection Register */
__sfr __at (0xD7)   P3FSR;          /* P3 Function Selection Register */

// Interrupt Control
__sfr __at (0xA8)   IE;             /* Interrupt Enable Register 0 */
__sfr __at (0xA9)   IE1;            /* Interrupt Enable Register 1 */
__sfr __at (0xAA)   IE2;            /* Interrupt Enable Register 2 */
__sfr __at (0xAB)   IE3;            /* Interrupt Enable Register 3 */
__sfr __at (0xB8)   IP;             /* Interrupt Priority Register 0 */
__sfr __at (0xF8)   IP1;            /* Interrupt Priority Register 1 */
__sfr __at (0xA0)   IIFLAG;         /* Internal Interrupt Flag Register */
__sfr __at (0xC0)   EIFLAG0;        /* External Interrupt Flag 0 Register */
__sfr __at (0xB0)   EIFLAG1;        /* External Interrupt Flag 1 Register */
__sfr __at (0xA4)   EIPOL0L;        /* External Interrupt Polarity 0 Low Register */
__sfr __at (0xA5)   EIPOL0H;        /* External Interrupt Polarity 0 High Register */
__sfr __at (0xA6)   EIPOL1;         /* External Interrupt Polarity 1 Register */
__sfr __at (0xA7)   EIPOL2;         /* External Interrupt Polarity 2 Register */

// System Oscillator, Reset Control
__sfr __at (0x8A)   SCCR;           /* System Clock Control Register */
__sfr __at (0xC8)   OSCCR;          /* Oscillator Control Register */
__sfr __at (0x8C)   BITCNT;         /* Basic Interval Timer Counter Register */
__sfr __at (0x8B)   BITCR;          /* Basic Interval Timer Control Register */
__sfr __at (0xE8)   RSTFR;          /* Reset Flag Register */
__sfr __at (0x87)   PCON;           /* Power Control Register */
__sfr __at (0xD8)   LVRCR;          /* Low Voltage Reset Control Register */
__sfr __at (0x86)   LVICR;          /* Low Voltage Indicator Control Register */

//  Watch Dog Timer Control 
__sfr __at (0x8E)   WDTDR;          /* Watch Dog Timer Data Register */
__sfr __at (0x8E)   WDTCNT;         /* Watch Dog Timer Counter Register */
__sfr __at (0x8D)   WDTCR;          /* Watch Dog Timer Control Register */

//  Watch Timer Control
__sfr __at (0x89)   WTDR;           /* Watch Timer Data Register */
__sfr __at (0x89)   WTCNT;          /* Watch Timer Counter Register */
__sfr __at (0x96)   WTCR;           /* Watch Timer Control Register */

// TIMER 0 Control
__sfr __at (0xB2)   T0CR;           /* Timer 0 Control Register */
__sfr __at (0xB3)   T0CNT;          /* Timer 0 Counter Register */
__sfr __at (0xB4)   T0DR;           /* Timer 0 Data Register */
__sfr __at (0xB4)   T0CDR;          /* Timer 0 Capture Data Register */

// TIMER interrupt Control
// __sfr __at (0xC3)   TIFR;         /* Timer Interrupt Flag Register */

// TIMER 1 Control
__sfr __at (0xBA)   T1CRL;          /* Timer 1 Control Low Register */
__sfr __at (0xBB)   T1CRH;          /* Timer 1 Control High Register */
__sfr __at (0xBC)   T1ADRL;         /* Timer 1 A Data Low Register */
__sfr __at (0xBD)   T1ADRH;         /* Timer 1 A Data High Register */
__sfr __at (0xBE)   T1BDRL;         /* Timer 1 B Data Low Register */
__sfr __at (0xBF)   T1BDRH;         /* Timer 1 B Data High Register */

// TIMER 2 Control
__sfr __at (0xC2)   T2CRL;          /* Timer 2 Control Low Register */
__sfr __at (0xC3)   T2CRH;          /* Timer 2 Control High Register */
__sfr __at (0xC4)   T2ADRL;         /* Timer 2 A Data Low Register */
__sfr __at (0xC5)   T2ADRH;         /* Timer 2 A Data High Register */
__sfr __at (0xC6)   T2BDRL;         /* Timer 2 B Data Low Register */
__sfr __at (0xC7)   T2BDRH;         /* Timer 2 B Data High Register */

// BUZZER Control
__sfr __at (0x8F)   BUZDR;          /* BUZZER Data Register */
__sfr __at (0x97)   BUZCR;          /* BUZZER Control Register */

// ADC Contol
__sfr __at (0x9C)   ADCCRL;         /* A/D Converter Control Low Register */
__sfr __at (0x9D)   ADCCRH;         /* A/D Converter Control High Register */
__sfr __at (0x9E)   ADCDRL;         /* A/D Converter Data Low Register */
__sfr __at (0x9F)   ADCDRH;         /* A/D Converter Data High Register */

__sfr __at (0xF2)   ADWRCR0;        /* ADC Wake-up Resistor Control Register 0 */
__sfr __at (0xF3)   ADWRCR1;        /* ADC Wake-up Resistor Control Register 1 */
__sfr __at (0xF4)   ADWRCR2;        /* ADC Wake-up Resistor Control Register 2 */
__sfr __at (0xF5)   ADWRCR3;        /* ADC Wake-up Resistor Control Register 3 */
__sfr __at (0xF6)   ADWCRL;         /* ADC Wake-up Control Low Register */
__sfr __at (0xF7)   ADWCRH;         /* ADC Wake-up Control High Register */
__sfr __at (0xDC)   ADWIFRL;        /* ADC Wake-up Interrupt Flag Low Register */
__sfr __at (0xDD)   ADWIFRH;        /* ADC Wake-up Interrupt Flag High Register */

// SPI(SIO) Control
__sfr __at (0xB5)   SPICR;          /* SPI Control Register */
__sfr __at (0xB6)   SPIDR;          /* SPI Data Register */
__sfr __at (0xB7)   SPISR;          /* SPI Status Register */

// UART Control
__sfr __at (0xE2)   UARTCR1;        /* UART Control Register 1 */
__sfr __at (0xE3)   UARTCR2;        /* UART Control Register 2 */
__sfr __at (0xE4)   UARTCR3;        /* UART Control Register 3 */
__sfr __at (0xE5)   UARTST;         /* UART Status Register */
__sfr __at (0xE6)   UARTBD;         /* UART BaudRate Register */
__sfr __at (0xE7)   UARTDR;         /* UART Data Register */

// I2C Control
__sfr __at (0xE9)   I2CCR;          /* I2C Control Register */
__sfr __at (0xEA)   I2CSR;          /* I2C Status Register */
__sfr __at (0xEB)   I2CSAR0;        /* I2C Slave Address 0 Register */
__sfr __at (0xF1)   I2CSAR1;        /* I2C Slave Address 1 Register */
__sfr __at (0xEC)   I2CDR;          /* I2C Data Register */
__sfr __at (0xED)   I2CSDHR;        /* I2C SDA Hold Time Register */
__sfr __at (0xEE)   I2CSCLR;        /* I2C SCL Low Period Register*/
__sfr __at (0xEF)   I2CSCHR;        /* I2C SCL High Period Register*/

// Flash Memory Control
__sfr __at (0xFA)   FSADRH;         /* Flash Sector Address High Register */
__sfr __at (0xFB)   FSADRM;         /* Flash Sector Address Middle Register */
__sfr __at (0xFC)   FSADRL;         /* Flash Sector Address Low Register */
__sfr __at (0xFD)   FIDR;           /* Flash Identification Register */
__sfr __at (0xFE)   FMCR;           /* Flash Mode Control Register */

__sfr __at (0xE0)   ACC;
__sfr __at (0xF0)   B;
__sfr __at (0xD0)   PSW;
__sfr __at (0x81)   SP;
__sfr __at (0x82)   DPL;
__sfr __at (0x83)   DPH;
__sfr __at (0x84)   DPL1;
__sfr __at (0x85)   DPH1;
__sfr __at (0xA2)   EO;             /* EXTENDED OPERATION REGISTER */

#define cli()   do{IE &= ~0x80;}while(0)
#define sei()   do{IE |=  0x80;}while(0)
#define nop()   __asm \
nop	\
__endasm

#ifdef __cplusplus
    }
#endif

#endif /* !__MC96F8X16_H */