#ifndef __MC96F8X16_CG_H
#define __MC96F8X16_CG_H

#ifdef __cplusplus
    extern"C"{
#endif

#define SYS_CLK_SEL_FIRC        0x00        /* INT RC OSC for system clock */
#define SYS_CLK_SEL_FXIN        0x01        /* Internal Main OSC for system clock */
#define SYS_CLK_SEL_FSUB        0x02        /* External Sub OSC for system clock */


#define FIRC_0_5MHZ             0x00
#define FIRC_1MHZ               0x01
#define FIRC_2MHZ               0x02
#define FIRC_4MHZ               0x03
#define FIRC_8MHZ               0x04
#define FIRC_16MHZ              0x05


void SysClock_Config(void);

#ifdef __cplusplus
    }
#endif

#endif /* !__MC96F8X16_CG_H */