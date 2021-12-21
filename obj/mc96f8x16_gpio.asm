;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.8.0 #10562 (Linux)
;--------------------------------------------------------
	.module mc96f8x16_gpio
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _P37
	.globl _P36
	.globl _P35
	.globl _P34
	.globl _P33
	.globl _P32
	.globl _P31
	.globl _P30
	.globl _P27
	.globl _P26
	.globl _P25
	.globl _P24
	.globl _P23
	.globl _P22
	.globl _P21
	.globl _P20
	.globl _P17
	.globl _P16
	.globl _P15
	.globl _P14
	.globl _P13
	.globl _P12
	.globl _P11
	.globl _P10
	.globl _P07
	.globl _P06
	.globl _P05
	.globl _P04
	.globl _P03
	.globl _P02
	.globl _P01
	.globl _P00
	.globl _EO
	.globl _DPH1
	.globl _DPL1
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _PSW
	.globl _B
	.globl _ACC
	.globl _FMCR
	.globl _FIDR
	.globl _FSADRL
	.globl _FSADRM
	.globl _FSADRH
	.globl _I2CSCHR
	.globl _I2CSCLR
	.globl _I2CSDHR
	.globl _I2CDR
	.globl _I2CSAR1
	.globl _I2CSAR0
	.globl _I2CSR
	.globl _I2CCR
	.globl _UARTDR
	.globl _UARTBD
	.globl _UARTST
	.globl _UARTCR3
	.globl _UARTCR2
	.globl _UARTCR1
	.globl _SPISR
	.globl _SPIDR
	.globl _SPICR
	.globl _ADWIFRH
	.globl _ADWIFRL
	.globl _ADWCRH
	.globl _ADWCRL
	.globl _ADWRCR3
	.globl _ADWRCR2
	.globl _ADWRCR1
	.globl _ADWRCR0
	.globl _ADCDRH
	.globl _ADCDRL
	.globl _ADCCRH
	.globl _ADCCRL
	.globl _BUZCR
	.globl _BUZDR
	.globl _T2BDRH
	.globl _T2BDRL
	.globl _T2ADRH
	.globl _T2ADRL
	.globl _T2CRH
	.globl _T2CRL
	.globl _T1BDRH
	.globl _T1BDRL
	.globl _T1ADRH
	.globl _T1ADRL
	.globl _T1CRH
	.globl _T1CRL
	.globl _T0CDR
	.globl _T0DR
	.globl _T0CNT
	.globl _T0CR
	.globl _WTCR
	.globl _WTCNT
	.globl _WTDR
	.globl _WDTCR
	.globl _WDTCNT
	.globl _WDTDR
	.globl _LVICR
	.globl _LVRCR
	.globl _PCON
	.globl _RSTFR
	.globl _BITCR
	.globl _BITCNT
	.globl _OSCCR
	.globl _SCCR
	.globl _EIPOL2
	.globl _EIPOL1
	.globl _EIPOL0H
	.globl _EIPOL0L
	.globl _EIFLAG1
	.globl _EIFLAG0
	.globl _IIFLAG
	.globl _IP1
	.globl _IP
	.globl _IE3
	.globl _IE2
	.globl _IE1
	.globl _IE
	.globl _P3FSR
	.globl _P2FSR
	.globl _P1FSRH
	.globl _P1FSRL
	.globl _P0FSR
	.globl _P3PU
	.globl _P3OD
	.globl _P3IO
	.globl _P3
	.globl _P2PU
	.globl _P2OD
	.globl _P2IO
	.globl _P2
	.globl _P12DB
	.globl _P1PU
	.globl _P1OD
	.globl _P1IO
	.globl _P1
	.globl _P03DB
	.globl _P0PU
	.globl _P0OD
	.globl _P0IO
	.globl _P0
	.globl _GPIO_Config
	.globl _GPIOPin_Write
	.globl _GPIOPin_Read
	.globl _GPIOPin_Toggle
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0::
	.ds 1
_P0IO::
	.ds 1
_P0OD::
	.ds 1
_P0PU::
	.ds 1
_P03DB::
	.ds 1
_P1::
	.ds 1
_P1IO::
	.ds 1
_P1OD::
	.ds 1
_P1PU::
	.ds 1
_P12DB::
	.ds 1
_P2::
	.ds 1
_P2IO::
	.ds 1
_P2OD::
	.ds 1
_P2PU::
	.ds 1
_P3::
	.ds 1
_P3IO::
	.ds 1
_P3OD::
	.ds 1
_P3PU::
	.ds 1
_P0FSR::
	.ds 1
_P1FSRL::
	.ds 1
_P1FSRH::
	.ds 1
_P2FSR::
	.ds 1
_P3FSR::
	.ds 1
_IE::
	.ds 1
_IE1::
	.ds 1
_IE2::
	.ds 1
_IE3::
	.ds 1
_IP::
	.ds 1
_IP1::
	.ds 1
_IIFLAG::
	.ds 1
_EIFLAG0::
	.ds 1
_EIFLAG1::
	.ds 1
_EIPOL0L::
	.ds 1
_EIPOL0H::
	.ds 1
_EIPOL1::
	.ds 1
_EIPOL2::
	.ds 1
_SCCR::
	.ds 1
_OSCCR::
	.ds 1
_BITCNT::
	.ds 1
_BITCR::
	.ds 1
_RSTFR::
	.ds 1
_PCON::
	.ds 1
_LVRCR::
	.ds 1
_LVICR::
	.ds 1
_WDTDR::
	.ds 1
_WDTCNT::
	.ds 1
_WDTCR::
	.ds 1
_WTDR::
	.ds 1
_WTCNT::
	.ds 1
_WTCR::
	.ds 1
_T0CR::
	.ds 1
_T0CNT::
	.ds 1
_T0DR::
	.ds 1
_T0CDR::
	.ds 1
_T1CRL::
	.ds 1
_T1CRH::
	.ds 1
_T1ADRL::
	.ds 1
_T1ADRH::
	.ds 1
_T1BDRL::
	.ds 1
_T1BDRH::
	.ds 1
_T2CRL::
	.ds 1
_T2CRH::
	.ds 1
_T2ADRL::
	.ds 1
_T2ADRH::
	.ds 1
_T2BDRL::
	.ds 1
_T2BDRH::
	.ds 1
_BUZDR::
	.ds 1
_BUZCR::
	.ds 1
_ADCCRL::
	.ds 1
_ADCCRH::
	.ds 1
_ADCDRL::
	.ds 1
_ADCDRH::
	.ds 1
_ADWRCR0::
	.ds 1
_ADWRCR1::
	.ds 1
_ADWRCR2::
	.ds 1
_ADWRCR3::
	.ds 1
_ADWCRL::
	.ds 1
_ADWCRH::
	.ds 1
_ADWIFRL::
	.ds 1
_ADWIFRH::
	.ds 1
_SPICR::
	.ds 1
_SPIDR::
	.ds 1
_SPISR::
	.ds 1
_UARTCR1::
	.ds 1
_UARTCR2::
	.ds 1
_UARTCR3::
	.ds 1
_UARTST::
	.ds 1
_UARTBD::
	.ds 1
_UARTDR::
	.ds 1
_I2CCR::
	.ds 1
_I2CSR::
	.ds 1
_I2CSAR0::
	.ds 1
_I2CSAR1::
	.ds 1
_I2CDR::
	.ds 1
_I2CSDHR::
	.ds 1
_I2CSCLR::
	.ds 1
_I2CSCHR::
	.ds 1
_FSADRH::
	.ds 1
_FSADRM::
	.ds 1
_FSADRL::
	.ds 1
_FIDR::
	.ds 1
_FMCR::
	.ds 1
_ACC::
	.ds 1
_B::
	.ds 1
_PSW::
	.ds 1
_SP::
	.ds 1
_DPL::
	.ds 1
_DPH::
	.ds 1
_DPL1::
	.ds 1
_DPH1::
	.ds 1
_EO::
	.ds 1
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P00::
	.ds 1
_P01::
	.ds 1
_P02::
	.ds 1
_P03::
	.ds 1
_P04::
	.ds 1
_P05::
	.ds 1
_P06::
	.ds 1
_P07::
	.ds 1
_P10::
	.ds 1
_P11::
	.ds 1
_P12::
	.ds 1
_P13::
	.ds 1
_P14::
	.ds 1
_P15::
	.ds 1
_P16::
	.ds 1
_P17::
	.ds 1
_P20::
	.ds 1
_P21::
	.ds 1
_P22::
	.ds 1
_P23::
	.ds 1
_P24::
	.ds 1
_P25::
	.ds 1
_P26::
	.ds 1
_P27::
	.ds 1
_P30::
	.ds 1
_P31::
	.ds 1
_P32::
	.ds 1
_P33::
	.ds 1
_P34::
	.ds 1
_P35::
	.ds 1
_P36::
	.ds 1
_P37::
	.ds 1
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
;	./inc/mc96f8x16.h:37: sfr			P0			= 0x80;			// P0 Data Register
	mov	_P0,#0x80
;	./inc/mc96f8x16.h:47: sfr			P0IO		= 0xA1;			// P0 Direction Register
	mov	_P0IO,#0xa1
;	./inc/mc96f8x16.h:48: sfr			P0OD		= 0x91;			// P0 Open-drain Selection Register
	mov	_P0OD,#0x91
;	./inc/mc96f8x16.h:49: sfr			P0PU		= 0xAC;			// P0 Pull-up Resistor Selection Register
	mov	_P0PU,#0xac
;	./inc/mc96f8x16.h:50: sfr			P03DB		= 0xDE;			// P0/P3 Debounce Enable Register
	mov	_P03DB,#0xde
;	./inc/mc96f8x16.h:52: sfr			P1			= 0x88;			// P1 Data Register
	mov	_P1,#0x88
;	./inc/mc96f8x16.h:62: sfr			P1IO		= 0xB1;			// P1 Direction Register
	mov	_P1IO,#0xb1
;	./inc/mc96f8x16.h:63: sfr			P1OD		= 0x92;			// P1 Open-drain Selection Register
	mov	_P1OD,#0x92
;	./inc/mc96f8x16.h:64: sfr			P1PU		= 0xAD;			// P1 Pull-up Resistor Selection Register
	mov	_P1PU,#0xad
;	./inc/mc96f8x16.h:65: sfr			P12DB		= 0xDF;			// P1/P2 Debounce Enable Register
	mov	_P12DB,#0xdf
;	./inc/mc96f8x16.h:67: sfr			P2			= 0x90;			// P2 Data Register
	mov	_P2,#0x90
;	./inc/mc96f8x16.h:77: sfr			P2IO		= 0xB9;			// P2 Direction Register
	mov	_P2IO,#0xb9
;	./inc/mc96f8x16.h:78: sfr			P2OD		= 0x93;			// P2 Open-drain Selection Register
	mov	_P2OD,#0x93
;	./inc/mc96f8x16.h:79: sfr			P2PU		= 0xAE;			// P2 Pull-up Resistor Selection Register
	mov	_P2PU,#0xae
;	./inc/mc96f8x16.h:81: sfr			P3			= 0x98;			// P3 Data Register
	mov	_P3,#0x98
;	./inc/mc96f8x16.h:91: sfr			P3IO		= 0xC1;			// P3 Direction Register
	mov	_P3IO,#0xc1
;	./inc/mc96f8x16.h:92: sfr			P3OD		= 0x94;			// P3 Open-drain Selection Register
	mov	_P3OD,#0x94
;	./inc/mc96f8x16.h:93: sfr			P3PU		= 0xAF;			// P3 Pull-up Resistor Selection Register
	mov	_P3PU,#0xaf
;	./inc/mc96f8x16.h:95: sfr			P0FSR		= 0xD3;			//P0 Function Selection Register
	mov	_P0FSR,#0xd3
;	./inc/mc96f8x16.h:96: sfr			P1FSRL		= 0xD4;			//P1 Function Selection Low Register
	mov	_P1FSRL,#0xd4
;	./inc/mc96f8x16.h:97: sfr			P1FSRH		= 0xD5;			//P1 Function Selection High Register
	mov	_P1FSRH,#0xd5
;	./inc/mc96f8x16.h:98: sfr			P2FSR		= 0xD6;			//P2 Function Selection Register
	mov	_P2FSR,#0xd6
;	./inc/mc96f8x16.h:99: sfr			P3FSR		= 0xD7;			//P3 Function Selection Register
	mov	_P3FSR,#0xd7
;	./inc/mc96f8x16.h:102: sfr			IE			= 0xA8;			// Interrupt Enable Register 0
	mov	_IE,#0xa8
;	./inc/mc96f8x16.h:103: sfr			IE1			= 0xA9;			// Interrupt Enable Register 1
	mov	_IE1,#0xa9
;	./inc/mc96f8x16.h:104: sfr			IE2			= 0xAA;			// Interrupt Enable Register 2
	mov	_IE2,#0xaa
;	./inc/mc96f8x16.h:105: sfr			IE3			= 0xAB;			// Interrupt Enable Register 3
	mov	_IE3,#0xab
;	./inc/mc96f8x16.h:106: sfr			IP			= 0xB8;			// Interrupt Priority Register 0
	mov	_IP,#0xb8
;	./inc/mc96f8x16.h:107: sfr			IP1			= 0xF8;			// Interrupt Priority Register 1
	mov	_IP1,#0xf8
;	./inc/mc96f8x16.h:108: sfr			IIFLAG		= 0xA0;			// Internal Interrupt Flag Register
	mov	_IIFLAG,#0xa0
;	./inc/mc96f8x16.h:109: sfr			EIFLAG0		= 0xC0;			// External Interrupt Flag 0 Register
	mov	_EIFLAG0,#0xc0
;	./inc/mc96f8x16.h:110: sfr			EIFLAG1		= 0xB0;			// External Interrupt Flag 1 Register
	mov	_EIFLAG1,#0xb0
;	./inc/mc96f8x16.h:111: sfr			EIPOL0L		= 0xA4;			// External Interrupt Polarity 0 Low Register
	mov	_EIPOL0L,#0xa4
;	./inc/mc96f8x16.h:112: sfr			EIPOL0H		= 0xA5;			// External Interrupt Polarity 0 High Register
	mov	_EIPOL0H,#0xa5
;	./inc/mc96f8x16.h:113: sfr			EIPOL1		= 0xA6;			// External Interrupt Polarity 1 Register
	mov	_EIPOL1,#0xa6
;	./inc/mc96f8x16.h:114: sfr			EIPOL2		= 0xA7;			// External Interrupt Polarity 2 Register
	mov	_EIPOL2,#0xa7
;	./inc/mc96f8x16.h:117: sfr			SCCR		= 0x8A;			// System Clock Control Register
	mov	_SCCR,#0x8a
;	./inc/mc96f8x16.h:118: sfr			OSCCR		= 0xC8;			// Oscillator Control Register
	mov	_OSCCR,#0xc8
;	./inc/mc96f8x16.h:119: sfr			BITCNT		= 0x8C;			// Basic Interval Timer Counter Register
	mov	_BITCNT,#0x8c
;	./inc/mc96f8x16.h:120: sfr			BITCR		= 0x8B;			// Basic Interval Timer Control Register
	mov	_BITCR,#0x8b
;	./inc/mc96f8x16.h:121: sfr			RSTFR		= 0xE8;			// Reset Flag Register
	mov	_RSTFR,#0xe8
;	./inc/mc96f8x16.h:122: sfr			PCON		= 0x87;			// Power Control Register
	mov	_PCON,#0x87
;	./inc/mc96f8x16.h:123: sfr			LVRCR		= 0xD8;			// Low Voltage Reset Control Register
	mov	_LVRCR,#0xd8
;	./inc/mc96f8x16.h:124: sfr			LVICR		= 0x86;			// Low Voltage Indicator Control Register
	mov	_LVICR,#0x86
;	./inc/mc96f8x16.h:127: sfr			WDTDR		= 0x8E;			// Watch Dog Timer Data Register
	mov	_WDTDR,#0x8e
;	./inc/mc96f8x16.h:128: sfr			WDTCNT		= 0x8E;			// Watch Dog Timer Counter Register
	mov	_WDTCNT,#0x8e
;	./inc/mc96f8x16.h:129: sfr			WDTCR		= 0x8D;			// Watch Dog Timer Control Register
	mov	_WDTCR,#0x8d
;	./inc/mc96f8x16.h:132: sfr			WTDR		= 0x89;			// Watch Timer Data Register
	mov	_WTDR,#0x89
;	./inc/mc96f8x16.h:133: sfr			WTCNT		= 0x89;			// Watch Timer Counter Register
	mov	_WTCNT,#0x89
;	./inc/mc96f8x16.h:134: sfr			WTCR		= 0x96;			// Watch Timer Control Register
	mov	_WTCR,#0x96
;	./inc/mc96f8x16.h:137: sfr			T0CR		= 0xB2;			// Timer 0 Control Register
	mov	_T0CR,#0xb2
;	./inc/mc96f8x16.h:138: sfr			T0CNT		= 0xB3;			// Timer 0 Counter Register
	mov	_T0CNT,#0xb3
;	./inc/mc96f8x16.h:139: sfr			T0DR		= 0xB4;			// Timer 0 Data Register
	mov	_T0DR,#0xb4
;	./inc/mc96f8x16.h:140: sfr			T0CDR		= 0xB4;			// Timer 0 Capture Data Register
	mov	_T0CDR,#0xb4
;	./inc/mc96f8x16.h:146: sfr			T1CRL		= 0xBA;			// Timer 1 Control Low Register
	mov	_T1CRL,#0xba
;	./inc/mc96f8x16.h:147: sfr			T1CRH		= 0xBB;			// Timer 1 Control High Register
	mov	_T1CRH,#0xbb
;	./inc/mc96f8x16.h:148: sfr			T1ADRL		= 0xBC;			// Timer 1 A Data Low Register
	mov	_T1ADRL,#0xbc
;	./inc/mc96f8x16.h:149: sfr			T1ADRH		= 0xBD;			// Timer 1 A Data High Register
	mov	_T1ADRH,#0xbd
;	./inc/mc96f8x16.h:150: sfr			T1BDRL		= 0xBE;			// Timer 1 B Data Low Register
	mov	_T1BDRL,#0xbe
;	./inc/mc96f8x16.h:151: sfr			T1BDRH		= 0xBF;			// Timer 1 B Data High Register
	mov	_T1BDRH,#0xbf
;	./inc/mc96f8x16.h:154: sfr			T2CRL		= 0xC2;			// Timer 2 Control Low Register
	mov	_T2CRL,#0xc2
;	./inc/mc96f8x16.h:155: sfr			T2CRH		= 0xC3;			// Timer 2 Control High Register
	mov	_T2CRH,#0xc3
;	./inc/mc96f8x16.h:156: sfr			T2ADRL		= 0xC4;			// Timer 2 A Data Low Register
	mov	_T2ADRL,#0xc4
;	./inc/mc96f8x16.h:157: sfr			T2ADRH		= 0xC5;			// Timer 2 A Data High Register
	mov	_T2ADRH,#0xc5
;	./inc/mc96f8x16.h:158: sfr			T2BDRL		= 0xC6;			// Timer 2 B Data Low Register
	mov	_T2BDRL,#0xc6
;	./inc/mc96f8x16.h:159: sfr			T2BDRH		= 0xC7;			// Timer 2 B Data High Register
	mov	_T2BDRH,#0xc7
;	./inc/mc96f8x16.h:162: sfr			BUZDR		= 0x8F;			// BUZZER Data Register
	mov	_BUZDR,#0x8f
;	./inc/mc96f8x16.h:163: sfr			BUZCR		= 0x97;			// BUZZER Control Register
	mov	_BUZCR,#0x97
;	./inc/mc96f8x16.h:166: sfr			ADCCRL		= 0x9C;			// A/D Converter Control Low Register
	mov	_ADCCRL,#0x9c
;	./inc/mc96f8x16.h:167: sfr			ADCCRH		= 0x9D;			// A/D Converter Control High Register
	mov	_ADCCRH,#0x9d
;	./inc/mc96f8x16.h:168: sfr			ADCDRL		= 0x9E;			// A/D Converter Data Low Register
	mov	_ADCDRL,#0x9e
;	./inc/mc96f8x16.h:169: sfr			ADCDRH		= 0x9F;			// A/D Converter Data High Register
	mov	_ADCDRH,#0x9f
;	./inc/mc96f8x16.h:171: sfr			ADWRCR0		= 0xF2;			// ADC Wake-up Resistor Control Register 0
	mov	_ADWRCR0,#0xf2
;	./inc/mc96f8x16.h:172: sfr			ADWRCR1		= 0xF3;			// ADC Wake-up Resistor Control Register 1
	mov	_ADWRCR1,#0xf3
;	./inc/mc96f8x16.h:173: sfr			ADWRCR2		= 0xF4;			// ADC Wake-up Resistor Control Register 2
	mov	_ADWRCR2,#0xf4
;	./inc/mc96f8x16.h:174: sfr			ADWRCR3		= 0xF5;			// ADC Wake-up Resistor Control Register 3
	mov	_ADWRCR3,#0xf5
;	./inc/mc96f8x16.h:175: sfr			ADWCRL		= 0xF6;			// ADC Wake-up Control Low Register
	mov	_ADWCRL,#0xf6
;	./inc/mc96f8x16.h:176: sfr			ADWCRH		= 0xF7;			// ADC Wake-up Control High Register
	mov	_ADWCRH,#0xf7
;	./inc/mc96f8x16.h:177: sfr			ADWIFRL		= 0xDC;			// ADC Wake-up Interrupt Flag Low Register
	mov	_ADWIFRL,#0xdc
;	./inc/mc96f8x16.h:178: sfr			ADWIFRH		= 0xDD;			// ADC Wake-up Interrupt Flag High Register
	mov	_ADWIFRH,#0xdd
;	./inc/mc96f8x16.h:181: sfr			SPICR		= 0xB5;			// SPI Control Register
	mov	_SPICR,#0xb5
;	./inc/mc96f8x16.h:182: sfr			SPIDR		= 0xB6;			// SPI Data Register
	mov	_SPIDR,#0xb6
;	./inc/mc96f8x16.h:183: sfr			SPISR		= 0xB7;			// SPI Status Register
	mov	_SPISR,#0xb7
;	./inc/mc96f8x16.h:186: sfr			UARTCR1		= 0xE2;			// UART Control Register 1
	mov	_UARTCR1,#0xe2
;	./inc/mc96f8x16.h:187: sfr			UARTCR2		= 0xE3;			// UART Control Register 2
	mov	_UARTCR2,#0xe3
;	./inc/mc96f8x16.h:188: sfr			UARTCR3		= 0xE4;			// UART Control Register 3
	mov	_UARTCR3,#0xe4
;	./inc/mc96f8x16.h:189: sfr			UARTST		= 0xE5;			// UART Status Register
	mov	_UARTST,#0xe5
;	./inc/mc96f8x16.h:190: sfr			UARTBD		= 0xE6;			// UART BaudRate Register
	mov	_UARTBD,#0xe6
;	./inc/mc96f8x16.h:191: sfr			UARTDR		= 0xE7;			// UART Data Register
	mov	_UARTDR,#0xe7
;	./inc/mc96f8x16.h:194: sfr			I2CCR		= 0xE9;			// I2C Control Register
	mov	_I2CCR,#0xe9
;	./inc/mc96f8x16.h:195: sfr			I2CSR		= 0xEA;			// I2C Status Register
	mov	_I2CSR,#0xea
;	./inc/mc96f8x16.h:196: sfr			I2CSAR0		= 0xEB;			// I2C Slave Address 0 Register
	mov	_I2CSAR0,#0xeb
;	./inc/mc96f8x16.h:197: sfr			I2CSAR1		= 0xF1;			// I2C Slave Address 1 Register
	mov	_I2CSAR1,#0xf1
;	./inc/mc96f8x16.h:198: sfr			I2CDR		= 0xEC;			// I2C Data Register
	mov	_I2CDR,#0xec
;	./inc/mc96f8x16.h:199: sfr			I2CSDHR		= 0xED;			// I2C SDA Hold Time Register
	mov	_I2CSDHR,#0xed
;	./inc/mc96f8x16.h:200: sfr			I2CSCLR		= 0xEE;			// I2C SCL Low Period Register
	mov	_I2CSCLR,#0xee
;	./inc/mc96f8x16.h:201: sfr			I2CSCHR		= 0xEF;			// I2C SCL High Period Register
	mov	_I2CSCHR,#0xef
;	./inc/mc96f8x16.h:204: sfr			FSADRH		= 0xFA;			// Flash Sector Address High Register
	mov	_FSADRH,#0xfa
;	./inc/mc96f8x16.h:205: sfr			FSADRM		= 0xFB;			// Flash Sector Address Middle Register
	mov	_FSADRM,#0xfb
;	./inc/mc96f8x16.h:206: sfr			FSADRL		= 0xFC;			// Flash Sector Address Low Register
	mov	_FSADRL,#0xfc
;	./inc/mc96f8x16.h:207: sfr			FIDR		= 0xFD;			// Flash Identification Register
	mov	_FIDR,#0xfd
;	./inc/mc96f8x16.h:208: sfr			FMCR		= 0xFE;			// Flash Mode Control Register
	mov	_FMCR,#0xfe
;	./inc/mc96f8x16.h:210: sfr			ACC			= 0xE0;
	mov	_ACC,#0xe0
;	./inc/mc96f8x16.h:211: sfr			B			= 0xF0;
	mov	_B,#0xf0
;	./inc/mc96f8x16.h:212: sfr			PSW			= 0xD0;
	mov	_PSW,#0xd0
;	./inc/mc96f8x16.h:213: sfr			SP			= 0x81;
	mov	_SP,#0x81
;	./inc/mc96f8x16.h:214: sfr			DPL			= 0x82;
	mov	_DPL,#0x82
;	./inc/mc96f8x16.h:215: sfr			DPH			= 0x83;
	mov	_DPH,#0x83
;	./inc/mc96f8x16.h:216: sfr			DPL1		= 0x84;
	mov	_DPL1,#0x84
;	./inc/mc96f8x16.h:217: sfr			DPH1		= 0x85;
	mov	_DPH1,#0x85
;	./inc/mc96f8x16.h:218: sfr			EO			= 0xA2;			// EXTENDED OPERATION REGISTER
	mov	_EO,#0xa2
;	./inc/mc96f8x16.h:38: sbit	P00			= 0x80;
;	assignBit
	setb	_P00
;	./inc/mc96f8x16.h:39: sbit	P01			= 0x81;
;	assignBit
	setb	_P01
;	./inc/mc96f8x16.h:40: sbit	P02			= 0x82;
;	assignBit
	setb	_P02
;	./inc/mc96f8x16.h:41: sbit	P03			= 0x83;
;	assignBit
	setb	_P03
;	./inc/mc96f8x16.h:42: sbit	P04			= 0x84;
;	assignBit
	setb	_P04
;	./inc/mc96f8x16.h:43: sbit	P05			= 0x85;
;	assignBit
	setb	_P05
;	./inc/mc96f8x16.h:44: sbit	P06			= 0x86;
;	assignBit
	setb	_P06
;	./inc/mc96f8x16.h:45: sbit	P07			= 0x87;
;	assignBit
	setb	_P07
;	./inc/mc96f8x16.h:53: sbit	P10			= 0x88;
;	assignBit
	setb	_P10
;	./inc/mc96f8x16.h:54: sbit	P11			= 0x89;
;	assignBit
	setb	_P11
;	./inc/mc96f8x16.h:55: sbit	P12			= 0x8A;
;	assignBit
	setb	_P12
;	./inc/mc96f8x16.h:56: sbit	P13			= 0x8B;
;	assignBit
	setb	_P13
;	./inc/mc96f8x16.h:57: sbit	P14			= 0x8C;
;	assignBit
	setb	_P14
;	./inc/mc96f8x16.h:58: sbit	P15			= 0x8D;
;	assignBit
	setb	_P15
;	./inc/mc96f8x16.h:59: sbit	P16			= 0x8E;
;	assignBit
	setb	_P16
;	./inc/mc96f8x16.h:60: sbit	P17			= 0x8F;
;	assignBit
	setb	_P17
;	./inc/mc96f8x16.h:68: sbit	P20			= 0x90;
;	assignBit
	setb	_P20
;	./inc/mc96f8x16.h:69: sbit	P21			= 0x91;
;	assignBit
	setb	_P21
;	./inc/mc96f8x16.h:70: sbit	P22			= 0x92;
;	assignBit
	setb	_P22
;	./inc/mc96f8x16.h:71: sbit	P23			= 0x93;
;	assignBit
	setb	_P23
;	./inc/mc96f8x16.h:72: sbit	P24			= 0x94;
;	assignBit
	setb	_P24
;	./inc/mc96f8x16.h:73: sbit	P25			= 0x95;
;	assignBit
	setb	_P25
;	./inc/mc96f8x16.h:74: sbit	P26			= 0x96;
;	assignBit
	setb	_P26
;	./inc/mc96f8x16.h:75: sbit	P27			= 0x97;
;	assignBit
	setb	_P27
;	./inc/mc96f8x16.h:82: sbit	P30			= 0x98;
;	assignBit
	setb	_P30
;	./inc/mc96f8x16.h:83: sbit	P31			= 0x99;
;	assignBit
	setb	_P31
;	./inc/mc96f8x16.h:84: sbit	P32			= 0x9A;
;	assignBit
	setb	_P32
;	./inc/mc96f8x16.h:85: sbit	P33			= 0x9B;
;	assignBit
	setb	_P33
;	./inc/mc96f8x16.h:86: sbit	P34			= 0x9C;
;	assignBit
	setb	_P34
;	./inc/mc96f8x16.h:87: sbit	P35			= 0x9D;
;	assignBit
	setb	_P35
;	./inc/mc96f8x16.h:88: sbit	P36			= 0x9E;
;	assignBit
	setb	_P36
;	./inc/mc96f8x16.h:89: sbit	P37			= 0x9F;
;	assignBit
	setb	_P37
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'GPIO_Config'
;------------------------------------------------------------
;	src/mc96f8x16_gpio.c:5: void GPIO_Config(void)
;	-----------------------------------------
;	 function GPIO_Config
;	-----------------------------------------
_GPIO_Config:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	src/mc96f8x16_gpio.c:8: P0IO = 0x00;    /* All Pins P0 are input */
	mov	_P0IO,#0x00
;	src/mc96f8x16_gpio.c:9: P0PU = 0x00;    /* All Pins P0 are no pull */
	mov	_P0PU,#0x00
;	src/mc96f8x16_gpio.c:10: P0FSR = (P0FSR3 | P0FSR4);   /* Select P02 is AN2 and P03 is AN3 */
	mov	_P0FSR,#0x18
;	src/mc96f8x16_gpio.c:15: P1IO = P14IO;   /* Select P14 as Output and Pin remain as Input */
	mov	_P1IO,#0x10
;	src/mc96f8x16_gpio.c:16: P1FSRH = (P1FSRH5 | P1FSRH3);     /* Select P15 as AN12, P16 as AN13 */
	mov	_P1FSRH,#0x28
;	src/mc96f8x16_gpio.c:19: P2FSR = (P2FSR0 | P2FSR1);    /* Select Pin I2C */
	mov	_P2FSR,#0x03
;	src/mc96f8x16_gpio.c:22: P3IO = (uint8_t)(P30IO | P33IO | P34IO | P35IO | P36IO | P37IO);
	mov	_P3IO,#0xf9
;	src/mc96f8x16_gpio.c:23: P3FSR = P3FSR0;
	mov	_P3FSR,#0x01
;	src/mc96f8x16_gpio.c:25: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'GPIOPin_Write'
;------------------------------------------------------------
;PIN_State                 Allocated to stack - _bp -3
;GPIO_Pin                  Allocated to registers r7 
;------------------------------------------------------------
;	src/mc96f8x16_gpio.c:27: void GPIOPin_Write(OUTPUTPin_t GPIO_Pin, GPIOPin_State PIN_State)
;	-----------------------------------------
;	 function GPIOPin_Write
;	-----------------------------------------
_GPIOPin_Write:
	push	_bp
	mov	_bp,sp
;	src/mc96f8x16_gpio.c:29: switch (GPIO_Pin)
	mov	a,dpl
	mov	r7,a
	add	a,#0xff - 0x05
	jnc	00157$
	ljmp	00127$
00157$:
	mov	a,r7
	add	a,r7
;	src/mc96f8x16_gpio.c:31: case GPIO_LED1:
	mov	dptr,#00158$
	jmp	@a+dptr
00158$:
	sjmp	00101$
	sjmp	00105$
	sjmp	00109$
	sjmp	00113$
	sjmp	00117$
	sjmp	00121$
00101$:
;	src/mc96f8x16_gpio.c:32: if(PIN_State == GPIO_RESET)
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	mov	a,@r0
	jnz	00103$
;	src/mc96f8x16_gpio.c:34: P33 = 0;
;	assignBit
	clr	_P33
	sjmp	00127$
00103$:
;	src/mc96f8x16_gpio.c:38: P33 = 1;
;	assignBit
	setb	_P33
;	src/mc96f8x16_gpio.c:40: break;
;	src/mc96f8x16_gpio.c:41: case GPIO_LED2:
	sjmp	00127$
00105$:
;	src/mc96f8x16_gpio.c:42: if(PIN_State == GPIO_RESET)
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	mov	a,@r0
	jnz	00107$
;	src/mc96f8x16_gpio.c:44: P34 = 0;
;	assignBit
	clr	_P34
	sjmp	00127$
00107$:
;	src/mc96f8x16_gpio.c:48: P34 = 1;
;	assignBit
	setb	_P34
;	src/mc96f8x16_gpio.c:50: break;
;	src/mc96f8x16_gpio.c:51: case GPIO_LED3:
	sjmp	00127$
00109$:
;	src/mc96f8x16_gpio.c:52: if(PIN_State == GPIO_RESET)
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	mov	a,@r0
	jnz	00111$
;	src/mc96f8x16_gpio.c:54: P35 = 0;
;	assignBit
	clr	_P35
	sjmp	00127$
00111$:
;	src/mc96f8x16_gpio.c:58: P35 = 1;
;	assignBit
	setb	_P35
;	src/mc96f8x16_gpio.c:60: break;
;	src/mc96f8x16_gpio.c:61: case GPIO_5V_CNTL:
	sjmp	00127$
00113$:
;	src/mc96f8x16_gpio.c:62: if(PIN_State == GPIO_RESET)
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	mov	a,@r0
	jnz	00115$
;	src/mc96f8x16_gpio.c:64: P36 = 0;
;	assignBit
	clr	_P36
	sjmp	00127$
00115$:
;	src/mc96f8x16_gpio.c:68: P36 = 1;
;	assignBit
	setb	_P36
;	src/mc96f8x16_gpio.c:70: break;
;	src/mc96f8x16_gpio.c:71: case GPIO_DCDC_EN:
	sjmp	00127$
00117$:
;	src/mc96f8x16_gpio.c:72: if(PIN_State == GPIO_RESET)
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	mov	a,@r0
	jnz	00119$
;	src/mc96f8x16_gpio.c:74: P37 = 0;
;	assignBit
	clr	_P37
	sjmp	00127$
00119$:
;	src/mc96f8x16_gpio.c:78: P37 = 1;
;	assignBit
	setb	_P37
;	src/mc96f8x16_gpio.c:80: break;
;	src/mc96f8x16_gpio.c:81: case GPIO_COM_MODE:
	sjmp	00127$
00121$:
;	src/mc96f8x16_gpio.c:82: if(PIN_State == GPIO_RESET)
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	mov	a,@r0
	jnz	00123$
;	src/mc96f8x16_gpio.c:84: P14 = 0;
;	assignBit
	clr	_P14
	sjmp	00127$
00123$:
;	src/mc96f8x16_gpio.c:88: P14 = 1;
;	assignBit
	setb	_P14
;	src/mc96f8x16_gpio.c:93: }
00127$:
;	src/mc96f8x16_gpio.c:94: }
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'GPIOPin_Read'
;------------------------------------------------------------
;GPIO_Pin                  Allocated to registers r7 
;ret                       Allocated to registers r6 
;------------------------------------------------------------
;	src/mc96f8x16_gpio.c:96: GPIOPin_State GPIOPin_Read(OUTPUTPin_t GPIO_Pin)
;	-----------------------------------------
;	 function GPIOPin_Read
;	-----------------------------------------
_GPIOPin_Read:
	mov	r7,dpl
;	src/mc96f8x16_gpio.c:98: GPIOPin_State ret = GPIO_RESET;
	mov	r6,#0x00
;	src/mc96f8x16_gpio.c:99: switch (GPIO_Pin)
	mov	a,r7
	add	a,#0xff - 0x05
	jc	00108$
	mov	a,r7
	add	a,r7
;	src/mc96f8x16_gpio.c:101: case GPIO_LED1:
	mov	dptr,#00116$
	jmp	@a+dptr
00116$:
	sjmp	00101$
	sjmp	00102$
	sjmp	00103$
	sjmp	00104$
	sjmp	00105$
	sjmp	00106$
00101$:
;	src/mc96f8x16_gpio.c:102: ret = P33;
	mov	c,_P33
	clr	a
	rlc	a
	mov	r6,a
;	src/mc96f8x16_gpio.c:103: break;
;	src/mc96f8x16_gpio.c:104: case GPIO_LED2:
	sjmp	00108$
00102$:
;	src/mc96f8x16_gpio.c:105: ret = P34;
	mov	c,_P34
	clr	a
	rlc	a
	mov	r6,a
;	src/mc96f8x16_gpio.c:106: break;
;	src/mc96f8x16_gpio.c:107: case GPIO_LED3:
	sjmp	00108$
00103$:
;	src/mc96f8x16_gpio.c:108: ret = P35;
	mov	c,_P35
	clr	a
	rlc	a
	mov	r6,a
;	src/mc96f8x16_gpio.c:109: break;
;	src/mc96f8x16_gpio.c:110: case GPIO_5V_CNTL:
	sjmp	00108$
00104$:
;	src/mc96f8x16_gpio.c:111: ret = P36;
	mov	c,_P36
	clr	a
	rlc	a
	mov	r6,a
;	src/mc96f8x16_gpio.c:112: break;
;	src/mc96f8x16_gpio.c:113: case GPIO_DCDC_EN:
	sjmp	00108$
00105$:
;	src/mc96f8x16_gpio.c:114: ret = P37;
	mov	c,_P37
	clr	a
	rlc	a
	mov	r6,a
;	src/mc96f8x16_gpio.c:115: break;
;	src/mc96f8x16_gpio.c:116: case GPIO_COM_MODE:
	sjmp	00108$
00106$:
;	src/mc96f8x16_gpio.c:117: ret = P14;
	mov	c,_P14
	clr	a
	rlc	a
	mov	r6,a
;	src/mc96f8x16_gpio.c:121: }
00108$:
;	src/mc96f8x16_gpio.c:122: return ret;
	mov	dpl,r6
;	src/mc96f8x16_gpio.c:123: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'GPIOPin_Toggle'
;------------------------------------------------------------
;GPIO_Pin                  Allocated to registers r7 
;------------------------------------------------------------
;	src/mc96f8x16_gpio.c:125: void GPIOPin_Toggle(OUTPUTPin_t GPIO_Pin)
;	-----------------------------------------
;	 function GPIOPin_Toggle
;	-----------------------------------------
_GPIOPin_Toggle:
;	src/mc96f8x16_gpio.c:127: switch (GPIO_Pin)
	mov	a,dpl
	mov	r7,a
	add	a,#0xff - 0x05
	jc	00109$
	mov	a,r7
	add	a,r7
;	src/mc96f8x16_gpio.c:129: case GPIO_LED1:
	mov	dptr,#00116$
	jmp	@a+dptr
00116$:
	sjmp	00101$
	sjmp	00102$
	sjmp	00103$
	sjmp	00104$
	sjmp	00105$
	sjmp	00106$
00101$:
;	src/mc96f8x16_gpio.c:130: P33 = !P33;
	cpl	_P33
;	src/mc96f8x16_gpio.c:131: break;
;	src/mc96f8x16_gpio.c:132: case GPIO_LED2:
	ret
00102$:
;	src/mc96f8x16_gpio.c:133: P34 = !P34;
	cpl	_P34
;	src/mc96f8x16_gpio.c:134: break;
;	src/mc96f8x16_gpio.c:135: case GPIO_LED3:
	ret
00103$:
;	src/mc96f8x16_gpio.c:136: P35 = !P35;
	cpl	_P35
;	src/mc96f8x16_gpio.c:137: break;
;	src/mc96f8x16_gpio.c:138: case GPIO_5V_CNTL:
	ret
00104$:
;	src/mc96f8x16_gpio.c:139: P36 = !P36;
	cpl	_P36
;	src/mc96f8x16_gpio.c:140: break;
;	src/mc96f8x16_gpio.c:141: case GPIO_DCDC_EN:
	ret
00105$:
;	src/mc96f8x16_gpio.c:142: P37 = !P37;
	cpl	_P37
;	src/mc96f8x16_gpio.c:143: break;
;	src/mc96f8x16_gpio.c:144: case GPIO_COM_MODE:
	ret
00106$:
;	src/mc96f8x16_gpio.c:145: P14 = !P14;
	cpl	_P14
;	src/mc96f8x16_gpio.c:149: }
00109$:
;	src/mc96f8x16_gpio.c:150: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
