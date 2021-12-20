;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.8.0 #10562 (Linux)
;--------------------------------------------------------
	.module mc96f8x16_wdt
	.optsdcc -mmcs51 --model-small
	
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
	.globl _WDT_Config
	.globl _WDT_Clear
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
;	./inc/MC96F8316.h:17: sfr			P0			= 0x80;			// P0 Data Register
	mov	_P0,#0x80
;	./inc/MC96F8316.h:27: sfr			P0IO		= 0xA1;			// P0 Direction Register
	mov	_P0IO,#0xa1
;	./inc/MC96F8316.h:28: sfr			P0OD		= 0x91;			// P0 Open-drain Selection Register
	mov	_P0OD,#0x91
;	./inc/MC96F8316.h:29: sfr			P0PU		= 0xAC;			// P0 Pull-up Resistor Selection Register
	mov	_P0PU,#0xac
;	./inc/MC96F8316.h:30: sfr			P03DB		= 0xDE;			// P0/P3 Debounce Enable Register
	mov	_P03DB,#0xde
;	./inc/MC96F8316.h:32: sfr			P1			= 0x88;			// P1 Data Register
	mov	_P1,#0x88
;	./inc/MC96F8316.h:42: sfr			P1IO		= 0xB1;			// P1 Direction Register
	mov	_P1IO,#0xb1
;	./inc/MC96F8316.h:43: sfr			P1OD		= 0x92;			// P1 Open-drain Selection Register
	mov	_P1OD,#0x92
;	./inc/MC96F8316.h:44: sfr			P1PU		= 0xAD;			// P1 Pull-up Resistor Selection Register
	mov	_P1PU,#0xad
;	./inc/MC96F8316.h:45: sfr			P12DB		= 0xDF;			// P1/P2 Debounce Enable Register
	mov	_P12DB,#0xdf
;	./inc/MC96F8316.h:47: sfr			P2			= 0x90;			// P2 Data Register
	mov	_P2,#0x90
;	./inc/MC96F8316.h:57: sfr			P2IO		= 0xB9;			// P2 Direction Register
	mov	_P2IO,#0xb9
;	./inc/MC96F8316.h:58: sfr			P2OD		= 0x93;			// P2 Open-drain Selection Register
	mov	_P2OD,#0x93
;	./inc/MC96F8316.h:59: sfr			P2PU		= 0xAE;			// P2 Pull-up Resistor Selection Register
	mov	_P2PU,#0xae
;	./inc/MC96F8316.h:61: sfr			P3			= 0x98;			// P3 Data Register
	mov	_P3,#0x98
;	./inc/MC96F8316.h:71: sfr			P3IO		= 0xC1;			// P3 Direction Register
	mov	_P3IO,#0xc1
;	./inc/MC96F8316.h:72: sfr			P3OD		= 0x94;			// P3 Open-drain Selection Register
	mov	_P3OD,#0x94
;	./inc/MC96F8316.h:73: sfr			P3PU		= 0xAF;			// P3 Pull-up Resistor Selection Register
	mov	_P3PU,#0xaf
;	./inc/MC96F8316.h:75: sfr			P0FSR		= 0xD3;			//P0 Function Selection Register
	mov	_P0FSR,#0xd3
;	./inc/MC96F8316.h:76: sfr			P1FSRL		= 0xD4;			//P1 Function Selection Low Register
	mov	_P1FSRL,#0xd4
;	./inc/MC96F8316.h:77: sfr			P1FSRH		= 0xD5;			//P1 Function Selection High Register
	mov	_P1FSRH,#0xd5
;	./inc/MC96F8316.h:78: sfr			P2FSR		= 0xD6;			//P2 Function Selection Register
	mov	_P2FSR,#0xd6
;	./inc/MC96F8316.h:79: sfr			P3FSR		= 0xD7;			//P3 Function Selection Register
	mov	_P3FSR,#0xd7
;	./inc/MC96F8316.h:82: sfr			IE			= 0xA8;			// Interrupt Enable Register 0
	mov	_IE,#0xa8
;	./inc/MC96F8316.h:83: sfr			IE1			= 0xA9;			// Interrupt Enable Register 1
	mov	_IE1,#0xa9
;	./inc/MC96F8316.h:84: sfr			IE2			= 0xAA;			// Interrupt Enable Register 2
	mov	_IE2,#0xaa
;	./inc/MC96F8316.h:85: sfr			IE3			= 0xAB;			// Interrupt Enable Register 3
	mov	_IE3,#0xab
;	./inc/MC96F8316.h:86: sfr			IP			= 0xB8;			// Interrupt Priority Register 0
	mov	_IP,#0xb8
;	./inc/MC96F8316.h:87: sfr			IP1			= 0xF8;			// Interrupt Priority Register 1
	mov	_IP1,#0xf8
;	./inc/MC96F8316.h:88: sfr			IIFLAG		= 0xA0;			// Internal Interrupt Flag Register
	mov	_IIFLAG,#0xa0
;	./inc/MC96F8316.h:89: sfr			EIFLAG0		= 0xC0;			// External Interrupt Flag 0 Register
	mov	_EIFLAG0,#0xc0
;	./inc/MC96F8316.h:90: sfr			EIFLAG1		= 0xB0;			// External Interrupt Flag 1 Register
	mov	_EIFLAG1,#0xb0
;	./inc/MC96F8316.h:91: sfr			EIPOL0L		= 0xA4;			// External Interrupt Polarity 0 Low Register
	mov	_EIPOL0L,#0xa4
;	./inc/MC96F8316.h:92: sfr			EIPOL0H		= 0xA5;			// External Interrupt Polarity 0 High Register
	mov	_EIPOL0H,#0xa5
;	./inc/MC96F8316.h:93: sfr			EIPOL1		= 0xA6;			// External Interrupt Polarity 1 Register
	mov	_EIPOL1,#0xa6
;	./inc/MC96F8316.h:94: sfr			EIPOL2		= 0xA7;			// External Interrupt Polarity 2 Register
	mov	_EIPOL2,#0xa7
;	./inc/MC96F8316.h:97: sfr			SCCR		= 0x8A;			// System Clock Control Register
	mov	_SCCR,#0x8a
;	./inc/MC96F8316.h:98: sfr			OSCCR		= 0xC8;			// Oscillator Control Register
	mov	_OSCCR,#0xc8
;	./inc/MC96F8316.h:99: sfr			BITCNT		= 0x8C;			// Basic Interval Timer Counter Register
	mov	_BITCNT,#0x8c
;	./inc/MC96F8316.h:100: sfr			BITCR		= 0x8B;			// Basic Interval Timer Control Register
	mov	_BITCR,#0x8b
;	./inc/MC96F8316.h:101: sfr			RSTFR		= 0xE8;			// Reset Flag Register
	mov	_RSTFR,#0xe8
;	./inc/MC96F8316.h:102: sfr			PCON		= 0x87;			// Power Control Register
	mov	_PCON,#0x87
;	./inc/MC96F8316.h:103: sfr			LVRCR		= 0xD8;			// Low Voltage Reset Control Register
	mov	_LVRCR,#0xd8
;	./inc/MC96F8316.h:104: sfr			LVICR		= 0x86;			// Low Voltage Indicator Control Register
	mov	_LVICR,#0x86
;	./inc/MC96F8316.h:107: sfr			WDTDR		= 0x8E;			// Watch Dog Timer Data Register
	mov	_WDTDR,#0x8e
;	./inc/MC96F8316.h:108: sfr			WDTCNT		= 0x8E;			// Watch Dog Timer Counter Register
	mov	_WDTCNT,#0x8e
;	./inc/MC96F8316.h:109: sfr			WDTCR		= 0x8D;			// Watch Dog Timer Control Register
	mov	_WDTCR,#0x8d
;	./inc/MC96F8316.h:112: sfr			WTDR		= 0x89;			// Watch Timer Data Register
	mov	_WTDR,#0x89
;	./inc/MC96F8316.h:113: sfr			WTCNT		= 0x89;			// Watch Timer Counter Register
	mov	_WTCNT,#0x89
;	./inc/MC96F8316.h:114: sfr			WTCR		= 0x96;			// Watch Timer Control Register
	mov	_WTCR,#0x96
;	./inc/MC96F8316.h:117: sfr			T0CR		= 0xB2;			// Timer 0 Control Register
	mov	_T0CR,#0xb2
;	./inc/MC96F8316.h:118: sfr			T0CNT		= 0xB3;			// Timer 0 Counter Register
	mov	_T0CNT,#0xb3
;	./inc/MC96F8316.h:119: sfr			T0DR		= 0xB4;			// Timer 0 Data Register
	mov	_T0DR,#0xb4
;	./inc/MC96F8316.h:120: sfr			T0CDR		= 0xB4;			// Timer 0 Capture Data Register
	mov	_T0CDR,#0xb4
;	./inc/MC96F8316.h:126: sfr			T1CRL		= 0xBA;			// Timer 1 Control Low Register
	mov	_T1CRL,#0xba
;	./inc/MC96F8316.h:127: sfr			T1CRH		= 0xBB;			// Timer 1 Control High Register
	mov	_T1CRH,#0xbb
;	./inc/MC96F8316.h:128: sfr			T1ADRL		= 0xBC;			// Timer 1 A Data Low Register
	mov	_T1ADRL,#0xbc
;	./inc/MC96F8316.h:129: sfr			T1ADRH		= 0xBD;			// Timer 1 A Data High Register
	mov	_T1ADRH,#0xbd
;	./inc/MC96F8316.h:130: sfr			T1BDRL		= 0xBE;			// Timer 1 B Data Low Register
	mov	_T1BDRL,#0xbe
;	./inc/MC96F8316.h:131: sfr			T1BDRH		= 0xBF;			// Timer 1 B Data High Register
	mov	_T1BDRH,#0xbf
;	./inc/MC96F8316.h:134: sfr			T2CRL		= 0xC2;			// Timer 2 Control Low Register
	mov	_T2CRL,#0xc2
;	./inc/MC96F8316.h:135: sfr			T2CRH		= 0xC3;			// Timer 2 Control High Register
	mov	_T2CRH,#0xc3
;	./inc/MC96F8316.h:136: sfr			T2ADRL		= 0xC4;			// Timer 2 A Data Low Register
	mov	_T2ADRL,#0xc4
;	./inc/MC96F8316.h:137: sfr			T2ADRH		= 0xC5;			// Timer 2 A Data High Register
	mov	_T2ADRH,#0xc5
;	./inc/MC96F8316.h:138: sfr			T2BDRL		= 0xC6;			// Timer 2 B Data Low Register
	mov	_T2BDRL,#0xc6
;	./inc/MC96F8316.h:139: sfr			T2BDRH		= 0xC7;			// Timer 2 B Data High Register
	mov	_T2BDRH,#0xc7
;	./inc/MC96F8316.h:142: sfr			BUZDR		= 0x8F;			// BUZZER Data Register
	mov	_BUZDR,#0x8f
;	./inc/MC96F8316.h:143: sfr			BUZCR		= 0x97;			// BUZZER Control Register
	mov	_BUZCR,#0x97
;	./inc/MC96F8316.h:146: sfr			ADCCRL		= 0x9C;			// A/D Converter Control Low Register
	mov	_ADCCRL,#0x9c
;	./inc/MC96F8316.h:147: sfr			ADCCRH		= 0x9D;			// A/D Converter Control High Register
	mov	_ADCCRH,#0x9d
;	./inc/MC96F8316.h:148: sfr			ADCDRL		= 0x9E;			// A/D Converter Data Low Register
	mov	_ADCDRL,#0x9e
;	./inc/MC96F8316.h:149: sfr			ADCDRH		= 0x9F;			// A/D Converter Data High Register
	mov	_ADCDRH,#0x9f
;	./inc/MC96F8316.h:151: sfr			ADWRCR0		= 0xF2;			// ADC Wake-up Resistor Control Register 0
	mov	_ADWRCR0,#0xf2
;	./inc/MC96F8316.h:152: sfr			ADWRCR1		= 0xF3;			// ADC Wake-up Resistor Control Register 1
	mov	_ADWRCR1,#0xf3
;	./inc/MC96F8316.h:153: sfr			ADWRCR2		= 0xF4;			// ADC Wake-up Resistor Control Register 2
	mov	_ADWRCR2,#0xf4
;	./inc/MC96F8316.h:154: sfr			ADWRCR3		= 0xF5;			// ADC Wake-up Resistor Control Register 3
	mov	_ADWRCR3,#0xf5
;	./inc/MC96F8316.h:155: sfr			ADWCRL		= 0xF6;			// ADC Wake-up Control Low Register
	mov	_ADWCRL,#0xf6
;	./inc/MC96F8316.h:156: sfr			ADWCRH		= 0xF7;			// ADC Wake-up Control High Register
	mov	_ADWCRH,#0xf7
;	./inc/MC96F8316.h:157: sfr			ADWIFRL		= 0xDC;			// ADC Wake-up Interrupt Flag Low Register
	mov	_ADWIFRL,#0xdc
;	./inc/MC96F8316.h:158: sfr			ADWIFRH		= 0xDD;			// ADC Wake-up Interrupt Flag High Register
	mov	_ADWIFRH,#0xdd
;	./inc/MC96F8316.h:161: sfr			SPICR		= 0xB5;			// SPI Control Register
	mov	_SPICR,#0xb5
;	./inc/MC96F8316.h:162: sfr			SPIDR		= 0xB6;			// SPI Data Register
	mov	_SPIDR,#0xb6
;	./inc/MC96F8316.h:163: sfr			SPISR		= 0xB7;			// SPI Status Register
	mov	_SPISR,#0xb7
;	./inc/MC96F8316.h:166: sfr			UARTCR1		= 0xE2;			// UART Control Register 1
	mov	_UARTCR1,#0xe2
;	./inc/MC96F8316.h:167: sfr			UARTCR2		= 0xE3;			// UART Control Register 2
	mov	_UARTCR2,#0xe3
;	./inc/MC96F8316.h:168: sfr			UARTCR3		= 0xE4;			// UART Control Register 3
	mov	_UARTCR3,#0xe4
;	./inc/MC96F8316.h:169: sfr			UARTST		= 0xE5;			// UART Status Register
	mov	_UARTST,#0xe5
;	./inc/MC96F8316.h:170: sfr			UARTBD		= 0xE6;			// UART BaudRate Register
	mov	_UARTBD,#0xe6
;	./inc/MC96F8316.h:171: sfr			UARTDR		= 0xE7;			// UART Data Register
	mov	_UARTDR,#0xe7
;	./inc/MC96F8316.h:174: sfr			I2CCR		= 0xE9;			// I2C Control Register
	mov	_I2CCR,#0xe9
;	./inc/MC96F8316.h:175: sfr			I2CSR		= 0xEA;			// I2C Status Register
	mov	_I2CSR,#0xea
;	./inc/MC96F8316.h:176: sfr			I2CSAR0		= 0xEB;			// I2C Slave Address 0 Register
	mov	_I2CSAR0,#0xeb
;	./inc/MC96F8316.h:177: sfr			I2CSAR1		= 0xF1;			// I2C Slave Address 1 Register
	mov	_I2CSAR1,#0xf1
;	./inc/MC96F8316.h:178: sfr			I2CDR		= 0xEC;			// I2C Data Register
	mov	_I2CDR,#0xec
;	./inc/MC96F8316.h:179: sfr			I2CSDHR		= 0xED;			// I2C SDA Hold Time Register
	mov	_I2CSDHR,#0xed
;	./inc/MC96F8316.h:180: sfr			I2CSCLR		= 0xEE;			// I2C SCL Low Period Register
	mov	_I2CSCLR,#0xee
;	./inc/MC96F8316.h:181: sfr			I2CSCHR		= 0xEF;			// I2C SCL High Period Register
	mov	_I2CSCHR,#0xef
;	./inc/MC96F8316.h:184: sfr			FSADRH		= 0xFA;			// Flash Sector Address High Register
	mov	_FSADRH,#0xfa
;	./inc/MC96F8316.h:185: sfr			FSADRM		= 0xFB;			// Flash Sector Address Middle Register
	mov	_FSADRM,#0xfb
;	./inc/MC96F8316.h:186: sfr			FSADRL		= 0xFC;			// Flash Sector Address Low Register
	mov	_FSADRL,#0xfc
;	./inc/MC96F8316.h:187: sfr			FIDR		= 0xFD;			// Flash Identification Register
	mov	_FIDR,#0xfd
;	./inc/MC96F8316.h:188: sfr			FMCR		= 0xFE;			// Flash Mode Control Register
	mov	_FMCR,#0xfe
;	./inc/MC96F8316.h:190: sfr			ACC			= 0xE0;
	mov	_ACC,#0xe0
;	./inc/MC96F8316.h:191: sfr			B			= 0xF0;
	mov	_B,#0xf0
;	./inc/MC96F8316.h:192: sfr			PSW			= 0xD0;
	mov	_PSW,#0xd0
;	./inc/MC96F8316.h:193: sfr			SP			= 0x81;
	mov	_SP,#0x81
;	./inc/MC96F8316.h:194: sfr			DPL			= 0x82;
	mov	_DPL,#0x82
;	./inc/MC96F8316.h:195: sfr			DPH			= 0x83;
	mov	_DPH,#0x83
;	./inc/MC96F8316.h:196: sfr			DPL1		= 0x84;
	mov	_DPL1,#0x84
;	./inc/MC96F8316.h:197: sfr			DPH1		= 0x85;
	mov	_DPH1,#0x85
;	./inc/MC96F8316.h:198: sfr			EO			= 0xA2;			// EXTENDED OPERATION REGISTER
	mov	_EO,#0xa2
;	./inc/MC96F8316.h:18: sbit	P00			= 0x80;
;	assignBit
	setb	_P00
;	./inc/MC96F8316.h:19: sbit	P01			= 0x81;
;	assignBit
	setb	_P01
;	./inc/MC96F8316.h:20: sbit	P02			= 0x82;
;	assignBit
	setb	_P02
;	./inc/MC96F8316.h:21: sbit	P03			= 0x83;
;	assignBit
	setb	_P03
;	./inc/MC96F8316.h:22: sbit	P04			= 0x84;
;	assignBit
	setb	_P04
;	./inc/MC96F8316.h:23: sbit	P05			= 0x85;
;	assignBit
	setb	_P05
;	./inc/MC96F8316.h:24: sbit	P06			= 0x86;
;	assignBit
	setb	_P06
;	./inc/MC96F8316.h:25: sbit	P07			= 0x87;
;	assignBit
	setb	_P07
;	./inc/MC96F8316.h:33: sbit	P10			= 0x88;
;	assignBit
	setb	_P10
;	./inc/MC96F8316.h:34: sbit	P11			= 0x89;
;	assignBit
	setb	_P11
;	./inc/MC96F8316.h:35: sbit	P12			= 0x8A;
;	assignBit
	setb	_P12
;	./inc/MC96F8316.h:36: sbit	P13			= 0x8B;
;	assignBit
	setb	_P13
;	./inc/MC96F8316.h:37: sbit	P14			= 0x8C;
;	assignBit
	setb	_P14
;	./inc/MC96F8316.h:38: sbit	P15			= 0x8D;
;	assignBit
	setb	_P15
;	./inc/MC96F8316.h:39: sbit	P16			= 0x8E;
;	assignBit
	setb	_P16
;	./inc/MC96F8316.h:40: sbit	P17			= 0x8F;
;	assignBit
	setb	_P17
;	./inc/MC96F8316.h:48: sbit	P20			= 0x90;
;	assignBit
	setb	_P20
;	./inc/MC96F8316.h:49: sbit	P21			= 0x91;
;	assignBit
	setb	_P21
;	./inc/MC96F8316.h:50: sbit	P22			= 0x92;
;	assignBit
	setb	_P22
;	./inc/MC96F8316.h:51: sbit	P23			= 0x93;
;	assignBit
	setb	_P23
;	./inc/MC96F8316.h:52: sbit	P24			= 0x94;
;	assignBit
	setb	_P24
;	./inc/MC96F8316.h:53: sbit	P25			= 0x95;
;	assignBit
	setb	_P25
;	./inc/MC96F8316.h:54: sbit	P26			= 0x96;
;	assignBit
	setb	_P26
;	./inc/MC96F8316.h:55: sbit	P27			= 0x97;
;	assignBit
	setb	_P27
;	./inc/MC96F8316.h:62: sbit	P30			= 0x98;
;	assignBit
	setb	_P30
;	./inc/MC96F8316.h:63: sbit	P31			= 0x99;
;	assignBit
	setb	_P31
;	./inc/MC96F8316.h:64: sbit	P32			= 0x9A;
;	assignBit
	setb	_P32
;	./inc/MC96F8316.h:65: sbit	P33			= 0x9B;
;	assignBit
	setb	_P33
;	./inc/MC96F8316.h:66: sbit	P34			= 0x9C;
;	assignBit
	setb	_P34
;	./inc/MC96F8316.h:67: sbit	P35			= 0x9D;
;	assignBit
	setb	_P35
;	./inc/MC96F8316.h:68: sbit	P36			= 0x9E;
;	assignBit
	setb	_P36
;	./inc/MC96F8316.h:69: sbit	P37			= 0x9F;
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
;Allocation info for local variables in function 'WDT_Config'
;------------------------------------------------------------
;Time                      Allocated to registers 
;------------------------------------------------------------
;	src/mc96f8x16_wdt.c:5: void WDT_Config(uint8_t Time)
;	-----------------------------------------
;	 function WDT_Config
;	-----------------------------------------
_WDT_Config:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	_WDTDR,dpl
;	src/mc96f8x16_wdt.c:8: WDTCR = WDTCK | WDTCL | WDTRSON | WDTEN; 
	mov	_WDTCR,#0xe2
;	src/mc96f8x16_wdt.c:9: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'WDT_Clear'
;------------------------------------------------------------
;	src/mc96f8x16_wdt.c:11: void WDT_Clear(void)
;	-----------------------------------------
;	 function WDT_Clear
;	-----------------------------------------
_WDT_Clear:
;	src/mc96f8x16_wdt.c:13: WDTCR |= WDTCL;
	mov	r6,_WDTCR
	orl	ar6,#0x20
	mov	_WDTCR,r6
;	src/mc96f8x16_wdt.c:14: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
