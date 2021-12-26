;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.1.14 #12827 (Linux)
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
	.globl _GPIOPin_Write_PARM_2
	.globl _GPIO_Config
	.globl _GPIOPin_Write
	.globl _GPIOPin_Read
	.globl _GPIOPin_Toggle
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
_GPIOPin_Write_PARM_2:
	.ds 1
_GPIOPin_Write_GPIO_Pin_65536_7:
	.ds 1
_GPIOPin_Read_GPIO_Pin_65536_22:
	.ds 1
_GPIOPin_Read_ret_65536_23:
	.ds 1
_GPIOPin_Toggle_GPIO_Pin_65536_25:
	.ds 1
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
;PIN_State                 Allocated with name '_GPIOPin_Write_PARM_2'
;GPIO_Pin                  Allocated with name '_GPIOPin_Write_GPIO_Pin_65536_7'
;------------------------------------------------------------
;	src/mc96f8x16_gpio.c:27: void GPIOPin_Write(OUTPUTPin_t GPIO_Pin, GPIOPin_State PIN_State)
;	-----------------------------------------
;	 function GPIOPin_Write
;	-----------------------------------------
_GPIOPin_Write:
	mov	a,dpl
	mov	dptr,#_GPIOPin_Write_GPIO_Pin_65536_7
	movx	@dptr,a
;	src/mc96f8x16_gpio.c:29: switch (GPIO_Pin)
	movx	a,@dptr
	mov  r7,a
	add	a,#0xff - 0x05
	jc	00127$
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
	mov	dptr,#_GPIOPin_Write_PARM_2
	movx	a,@dptr
	jnz	00103$
;	src/mc96f8x16_gpio.c:34: P33 = 0;
;	assignBit
	clr	_P33
	ret
00103$:
;	src/mc96f8x16_gpio.c:38: P33 = 1;
;	assignBit
	setb	_P33
;	src/mc96f8x16_gpio.c:40: break;
;	src/mc96f8x16_gpio.c:41: case GPIO_LED2:
	ret
00105$:
;	src/mc96f8x16_gpio.c:42: if(PIN_State == GPIO_RESET)
	mov	dptr,#_GPIOPin_Write_PARM_2
	movx	a,@dptr
	jnz	00107$
;	src/mc96f8x16_gpio.c:44: P34 = 0;
;	assignBit
	clr	_P34
	ret
00107$:
;	src/mc96f8x16_gpio.c:48: P34 = 1;
;	assignBit
	setb	_P34
;	src/mc96f8x16_gpio.c:50: break;
;	src/mc96f8x16_gpio.c:51: case GPIO_LED3:
	ret
00109$:
;	src/mc96f8x16_gpio.c:52: if(PIN_State == GPIO_RESET)
	mov	dptr,#_GPIOPin_Write_PARM_2
	movx	a,@dptr
	jnz	00111$
;	src/mc96f8x16_gpio.c:54: P35 = 0;
;	assignBit
	clr	_P35
	ret
00111$:
;	src/mc96f8x16_gpio.c:58: P35 = 1;
;	assignBit
	setb	_P35
;	src/mc96f8x16_gpio.c:60: break;
;	src/mc96f8x16_gpio.c:61: case GPIO_5V_CNTL:
	ret
00113$:
;	src/mc96f8x16_gpio.c:62: if(PIN_State == GPIO_RESET)
	mov	dptr,#_GPIOPin_Write_PARM_2
	movx	a,@dptr
	jnz	00115$
;	src/mc96f8x16_gpio.c:64: P36 = 0;
;	assignBit
	clr	_P36
	ret
00115$:
;	src/mc96f8x16_gpio.c:68: P36 = 1;
;	assignBit
	setb	_P36
;	src/mc96f8x16_gpio.c:70: break;
;	src/mc96f8x16_gpio.c:71: case GPIO_DCDC_EN:
	ret
00117$:
;	src/mc96f8x16_gpio.c:72: if(PIN_State == GPIO_RESET)
	mov	dptr,#_GPIOPin_Write_PARM_2
	movx	a,@dptr
	jnz	00119$
;	src/mc96f8x16_gpio.c:74: P37 = 0;
;	assignBit
	clr	_P37
	ret
00119$:
;	src/mc96f8x16_gpio.c:78: P37 = 1;
;	assignBit
	setb	_P37
;	src/mc96f8x16_gpio.c:80: break;
;	src/mc96f8x16_gpio.c:81: case GPIO_COM_MODE:
	ret
00121$:
;	src/mc96f8x16_gpio.c:82: if(PIN_State == GPIO_RESET)
	mov	dptr,#_GPIOPin_Write_PARM_2
	movx	a,@dptr
	jnz	00123$
;	src/mc96f8x16_gpio.c:84: P14 = 0;
;	assignBit
	clr	_P14
	ret
00123$:
;	src/mc96f8x16_gpio.c:88: P14 = 1;
;	assignBit
	setb	_P14
;	src/mc96f8x16_gpio.c:93: }
00127$:
;	src/mc96f8x16_gpio.c:94: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'GPIOPin_Read'
;------------------------------------------------------------
;GPIO_Pin                  Allocated with name '_GPIOPin_Read_GPIO_Pin_65536_22'
;ret                       Allocated with name '_GPIOPin_Read_ret_65536_23'
;------------------------------------------------------------
;	src/mc96f8x16_gpio.c:96: GPIOPin_State GPIOPin_Read(OUTPUTPin_t GPIO_Pin)
;	-----------------------------------------
;	 function GPIOPin_Read
;	-----------------------------------------
_GPIOPin_Read:
	mov	a,dpl
	mov	dptr,#_GPIOPin_Read_GPIO_Pin_65536_22
	movx	@dptr,a
;	src/mc96f8x16_gpio.c:98: GPIOPin_State ret = GPIO_RESET;
	mov	dptr,#_GPIOPin_Read_ret_65536_23
	clr	a
	movx	@dptr,a
;	src/mc96f8x16_gpio.c:99: switch (GPIO_Pin)
	mov	dptr,#_GPIOPin_Read_GPIO_Pin_65536_22
	movx	a,@dptr
	mov  r7,a
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
	mov	dptr,#_GPIOPin_Read_ret_65536_23
	mov	c,_P33
	clr	a
	rlc	a
	movx	@dptr,a
;	src/mc96f8x16_gpio.c:103: break;
;	src/mc96f8x16_gpio.c:104: case GPIO_LED2:
	sjmp	00108$
00102$:
;	src/mc96f8x16_gpio.c:105: ret = P34;
	mov	dptr,#_GPIOPin_Read_ret_65536_23
	mov	c,_P34
	clr	a
	rlc	a
	movx	@dptr,a
;	src/mc96f8x16_gpio.c:106: break;
;	src/mc96f8x16_gpio.c:107: case GPIO_LED3:
	sjmp	00108$
00103$:
;	src/mc96f8x16_gpio.c:108: ret = P35;
	mov	dptr,#_GPIOPin_Read_ret_65536_23
	mov	c,_P35
	clr	a
	rlc	a
	movx	@dptr,a
;	src/mc96f8x16_gpio.c:109: break;
;	src/mc96f8x16_gpio.c:110: case GPIO_5V_CNTL:
	sjmp	00108$
00104$:
;	src/mc96f8x16_gpio.c:111: ret = P36;
	mov	dptr,#_GPIOPin_Read_ret_65536_23
	mov	c,_P36
	clr	a
	rlc	a
	movx	@dptr,a
;	src/mc96f8x16_gpio.c:112: break;
;	src/mc96f8x16_gpio.c:113: case GPIO_DCDC_EN:
	sjmp	00108$
00105$:
;	src/mc96f8x16_gpio.c:114: ret = P37;
	mov	dptr,#_GPIOPin_Read_ret_65536_23
	mov	c,_P37
	clr	a
	rlc	a
	movx	@dptr,a
;	src/mc96f8x16_gpio.c:115: break;
;	src/mc96f8x16_gpio.c:116: case GPIO_COM_MODE:
	sjmp	00108$
00106$:
;	src/mc96f8x16_gpio.c:117: ret = P14;
	mov	dptr,#_GPIOPin_Read_ret_65536_23
	mov	c,_P14
	clr	a
	rlc	a
	movx	@dptr,a
;	src/mc96f8x16_gpio.c:121: }
00108$:
;	src/mc96f8x16_gpio.c:122: return ret;
	mov	dptr,#_GPIOPin_Read_ret_65536_23
	movx	a,@dptr
;	src/mc96f8x16_gpio.c:123: }
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'GPIOPin_Toggle'
;------------------------------------------------------------
;GPIO_Pin                  Allocated with name '_GPIOPin_Toggle_GPIO_Pin_65536_25'
;------------------------------------------------------------
;	src/mc96f8x16_gpio.c:125: void GPIOPin_Toggle(OUTPUTPin_t GPIO_Pin)
;	-----------------------------------------
;	 function GPIOPin_Toggle
;	-----------------------------------------
_GPIOPin_Toggle:
	mov	a,dpl
	mov	dptr,#_GPIOPin_Toggle_GPIO_Pin_65536_25
	movx	@dptr,a
;	src/mc96f8x16_gpio.c:127: switch (GPIO_Pin)
	movx	a,@dptr
	mov  r7,a
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
