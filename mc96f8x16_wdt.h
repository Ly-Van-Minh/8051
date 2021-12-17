#ifndef __MC96F8X16_WDT_H
#define __MC96F8X16_WDT_H

#ifdef __cplusplus
    extern"C"{
#endif

#define WDTIFR          0x01
#define WDTCK           0x02
#define WDTCL           0x20
#define WDTRSON         0x40
#define WDTEN           0x80   

void WDT_Config(uint8_t Time);
void WDT_Clear(void);

#ifdef __cplusplus
    }
#endif

#endif /* !__MC96F8X16_WDT_H */