                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.1.14 #12827 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module mc96f8x16_uart
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _UART_Receive_ISR
                                     12 	.globl _CheckTimeout
                                     13 	.globl _GetTick
                                     14 	.globl _P37
                                     15 	.globl _P36
                                     16 	.globl _P35
                                     17 	.globl _P34
                                     18 	.globl _P33
                                     19 	.globl _P32
                                     20 	.globl _P31
                                     21 	.globl _P30
                                     22 	.globl _P27
                                     23 	.globl _P26
                                     24 	.globl _P25
                                     25 	.globl _P24
                                     26 	.globl _P23
                                     27 	.globl _P22
                                     28 	.globl _P21
                                     29 	.globl _P20
                                     30 	.globl _P17
                                     31 	.globl _P16
                                     32 	.globl _P15
                                     33 	.globl _P14
                                     34 	.globl _P13
                                     35 	.globl _P12
                                     36 	.globl _P11
                                     37 	.globl _P10
                                     38 	.globl _P07
                                     39 	.globl _P06
                                     40 	.globl _P05
                                     41 	.globl _P04
                                     42 	.globl _P03
                                     43 	.globl _P02
                                     44 	.globl _P01
                                     45 	.globl _P00
                                     46 	.globl _EO
                                     47 	.globl _DPH1
                                     48 	.globl _DPL1
                                     49 	.globl _DPH
                                     50 	.globl _DPL
                                     51 	.globl _SP
                                     52 	.globl _PSW
                                     53 	.globl _B
                                     54 	.globl _ACC
                                     55 	.globl _FMCR
                                     56 	.globl _FIDR
                                     57 	.globl _FSADRL
                                     58 	.globl _FSADRM
                                     59 	.globl _FSADRH
                                     60 	.globl _I2CSCHR
                                     61 	.globl _I2CSCLR
                                     62 	.globl _I2CSDHR
                                     63 	.globl _I2CDR
                                     64 	.globl _I2CSAR1
                                     65 	.globl _I2CSAR0
                                     66 	.globl _I2CSR
                                     67 	.globl _I2CCR
                                     68 	.globl _UARTDR
                                     69 	.globl _UARTBD
                                     70 	.globl _UARTST
                                     71 	.globl _UARTCR3
                                     72 	.globl _UARTCR2
                                     73 	.globl _UARTCR1
                                     74 	.globl _SPISR
                                     75 	.globl _SPIDR
                                     76 	.globl _SPICR
                                     77 	.globl _ADWIFRH
                                     78 	.globl _ADWIFRL
                                     79 	.globl _ADWCRH
                                     80 	.globl _ADWCRL
                                     81 	.globl _ADWRCR3
                                     82 	.globl _ADWRCR2
                                     83 	.globl _ADWRCR1
                                     84 	.globl _ADWRCR0
                                     85 	.globl _ADCDRH
                                     86 	.globl _ADCDRL
                                     87 	.globl _ADCCRH
                                     88 	.globl _ADCCRL
                                     89 	.globl _BUZCR
                                     90 	.globl _BUZDR
                                     91 	.globl _T2BDRH
                                     92 	.globl _T2BDRL
                                     93 	.globl _T2ADRH
                                     94 	.globl _T2ADRL
                                     95 	.globl _T2CRH
                                     96 	.globl _T2CRL
                                     97 	.globl _T1BDRH
                                     98 	.globl _T1BDRL
                                     99 	.globl _T1ADRH
                                    100 	.globl _T1ADRL
                                    101 	.globl _T1CRH
                                    102 	.globl _T1CRL
                                    103 	.globl _T0CDR
                                    104 	.globl _T0DR
                                    105 	.globl _T0CNT
                                    106 	.globl _T0CR
                                    107 	.globl _WTCR
                                    108 	.globl _WTCNT
                                    109 	.globl _WTDR
                                    110 	.globl _WDTCR
                                    111 	.globl _WDTCNT
                                    112 	.globl _WDTDR
                                    113 	.globl _LVICR
                                    114 	.globl _LVRCR
                                    115 	.globl _PCON
                                    116 	.globl _RSTFR
                                    117 	.globl _BITCR
                                    118 	.globl _BITCNT
                                    119 	.globl _OSCCR
                                    120 	.globl _SCCR
                                    121 	.globl _EIPOL2
                                    122 	.globl _EIPOL1
                                    123 	.globl _EIPOL0H
                                    124 	.globl _EIPOL0L
                                    125 	.globl _EIFLAG1
                                    126 	.globl _EIFLAG0
                                    127 	.globl _IIFLAG
                                    128 	.globl _IP1
                                    129 	.globl _IP
                                    130 	.globl _IE3
                                    131 	.globl _IE2
                                    132 	.globl _IE1
                                    133 	.globl _IE
                                    134 	.globl _P3FSR
                                    135 	.globl _P2FSR
                                    136 	.globl _P1FSRH
                                    137 	.globl _P1FSRL
                                    138 	.globl _P0FSR
                                    139 	.globl _P3PU
                                    140 	.globl _P3OD
                                    141 	.globl _P3IO
                                    142 	.globl _P3
                                    143 	.globl _P2PU
                                    144 	.globl _P2OD
                                    145 	.globl _P2IO
                                    146 	.globl _P2
                                    147 	.globl _P12DB
                                    148 	.globl _P1PU
                                    149 	.globl _P1OD
                                    150 	.globl _P1IO
                                    151 	.globl _P1
                                    152 	.globl _P03DB
                                    153 	.globl _P0PU
                                    154 	.globl _P0OD
                                    155 	.globl _P0IO
                                    156 	.globl _P0
                                    157 	.globl _RxData
                                    158 	.globl _UART_Receive_PARM_3
                                    159 	.globl _UART_Receive_PARM_2
                                    160 	.globl _UART_Transmit_PARM_3
                                    161 	.globl _UART_Transmit_PARM_2
                                    162 	.globl _UART_Config
                                    163 	.globl _UART_Transmit
                                    164 	.globl _UART_Receive
                                    165 ;--------------------------------------------------------
                                    166 ; special function registers
                                    167 ;--------------------------------------------------------
                                    168 	.area RSEG    (ABS,DATA)
      000000                        169 	.org 0x0000
                           000080   170 _P0	=	0x0080
                           0000A1   171 _P0IO	=	0x00a1
                           000091   172 _P0OD	=	0x0091
                           0000AC   173 _P0PU	=	0x00ac
                           0000DE   174 _P03DB	=	0x00de
                           000088   175 _P1	=	0x0088
                           0000B1   176 _P1IO	=	0x00b1
                           000092   177 _P1OD	=	0x0092
                           0000AD   178 _P1PU	=	0x00ad
                           0000DF   179 _P12DB	=	0x00df
                           000090   180 _P2	=	0x0090
                           0000B9   181 _P2IO	=	0x00b9
                           000093   182 _P2OD	=	0x0093
                           0000AE   183 _P2PU	=	0x00ae
                           000098   184 _P3	=	0x0098
                           0000C1   185 _P3IO	=	0x00c1
                           000094   186 _P3OD	=	0x0094
                           0000AF   187 _P3PU	=	0x00af
                           0000D3   188 _P0FSR	=	0x00d3
                           0000D4   189 _P1FSRL	=	0x00d4
                           0000D5   190 _P1FSRH	=	0x00d5
                           0000D6   191 _P2FSR	=	0x00d6
                           0000D7   192 _P3FSR	=	0x00d7
                           0000A8   193 _IE	=	0x00a8
                           0000A9   194 _IE1	=	0x00a9
                           0000AA   195 _IE2	=	0x00aa
                           0000AB   196 _IE3	=	0x00ab
                           0000B8   197 _IP	=	0x00b8
                           0000F8   198 _IP1	=	0x00f8
                           0000A0   199 _IIFLAG	=	0x00a0
                           0000C0   200 _EIFLAG0	=	0x00c0
                           0000B0   201 _EIFLAG1	=	0x00b0
                           0000A4   202 _EIPOL0L	=	0x00a4
                           0000A5   203 _EIPOL0H	=	0x00a5
                           0000A6   204 _EIPOL1	=	0x00a6
                           0000A7   205 _EIPOL2	=	0x00a7
                           00008A   206 _SCCR	=	0x008a
                           0000C8   207 _OSCCR	=	0x00c8
                           00008C   208 _BITCNT	=	0x008c
                           00008B   209 _BITCR	=	0x008b
                           0000E8   210 _RSTFR	=	0x00e8
                           000087   211 _PCON	=	0x0087
                           0000D8   212 _LVRCR	=	0x00d8
                           000086   213 _LVICR	=	0x0086
                           00008E   214 _WDTDR	=	0x008e
                           00008E   215 _WDTCNT	=	0x008e
                           00008D   216 _WDTCR	=	0x008d
                           000089   217 _WTDR	=	0x0089
                           000089   218 _WTCNT	=	0x0089
                           000096   219 _WTCR	=	0x0096
                           0000B2   220 _T0CR	=	0x00b2
                           0000B3   221 _T0CNT	=	0x00b3
                           0000B4   222 _T0DR	=	0x00b4
                           0000B4   223 _T0CDR	=	0x00b4
                           0000BA   224 _T1CRL	=	0x00ba
                           0000BB   225 _T1CRH	=	0x00bb
                           0000BC   226 _T1ADRL	=	0x00bc
                           0000BD   227 _T1ADRH	=	0x00bd
                           0000BE   228 _T1BDRL	=	0x00be
                           0000BF   229 _T1BDRH	=	0x00bf
                           0000C2   230 _T2CRL	=	0x00c2
                           0000C3   231 _T2CRH	=	0x00c3
                           0000C4   232 _T2ADRL	=	0x00c4
                           0000C5   233 _T2ADRH	=	0x00c5
                           0000C6   234 _T2BDRL	=	0x00c6
                           0000C7   235 _T2BDRH	=	0x00c7
                           00008F   236 _BUZDR	=	0x008f
                           000097   237 _BUZCR	=	0x0097
                           00009C   238 _ADCCRL	=	0x009c
                           00009D   239 _ADCCRH	=	0x009d
                           00009E   240 _ADCDRL	=	0x009e
                           00009F   241 _ADCDRH	=	0x009f
                           0000F2   242 _ADWRCR0	=	0x00f2
                           0000F3   243 _ADWRCR1	=	0x00f3
                           0000F4   244 _ADWRCR2	=	0x00f4
                           0000F5   245 _ADWRCR3	=	0x00f5
                           0000F6   246 _ADWCRL	=	0x00f6
                           0000F7   247 _ADWCRH	=	0x00f7
                           0000DC   248 _ADWIFRL	=	0x00dc
                           0000DD   249 _ADWIFRH	=	0x00dd
                           0000B5   250 _SPICR	=	0x00b5
                           0000B6   251 _SPIDR	=	0x00b6
                           0000B7   252 _SPISR	=	0x00b7
                           0000E2   253 _UARTCR1	=	0x00e2
                           0000E3   254 _UARTCR2	=	0x00e3
                           0000E4   255 _UARTCR3	=	0x00e4
                           0000E5   256 _UARTST	=	0x00e5
                           0000E6   257 _UARTBD	=	0x00e6
                           0000E7   258 _UARTDR	=	0x00e7
                           0000E9   259 _I2CCR	=	0x00e9
                           0000EA   260 _I2CSR	=	0x00ea
                           0000EB   261 _I2CSAR0	=	0x00eb
                           0000F1   262 _I2CSAR1	=	0x00f1
                           0000EC   263 _I2CDR	=	0x00ec
                           0000ED   264 _I2CSDHR	=	0x00ed
                           0000EE   265 _I2CSCLR	=	0x00ee
                           0000EF   266 _I2CSCHR	=	0x00ef
                           0000FA   267 _FSADRH	=	0x00fa
                           0000FB   268 _FSADRM	=	0x00fb
                           0000FC   269 _FSADRL	=	0x00fc
                           0000FD   270 _FIDR	=	0x00fd
                           0000FE   271 _FMCR	=	0x00fe
                           0000E0   272 _ACC	=	0x00e0
                           0000F0   273 _B	=	0x00f0
                           0000D0   274 _PSW	=	0x00d0
                           000081   275 _SP	=	0x0081
                           000082   276 _DPL	=	0x0082
                           000083   277 _DPH	=	0x0083
                           000084   278 _DPL1	=	0x0084
                           000085   279 _DPH1	=	0x0085
                           0000A2   280 _EO	=	0x00a2
                                    281 ;--------------------------------------------------------
                                    282 ; special function bits
                                    283 ;--------------------------------------------------------
                                    284 	.area RSEG    (ABS,DATA)
      000000                        285 	.org 0x0000
                           000080   286 _P00	=	0x0080
                           000081   287 _P01	=	0x0081
                           000082   288 _P02	=	0x0082
                           000083   289 _P03	=	0x0083
                           000084   290 _P04	=	0x0084
                           000085   291 _P05	=	0x0085
                           000086   292 _P06	=	0x0086
                           000087   293 _P07	=	0x0087
                           000088   294 _P10	=	0x0088
                           000089   295 _P11	=	0x0089
                           00008A   296 _P12	=	0x008a
                           00008B   297 _P13	=	0x008b
                           00008C   298 _P14	=	0x008c
                           00008D   299 _P15	=	0x008d
                           00008E   300 _P16	=	0x008e
                           00008F   301 _P17	=	0x008f
                           000090   302 _P20	=	0x0090
                           000091   303 _P21	=	0x0091
                           000092   304 _P22	=	0x0092
                           000093   305 _P23	=	0x0093
                           000094   306 _P24	=	0x0094
                           000095   307 _P25	=	0x0095
                           000096   308 _P26	=	0x0096
                           000097   309 _P27	=	0x0097
                           000098   310 _P30	=	0x0098
                           000099   311 _P31	=	0x0099
                           00009A   312 _P32	=	0x009a
                           00009B   313 _P33	=	0x009b
                           00009C   314 _P34	=	0x009c
                           00009D   315 _P35	=	0x009d
                           00009E   316 _P36	=	0x009e
                           00009F   317 _P37	=	0x009f
                                    318 ;--------------------------------------------------------
                                    319 ; overlayable register banks
                                    320 ;--------------------------------------------------------
                                    321 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        322 	.ds 8
                                    323 ;--------------------------------------------------------
                                    324 ; internal ram data
                                    325 ;--------------------------------------------------------
                                    326 	.area DSEG    (DATA)
      000030                        327 _UART_Transmit_sloc0_1_0:
      000030                        328 	.ds 2
      000032                        329 _UART_Transmit_sloc1_1_0:
      000032                        330 	.ds 3
      000035                        331 _UART_Receive_sloc0_1_0:
      000035                        332 	.ds 2
      000037                        333 _UART_Receive_sloc1_1_0:
      000037                        334 	.ds 3
                                    335 ;--------------------------------------------------------
                                    336 ; overlayable items in internal ram 
                                    337 ;--------------------------------------------------------
                                    338 ;--------------------------------------------------------
                                    339 ; indirectly addressable internal ram data
                                    340 ;--------------------------------------------------------
                                    341 	.area ISEG    (DATA)
                                    342 ;--------------------------------------------------------
                                    343 ; absolute internal ram data
                                    344 ;--------------------------------------------------------
                                    345 	.area IABS    (ABS,DATA)
                                    346 	.area IABS    (ABS,DATA)
                                    347 ;--------------------------------------------------------
                                    348 ; bit data
                                    349 ;--------------------------------------------------------
                                    350 	.area BSEG    (BIT)
                                    351 ;--------------------------------------------------------
                                    352 ; paged external ram data
                                    353 ;--------------------------------------------------------
                                    354 	.area PSEG    (PAG,XDATA)
                                    355 ;--------------------------------------------------------
                                    356 ; external ram data
                                    357 ;--------------------------------------------------------
                                    358 	.area XSEG    (XDATA)
      000124                        359 _UART_Config_UART_Conf_65536_12:
      000124                        360 	.ds 3
      000127                        361 _UART_Transmit_PARM_2:
      000127                        362 	.ds 2
      000129                        363 _UART_Transmit_PARM_3:
      000129                        364 	.ds 2
      00012B                        365 _UART_Transmit_Buffer_65536_14:
      00012B                        366 	.ds 3
      00012E                        367 _UART_Receive_PARM_2:
      00012E                        368 	.ds 2
      000130                        369 _UART_Receive_PARM_3:
      000130                        370 	.ds 2
      000132                        371 _UART_Receive_Buffer_65536_21:
      000132                        372 	.ds 3
                                    373 ;--------------------------------------------------------
                                    374 ; absolute external ram data
                                    375 ;--------------------------------------------------------
                                    376 	.area XABS    (ABS,XDATA)
                                    377 ;--------------------------------------------------------
                                    378 ; external initialized ram data
                                    379 ;--------------------------------------------------------
                                    380 	.area XISEG   (XDATA)
      00013F                        381 _RxData::
      00013F                        382 	.ds 1
                                    383 	.area HOME    (CODE)
                                    384 	.area GSINIT0 (CODE)
                                    385 	.area GSINIT1 (CODE)
                                    386 	.area GSINIT2 (CODE)
                                    387 	.area GSINIT3 (CODE)
                                    388 	.area GSINIT4 (CODE)
                                    389 	.area GSINIT5 (CODE)
                                    390 	.area GSINIT  (CODE)
                                    391 	.area GSFINAL (CODE)
                                    392 	.area CSEG    (CODE)
                                    393 ;--------------------------------------------------------
                                    394 ; global & static initialisations
                                    395 ;--------------------------------------------------------
                                    396 	.area HOME    (CODE)
                                    397 	.area GSINIT  (CODE)
                                    398 	.area GSFINAL (CODE)
                                    399 	.area GSINIT  (CODE)
                                    400 ;--------------------------------------------------------
                                    401 ; Home
                                    402 ;--------------------------------------------------------
                                    403 	.area HOME    (CODE)
                                    404 	.area HOME    (CODE)
                                    405 ;--------------------------------------------------------
                                    406 ; code
                                    407 ;--------------------------------------------------------
                                    408 	.area CSEG    (CODE)
                                    409 ;------------------------------------------------------------
                                    410 ;Allocation info for local variables in function 'UART_Config'
                                    411 ;------------------------------------------------------------
                                    412 ;UART_Conf                 Allocated with name '_UART_Config_UART_Conf_65536_12'
                                    413 ;------------------------------------------------------------
                                    414 ;	src/mc96f8x16_uart.c:8: void UART_Config(UARTConfig_Typedef *UART_Conf)
                                    415 ;	-----------------------------------------
                                    416 ;	 function UART_Config
                                    417 ;	-----------------------------------------
      000574                        418 _UART_Config:
                           000007   419 	ar7 = 0x07
                           000006   420 	ar6 = 0x06
                           000005   421 	ar5 = 0x05
                           000004   422 	ar4 = 0x04
                           000003   423 	ar3 = 0x03
                           000002   424 	ar2 = 0x02
                           000001   425 	ar1 = 0x01
                           000000   426 	ar0 = 0x00
      000574 AF F0            [24]  427 	mov	r7,b
      000576 AE 83            [24]  428 	mov	r6,dph
      000578 E5 82            [12]  429 	mov	a,dpl
      00057A 90 01 24         [24]  430 	mov	dptr,#_UART_Config_UART_Conf_65536_12
      00057D F0               [24]  431 	movx	@dptr,a
      00057E EE               [12]  432 	mov	a,r6
      00057F A3               [24]  433 	inc	dptr
      000580 F0               [24]  434 	movx	@dptr,a
      000581 EF               [12]  435 	mov	a,r7
      000582 A3               [24]  436 	inc	dptr
      000583 F0               [24]  437 	movx	@dptr,a
                                    438 ;	src/mc96f8x16_uart.c:10: UARTBD = UART_Conf->Baud;
      000584 90 01 24         [24]  439 	mov	dptr,#_UART_Config_UART_Conf_65536_12
      000587 E0               [24]  440 	movx	a,@dptr
      000588 FD               [12]  441 	mov	r5,a
      000589 A3               [24]  442 	inc	dptr
      00058A E0               [24]  443 	movx	a,@dptr
      00058B FE               [12]  444 	mov	r6,a
      00058C A3               [24]  445 	inc	dptr
      00058D E0               [24]  446 	movx	a,@dptr
      00058E FF               [12]  447 	mov	r7,a
      00058F 8D 82            [24]  448 	mov	dpl,r5
      000591 8E 83            [24]  449 	mov	dph,r6
      000593 8F F0            [24]  450 	mov	b,r7
      000595 12 08 EE         [24]  451 	lcall	__gptrget
      000598 F5 E6            [12]  452 	mov	_UARTBD,a
                                    453 ;	src/mc96f8x16_uart.c:11: UARTCR1 = (UARTCR1 & 0x0F) | ((UART_Conf->Parity) << 4u);
      00059A E5 E2            [12]  454 	mov	a,_UARTCR1
      00059C 54 0F            [12]  455 	anl	a,#0x0f
      00059E FC               [12]  456 	mov	r4,a
      00059F 74 01            [12]  457 	mov	a,#0x01
      0005A1 2D               [12]  458 	add	a,r5
      0005A2 F9               [12]  459 	mov	r1,a
      0005A3 E4               [12]  460 	clr	a
      0005A4 3E               [12]  461 	addc	a,r6
      0005A5 FA               [12]  462 	mov	r2,a
      0005A6 8F 03            [24]  463 	mov	ar3,r7
      0005A8 89 82            [24]  464 	mov	dpl,r1
      0005AA 8A 83            [24]  465 	mov	dph,r2
      0005AC 8B F0            [24]  466 	mov	b,r3
      0005AE 12 08 EE         [24]  467 	lcall	__gptrget
      0005B1 C4               [12]  468 	swap	a
      0005B2 54 F0            [12]  469 	anl	a,#0xf0
      0005B4 4C               [12]  470 	orl	a,r4
      0005B5 F5 E2            [12]  471 	mov	_UARTCR1,a
                                    472 ;	src/mc96f8x16_uart.c:12: UARTCR1 = (UARTCR1 & 0xF0) | ((UART_Conf->DataLength) << 1u);
      0005B7 E5 E2            [12]  473 	mov	a,_UARTCR1
      0005B9 54 F0            [12]  474 	anl	a,#0xf0
      0005BB FC               [12]  475 	mov	r4,a
      0005BC 74 02            [12]  476 	mov	a,#0x02
      0005BE 2D               [12]  477 	add	a,r5
      0005BF F9               [12]  478 	mov	r1,a
      0005C0 E4               [12]  479 	clr	a
      0005C1 3E               [12]  480 	addc	a,r6
      0005C2 FA               [12]  481 	mov	r2,a
      0005C3 8F 03            [24]  482 	mov	ar3,r7
      0005C5 89 82            [24]  483 	mov	dpl,r1
      0005C7 8A 83            [24]  484 	mov	dph,r2
      0005C9 8B F0            [24]  485 	mov	b,r3
      0005CB 12 08 EE         [24]  486 	lcall	__gptrget
      0005CE 25 E0            [12]  487 	add	a,acc
      0005D0 4C               [12]  488 	orl	a,r4
      0005D1 F5 E2            [12]  489 	mov	_UARTCR1,a
                                    490 ;	src/mc96f8x16_uart.c:13: UARTCR3 = (UARTCR3 & 0xF4) | (UART_Conf->StopBits);
      0005D3 E5 E4            [12]  491 	mov	a,_UARTCR3
      0005D5 54 F4            [12]  492 	anl	a,#0xf4
      0005D7 FC               [12]  493 	mov	r4,a
      0005D8 74 03            [12]  494 	mov	a,#0x03
      0005DA 2D               [12]  495 	add	a,r5
      0005DB FD               [12]  496 	mov	r5,a
      0005DC E4               [12]  497 	clr	a
      0005DD 3E               [12]  498 	addc	a,r6
      0005DE FE               [12]  499 	mov	r6,a
      0005DF 8D 82            [24]  500 	mov	dpl,r5
      0005E1 8E 83            [24]  501 	mov	dph,r6
      0005E3 8F F0            [24]  502 	mov	b,r7
      0005E5 12 08 EE         [24]  503 	lcall	__gptrget
      0005E8 4C               [12]  504 	orl	a,r4
      0005E9 F5 E4            [12]  505 	mov	_UARTCR3,a
                                    506 ;	src/mc96f8x16_uart.c:14: UARTCR2 = (UARTCR2 & 0xD1) | (UARTCR2_RXE | UARTCR2_RXCIE | UARTCR2_TXE | UARTCR2_UARTEN);
      0005EB E5 E3            [12]  507 	mov	a,_UARTCR2
      0005ED 54 D1            [12]  508 	anl	a,#0xd1
      0005EF 44 2E            [12]  509 	orl	a,#0x2e
      0005F1 F5 E3            [12]  510 	mov	_UARTCR2,a
                                    511 ;	src/mc96f8x16_uart.c:15: IE1 = (IE1 & 0xF7) | (0x08);
      0005F3 E5 A9            [12]  512 	mov	a,_IE1
      0005F5 54 F7            [12]  513 	anl	a,#0xf7
      0005F7 44 08            [12]  514 	orl	a,#0x08
      0005F9 F5 A9            [12]  515 	mov	_IE1,a
                                    516 ;	src/mc96f8x16_uart.c:16: }
      0005FB 22               [24]  517 	ret
                                    518 ;------------------------------------------------------------
                                    519 ;Allocation info for local variables in function 'UART_Transmit'
                                    520 ;------------------------------------------------------------
                                    521 ;sloc0                     Allocated with name '_UART_Transmit_sloc0_1_0'
                                    522 ;sloc1                     Allocated with name '_UART_Transmit_sloc1_1_0'
                                    523 ;Size                      Allocated with name '_UART_Transmit_PARM_2'
                                    524 ;Timeout                   Allocated with name '_UART_Transmit_PARM_3'
                                    525 ;Buffer                    Allocated with name '_UART_Transmit_Buffer_65536_14'
                                    526 ;i                         Allocated with name '_UART_Transmit_i_65536_15'
                                    527 ;StartTick                 Allocated with name '_UART_Transmit_StartTick_65536_15'
                                    528 ;------------------------------------------------------------
                                    529 ;	src/mc96f8x16_uart.c:18: HAL_Status UART_Transmit(uint8_t *Buffer, uint16_t Size, uint16_t Timeout)
                                    530 ;	-----------------------------------------
                                    531 ;	 function UART_Transmit
                                    532 ;	-----------------------------------------
      0005FC                        533 _UART_Transmit:
      0005FC AF F0            [24]  534 	mov	r7,b
      0005FE AE 83            [24]  535 	mov	r6,dph
      000600 E5 82            [12]  536 	mov	a,dpl
      000602 90 01 2B         [24]  537 	mov	dptr,#_UART_Transmit_Buffer_65536_14
      000605 F0               [24]  538 	movx	@dptr,a
      000606 EE               [12]  539 	mov	a,r6
      000607 A3               [24]  540 	inc	dptr
      000608 F0               [24]  541 	movx	@dptr,a
      000609 EF               [12]  542 	mov	a,r7
      00060A A3               [24]  543 	inc	dptr
      00060B F0               [24]  544 	movx	@dptr,a
                                    545 ;	src/mc96f8x16_uart.c:21: uint16_t StartTick = GetTick();
      00060C 12 03 EF         [24]  546 	lcall	_GetTick
      00060F AE 82            [24]  547 	mov	r6,dpl
      000611 AF 83            [24]  548 	mov	r7,dph
                                    549 ;	src/mc96f8x16_uart.c:22: while(Size--)
      000613 90 01 2B         [24]  550 	mov	dptr,#_UART_Transmit_Buffer_65536_14
      000616 E0               [24]  551 	movx	a,@dptr
      000617 F5 32            [12]  552 	mov	_UART_Transmit_sloc1_1_0,a
      000619 A3               [24]  553 	inc	dptr
      00061A E0               [24]  554 	movx	a,@dptr
      00061B F5 33            [12]  555 	mov	(_UART_Transmit_sloc1_1_0 + 1),a
      00061D A3               [24]  556 	inc	dptr
      00061E E0               [24]  557 	movx	a,@dptr
      00061F F5 34            [12]  558 	mov	(_UART_Transmit_sloc1_1_0 + 2),a
      000621 79 00            [12]  559 	mov	r1,#0x00
      000623 7A 00            [12]  560 	mov	r2,#0x00
      000625 90 01 27         [24]  561 	mov	dptr,#_UART_Transmit_PARM_2
      000628 E0               [24]  562 	movx	a,@dptr
      000629 F5 30            [12]  563 	mov	_UART_Transmit_sloc0_1_0,a
      00062B A3               [24]  564 	inc	dptr
      00062C E0               [24]  565 	movx	a,@dptr
      00062D F5 31            [12]  566 	mov	(_UART_Transmit_sloc0_1_0 + 1),a
      00062F                        567 00109$:
      00062F A8 30            [24]  568 	mov	r0,_UART_Transmit_sloc0_1_0
      000631 AD 31            [24]  569 	mov	r5,(_UART_Transmit_sloc0_1_0 + 1)
      000633 15 30            [12]  570 	dec	_UART_Transmit_sloc0_1_0
      000635 74 FF            [12]  571 	mov	a,#0xff
      000637 B5 30 02         [24]  572 	cjne	a,_UART_Transmit_sloc0_1_0,00134$
      00063A 15 31            [12]  573 	dec	(_UART_Transmit_sloc0_1_0 + 1)
      00063C                        574 00134$:
      00063C E8               [12]  575 	mov	a,r0
      00063D 4D               [12]  576 	orl	a,r5
      00063E 70 03            [24]  577 	jnz	00135$
      000640 02 06 CF         [24]  578 	ljmp	00111$
      000643                        579 00135$:
                                    580 ;	src/mc96f8x16_uart.c:24: if(CheckTimeout(StartTick, Timeout) == HAL_OK)
      000643 90 01 29         [24]  581 	mov	dptr,#_UART_Transmit_PARM_3
      000646 E0               [24]  582 	movx	a,@dptr
      000647 FC               [12]  583 	mov	r4,a
      000648 A3               [24]  584 	inc	dptr
      000649 E0               [24]  585 	movx	a,@dptr
      00064A FD               [12]  586 	mov	r5,a
      00064B 90 01 1F         [24]  587 	mov	dptr,#_CheckTimeout_PARM_2
      00064E EC               [12]  588 	mov	a,r4
      00064F F0               [24]  589 	movx	@dptr,a
      000650 ED               [12]  590 	mov	a,r5
      000651 A3               [24]  591 	inc	dptr
      000652 F0               [24]  592 	movx	@dptr,a
      000653 8E 82            [24]  593 	mov	dpl,r6
      000655 8F 83            [24]  594 	mov	dph,r7
      000657 C0 07            [24]  595 	push	ar7
      000659 C0 06            [24]  596 	push	ar6
      00065B C0 05            [24]  597 	push	ar5
      00065D C0 04            [24]  598 	push	ar4
      00065F C0 02            [24]  599 	push	ar2
      000661 C0 01            [24]  600 	push	ar1
      000663 12 04 BF         [24]  601 	lcall	_CheckTimeout
      000666 AB 82            [24]  602 	mov	r3,dpl
      000668 D0 01            [24]  603 	pop	ar1
      00066A D0 02            [24]  604 	pop	ar2
      00066C D0 04            [24]  605 	pop	ar4
      00066E D0 05            [24]  606 	pop	ar5
      000670 D0 06            [24]  607 	pop	ar6
      000672 D0 07            [24]  608 	pop	ar7
      000674 BB 01 54         [24]  609 	cjne	r3,#0x01,00107$
                                    610 ;	src/mc96f8x16_uart.c:26: while(!(UARTST & UARTST_UDRE))
      000677                        611 00103$:
      000677 E5 E5            [12]  612 	mov	a,_UARTST
      000679 20 E7 32         [24]  613 	jb	acc.7,00105$
                                    614 ;	src/mc96f8x16_uart.c:28: if(CheckTimeout(StartTick, Timeout) != HAL_OK)
      00067C 90 01 1F         [24]  615 	mov	dptr,#_CheckTimeout_PARM_2
      00067F EC               [12]  616 	mov	a,r4
      000680 F0               [24]  617 	movx	@dptr,a
      000681 ED               [12]  618 	mov	a,r5
      000682 A3               [24]  619 	inc	dptr
      000683 F0               [24]  620 	movx	@dptr,a
      000684 8E 82            [24]  621 	mov	dpl,r6
      000686 8F 83            [24]  622 	mov	dph,r7
      000688 C0 07            [24]  623 	push	ar7
      00068A C0 06            [24]  624 	push	ar6
      00068C C0 05            [24]  625 	push	ar5
      00068E C0 04            [24]  626 	push	ar4
      000690 C0 02            [24]  627 	push	ar2
      000692 C0 01            [24]  628 	push	ar1
      000694 12 04 BF         [24]  629 	lcall	_CheckTimeout
      000697 AB 82            [24]  630 	mov	r3,dpl
      000699 D0 01            [24]  631 	pop	ar1
      00069B D0 02            [24]  632 	pop	ar2
      00069D D0 04            [24]  633 	pop	ar4
      00069F D0 05            [24]  634 	pop	ar5
      0006A1 D0 06            [24]  635 	pop	ar6
      0006A3 D0 07            [24]  636 	pop	ar7
      0006A5 BB 01 02         [24]  637 	cjne	r3,#0x01,00139$
      0006A8 80 CD            [24]  638 	sjmp	00103$
      0006AA                        639 00139$:
                                    640 ;	src/mc96f8x16_uart.c:30: return HAL_TIMEOUT;
      0006AA 75 82 02         [24]  641 	mov	dpl,#0x02
      0006AD 22               [24]  642 	ret
      0006AE                        643 00105$:
                                    644 ;	src/mc96f8x16_uart.c:33: UARTDR = *(Buffer + i);
      0006AE E9               [12]  645 	mov	a,r1
      0006AF 25 32            [12]  646 	add	a,_UART_Transmit_sloc1_1_0
      0006B1 FB               [12]  647 	mov	r3,a
      0006B2 EA               [12]  648 	mov	a,r2
      0006B3 35 33            [12]  649 	addc	a,(_UART_Transmit_sloc1_1_0 + 1)
      0006B5 FC               [12]  650 	mov	r4,a
      0006B6 AD 34            [24]  651 	mov	r5,(_UART_Transmit_sloc1_1_0 + 2)
      0006B8 8B 82            [24]  652 	mov	dpl,r3
      0006BA 8C 83            [24]  653 	mov	dph,r4
      0006BC 8D F0            [24]  654 	mov	b,r5
      0006BE 12 08 EE         [24]  655 	lcall	__gptrget
      0006C1 F5 E7            [12]  656 	mov	_UARTDR,a
                                    657 ;	src/mc96f8x16_uart.c:34: i++;
      0006C3 09               [12]  658 	inc	r1
      0006C4 B9 00 01         [24]  659 	cjne	r1,#0x00,00140$
      0006C7 0A               [12]  660 	inc	r2
      0006C8                        661 00140$:
      0006C8 02 06 2F         [24]  662 	ljmp	00109$
      0006CB                        663 00107$:
                                    664 ;	src/mc96f8x16_uart.c:38: return HAL_TIMEOUT;
      0006CB 75 82 02         [24]  665 	mov	dpl,#0x02
      0006CE 22               [24]  666 	ret
      0006CF                        667 00111$:
                                    668 ;	src/mc96f8x16_uart.c:41: return HAL_OK;
      0006CF 75 82 01         [24]  669 	mov	dpl,#0x01
                                    670 ;	src/mc96f8x16_uart.c:42: }
      0006D2 22               [24]  671 	ret
                                    672 ;------------------------------------------------------------
                                    673 ;Allocation info for local variables in function 'UART_Receive'
                                    674 ;------------------------------------------------------------
                                    675 ;sloc0                     Allocated with name '_UART_Receive_sloc0_1_0'
                                    676 ;sloc1                     Allocated with name '_UART_Receive_sloc1_1_0'
                                    677 ;Size                      Allocated with name '_UART_Receive_PARM_2'
                                    678 ;Timeout                   Allocated with name '_UART_Receive_PARM_3'
                                    679 ;Buffer                    Allocated with name '_UART_Receive_Buffer_65536_21'
                                    680 ;i                         Allocated with name '_UART_Receive_i_65536_22'
                                    681 ;StartTick                 Allocated with name '_UART_Receive_StartTick_65536_22'
                                    682 ;------------------------------------------------------------
                                    683 ;	src/mc96f8x16_uart.c:44: HAL_Status UART_Receive(uint8_t *Buffer, uint16_t Size, uint16_t Timeout)
                                    684 ;	-----------------------------------------
                                    685 ;	 function UART_Receive
                                    686 ;	-----------------------------------------
      0006D3                        687 _UART_Receive:
      0006D3 AF F0            [24]  688 	mov	r7,b
      0006D5 AE 83            [24]  689 	mov	r6,dph
      0006D7 E5 82            [12]  690 	mov	a,dpl
      0006D9 90 01 32         [24]  691 	mov	dptr,#_UART_Receive_Buffer_65536_21
      0006DC F0               [24]  692 	movx	@dptr,a
      0006DD EE               [12]  693 	mov	a,r6
      0006DE A3               [24]  694 	inc	dptr
      0006DF F0               [24]  695 	movx	@dptr,a
      0006E0 EF               [12]  696 	mov	a,r7
      0006E1 A3               [24]  697 	inc	dptr
      0006E2 F0               [24]  698 	movx	@dptr,a
                                    699 ;	src/mc96f8x16_uart.c:47: uint16_t StartTick = GetTick();
      0006E3 12 03 EF         [24]  700 	lcall	_GetTick
      0006E6 AE 82            [24]  701 	mov	r6,dpl
      0006E8 AF 83            [24]  702 	mov	r7,dph
                                    703 ;	src/mc96f8x16_uart.c:48: while(Size--)
      0006EA 90 01 32         [24]  704 	mov	dptr,#_UART_Receive_Buffer_65536_21
      0006ED E0               [24]  705 	movx	a,@dptr
      0006EE F5 37            [12]  706 	mov	_UART_Receive_sloc1_1_0,a
      0006F0 A3               [24]  707 	inc	dptr
      0006F1 E0               [24]  708 	movx	a,@dptr
      0006F2 F5 38            [12]  709 	mov	(_UART_Receive_sloc1_1_0 + 1),a
      0006F4 A3               [24]  710 	inc	dptr
      0006F5 E0               [24]  711 	movx	a,@dptr
      0006F6 F5 39            [12]  712 	mov	(_UART_Receive_sloc1_1_0 + 2),a
      0006F8 79 00            [12]  713 	mov	r1,#0x00
      0006FA 7A 00            [12]  714 	mov	r2,#0x00
      0006FC 90 01 2E         [24]  715 	mov	dptr,#_UART_Receive_PARM_2
      0006FF E0               [24]  716 	movx	a,@dptr
      000700 F5 35            [12]  717 	mov	_UART_Receive_sloc0_1_0,a
      000702 A3               [24]  718 	inc	dptr
      000703 E0               [24]  719 	movx	a,@dptr
      000704 F5 36            [12]  720 	mov	(_UART_Receive_sloc0_1_0 + 1),a
      000706                        721 00109$:
      000706 A8 35            [24]  722 	mov	r0,_UART_Receive_sloc0_1_0
      000708 AD 36            [24]  723 	mov	r5,(_UART_Receive_sloc0_1_0 + 1)
      00070A 15 35            [12]  724 	dec	_UART_Receive_sloc0_1_0
      00070C 74 FF            [12]  725 	mov	a,#0xff
      00070E B5 35 02         [24]  726 	cjne	a,_UART_Receive_sloc0_1_0,00134$
      000711 15 36            [12]  727 	dec	(_UART_Receive_sloc0_1_0 + 1)
      000713                        728 00134$:
      000713 E8               [12]  729 	mov	a,r0
      000714 4D               [12]  730 	orl	a,r5
      000715 70 03            [24]  731 	jnz	00135$
      000717 02 07 A6         [24]  732 	ljmp	00111$
      00071A                        733 00135$:
                                    734 ;	src/mc96f8x16_uart.c:50: if(CheckTimeout(StartTick, Timeout) == HAL_OK)
      00071A 90 01 30         [24]  735 	mov	dptr,#_UART_Receive_PARM_3
      00071D E0               [24]  736 	movx	a,@dptr
      00071E FC               [12]  737 	mov	r4,a
      00071F A3               [24]  738 	inc	dptr
      000720 E0               [24]  739 	movx	a,@dptr
      000721 FD               [12]  740 	mov	r5,a
      000722 90 01 1F         [24]  741 	mov	dptr,#_CheckTimeout_PARM_2
      000725 EC               [12]  742 	mov	a,r4
      000726 F0               [24]  743 	movx	@dptr,a
      000727 ED               [12]  744 	mov	a,r5
      000728 A3               [24]  745 	inc	dptr
      000729 F0               [24]  746 	movx	@dptr,a
      00072A 8E 82            [24]  747 	mov	dpl,r6
      00072C 8F 83            [24]  748 	mov	dph,r7
      00072E C0 07            [24]  749 	push	ar7
      000730 C0 06            [24]  750 	push	ar6
      000732 C0 05            [24]  751 	push	ar5
      000734 C0 04            [24]  752 	push	ar4
      000736 C0 02            [24]  753 	push	ar2
      000738 C0 01            [24]  754 	push	ar1
      00073A 12 04 BF         [24]  755 	lcall	_CheckTimeout
      00073D AB 82            [24]  756 	mov	r3,dpl
      00073F D0 01            [24]  757 	pop	ar1
      000741 D0 02            [24]  758 	pop	ar2
      000743 D0 04            [24]  759 	pop	ar4
      000745 D0 05            [24]  760 	pop	ar5
      000747 D0 06            [24]  761 	pop	ar6
      000749 D0 07            [24]  762 	pop	ar7
      00074B BB 01 54         [24]  763 	cjne	r3,#0x01,00107$
                                    764 ;	src/mc96f8x16_uart.c:52: while(!(UARTST & UARTST_RXC))
      00074E                        765 00103$:
      00074E E5 E5            [12]  766 	mov	a,_UARTST
      000750 20 E5 32         [24]  767 	jb	acc.5,00105$
                                    768 ;	src/mc96f8x16_uart.c:54: if(CheckTimeout(StartTick, Timeout) != HAL_OK)
      000753 90 01 1F         [24]  769 	mov	dptr,#_CheckTimeout_PARM_2
      000756 EC               [12]  770 	mov	a,r4
      000757 F0               [24]  771 	movx	@dptr,a
      000758 ED               [12]  772 	mov	a,r5
      000759 A3               [24]  773 	inc	dptr
      00075A F0               [24]  774 	movx	@dptr,a
      00075B 8E 82            [24]  775 	mov	dpl,r6
      00075D 8F 83            [24]  776 	mov	dph,r7
      00075F C0 07            [24]  777 	push	ar7
      000761 C0 06            [24]  778 	push	ar6
      000763 C0 05            [24]  779 	push	ar5
      000765 C0 04            [24]  780 	push	ar4
      000767 C0 02            [24]  781 	push	ar2
      000769 C0 01            [24]  782 	push	ar1
      00076B 12 04 BF         [24]  783 	lcall	_CheckTimeout
      00076E AB 82            [24]  784 	mov	r3,dpl
      000770 D0 01            [24]  785 	pop	ar1
      000772 D0 02            [24]  786 	pop	ar2
      000774 D0 04            [24]  787 	pop	ar4
      000776 D0 05            [24]  788 	pop	ar5
      000778 D0 06            [24]  789 	pop	ar6
      00077A D0 07            [24]  790 	pop	ar7
      00077C BB 01 02         [24]  791 	cjne	r3,#0x01,00139$
      00077F 80 CD            [24]  792 	sjmp	00103$
      000781                        793 00139$:
                                    794 ;	src/mc96f8x16_uart.c:56: return HAL_TIMEOUT;
      000781 75 82 02         [24]  795 	mov	dpl,#0x02
      000784 22               [24]  796 	ret
      000785                        797 00105$:
                                    798 ;	src/mc96f8x16_uart.c:59: *(Buffer + i) = UARTDR;
      000785 E9               [12]  799 	mov	a,r1
      000786 25 37            [12]  800 	add	a,_UART_Receive_sloc1_1_0
      000788 FB               [12]  801 	mov	r3,a
      000789 EA               [12]  802 	mov	a,r2
      00078A 35 38            [12]  803 	addc	a,(_UART_Receive_sloc1_1_0 + 1)
      00078C FC               [12]  804 	mov	r4,a
      00078D AD 39            [24]  805 	mov	r5,(_UART_Receive_sloc1_1_0 + 2)
      00078F 8B 82            [24]  806 	mov	dpl,r3
      000791 8C 83            [24]  807 	mov	dph,r4
      000793 8D F0            [24]  808 	mov	b,r5
      000795 E5 E7            [12]  809 	mov	a,_UARTDR
      000797 12 08 D3         [24]  810 	lcall	__gptrput
                                    811 ;	src/mc96f8x16_uart.c:60: i++;
      00079A 09               [12]  812 	inc	r1
      00079B B9 00 01         [24]  813 	cjne	r1,#0x00,00140$
      00079E 0A               [12]  814 	inc	r2
      00079F                        815 00140$:
      00079F 02 07 06         [24]  816 	ljmp	00109$
      0007A2                        817 00107$:
                                    818 ;	src/mc96f8x16_uart.c:64: return HAL_TIMEOUT;
      0007A2 75 82 02         [24]  819 	mov	dpl,#0x02
      0007A5 22               [24]  820 	ret
      0007A6                        821 00111$:
                                    822 ;	src/mc96f8x16_uart.c:67: return HAL_OK;
      0007A6 75 82 01         [24]  823 	mov	dpl,#0x01
                                    824 ;	src/mc96f8x16_uart.c:68: }
      0007A9 22               [24]  825 	ret
                                    826 ;------------------------------------------------------------
                                    827 ;Allocation info for local variables in function 'UART_Receive_ISR'
                                    828 ;------------------------------------------------------------
                                    829 ;	src/mc96f8x16_uart.c:70: void UART_Receive_ISR(void) __interrupt 10
                                    830 ;	-----------------------------------------
                                    831 ;	 function UART_Receive_ISR
                                    832 ;	-----------------------------------------
      0007AA                        833 _UART_Receive_ISR:
      0007AA C0 E0            [24]  834 	push	acc
      0007AC C0 82            [24]  835 	push	dpl
      0007AE C0 83            [24]  836 	push	dph
                                    837 ;	src/mc96f8x16_uart.c:72: RxData = UARTDR;
      0007B0 90 01 3F         [24]  838 	mov	dptr,#_RxData
      0007B3 E5 E7            [12]  839 	mov	a,_UARTDR
      0007B5 F0               [24]  840 	movx	@dptr,a
                                    841 ;	src/mc96f8x16_uart.c:73: }
      0007B6 D0 83            [24]  842 	pop	dph
      0007B8 D0 82            [24]  843 	pop	dpl
      0007BA D0 E0            [24]  844 	pop	acc
      0007BC 32               [24]  845 	reti
                                    846 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                    847 ;	eliminated unneeded push/pop not_psw
                                    848 ;	eliminated unneeded push/pop b
                                    849 	.area CSEG    (CODE)
                                    850 	.area CONST   (CODE)
                                    851 	.area XINIT   (CODE)
      000912                        852 __xinit__RxData:
      000912 00                     853 	.db #0x00	; 0
                                    854 	.area CABS    (ABS,CODE)
