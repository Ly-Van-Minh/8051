;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.1.14 #12827 (Linux)
;--------------------------------------------------------
	.module mc96f8x16_cg
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
	.globl _SysClock_Config
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0	=	0x0080
_P0IO	=	0x00a1
_P0OD	=	0x0091
_P0PU	=	0x00ac
_P03DB	=	0x00de
_P1	=	0x0088
_P1IO	=	0x00b1
_P1OD	=	0x0092
_P1PU	=	0x00ad
_P12DB	=	0x00df
_P2	=	0x0090
_P2IO	=	0x00b9
_P2OD	=	0x0093
_P2PU	=	0x00ae
_P3	=	0x0098
_P3IO	=	0x00c1
_P3OD	=	0x0094
_P3PU	=	0x00af
_P0FSR	=	0x00d3
_P1FSRL	=	0x00d4
_P1FSRH	=	0x00d5
_P2FSR	=	0x00d6
_P3FSR	=	0x00d7
_IE	=	0x00a8
_IE1	=	0x00a9
_IE2	=	0x00aa
_IE3	=	0x00ab
_IP	=	0x00b8
_IP1	=	0x00f8
_IIFLAG	=	0x00a0
_EIFLAG0	=	0x00c0
_EIFLAG1	=	0x00b0
_EIPOL0L	=	0x00a4
_EIPOL0H	=	0x00a5
_EIPOL1	=	0x00a6
_EIPOL2	=	0x00a7
_SCCR	=	0x008a
_OSCCR	=	0x00c8
_BITCNT	=	0x008c
_BITCR	=	0x008b
_RSTFR	=	0x00e8
_PCON	=	0x0087
_LVRCR	=	0x00d8
_LVICR	=	0x0086
_WDTDR	=	0x008e
_WDTCNT	=	0x008e
_WDTCR	=	0x008d
_WTDR	=	0x0089
_WTCNT	=	0x0089
_WTCR	=	0x0096
_T0CR	=	0x00b2
_T0CNT	=	0x00b3
_T0DR	=	0x00b4
_T0CDR	=	0x00b4
_T1CRL	=	0x00ba
_T1CRH	=	0x00bb
_T1ADRL	=	0x00bc
_T1ADRH	=	0x00bd
_T1BDRL	=	0x00be
_T1BDRH	=	0x00bf
_T2CRL	=	0x00c2
_T2CRH	=	0x00c3
_T2ADRL	=	0x00c4
_T2ADRH	=	0x00c5
_T2BDRL	=	0x00c6
_T2BDRH	=	0x00c7
_BUZDR	=	0x008f
_BUZCR	=	0x0097
_ADCCRL	=	0x009c
_ADCCRH	=	0x009d
_ADCDRL	=	0x009e
_ADCDRH	=	0x009f
_ADWRCR0	=	0x00f2
_ADWRCR1	=	0x00f3
_ADWRCR2	=	0x00f4
_ADWRCR3	=	0x00f5
_ADWCRL	=	0x00f6
_ADWCRH	=	0x00f7
_ADWIFRL	=	0x00dc
_ADWIFRH	=	0x00dd
_SPICR	=	0x00b5
_SPIDR	=	0x00b6
_SPISR	=	0x00b7
_UARTCR1	=	0x00e2
_UARTCR2	=	0x00e3
_UARTCR3	=	0x00e4
_UARTST	=	0x00e5
_UARTBD	=	0x00e6
_UARTDR	=	0x00e7
_I2CCR	=	0x00e9
_I2CSR	=	0x00ea
_I2CSAR0	=	0x00eb
_I2CSAR1	=	0x00f1
_I2CDR	=	0x00ec
_I2CSDHR	=	0x00ed
_I2CSCLR	=	0x00ee
_I2CSCHR	=	0x00ef
_FSADRH	=	0x00fa
_FSADRM	=	0x00fb
_FSADRL	=	0x00fc
_FIDR	=	0x00fd
_FMCR	=	0x00fe
_ACC	=	0x00e0
_B	=	0x00f0
_PSW	=	0x00d0
_SP	=	0x0081
_DPL	=	0x0082
_DPH	=	0x0083
_DPL1	=	0x0084
_DPH1	=	0x0085
_EO	=	0x00a2
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P00	=	0x0080
_P01	=	0x0081
_P02	=	0x0082
_P03	=	0x0083
_P04	=	0x0084
_P05	=	0x0085
_P06	=	0x0086
_P07	=	0x0087
_P10	=	0x0088
_P11	=	0x0089
_P12	=	0x008a
_P13	=	0x008b
_P14	=	0x008c
_P15	=	0x008d
_P16	=	0x008e
_P17	=	0x008f
_P20	=	0x0090
_P21	=	0x0091
_P22	=	0x0092
_P23	=	0x0093
_P24	=	0x0094
_P25	=	0x0095
_P26	=	0x0096
_P27	=	0x0097
_P30	=	0x0098
_P31	=	0x0099
_P32	=	0x009a
_P33	=	0x009b
_P34	=	0x009c
_P35	=	0x009d
_P36	=	0x009e
_P37	=	0x009f
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
;Allocation info for local variables in function 'SysClock_Config'
;------------------------------------------------------------
;	src/mc96f8x16_cg.c:7: void SysClock_Config(void)
;	-----------------------------------------
;	 function SysClock_Config
;	-----------------------------------------
_SysClock_Config:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	src/mc96f8x16_cg.c:9: OSCCR = (FIRC_8MHZ << 3U); /* Select INT-RC/2 (8MHz) */
	mov	_OSCCR,#0x20
;	src/mc96f8x16_cg.c:10: SCCR = SYS_CLK_SEL_FIRC;    /* Select f(IRC) for system clock */
	mov	_SCCR,#0x00
;	src/mc96f8x16_cg.c:11: nop();
	nop 
;	src/mc96f8x16_cg.c:12: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
