;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.1.14 #12827 (Linux)
;--------------------------------------------------------
	.module mc96f8x16_i2c
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _CheckTimeout
	.globl _GetTick
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
	.globl _I2C_Master_Receive_PARM_4
	.globl _I2C_Master_Receive_PARM_3
	.globl _I2C_Master_Receive_PARM_2
	.globl _I2C_Master_Transmit_PARM_4
	.globl _I2C_Master_Transmit_PARM_3
	.globl _I2C_Master_Transmit_PARM_2
	.globl _I2C_Config
	.globl _I2C_Master_Transmit
	.globl _I2C_Master_Receive
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
_I2C_Config_I2C_Conf_65536_23:
	.ds 3
_I2C_Master_Transmit_PARM_2:
	.ds 1
_I2C_Master_Transmit_PARM_3:
	.ds 1
_I2C_Master_Transmit_PARM_4:
	.ds 2
_I2C_Master_Transmit_DevAddr_65536_25:
	.ds 1
_I2C_Master_Receive_PARM_2:
	.ds 1
_I2C_Master_Receive_PARM_3:
	.ds 3
_I2C_Master_Receive_PARM_4:
	.ds 2
_I2C_Master_Receive_DevAddr_65536_37:
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
;Allocation info for local variables in function 'I2C_Config'
;------------------------------------------------------------
;I2C_Conf                  Allocated with name '_I2C_Config_I2C_Conf_65536_23'
;------------------------------------------------------------
;	src/mc96f8x16_i2c.c:7: void I2C_Config(I2C_Config_Typedef *I2C_Conf)
;	-----------------------------------------
;	 function I2C_Config
;	-----------------------------------------
_I2C_Config:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_I2C_Config_I2C_Conf_65536_23
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	src/mc96f8x16_i2c.c:9: I2CCR = (I2CCR & ~I2CCR_IMASTER) | ((I2C_Conf->Mode) << 2u);
	mov	a,#0xfb
	anl	a,_I2CCR
	mov	r7,a
	mov	dptr,#_I2C_Config_I2C_Conf_65536_23
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	add	a,acc
	add	a,acc
	orl	a,r7
	mov	_I2CCR,a
;	src/mc96f8x16_i2c.c:10: I2CSDHR = I2C_Conf->HoldTime;
	mov	a,#0x01
	add	a,r4
	mov	r2,a
	clr	a
	addc	a,r5
	mov	r3,a
	mov	ar7,r6
	mov	dpl,r2
	mov	dph,r3
	mov	b,r7
	lcall	__gptrget
	mov	_I2CSDHR,a
;	src/mc96f8x16_i2c.c:11: I2CSCLR = (uint8_t)(I2C_Conf->Period);
	mov	a,#0x02
	add	a,r4
	mov	r4,a
	clr	a
	addc	a,r5
	mov	r5,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	_I2CSCLR,a
;	src/mc96f8x16_i2c.c:12: I2CSCHR = (uint8_t)((I2C_Conf->Period) >> 8u);
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	mov	_I2CSCHR,r5
;	src/mc96f8x16_i2c.c:13: I2CCR |= (I2CCR_ACKEN | I2CCR_IICEN);
	orl	_I2CCR,#0x48
;	src/mc96f8x16_i2c.c:14: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'I2C_Master_Transmit'
;------------------------------------------------------------
;RegAddr                   Allocated with name '_I2C_Master_Transmit_PARM_2'
;Data                      Allocated with name '_I2C_Master_Transmit_PARM_3'
;Timeout                   Allocated with name '_I2C_Master_Transmit_PARM_4'
;DevAddr                   Allocated with name '_I2C_Master_Transmit_DevAddr_65536_25'
;StartTick                 Allocated with name '_I2C_Master_Transmit_StartTick_65536_26'
;------------------------------------------------------------
;	src/mc96f8x16_i2c.c:16: HAL_Status I2C_Master_Transmit(uint8_t DevAddr, uint8_t RegAddr, uint8_t Data,  uint16_t Timeout)
;	-----------------------------------------
;	 function I2C_Master_Transmit
;	-----------------------------------------
_I2C_Master_Transmit:
	mov	a,dpl
	mov	dptr,#_I2C_Master_Transmit_DevAddr_65536_25
	movx	@dptr,a
;	src/mc96f8x16_i2c.c:18: uint16_t StartTick = GetTick();
	lcall	_GetTick
	mov	r6,dpl
	mov	r7,dph
;	src/mc96f8x16_i2c.c:19: I2CDR = (DevAddr << 1u);
	mov	dptr,#_I2C_Master_Transmit_DevAddr_65536_25
	movx	a,@dptr
	add	a,acc
	mov	_I2CDR,a
;	src/mc96f8x16_i2c.c:20: while ((I2CSR & I2CSR_BUSY))
	mov	dptr,#_I2C_Master_Transmit_PARM_4
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
00103$:
	mov	a,_I2CSR
	jnb	acc.2,00105$
;	src/mc96f8x16_i2c.c:22: if(CheckTimeout(StartTick, Timeout) != HAL_OK)
	mov	dptr,#_CheckTimeout_PARM_2
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	dpl,r6
	mov	dph,r7
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_CheckTimeout
	mov	r3,dpl
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	cjne	r3,#0x01,00179$
	sjmp	00103$
00179$:
;	src/mc96f8x16_i2c.c:24: return HAL_TIMEOUT;
	mov	dpl,#0x02
	ret
00105$:
;	src/mc96f8x16_i2c.c:27: I2CCR |= I2CCR_STARTC;  /* Start transmit */
	orl	_I2CCR,#0x01
;	src/mc96f8x16_i2c.c:28: while(!(I2CSR & I2CSR_RXACK))
	mov	ar2,r4
	mov	ar3,r5
00108$:
	mov	a,_I2CSR
	jb	acc.0,00110$
;	src/mc96f8x16_i2c.c:30: if(CheckTimeout(StartTick, Timeout) != HAL_OK)
	mov	dptr,#_CheckTimeout_PARM_2
	mov	a,r2
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	dpl,r6
	mov	dph,r7
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_CheckTimeout
	mov	r1,dpl
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	cjne	r1,#0x01,00181$
	sjmp	00108$
00181$:
;	src/mc96f8x16_i2c.c:32: return HAL_TIMEOUT;
	mov	dpl,#0x02
	ret
00110$:
;	src/mc96f8x16_i2c.c:35: if(!(I2CSR & I2CSR_MLOST))  /* Check I2C maintains bus mastership */
	mov	a,_I2CSR
	jb	acc.3,00122$
;	src/mc96f8x16_i2c.c:37: I2CDR = RegAddr;
	mov	dptr,#_I2C_Master_Transmit_PARM_2
	movx	a,@dptr
	mov	_I2CDR,a
;	src/mc96f8x16_i2c.c:38: while(!(I2CSR & I2CSR_RXACK))
	mov	ar2,r4
	mov	ar3,r5
00113$:
	mov	a,_I2CSR
	jb	acc.0,00115$
;	src/mc96f8x16_i2c.c:40: if(CheckTimeout(StartTick, Timeout) != HAL_OK)
	mov	dptr,#_CheckTimeout_PARM_2
	mov	a,r2
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	dpl,r6
	mov	dph,r7
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_CheckTimeout
	mov	r1,dpl
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	cjne	r1,#0x01,00184$
	sjmp	00113$
00184$:
;	src/mc96f8x16_i2c.c:42: return HAL_TIMEOUT;
	mov	dpl,#0x02
	ret
00115$:
;	src/mc96f8x16_i2c.c:45: I2CDR = Data;
	mov	dptr,#_I2C_Master_Transmit_PARM_3
	movx	a,@dptr
	mov	_I2CDR,a
;	src/mc96f8x16_i2c.c:46: while(!(I2CSR & I2CSR_RXACK))
00118$:
	mov	a,_I2CSR
	jb	acc.0,00123$
;	src/mc96f8x16_i2c.c:48: if(CheckTimeout(StartTick, Timeout) != HAL_OK)
	mov	dptr,#_CheckTimeout_PARM_2
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	dpl,r6
	mov	dph,r7
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_CheckTimeout
	mov	r3,dpl
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	cjne	r3,#0x01,00186$
	sjmp	00118$
00186$:
;	src/mc96f8x16_i2c.c:50: return HAL_TIMEOUT;
	mov	dpl,#0x02
	ret
00122$:
;	src/mc96f8x16_i2c.c:56: return HAL_BUSY;
	mov	dpl,#0x04
	ret
00123$:
;	src/mc96f8x16_i2c.c:58: I2CCR |= I2CCR_STOPC;   /* Stop transmit */
	orl	_I2CCR,#0x02
;	src/mc96f8x16_i2c.c:59: I2CSR &= ~(I2CSR_GCALL | I2CSR_TEND | I2CSR_STOPD | I2CSR_SSEL | I2CSR_MLOST);  /* Clear interrupt bits */  
	anl	_I2CSR,#0x07
;	src/mc96f8x16_i2c.c:60: return HAL_OK;
	mov	dpl,#0x01
;	src/mc96f8x16_i2c.c:61: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'I2C_Master_Receive'
;------------------------------------------------------------
;RegAddr                   Allocated with name '_I2C_Master_Receive_PARM_2'
;pData                     Allocated with name '_I2C_Master_Receive_PARM_3'
;Timeout                   Allocated with name '_I2C_Master_Receive_PARM_4'
;DevAddr                   Allocated with name '_I2C_Master_Receive_DevAddr_65536_37'
;StartTick                 Allocated with name '_I2C_Master_Receive_StartTick_65536_38'
;------------------------------------------------------------
;	src/mc96f8x16_i2c.c:63: HAL_Status I2C_Master_Receive(uint8_t DevAddr, uint8_t RegAddr, uint8_t *pData, uint16_t Timeout)
;	-----------------------------------------
;	 function I2C_Master_Receive
;	-----------------------------------------
_I2C_Master_Receive:
	mov	a,dpl
	mov	dptr,#_I2C_Master_Receive_DevAddr_65536_37
	movx	@dptr,a
;	src/mc96f8x16_i2c.c:65: uint16_t StartTick = GetTick();
	lcall	_GetTick
	mov	r6,dpl
	mov	r7,dph
;	src/mc96f8x16_i2c.c:66: I2CDR = (DevAddr << 1u) | 0x01;
	mov	dptr,#_I2C_Master_Receive_DevAddr_65536_37
	movx	a,@dptr
	add	a,acc
	mov	r5,a
	mov	a,#0x01
	orl	a,r5
	mov	_I2CDR,a
;	src/mc96f8x16_i2c.c:67: while ((I2CSR & I2CSR_BUSY))
	mov	dptr,#_I2C_Master_Receive_PARM_4
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
00103$:
	mov	a,_I2CSR
	jnb	acc.2,00105$
;	src/mc96f8x16_i2c.c:69: if(CheckTimeout(StartTick, Timeout) != HAL_OK)
	mov	dptr,#_CheckTimeout_PARM_2
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	dpl,r6
	mov	dph,r7
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_CheckTimeout
	mov	r3,dpl
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	cjne	r3,#0x01,00179$
	sjmp	00103$
00179$:
;	src/mc96f8x16_i2c.c:71: return HAL_TIMEOUT;
	mov	dpl,#0x02
	ret
00105$:
;	src/mc96f8x16_i2c.c:74: I2CCR |= I2CCR_STARTC;  /* Start transmit */
	orl	_I2CCR,#0x01
;	src/mc96f8x16_i2c.c:75: while(!(I2CSR & I2CSR_RXACK))
	mov	ar2,r4
	mov	ar3,r5
00108$:
	mov	a,_I2CSR
	jb	acc.0,00110$
;	src/mc96f8x16_i2c.c:77: if(CheckTimeout(StartTick, Timeout) != HAL_OK)
	mov	dptr,#_CheckTimeout_PARM_2
	mov	a,r2
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	dpl,r6
	mov	dph,r7
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_CheckTimeout
	mov	r1,dpl
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	cjne	r1,#0x01,00181$
	sjmp	00108$
00181$:
;	src/mc96f8x16_i2c.c:79: return HAL_TIMEOUT;
	mov	dpl,#0x02
	ret
00110$:
;	src/mc96f8x16_i2c.c:82: if(!(I2CSR & I2CSR_MLOST))  /* Check I2C maintains bus mastership */
	mov	a,_I2CSR
	jnb	acc.3,00182$
	ljmp	00122$
00182$:
;	src/mc96f8x16_i2c.c:84: I2CDR = RegAddr;
	mov	dptr,#_I2C_Master_Receive_PARM_2
	movx	a,@dptr
	mov	_I2CDR,a
;	src/mc96f8x16_i2c.c:85: while(!(I2CSR & I2CSR_RXACK))
	mov	ar2,r4
	mov	ar3,r5
00113$:
	mov	a,_I2CSR
	jb	acc.0,00137$
;	src/mc96f8x16_i2c.c:87: if(CheckTimeout(StartTick, Timeout) != HAL_OK)
	mov	dptr,#_CheckTimeout_PARM_2
	mov	a,r2
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	dpl,r6
	mov	dph,r7
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_CheckTimeout
	mov	r1,dpl
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	cjne	r1,#0x01,00184$
	sjmp	00113$
00184$:
;	src/mc96f8x16_i2c.c:89: return HAL_TIMEOUT;
	mov	dpl,#0x02
;	src/mc96f8x16_i2c.c:92: while(!(I2CSR & I2CSR_TEND))
	ret
00137$:
00118$:
	mov	a,_I2CSR
	jb	acc.6,00120$
;	src/mc96f8x16_i2c.c:94: if(CheckTimeout(StartTick, Timeout) != HAL_OK)
	mov	dptr,#_CheckTimeout_PARM_2
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	dpl,r6
	mov	dph,r7
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_CheckTimeout
	mov	r3,dpl
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	cjne	r3,#0x01,00186$
	sjmp	00118$
00186$:
;	src/mc96f8x16_i2c.c:96: return HAL_TIMEOUT;
	mov	dpl,#0x02
	ret
00120$:
;	src/mc96f8x16_i2c.c:99: *pData = I2CDR;
	mov	dptr,#_I2C_Master_Receive_PARM_3
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,_I2CDR
	lcall	__gptrput
	sjmp	00123$
00122$:
;	src/mc96f8x16_i2c.c:103: return HAL_BUSY;
	mov	dpl,#0x04
	ret
00123$:
;	src/mc96f8x16_i2c.c:105: I2CCR |= I2CCR_STOPC;   /* Stop transmit */
	orl	_I2CCR,#0x02
;	src/mc96f8x16_i2c.c:106: I2CSR &= ~(I2CSR_GCALL | I2CSR_TEND | I2CSR_STOPD | I2CSR_SSEL | I2CSR_MLOST);  /* Clear interrupt bits */  
	anl	_I2CSR,#0x07
;	src/mc96f8x16_i2c.c:107: return HAL_OK;
	mov	dpl,#0x01
;	src/mc96f8x16_i2c.c:108: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
