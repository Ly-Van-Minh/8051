                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.1.14 #12827 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module mc96f8x16_gpio
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _P37
                                     12 	.globl _P36
                                     13 	.globl _P35
                                     14 	.globl _P34
                                     15 	.globl _P33
                                     16 	.globl _P32
                                     17 	.globl _P31
                                     18 	.globl _P30
                                     19 	.globl _P27
                                     20 	.globl _P26
                                     21 	.globl _P25
                                     22 	.globl _P24
                                     23 	.globl _P23
                                     24 	.globl _P22
                                     25 	.globl _P21
                                     26 	.globl _P20
                                     27 	.globl _P17
                                     28 	.globl _P16
                                     29 	.globl _P15
                                     30 	.globl _P14
                                     31 	.globl _P13
                                     32 	.globl _P12
                                     33 	.globl _P11
                                     34 	.globl _P10
                                     35 	.globl _P07
                                     36 	.globl _P06
                                     37 	.globl _P05
                                     38 	.globl _P04
                                     39 	.globl _P03
                                     40 	.globl _P02
                                     41 	.globl _P01
                                     42 	.globl _P00
                                     43 	.globl _EO
                                     44 	.globl _DPH1
                                     45 	.globl _DPL1
                                     46 	.globl _DPH
                                     47 	.globl _DPL
                                     48 	.globl _SP
                                     49 	.globl _PSW
                                     50 	.globl _B
                                     51 	.globl _ACC
                                     52 	.globl _FMCR
                                     53 	.globl _FIDR
                                     54 	.globl _FSADRL
                                     55 	.globl _FSADRM
                                     56 	.globl _FSADRH
                                     57 	.globl _I2CSCHR
                                     58 	.globl _I2CSCLR
                                     59 	.globl _I2CSDHR
                                     60 	.globl _I2CDR
                                     61 	.globl _I2CSAR1
                                     62 	.globl _I2CSAR0
                                     63 	.globl _I2CSR
                                     64 	.globl _I2CCR
                                     65 	.globl _UARTDR
                                     66 	.globl _UARTBD
                                     67 	.globl _UARTST
                                     68 	.globl _UARTCR3
                                     69 	.globl _UARTCR2
                                     70 	.globl _UARTCR1
                                     71 	.globl _SPISR
                                     72 	.globl _SPIDR
                                     73 	.globl _SPICR
                                     74 	.globl _ADWIFRH
                                     75 	.globl _ADWIFRL
                                     76 	.globl _ADWCRH
                                     77 	.globl _ADWCRL
                                     78 	.globl _ADWRCR3
                                     79 	.globl _ADWRCR2
                                     80 	.globl _ADWRCR1
                                     81 	.globl _ADWRCR0
                                     82 	.globl _ADCDRH
                                     83 	.globl _ADCDRL
                                     84 	.globl _ADCCRH
                                     85 	.globl _ADCCRL
                                     86 	.globl _BUZCR
                                     87 	.globl _BUZDR
                                     88 	.globl _T2BDRH
                                     89 	.globl _T2BDRL
                                     90 	.globl _T2ADRH
                                     91 	.globl _T2ADRL
                                     92 	.globl _T2CRH
                                     93 	.globl _T2CRL
                                     94 	.globl _T1BDRH
                                     95 	.globl _T1BDRL
                                     96 	.globl _T1ADRH
                                     97 	.globl _T1ADRL
                                     98 	.globl _T1CRH
                                     99 	.globl _T1CRL
                                    100 	.globl _T0CDR
                                    101 	.globl _T0DR
                                    102 	.globl _T0CNT
                                    103 	.globl _T0CR
                                    104 	.globl _WTCR
                                    105 	.globl _WTCNT
                                    106 	.globl _WTDR
                                    107 	.globl _WDTCR
                                    108 	.globl _WDTCNT
                                    109 	.globl _WDTDR
                                    110 	.globl _LVICR
                                    111 	.globl _LVRCR
                                    112 	.globl _PCON
                                    113 	.globl _RSTFR
                                    114 	.globl _BITCR
                                    115 	.globl _BITCNT
                                    116 	.globl _OSCCR
                                    117 	.globl _SCCR
                                    118 	.globl _EIPOL2
                                    119 	.globl _EIPOL1
                                    120 	.globl _EIPOL0H
                                    121 	.globl _EIPOL0L
                                    122 	.globl _EIFLAG1
                                    123 	.globl _EIFLAG0
                                    124 	.globl _IIFLAG
                                    125 	.globl _IP1
                                    126 	.globl _IP
                                    127 	.globl _IE3
                                    128 	.globl _IE2
                                    129 	.globl _IE1
                                    130 	.globl _IE
                                    131 	.globl _P3FSR
                                    132 	.globl _P2FSR
                                    133 	.globl _P1FSRH
                                    134 	.globl _P1FSRL
                                    135 	.globl _P0FSR
                                    136 	.globl _P3PU
                                    137 	.globl _P3OD
                                    138 	.globl _P3IO
                                    139 	.globl _P3
                                    140 	.globl _P2PU
                                    141 	.globl _P2OD
                                    142 	.globl _P2IO
                                    143 	.globl _P2
                                    144 	.globl _P12DB
                                    145 	.globl _P1PU
                                    146 	.globl _P1OD
                                    147 	.globl _P1IO
                                    148 	.globl _P1
                                    149 	.globl _P03DB
                                    150 	.globl _P0PU
                                    151 	.globl _P0OD
                                    152 	.globl _P0IO
                                    153 	.globl _P0
                                    154 	.globl _GPIOPin_Write_PARM_2
                                    155 	.globl _GPIO_Config
                                    156 	.globl _GPIOPin_Write
                                    157 	.globl _GPIOPin_Read
                                    158 	.globl _GPIOPin_Toggle
                                    159 ;--------------------------------------------------------
                                    160 ; special function registers
                                    161 ;--------------------------------------------------------
                                    162 	.area RSEG    (ABS,DATA)
      000000                        163 	.org 0x0000
                           000080   164 _P0	=	0x0080
                           0000A1   165 _P0IO	=	0x00a1
                           000091   166 _P0OD	=	0x0091
                           0000AC   167 _P0PU	=	0x00ac
                           0000DE   168 _P03DB	=	0x00de
                           000088   169 _P1	=	0x0088
                           0000B1   170 _P1IO	=	0x00b1
                           000092   171 _P1OD	=	0x0092
                           0000AD   172 _P1PU	=	0x00ad
                           0000DF   173 _P12DB	=	0x00df
                           000090   174 _P2	=	0x0090
                           0000B9   175 _P2IO	=	0x00b9
                           000093   176 _P2OD	=	0x0093
                           0000AE   177 _P2PU	=	0x00ae
                           000098   178 _P3	=	0x0098
                           0000C1   179 _P3IO	=	0x00c1
                           000094   180 _P3OD	=	0x0094
                           0000AF   181 _P3PU	=	0x00af
                           0000D3   182 _P0FSR	=	0x00d3
                           0000D4   183 _P1FSRL	=	0x00d4
                           0000D5   184 _P1FSRH	=	0x00d5
                           0000D6   185 _P2FSR	=	0x00d6
                           0000D7   186 _P3FSR	=	0x00d7
                           0000A8   187 _IE	=	0x00a8
                           0000A9   188 _IE1	=	0x00a9
                           0000AA   189 _IE2	=	0x00aa
                           0000AB   190 _IE3	=	0x00ab
                           0000B8   191 _IP	=	0x00b8
                           0000F8   192 _IP1	=	0x00f8
                           0000A0   193 _IIFLAG	=	0x00a0
                           0000C0   194 _EIFLAG0	=	0x00c0
                           0000B0   195 _EIFLAG1	=	0x00b0
                           0000A4   196 _EIPOL0L	=	0x00a4
                           0000A5   197 _EIPOL0H	=	0x00a5
                           0000A6   198 _EIPOL1	=	0x00a6
                           0000A7   199 _EIPOL2	=	0x00a7
                           00008A   200 _SCCR	=	0x008a
                           0000C8   201 _OSCCR	=	0x00c8
                           00008C   202 _BITCNT	=	0x008c
                           00008B   203 _BITCR	=	0x008b
                           0000E8   204 _RSTFR	=	0x00e8
                           000087   205 _PCON	=	0x0087
                           0000D8   206 _LVRCR	=	0x00d8
                           000086   207 _LVICR	=	0x0086
                           00008E   208 _WDTDR	=	0x008e
                           00008E   209 _WDTCNT	=	0x008e
                           00008D   210 _WDTCR	=	0x008d
                           000089   211 _WTDR	=	0x0089
                           000089   212 _WTCNT	=	0x0089
                           000096   213 _WTCR	=	0x0096
                           0000B2   214 _T0CR	=	0x00b2
                           0000B3   215 _T0CNT	=	0x00b3
                           0000B4   216 _T0DR	=	0x00b4
                           0000B4   217 _T0CDR	=	0x00b4
                           0000BA   218 _T1CRL	=	0x00ba
                           0000BB   219 _T1CRH	=	0x00bb
                           0000BC   220 _T1ADRL	=	0x00bc
                           0000BD   221 _T1ADRH	=	0x00bd
                           0000BE   222 _T1BDRL	=	0x00be
                           0000BF   223 _T1BDRH	=	0x00bf
                           0000C2   224 _T2CRL	=	0x00c2
                           0000C3   225 _T2CRH	=	0x00c3
                           0000C4   226 _T2ADRL	=	0x00c4
                           0000C5   227 _T2ADRH	=	0x00c5
                           0000C6   228 _T2BDRL	=	0x00c6
                           0000C7   229 _T2BDRH	=	0x00c7
                           00008F   230 _BUZDR	=	0x008f
                           000097   231 _BUZCR	=	0x0097
                           00009C   232 _ADCCRL	=	0x009c
                           00009D   233 _ADCCRH	=	0x009d
                           00009E   234 _ADCDRL	=	0x009e
                           00009F   235 _ADCDRH	=	0x009f
                           0000F2   236 _ADWRCR0	=	0x00f2
                           0000F3   237 _ADWRCR1	=	0x00f3
                           0000F4   238 _ADWRCR2	=	0x00f4
                           0000F5   239 _ADWRCR3	=	0x00f5
                           0000F6   240 _ADWCRL	=	0x00f6
                           0000F7   241 _ADWCRH	=	0x00f7
                           0000DC   242 _ADWIFRL	=	0x00dc
                           0000DD   243 _ADWIFRH	=	0x00dd
                           0000B5   244 _SPICR	=	0x00b5
                           0000B6   245 _SPIDR	=	0x00b6
                           0000B7   246 _SPISR	=	0x00b7
                           0000E2   247 _UARTCR1	=	0x00e2
                           0000E3   248 _UARTCR2	=	0x00e3
                           0000E4   249 _UARTCR3	=	0x00e4
                           0000E5   250 _UARTST	=	0x00e5
                           0000E6   251 _UARTBD	=	0x00e6
                           0000E7   252 _UARTDR	=	0x00e7
                           0000E9   253 _I2CCR	=	0x00e9
                           0000EA   254 _I2CSR	=	0x00ea
                           0000EB   255 _I2CSAR0	=	0x00eb
                           0000F1   256 _I2CSAR1	=	0x00f1
                           0000EC   257 _I2CDR	=	0x00ec
                           0000ED   258 _I2CSDHR	=	0x00ed
                           0000EE   259 _I2CSCLR	=	0x00ee
                           0000EF   260 _I2CSCHR	=	0x00ef
                           0000FA   261 _FSADRH	=	0x00fa
                           0000FB   262 _FSADRM	=	0x00fb
                           0000FC   263 _FSADRL	=	0x00fc
                           0000FD   264 _FIDR	=	0x00fd
                           0000FE   265 _FMCR	=	0x00fe
                           0000E0   266 _ACC	=	0x00e0
                           0000F0   267 _B	=	0x00f0
                           0000D0   268 _PSW	=	0x00d0
                           000081   269 _SP	=	0x0081
                           000082   270 _DPL	=	0x0082
                           000083   271 _DPH	=	0x0083
                           000084   272 _DPL1	=	0x0084
                           000085   273 _DPH1	=	0x0085
                           0000A2   274 _EO	=	0x00a2
                                    275 ;--------------------------------------------------------
                                    276 ; special function bits
                                    277 ;--------------------------------------------------------
                                    278 	.area RSEG    (ABS,DATA)
      000000                        279 	.org 0x0000
                           000080   280 _P00	=	0x0080
                           000081   281 _P01	=	0x0081
                           000082   282 _P02	=	0x0082
                           000083   283 _P03	=	0x0083
                           000084   284 _P04	=	0x0084
                           000085   285 _P05	=	0x0085
                           000086   286 _P06	=	0x0086
                           000087   287 _P07	=	0x0087
                           000088   288 _P10	=	0x0088
                           000089   289 _P11	=	0x0089
                           00008A   290 _P12	=	0x008a
                           00008B   291 _P13	=	0x008b
                           00008C   292 _P14	=	0x008c
                           00008D   293 _P15	=	0x008d
                           00008E   294 _P16	=	0x008e
                           00008F   295 _P17	=	0x008f
                           000090   296 _P20	=	0x0090
                           000091   297 _P21	=	0x0091
                           000092   298 _P22	=	0x0092
                           000093   299 _P23	=	0x0093
                           000094   300 _P24	=	0x0094
                           000095   301 _P25	=	0x0095
                           000096   302 _P26	=	0x0096
                           000097   303 _P27	=	0x0097
                           000098   304 _P30	=	0x0098
                           000099   305 _P31	=	0x0099
                           00009A   306 _P32	=	0x009a
                           00009B   307 _P33	=	0x009b
                           00009C   308 _P34	=	0x009c
                           00009D   309 _P35	=	0x009d
                           00009E   310 _P36	=	0x009e
                           00009F   311 _P37	=	0x009f
                                    312 ;--------------------------------------------------------
                                    313 ; overlayable register banks
                                    314 ;--------------------------------------------------------
                                    315 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        316 	.ds 8
                                    317 ;--------------------------------------------------------
                                    318 ; internal ram data
                                    319 ;--------------------------------------------------------
                                    320 	.area DSEG    (DATA)
                                    321 ;--------------------------------------------------------
                                    322 ; overlayable items in internal ram 
                                    323 ;--------------------------------------------------------
                                    324 ;--------------------------------------------------------
                                    325 ; indirectly addressable internal ram data
                                    326 ;--------------------------------------------------------
                                    327 	.area ISEG    (DATA)
                                    328 ;--------------------------------------------------------
                                    329 ; absolute internal ram data
                                    330 ;--------------------------------------------------------
                                    331 	.area IABS    (ABS,DATA)
                                    332 	.area IABS    (ABS,DATA)
                                    333 ;--------------------------------------------------------
                                    334 ; bit data
                                    335 ;--------------------------------------------------------
                                    336 	.area BSEG    (BIT)
                                    337 ;--------------------------------------------------------
                                    338 ; paged external ram data
                                    339 ;--------------------------------------------------------
                                    340 	.area PSEG    (PAG,XDATA)
                                    341 ;--------------------------------------------------------
                                    342 ; external ram data
                                    343 ;--------------------------------------------------------
                                    344 	.area XSEG    (XDATA)
      000135                        345 _GPIOPin_Write_PARM_2:
      000135                        346 	.ds 1
      000136                        347 _GPIOPin_Write_GPIO_Pin_65536_7:
      000136                        348 	.ds 1
      000137                        349 _GPIOPin_Read_GPIO_Pin_65536_22:
      000137                        350 	.ds 1
      000138                        351 _GPIOPin_Read_ret_65536_23:
      000138                        352 	.ds 1
      000139                        353 _GPIOPin_Toggle_GPIO_Pin_65536_25:
      000139                        354 	.ds 1
                                    355 ;--------------------------------------------------------
                                    356 ; absolute external ram data
                                    357 ;--------------------------------------------------------
                                    358 	.area XABS    (ABS,XDATA)
                                    359 ;--------------------------------------------------------
                                    360 ; external initialized ram data
                                    361 ;--------------------------------------------------------
                                    362 	.area XISEG   (XDATA)
                                    363 	.area HOME    (CODE)
                                    364 	.area GSINIT0 (CODE)
                                    365 	.area GSINIT1 (CODE)
                                    366 	.area GSINIT2 (CODE)
                                    367 	.area GSINIT3 (CODE)
                                    368 	.area GSINIT4 (CODE)
                                    369 	.area GSINIT5 (CODE)
                                    370 	.area GSINIT  (CODE)
                                    371 	.area GSFINAL (CODE)
                                    372 	.area CSEG    (CODE)
                                    373 ;--------------------------------------------------------
                                    374 ; global & static initialisations
                                    375 ;--------------------------------------------------------
                                    376 	.area HOME    (CODE)
                                    377 	.area GSINIT  (CODE)
                                    378 	.area GSFINAL (CODE)
                                    379 	.area GSINIT  (CODE)
                                    380 ;--------------------------------------------------------
                                    381 ; Home
                                    382 ;--------------------------------------------------------
                                    383 	.area HOME    (CODE)
                                    384 	.area HOME    (CODE)
                                    385 ;--------------------------------------------------------
                                    386 ; code
                                    387 ;--------------------------------------------------------
                                    388 	.area CSEG    (CODE)
                                    389 ;------------------------------------------------------------
                                    390 ;Allocation info for local variables in function 'GPIO_Config'
                                    391 ;------------------------------------------------------------
                                    392 ;	src/mc96f8x16_gpio.c:5: void GPIO_Config(void)
                                    393 ;	-----------------------------------------
                                    394 ;	 function GPIO_Config
                                    395 ;	-----------------------------------------
      0007BD                        396 _GPIO_Config:
                           000007   397 	ar7 = 0x07
                           000006   398 	ar6 = 0x06
                           000005   399 	ar5 = 0x05
                           000004   400 	ar4 = 0x04
                           000003   401 	ar3 = 0x03
                           000002   402 	ar2 = 0x02
                           000001   403 	ar1 = 0x01
                           000000   404 	ar0 = 0x00
                                    405 ;	src/mc96f8x16_gpio.c:8: P0IO = 0x00;    /* All Pins P0 are input */
      0007BD 75 A1 00         [24]  406 	mov	_P0IO,#0x00
                                    407 ;	src/mc96f8x16_gpio.c:9: P0PU = 0x00;    /* All Pins P0 are no pull */
      0007C0 75 AC 00         [24]  408 	mov	_P0PU,#0x00
                                    409 ;	src/mc96f8x16_gpio.c:10: P0FSR = (P0FSR3 | P0FSR4);   /* Select P02 is AN2 and P03 is AN3 */
      0007C3 75 D3 18         [24]  410 	mov	_P0FSR,#0x18
                                    411 ;	src/mc96f8x16_gpio.c:15: P1IO = P14IO;   /* Select P14 as Output and Pin remain as Input */
      0007C6 75 B1 10         [24]  412 	mov	_P1IO,#0x10
                                    413 ;	src/mc96f8x16_gpio.c:16: P1FSRH = (P1FSRH5 | P1FSRH3);     /* Select P15 as AN12, P16 as AN13 */
      0007C9 75 D5 28         [24]  414 	mov	_P1FSRH,#0x28
                                    415 ;	src/mc96f8x16_gpio.c:19: P2FSR = (P2FSR0 | P2FSR1);    /* Select Pin I2C */
      0007CC 75 D6 03         [24]  416 	mov	_P2FSR,#0x03
                                    417 ;	src/mc96f8x16_gpio.c:22: P3IO = (uint8_t)(P30IO | P33IO | P34IO | P35IO | P36IO | P37IO);
      0007CF 75 C1 F9         [24]  418 	mov	_P3IO,#0xf9
                                    419 ;	src/mc96f8x16_gpio.c:23: P3FSR = P3FSR0;
      0007D2 75 D7 01         [24]  420 	mov	_P3FSR,#0x01
                                    421 ;	src/mc96f8x16_gpio.c:25: }
      0007D5 22               [24]  422 	ret
                                    423 ;------------------------------------------------------------
                                    424 ;Allocation info for local variables in function 'GPIOPin_Write'
                                    425 ;------------------------------------------------------------
                                    426 ;PIN_State                 Allocated with name '_GPIOPin_Write_PARM_2'
                                    427 ;GPIO_Pin                  Allocated with name '_GPIOPin_Write_GPIO_Pin_65536_7'
                                    428 ;------------------------------------------------------------
                                    429 ;	src/mc96f8x16_gpio.c:27: void GPIOPin_Write(OUTPUTPin_t GPIO_Pin, GPIOPin_State PIN_State)
                                    430 ;	-----------------------------------------
                                    431 ;	 function GPIOPin_Write
                                    432 ;	-----------------------------------------
      0007D6                        433 _GPIOPin_Write:
      0007D6 E5 82            [12]  434 	mov	a,dpl
      0007D8 90 01 36         [24]  435 	mov	dptr,#_GPIOPin_Write_GPIO_Pin_65536_7
      0007DB F0               [24]  436 	movx	@dptr,a
                                    437 ;	src/mc96f8x16_gpio.c:29: switch (GPIO_Pin)
      0007DC E0               [24]  438 	movx	a,@dptr
      0007DD FF               [12]  439 	mov  r7,a
      0007DE 24 FA            [12]  440 	add	a,#0xff - 0x05
      0007E0 40 59            [24]  441 	jc	00127$
      0007E2 EF               [12]  442 	mov	a,r7
      0007E3 2F               [12]  443 	add	a,r7
                                    444 ;	src/mc96f8x16_gpio.c:31: case GPIO_LED1:
      0007E4 90 07 E8         [24]  445 	mov	dptr,#00158$
      0007E7 73               [24]  446 	jmp	@a+dptr
      0007E8                        447 00158$:
      0007E8 80 0A            [24]  448 	sjmp	00101$
      0007EA 80 14            [24]  449 	sjmp	00105$
      0007EC 80 1E            [24]  450 	sjmp	00109$
      0007EE 80 28            [24]  451 	sjmp	00113$
      0007F0 80 32            [24]  452 	sjmp	00117$
      0007F2 80 3C            [24]  453 	sjmp	00121$
      0007F4                        454 00101$:
                                    455 ;	src/mc96f8x16_gpio.c:32: if(PIN_State == GPIO_RESET)
      0007F4 90 01 35         [24]  456 	mov	dptr,#_GPIOPin_Write_PARM_2
      0007F7 E0               [24]  457 	movx	a,@dptr
      0007F8 70 03            [24]  458 	jnz	00103$
                                    459 ;	src/mc96f8x16_gpio.c:34: P33 = 0;
                                    460 ;	assignBit
      0007FA C2 9B            [12]  461 	clr	_P33
      0007FC 22               [24]  462 	ret
      0007FD                        463 00103$:
                                    464 ;	src/mc96f8x16_gpio.c:38: P33 = 1;
                                    465 ;	assignBit
      0007FD D2 9B            [12]  466 	setb	_P33
                                    467 ;	src/mc96f8x16_gpio.c:40: break;
                                    468 ;	src/mc96f8x16_gpio.c:41: case GPIO_LED2:
      0007FF 22               [24]  469 	ret
      000800                        470 00105$:
                                    471 ;	src/mc96f8x16_gpio.c:42: if(PIN_State == GPIO_RESET)
      000800 90 01 35         [24]  472 	mov	dptr,#_GPIOPin_Write_PARM_2
      000803 E0               [24]  473 	movx	a,@dptr
      000804 70 03            [24]  474 	jnz	00107$
                                    475 ;	src/mc96f8x16_gpio.c:44: P34 = 0;
                                    476 ;	assignBit
      000806 C2 9C            [12]  477 	clr	_P34
      000808 22               [24]  478 	ret
      000809                        479 00107$:
                                    480 ;	src/mc96f8x16_gpio.c:48: P34 = 1;
                                    481 ;	assignBit
      000809 D2 9C            [12]  482 	setb	_P34
                                    483 ;	src/mc96f8x16_gpio.c:50: break;
                                    484 ;	src/mc96f8x16_gpio.c:51: case GPIO_LED3:
      00080B 22               [24]  485 	ret
      00080C                        486 00109$:
                                    487 ;	src/mc96f8x16_gpio.c:52: if(PIN_State == GPIO_RESET)
      00080C 90 01 35         [24]  488 	mov	dptr,#_GPIOPin_Write_PARM_2
      00080F E0               [24]  489 	movx	a,@dptr
      000810 70 03            [24]  490 	jnz	00111$
                                    491 ;	src/mc96f8x16_gpio.c:54: P35 = 0;
                                    492 ;	assignBit
      000812 C2 9D            [12]  493 	clr	_P35
      000814 22               [24]  494 	ret
      000815                        495 00111$:
                                    496 ;	src/mc96f8x16_gpio.c:58: P35 = 1;
                                    497 ;	assignBit
      000815 D2 9D            [12]  498 	setb	_P35
                                    499 ;	src/mc96f8x16_gpio.c:60: break;
                                    500 ;	src/mc96f8x16_gpio.c:61: case GPIO_5V_CNTL:
      000817 22               [24]  501 	ret
      000818                        502 00113$:
                                    503 ;	src/mc96f8x16_gpio.c:62: if(PIN_State == GPIO_RESET)
      000818 90 01 35         [24]  504 	mov	dptr,#_GPIOPin_Write_PARM_2
      00081B E0               [24]  505 	movx	a,@dptr
      00081C 70 03            [24]  506 	jnz	00115$
                                    507 ;	src/mc96f8x16_gpio.c:64: P36 = 0;
                                    508 ;	assignBit
      00081E C2 9E            [12]  509 	clr	_P36
      000820 22               [24]  510 	ret
      000821                        511 00115$:
                                    512 ;	src/mc96f8x16_gpio.c:68: P36 = 1;
                                    513 ;	assignBit
      000821 D2 9E            [12]  514 	setb	_P36
                                    515 ;	src/mc96f8x16_gpio.c:70: break;
                                    516 ;	src/mc96f8x16_gpio.c:71: case GPIO_DCDC_EN:
      000823 22               [24]  517 	ret
      000824                        518 00117$:
                                    519 ;	src/mc96f8x16_gpio.c:72: if(PIN_State == GPIO_RESET)
      000824 90 01 35         [24]  520 	mov	dptr,#_GPIOPin_Write_PARM_2
      000827 E0               [24]  521 	movx	a,@dptr
      000828 70 03            [24]  522 	jnz	00119$
                                    523 ;	src/mc96f8x16_gpio.c:74: P37 = 0;
                                    524 ;	assignBit
      00082A C2 9F            [12]  525 	clr	_P37
      00082C 22               [24]  526 	ret
      00082D                        527 00119$:
                                    528 ;	src/mc96f8x16_gpio.c:78: P37 = 1;
                                    529 ;	assignBit
      00082D D2 9F            [12]  530 	setb	_P37
                                    531 ;	src/mc96f8x16_gpio.c:80: break;
                                    532 ;	src/mc96f8x16_gpio.c:81: case GPIO_COM_MODE:
      00082F 22               [24]  533 	ret
      000830                        534 00121$:
                                    535 ;	src/mc96f8x16_gpio.c:82: if(PIN_State == GPIO_RESET)
      000830 90 01 35         [24]  536 	mov	dptr,#_GPIOPin_Write_PARM_2
      000833 E0               [24]  537 	movx	a,@dptr
      000834 70 03            [24]  538 	jnz	00123$
                                    539 ;	src/mc96f8x16_gpio.c:84: P14 = 0;
                                    540 ;	assignBit
      000836 C2 8C            [12]  541 	clr	_P14
      000838 22               [24]  542 	ret
      000839                        543 00123$:
                                    544 ;	src/mc96f8x16_gpio.c:88: P14 = 1;
                                    545 ;	assignBit
      000839 D2 8C            [12]  546 	setb	_P14
                                    547 ;	src/mc96f8x16_gpio.c:93: }
      00083B                        548 00127$:
                                    549 ;	src/mc96f8x16_gpio.c:94: }
      00083B 22               [24]  550 	ret
                                    551 ;------------------------------------------------------------
                                    552 ;Allocation info for local variables in function 'GPIOPin_Read'
                                    553 ;------------------------------------------------------------
                                    554 ;GPIO_Pin                  Allocated with name '_GPIOPin_Read_GPIO_Pin_65536_22'
                                    555 ;ret                       Allocated with name '_GPIOPin_Read_ret_65536_23'
                                    556 ;------------------------------------------------------------
                                    557 ;	src/mc96f8x16_gpio.c:96: GPIOPin_State GPIOPin_Read(OUTPUTPin_t GPIO_Pin)
                                    558 ;	-----------------------------------------
                                    559 ;	 function GPIOPin_Read
                                    560 ;	-----------------------------------------
      00083C                        561 _GPIOPin_Read:
      00083C E5 82            [12]  562 	mov	a,dpl
      00083E 90 01 37         [24]  563 	mov	dptr,#_GPIOPin_Read_GPIO_Pin_65536_22
      000841 F0               [24]  564 	movx	@dptr,a
                                    565 ;	src/mc96f8x16_gpio.c:98: GPIOPin_State ret = GPIO_RESET;
      000842 90 01 38         [24]  566 	mov	dptr,#_GPIOPin_Read_ret_65536_23
      000845 E4               [12]  567 	clr	a
      000846 F0               [24]  568 	movx	@dptr,a
                                    569 ;	src/mc96f8x16_gpio.c:99: switch (GPIO_Pin)
      000847 90 01 37         [24]  570 	mov	dptr,#_GPIOPin_Read_GPIO_Pin_65536_22
      00084A E0               [24]  571 	movx	a,@dptr
      00084B FF               [12]  572 	mov  r7,a
      00084C 24 FA            [12]  573 	add	a,#0xff - 0x05
      00084E 40 4C            [24]  574 	jc	00108$
      000850 EF               [12]  575 	mov	a,r7
      000851 2F               [12]  576 	add	a,r7
                                    577 ;	src/mc96f8x16_gpio.c:101: case GPIO_LED1:
      000852 90 08 56         [24]  578 	mov	dptr,#00116$
      000855 73               [24]  579 	jmp	@a+dptr
      000856                        580 00116$:
      000856 80 0A            [24]  581 	sjmp	00101$
      000858 80 12            [24]  582 	sjmp	00102$
      00085A 80 1A            [24]  583 	sjmp	00103$
      00085C 80 22            [24]  584 	sjmp	00104$
      00085E 80 2A            [24]  585 	sjmp	00105$
      000860 80 32            [24]  586 	sjmp	00106$
      000862                        587 00101$:
                                    588 ;	src/mc96f8x16_gpio.c:102: ret = P33;
      000862 90 01 38         [24]  589 	mov	dptr,#_GPIOPin_Read_ret_65536_23
      000865 A2 9B            [12]  590 	mov	c,_P33
      000867 E4               [12]  591 	clr	a
      000868 33               [12]  592 	rlc	a
      000869 F0               [24]  593 	movx	@dptr,a
                                    594 ;	src/mc96f8x16_gpio.c:103: break;
                                    595 ;	src/mc96f8x16_gpio.c:104: case GPIO_LED2:
      00086A 80 30            [24]  596 	sjmp	00108$
      00086C                        597 00102$:
                                    598 ;	src/mc96f8x16_gpio.c:105: ret = P34;
      00086C 90 01 38         [24]  599 	mov	dptr,#_GPIOPin_Read_ret_65536_23
      00086F A2 9C            [12]  600 	mov	c,_P34
      000871 E4               [12]  601 	clr	a
      000872 33               [12]  602 	rlc	a
      000873 F0               [24]  603 	movx	@dptr,a
                                    604 ;	src/mc96f8x16_gpio.c:106: break;
                                    605 ;	src/mc96f8x16_gpio.c:107: case GPIO_LED3:
      000874 80 26            [24]  606 	sjmp	00108$
      000876                        607 00103$:
                                    608 ;	src/mc96f8x16_gpio.c:108: ret = P35;
      000876 90 01 38         [24]  609 	mov	dptr,#_GPIOPin_Read_ret_65536_23
      000879 A2 9D            [12]  610 	mov	c,_P35
      00087B E4               [12]  611 	clr	a
      00087C 33               [12]  612 	rlc	a
      00087D F0               [24]  613 	movx	@dptr,a
                                    614 ;	src/mc96f8x16_gpio.c:109: break;
                                    615 ;	src/mc96f8x16_gpio.c:110: case GPIO_5V_CNTL:
      00087E 80 1C            [24]  616 	sjmp	00108$
      000880                        617 00104$:
                                    618 ;	src/mc96f8x16_gpio.c:111: ret = P36;
      000880 90 01 38         [24]  619 	mov	dptr,#_GPIOPin_Read_ret_65536_23
      000883 A2 9E            [12]  620 	mov	c,_P36
      000885 E4               [12]  621 	clr	a
      000886 33               [12]  622 	rlc	a
      000887 F0               [24]  623 	movx	@dptr,a
                                    624 ;	src/mc96f8x16_gpio.c:112: break;
                                    625 ;	src/mc96f8x16_gpio.c:113: case GPIO_DCDC_EN:
      000888 80 12            [24]  626 	sjmp	00108$
      00088A                        627 00105$:
                                    628 ;	src/mc96f8x16_gpio.c:114: ret = P37;
      00088A 90 01 38         [24]  629 	mov	dptr,#_GPIOPin_Read_ret_65536_23
      00088D A2 9F            [12]  630 	mov	c,_P37
      00088F E4               [12]  631 	clr	a
      000890 33               [12]  632 	rlc	a
      000891 F0               [24]  633 	movx	@dptr,a
                                    634 ;	src/mc96f8x16_gpio.c:115: break;
                                    635 ;	src/mc96f8x16_gpio.c:116: case GPIO_COM_MODE:
      000892 80 08            [24]  636 	sjmp	00108$
      000894                        637 00106$:
                                    638 ;	src/mc96f8x16_gpio.c:117: ret = P14;
      000894 90 01 38         [24]  639 	mov	dptr,#_GPIOPin_Read_ret_65536_23
      000897 A2 8C            [12]  640 	mov	c,_P14
      000899 E4               [12]  641 	clr	a
      00089A 33               [12]  642 	rlc	a
      00089B F0               [24]  643 	movx	@dptr,a
                                    644 ;	src/mc96f8x16_gpio.c:121: }
      00089C                        645 00108$:
                                    646 ;	src/mc96f8x16_gpio.c:122: return ret;
      00089C 90 01 38         [24]  647 	mov	dptr,#_GPIOPin_Read_ret_65536_23
      00089F E0               [24]  648 	movx	a,@dptr
                                    649 ;	src/mc96f8x16_gpio.c:123: }
      0008A0 F5 82            [12]  650 	mov	dpl,a
      0008A2 22               [24]  651 	ret
                                    652 ;------------------------------------------------------------
                                    653 ;Allocation info for local variables in function 'GPIOPin_Toggle'
                                    654 ;------------------------------------------------------------
                                    655 ;GPIO_Pin                  Allocated with name '_GPIOPin_Toggle_GPIO_Pin_65536_25'
                                    656 ;------------------------------------------------------------
                                    657 ;	src/mc96f8x16_gpio.c:125: void GPIOPin_Toggle(OUTPUTPin_t GPIO_Pin)
                                    658 ;	-----------------------------------------
                                    659 ;	 function GPIOPin_Toggle
                                    660 ;	-----------------------------------------
      0008A3                        661 _GPIOPin_Toggle:
      0008A3 E5 82            [12]  662 	mov	a,dpl
      0008A5 90 01 39         [24]  663 	mov	dptr,#_GPIOPin_Toggle_GPIO_Pin_65536_25
      0008A8 F0               [24]  664 	movx	@dptr,a
                                    665 ;	src/mc96f8x16_gpio.c:127: switch (GPIO_Pin)
      0008A9 E0               [24]  666 	movx	a,@dptr
      0008AA FF               [12]  667 	mov  r7,a
      0008AB 24 FA            [12]  668 	add	a,#0xff - 0x05
      0008AD 40 23            [24]  669 	jc	00109$
      0008AF EF               [12]  670 	mov	a,r7
      0008B0 2F               [12]  671 	add	a,r7
                                    672 ;	src/mc96f8x16_gpio.c:129: case GPIO_LED1:
      0008B1 90 08 B5         [24]  673 	mov	dptr,#00116$
      0008B4 73               [24]  674 	jmp	@a+dptr
      0008B5                        675 00116$:
      0008B5 80 0A            [24]  676 	sjmp	00101$
      0008B7 80 0B            [24]  677 	sjmp	00102$
      0008B9 80 0C            [24]  678 	sjmp	00103$
      0008BB 80 0D            [24]  679 	sjmp	00104$
      0008BD 80 0E            [24]  680 	sjmp	00105$
      0008BF 80 0F            [24]  681 	sjmp	00106$
      0008C1                        682 00101$:
                                    683 ;	src/mc96f8x16_gpio.c:130: P33 = !P33;
      0008C1 B2 9B            [12]  684 	cpl	_P33
                                    685 ;	src/mc96f8x16_gpio.c:131: break;
                                    686 ;	src/mc96f8x16_gpio.c:132: case GPIO_LED2:
      0008C3 22               [24]  687 	ret
      0008C4                        688 00102$:
                                    689 ;	src/mc96f8x16_gpio.c:133: P34 = !P34;
      0008C4 B2 9C            [12]  690 	cpl	_P34
                                    691 ;	src/mc96f8x16_gpio.c:134: break;
                                    692 ;	src/mc96f8x16_gpio.c:135: case GPIO_LED3:
      0008C6 22               [24]  693 	ret
      0008C7                        694 00103$:
                                    695 ;	src/mc96f8x16_gpio.c:136: P35 = !P35;
      0008C7 B2 9D            [12]  696 	cpl	_P35
                                    697 ;	src/mc96f8x16_gpio.c:137: break;
                                    698 ;	src/mc96f8x16_gpio.c:138: case GPIO_5V_CNTL:
      0008C9 22               [24]  699 	ret
      0008CA                        700 00104$:
                                    701 ;	src/mc96f8x16_gpio.c:139: P36 = !P36;
      0008CA B2 9E            [12]  702 	cpl	_P36
                                    703 ;	src/mc96f8x16_gpio.c:140: break;
                                    704 ;	src/mc96f8x16_gpio.c:141: case GPIO_DCDC_EN:
      0008CC 22               [24]  705 	ret
      0008CD                        706 00105$:
                                    707 ;	src/mc96f8x16_gpio.c:142: P37 = !P37;
      0008CD B2 9F            [12]  708 	cpl	_P37
                                    709 ;	src/mc96f8x16_gpio.c:143: break;
                                    710 ;	src/mc96f8x16_gpio.c:144: case GPIO_COM_MODE:
      0008CF 22               [24]  711 	ret
      0008D0                        712 00106$:
                                    713 ;	src/mc96f8x16_gpio.c:145: P14 = !P14;
      0008D0 B2 8C            [12]  714 	cpl	_P14
                                    715 ;	src/mc96f8x16_gpio.c:149: }
      0008D2                        716 00109$:
                                    717 ;	src/mc96f8x16_gpio.c:150: }
      0008D2 22               [24]  718 	ret
                                    719 	.area CSEG    (CODE)
                                    720 	.area CONST   (CODE)
                                    721 	.area XINIT   (CODE)
                                    722 	.area CABS    (ABS,CODE)
