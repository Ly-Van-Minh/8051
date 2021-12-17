#ifndef __ET9562B_H
#define __ET9562B_H

#ifdef __cplusplus
    extern "C"{
#endif

/* Definition Chip Address */
#define ET9562B_ADDR            0x48

/* Definition Register Address */
#define ISCR                    0x00    /* Input Source Control Register */
#define POCR                    0x01    /* Power-On Configuration Register */
#define CCCR                    0x02    /* Charge Current Control Register */
#define DCLR                    0x03    /* Discharge Current Limit Register */
#define CVCR                    0x04    /* Charge Voltage Control Register */
#define CTTCR                   0x05    /* Charge Termination/Timer Control Register */
#define MOCR                    0x06    /* Miscellaneous Operatrion Control Register */
#define SSR                     0x07    /* System Status Register */
#define FR                      0x08    /* Fault Register */
#define SOVPCTCR                0x09    /* System Output Voltage/Pre-Charge/Termination Current Register */
#define DTSRESR                 0x0A    /* Debounce Time for SYS Reset and Exit Shipmode Register */

#define IN_VSET_OFFSET          3880
#define IN_ILIMT_SET_OFFSET     80

#define IS_IN_VSET(VOLTAGE)         \
do  \
{   \
    return((VOLTAGE - IN_VSET_OFFSET) / 80);    \
} while(0);

#define IS_IN_ILIMT_SET(CURRENT)    \
do  \
{   \
    return((CURRENT - IN_ILIMT_SET_OFFSET) / 40);   \
} while(0);

#ifdef __cplusplus
    {
#endif

#endif /* !__ET9562B_H */
