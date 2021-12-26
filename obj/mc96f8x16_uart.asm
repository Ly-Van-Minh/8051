;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.1.14 #12827 (Linux)
;--------------------------------------------------------
	.module mc96f8x16_uart
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _UART_Receive_ISR
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
	.globl _RxData
	.globl _UART_Receive_PARM_3
	.globl _UART_Receive_PARM_2
	.globl _UART_Transmit_PARM_3
	.globl _UART_Transmit_PARM_2
	.globl _UART_Config
	.globl _UART_Transmit
	.globl _UART_Receive
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
_UART_Transmit_sloc0_1_0:
	.ds 2
_UART_Transmit_sloc1_1_0:
	.ds 3
_UART_Receive_sloc0_1_0:
	.ds 2
_UART_Receive_sloc1_1_0:
	.ds 3
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
_UART_Config_UART_Conf_65536_12:
	.ds 3
_UART_Transmit_PARM_2:
	.ds 2
_UART_Transmit_PARM_3:
	.ds 2
_UART_Transmit_Buffer_65536_14:
	.ds 3
_UART_Receive_PARM_2:
	.ds 2
_UART_Receive_PARM_3:
	.ds 2
_UART_Receive_Buffer_65536_21:
	.ds 3
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
_RxData::
	.ds 1
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
;Allocation info for local variables in function 'UART_Config'
;------------------------------------------------------------
;UART_Conf                 Allocated with name '_UART_Config_UART_Conf_65536_12'
;------------------------------------------------------------
;	src/mc96f8x16_uart.c:8: void UART_Config(UARTConfig_Typedef *UART_Conf)
;	-----------------------------------------
;	 function UART_Config
;	-----------------------------------------
_UART_Config:
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
	mov	dptr,#_UART_Config_UART_Conf_65536_12
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	src/mc96f8x16_uart.c:10: UARTBD = UART_Conf->Baud;
	mov	dptr,#_UART_Config_UART_Conf_65536_12
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
	lcall	__gptrget
	mov	_UARTBD,a
;	src/mc96f8x16_uart.c:11: UARTCR1 = (UARTCR1 & 0x0F) | ((UART_Conf->Parity) << 4u);
	mov	a,_UARTCR1
	anl	a,#0x0f
	mov	r4,a
	mov	a,#0x01
	add	a,r5
	mov	r1,a
	clr	a
	addc	a,r6
	mov	r2,a
	mov	ar3,r7
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	lcall	__gptrget
	swap	a
	anl	a,#0xf0
	orl	a,r4
	mov	_UARTCR1,a
;	src/mc96f8x16_uart.c:12: UARTCR1 = (UARTCR1 & 0xF0) | ((UART_Conf->DataLength) << 1u);
	mov	a,_UARTCR1
	anl	a,#0xf0
	mov	r4,a
	mov	a,#0x02
	add	a,r5
	mov	r1,a
	clr	a
	addc	a,r6
	mov	r2,a
	mov	ar3,r7
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	lcall	__gptrget
	add	a,acc
	orl	a,r4
	mov	_UARTCR1,a
;	src/mc96f8x16_uart.c:13: UARTCR3 = (UARTCR3 & 0xF4) | (UART_Conf->StopBits);
	mov	a,_UARTCR3
	anl	a,#0xf4
	mov	r4,a
	mov	a,#0x03
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	orl	a,r4
	mov	_UARTCR3,a
;	src/mc96f8x16_uart.c:14: UARTCR2 = (UARTCR2 & 0xD1) | (UARTCR2_RXE | UARTCR2_RXCIE | UARTCR2_TXE | UARTCR2_UARTEN);
	mov	a,_UARTCR2
	anl	a,#0xd1
	orl	a,#0x2e
	mov	_UARTCR2,a
;	src/mc96f8x16_uart.c:15: IE1 = (IE1 & 0xF7) | (0x08);
	mov	a,_IE1
	anl	a,#0xf7
	orl	a,#0x08
	mov	_IE1,a
;	src/mc96f8x16_uart.c:16: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'UART_Transmit'
;------------------------------------------------------------
;sloc0                     Allocated with name '_UART_Transmit_sloc0_1_0'
;sloc1                     Allocated with name '_UART_Transmit_sloc1_1_0'
;Size                      Allocated with name '_UART_Transmit_PARM_2'
;Timeout                   Allocated with name '_UART_Transmit_PARM_3'
;Buffer                    Allocated with name '_UART_Transmit_Buffer_65536_14'
;i                         Allocated with name '_UART_Transmit_i_65536_15'
;StartTick                 Allocated with name '_UART_Transmit_StartTick_65536_15'
;------------------------------------------------------------
;	src/mc96f8x16_uart.c:18: HAL_Status UART_Transmit(uint8_t *Buffer, uint16_t Size, uint16_t Timeout)
;	-----------------------------------------
;	 function UART_Transmit
;	-----------------------------------------
_UART_Transmit:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_UART_Transmit_Buffer_65536_14
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	src/mc96f8x16_uart.c:21: uint16_t StartTick = GetTick();
	lcall	_GetTick
	mov	r6,dpl
	mov	r7,dph
;	src/mc96f8x16_uart.c:22: while(Size--)
	mov	dptr,#_UART_Transmit_Buffer_65536_14
	movx	a,@dptr
	mov	_UART_Transmit_sloc1_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_UART_Transmit_sloc1_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_UART_Transmit_sloc1_1_0 + 2),a
	mov	r1,#0x00
	mov	r2,#0x00
	mov	dptr,#_UART_Transmit_PARM_2
	movx	a,@dptr
	mov	_UART_Transmit_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_UART_Transmit_sloc0_1_0 + 1),a
00109$:
	mov	r0,_UART_Transmit_sloc0_1_0
	mov	r5,(_UART_Transmit_sloc0_1_0 + 1)
	dec	_UART_Transmit_sloc0_1_0
	mov	a,#0xff
	cjne	a,_UART_Transmit_sloc0_1_0,00134$
	dec	(_UART_Transmit_sloc0_1_0 + 1)
00134$:
	mov	a,r0
	orl	a,r5
	jnz	00135$
	ljmp	00111$
00135$:
;	src/mc96f8x16_uart.c:24: if(CheckTimeout(StartTick, Timeout) == HAL_OK)
	mov	dptr,#_UART_Transmit_PARM_3
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
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
	push	ar2
	push	ar1
	lcall	_CheckTimeout
	mov	r3,dpl
	pop	ar1
	pop	ar2
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	cjne	r3,#0x01,00107$
;	src/mc96f8x16_uart.c:26: while(!(UARTST & UARTST_UDRE))
00103$:
	mov	a,_UARTST
	jb	acc.7,00105$
;	src/mc96f8x16_uart.c:28: if(CheckTimeout(StartTick, Timeout) != HAL_OK)
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
	push	ar2
	push	ar1
	lcall	_CheckTimeout
	mov	r3,dpl
	pop	ar1
	pop	ar2
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	cjne	r3,#0x01,00139$
	sjmp	00103$
00139$:
;	src/mc96f8x16_uart.c:30: return HAL_TIMEOUT;
	mov	dpl,#0x02
	ret
00105$:
;	src/mc96f8x16_uart.c:33: UARTDR = *(Buffer + i);
	mov	a,r1
	add	a,_UART_Transmit_sloc1_1_0
	mov	r3,a
	mov	a,r2
	addc	a,(_UART_Transmit_sloc1_1_0 + 1)
	mov	r4,a
	mov	r5,(_UART_Transmit_sloc1_1_0 + 2)
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	_UARTDR,a
;	src/mc96f8x16_uart.c:34: i++;
	inc	r1
	cjne	r1,#0x00,00140$
	inc	r2
00140$:
	ljmp	00109$
00107$:
;	src/mc96f8x16_uart.c:38: return HAL_TIMEOUT;
	mov	dpl,#0x02
	ret
00111$:
;	src/mc96f8x16_uart.c:41: return HAL_OK;
	mov	dpl,#0x01
;	src/mc96f8x16_uart.c:42: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'UART_Receive'
;------------------------------------------------------------
;sloc0                     Allocated with name '_UART_Receive_sloc0_1_0'
;sloc1                     Allocated with name '_UART_Receive_sloc1_1_0'
;Size                      Allocated with name '_UART_Receive_PARM_2'
;Timeout                   Allocated with name '_UART_Receive_PARM_3'
;Buffer                    Allocated with name '_UART_Receive_Buffer_65536_21'
;i                         Allocated with name '_UART_Receive_i_65536_22'
;StartTick                 Allocated with name '_UART_Receive_StartTick_65536_22'
;------------------------------------------------------------
;	src/mc96f8x16_uart.c:44: HAL_Status UART_Receive(uint8_t *Buffer, uint16_t Size, uint16_t Timeout)
;	-----------------------------------------
;	 function UART_Receive
;	-----------------------------------------
_UART_Receive:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_UART_Receive_Buffer_65536_21
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	src/mc96f8x16_uart.c:47: uint16_t StartTick = GetTick();
	lcall	_GetTick
	mov	r6,dpl
	mov	r7,dph
;	src/mc96f8x16_uart.c:48: while(Size--)
	mov	dptr,#_UART_Receive_Buffer_65536_21
	movx	a,@dptr
	mov	_UART_Receive_sloc1_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_UART_Receive_sloc1_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_UART_Receive_sloc1_1_0 + 2),a
	mov	r1,#0x00
	mov	r2,#0x00
	mov	dptr,#_UART_Receive_PARM_2
	movx	a,@dptr
	mov	_UART_Receive_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_UART_Receive_sloc0_1_0 + 1),a
00109$:
	mov	r0,_UART_Receive_sloc0_1_0
	mov	r5,(_UART_Receive_sloc0_1_0 + 1)
	dec	_UART_Receive_sloc0_1_0
	mov	a,#0xff
	cjne	a,_UART_Receive_sloc0_1_0,00134$
	dec	(_UART_Receive_sloc0_1_0 + 1)
00134$:
	mov	a,r0
	orl	a,r5
	jnz	00135$
	ljmp	00111$
00135$:
;	src/mc96f8x16_uart.c:50: if(CheckTimeout(StartTick, Timeout) == HAL_OK)
	mov	dptr,#_UART_Receive_PARM_3
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
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
	push	ar2
	push	ar1
	lcall	_CheckTimeout
	mov	r3,dpl
	pop	ar1
	pop	ar2
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	cjne	r3,#0x01,00107$
;	src/mc96f8x16_uart.c:52: while(!(UARTST & UARTST_RXC))
00103$:
	mov	a,_UARTST
	jb	acc.5,00105$
;	src/mc96f8x16_uart.c:54: if(CheckTimeout(StartTick, Timeout) != HAL_OK)
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
	push	ar2
	push	ar1
	lcall	_CheckTimeout
	mov	r3,dpl
	pop	ar1
	pop	ar2
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	cjne	r3,#0x01,00139$
	sjmp	00103$
00139$:
;	src/mc96f8x16_uart.c:56: return HAL_TIMEOUT;
	mov	dpl,#0x02
	ret
00105$:
;	src/mc96f8x16_uart.c:59: *(Buffer + i) = UARTDR;
	mov	a,r1
	add	a,_UART_Receive_sloc1_1_0
	mov	r3,a
	mov	a,r2
	addc	a,(_UART_Receive_sloc1_1_0 + 1)
	mov	r4,a
	mov	r5,(_UART_Receive_sloc1_1_0 + 2)
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	mov	a,_UARTDR
	lcall	__gptrput
;	src/mc96f8x16_uart.c:60: i++;
	inc	r1
	cjne	r1,#0x00,00140$
	inc	r2
00140$:
	ljmp	00109$
00107$:
;	src/mc96f8x16_uart.c:64: return HAL_TIMEOUT;
	mov	dpl,#0x02
	ret
00111$:
;	src/mc96f8x16_uart.c:67: return HAL_OK;
	mov	dpl,#0x01
;	src/mc96f8x16_uart.c:68: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'UART_Receive_ISR'
;------------------------------------------------------------
;	src/mc96f8x16_uart.c:70: void UART_Receive_ISR(void) __interrupt 10
;	-----------------------------------------
;	 function UART_Receive_ISR
;	-----------------------------------------
_UART_Receive_ISR:
	push	acc
	push	dpl
	push	dph
;	src/mc96f8x16_uart.c:72: RxData = UARTDR;
	mov	dptr,#_RxData
	mov	a,_UARTDR
	movx	@dptr,a
;	src/mc96f8x16_uart.c:73: }
	pop	dph
	pop	dpl
	pop	acc
	reti
;	eliminated unneeded mov psw,# (no regs used in bank)
;	eliminated unneeded push/pop not_psw
;	eliminated unneeded push/pop b
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
__xinit__RxData:
	.db #0x00	; 0
	.area CABS    (ABS,CODE)
