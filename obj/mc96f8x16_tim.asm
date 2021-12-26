;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.1.14 #12827 (Linux)
;--------------------------------------------------------
	.module mc96f8x16_tim
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _SysTick_ISR
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
	.globl _Tick
	.globl _CheckTimeout_PARM_2
	.globl _SysTick_Init
	.globl _GetTick
	.globl _Delayms
	.globl _CheckTimeout
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
_Delayms_Timeout_65536_15:
	.ds 2
_CheckTimeout_PARM_2:
	.ds 2
_CheckTimeout_Start_65536_19:
	.ds 2
_CheckTimeout_ret_65536_20:
	.ds 1
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
_Tick::
	.ds 2
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
;Allocation info for local variables in function 'SysTick_Init'
;------------------------------------------------------------
;	src/mc96f8x16_tim.c:6: void SysTick_Init(void)
;	-----------------------------------------
;	 function SysTick_Init
;	-----------------------------------------
_SysTick_Init:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	src/mc96f8x16_tim.c:8: BITCR = 0x00;
	mov	_BITCR,#0x00
;	src/mc96f8x16_tim.c:9: BITCR |= (BITCK_FX_DIV_1024 << 5u) | ((BCK_BIT2_OVFL << 0u) | BITCR_BCLR);
	orl	_BITCR,#0x2a
;	src/mc96f8x16_tim.c:10: IE3 = (IE3 & 0x0F) | (0x10);
	mov	a,_IE3
	anl	a,#0x0f
	orl	a,#0x10
	mov	_IE3,a
;	src/mc96f8x16_tim.c:11: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'GetTick'
;------------------------------------------------------------
;	src/mc96f8x16_tim.c:13: uint16_t GetTick(void)
;	-----------------------------------------
;	 function GetTick
;	-----------------------------------------
_GetTick:
;	src/mc96f8x16_tim.c:15: return Tick;
	mov	dptr,#_Tick
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
;	src/mc96f8x16_tim.c:16: }
	mov	dpl,r6
	mov	dph,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'SysTick_ISR'
;------------------------------------------------------------
;	src/mc96f8x16_tim.c:18: void SysTick_ISR(void) __interrupt 23
;	-----------------------------------------
;	 function SysTick_ISR
;	-----------------------------------------
_SysTick_ISR:
	push	acc
	push	dpl
	push	dph
	push	ar7
	push	ar6
	push	psw
	mov	psw,#0x00
;	src/mc96f8x16_tim.c:20: Tick++;
	mov	dptr,#_Tick
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_Tick
	mov	a,#0x01
	add	a,r6
	movx	@dptr,a
	clr	a
	addc	a,r7
	inc	dptr
	movx	@dptr,a
;	src/mc96f8x16_tim.c:22: BITCR |= BITCR_BCLR;
	orl	_BITCR,#0x08
;	src/mc96f8x16_tim.c:23: }
	pop	psw
	pop	ar6
	pop	ar7
	pop	dph
	pop	dpl
	pop	acc
	reti
;	eliminated unneeded push/pop b
;------------------------------------------------------------
;Allocation info for local variables in function 'Delayms'
;------------------------------------------------------------
;Timeout                   Allocated with name '_Delayms_Timeout_65536_15'
;StartTick                 Allocated with name '_Delayms_StartTick_65536_16'
;------------------------------------------------------------
;	src/mc96f8x16_tim.c:25: void Delayms(uint16_t Timeout)
;	-----------------------------------------
;	 function Delayms
;	-----------------------------------------
_Delayms:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_Delayms_Timeout_65536_15
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	src/mc96f8x16_tim.c:27: uint16_t StartTick = GetTick();
	lcall	_GetTick
	mov	r6,dpl
	mov	r7,dph
;	src/mc96f8x16_tim.c:28: if(StartTick + Timeout > StartTick)
	mov	dptr,#_Delayms_Timeout_65536_15
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,r4
	add	a,r6
	mov	r2,a
	mov	a,r5
	addc	a,r7
	mov	r3,a
	clr	c
	mov	a,r6
	subb	a,r2
	mov	a,r7
	subb	a,r3
	jnc	00115$
;	src/mc96f8x16_tim.c:30: while(GetTick() < StartTick + Timeout);
	mov	a,r4
	add	a,r6
	mov	r2,a
	mov	a,r5
	addc	a,r7
	mov	r3,a
00101$:
	push	ar3
	push	ar2
	lcall	_GetTick
	mov	r0,dpl
	mov	r1,dph
	pop	ar2
	pop	ar3
	clr	c
	mov	a,r0
	subb	a,r2
	mov	a,r1
	subb	a,r3
	jnc	00111$
;	src/mc96f8x16_tim.c:34: while((GetTick() < (Timeout - (0xFFFFU - StartTick))) || (GetTick() > StartTick));
	sjmp	00101$
00115$:
	mov	a,#0xff
	clr	c
	subb	a,r6
	mov	r2,a
	mov	a,#0xff
	subb	a,r7
	mov	r3,a
	mov	a,r4
	clr	c
	subb	a,r2
	mov	r4,a
	mov	a,r5
	subb	a,r3
	mov	r5,a
00105$:
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_GetTick
	mov	r2,dpl
	mov	r3,dph
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	clr	c
	mov	a,r2
	subb	a,r4
	mov	a,r3
	subb	a,r5
	jc	00105$
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_GetTick
	mov	r2,dpl
	mov	r3,dph
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	clr	c
	mov	a,r6
	subb	a,r2
	mov	a,r7
	subb	a,r3
	jc	00105$
00111$:
;	src/mc96f8x16_tim.c:36: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'CheckTimeout'
;------------------------------------------------------------
;Timeout                   Allocated with name '_CheckTimeout_PARM_2'
;Start                     Allocated with name '_CheckTimeout_Start_65536_19'
;ret                       Allocated with name '_CheckTimeout_ret_65536_20'
;------------------------------------------------------------
;	src/mc96f8x16_tim.c:38: HAL_Status CheckTimeout(uint16_t Start, uint16_t Timeout)
;	-----------------------------------------
;	 function CheckTimeout
;	-----------------------------------------
_CheckTimeout:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_CheckTimeout_Start_65536_19
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	src/mc96f8x16_tim.c:41: if(Start + Timeout > Start)
	mov	dptr,#_CheckTimeout_PARM_2
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_CheckTimeout_Start_65536_19
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,r6
	add	a,r4
	mov	r2,a
	mov	a,r7
	addc	a,r5
	mov	r3,a
	clr	c
	mov	a,r4
	subb	a,r2
	mov	a,r5
	subb	a,r3
	jnc	00109$
;	src/mc96f8x16_tim.c:43: if(GetTick() < (Start + Timeout))
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_GetTick
	mov	r2,dpl
	mov	r3,dph
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,r6
	add	a,r4
	mov	r0,a
	mov	a,r7
	addc	a,r5
	mov	r1,a
	clr	c
	mov	a,r2
	subb	a,r0
	mov	a,r3
	subb	a,r1
	jnc	00102$
;	src/mc96f8x16_tim.c:45: ret = HAL_OK;
	mov	dptr,#_CheckTimeout_ret_65536_20
	mov	a,#0x01
	movx	@dptr,a
	sjmp	00110$
00102$:
;	src/mc96f8x16_tim.c:49: ret = HAL_TIMEOUT;
	mov	dptr,#_CheckTimeout_ret_65536_20
	mov	a,#0x02
	movx	@dptr,a
	sjmp	00110$
00109$:
;	src/mc96f8x16_tim.c:54: if((GetTick() < (Timeout - (0xFFFFU - Start))) || (GetTick() > Start))
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_GetTick
	mov	r2,dpl
	mov	r3,dph
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,#0xff
	clr	c
	subb	a,r4
	mov	r0,a
	mov	a,#0xff
	subb	a,r5
	mov	r1,a
	mov	a,r6
	clr	c
	subb	a,r0
	mov	r6,a
	mov	a,r7
	subb	a,r1
	mov	r7,a
	clr	c
	mov	a,r2
	subb	a,r6
	mov	a,r3
	subb	a,r7
	jc	00104$
	push	ar5
	push	ar4
	lcall	_GetTick
	mov	r6,dpl
	mov	r7,dph
	pop	ar4
	pop	ar5
	clr	c
	mov	a,r4
	subb	a,r6
	mov	a,r5
	subb	a,r7
	jnc	00105$
00104$:
;	src/mc96f8x16_tim.c:56: ret = HAL_OK;
	mov	dptr,#_CheckTimeout_ret_65536_20
	mov	a,#0x01
	movx	@dptr,a
	sjmp	00110$
00105$:
;	src/mc96f8x16_tim.c:60: ret = HAL_TIMEOUT;
	mov	dptr,#_CheckTimeout_ret_65536_20
	mov	a,#0x02
	movx	@dptr,a
00110$:
;	src/mc96f8x16_tim.c:63: return ret;
	mov	dptr,#_CheckTimeout_ret_65536_20
	movx	a,@dptr
;	src/mc96f8x16_tim.c:64: }
	mov	dpl,a
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
__xinit__Tick:
	.byte #0x00, #0x00	; 0
	.area CABS    (ABS,CODE)
