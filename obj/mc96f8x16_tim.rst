                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.1.14 #12827 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module mc96f8x16_tim
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _SysTick_ISR
                                     12 	.globl _P37
                                     13 	.globl _P36
                                     14 	.globl _P35
                                     15 	.globl _P34
                                     16 	.globl _P33
                                     17 	.globl _P32
                                     18 	.globl _P31
                                     19 	.globl _P30
                                     20 	.globl _P27
                                     21 	.globl _P26
                                     22 	.globl _P25
                                     23 	.globl _P24
                                     24 	.globl _P23
                                     25 	.globl _P22
                                     26 	.globl _P21
                                     27 	.globl _P20
                                     28 	.globl _P17
                                     29 	.globl _P16
                                     30 	.globl _P15
                                     31 	.globl _P14
                                     32 	.globl _P13
                                     33 	.globl _P12
                                     34 	.globl _P11
                                     35 	.globl _P10
                                     36 	.globl _P07
                                     37 	.globl _P06
                                     38 	.globl _P05
                                     39 	.globl _P04
                                     40 	.globl _P03
                                     41 	.globl _P02
                                     42 	.globl _P01
                                     43 	.globl _P00
                                     44 	.globl _EO
                                     45 	.globl _DPH1
                                     46 	.globl _DPL1
                                     47 	.globl _DPH
                                     48 	.globl _DPL
                                     49 	.globl _SP
                                     50 	.globl _PSW
                                     51 	.globl _B
                                     52 	.globl _ACC
                                     53 	.globl _FMCR
                                     54 	.globl _FIDR
                                     55 	.globl _FSADRL
                                     56 	.globl _FSADRM
                                     57 	.globl _FSADRH
                                     58 	.globl _I2CSCHR
                                     59 	.globl _I2CSCLR
                                     60 	.globl _I2CSDHR
                                     61 	.globl _I2CDR
                                     62 	.globl _I2CSAR1
                                     63 	.globl _I2CSAR0
                                     64 	.globl _I2CSR
                                     65 	.globl _I2CCR
                                     66 	.globl _UARTDR
                                     67 	.globl _UARTBD
                                     68 	.globl _UARTST
                                     69 	.globl _UARTCR3
                                     70 	.globl _UARTCR2
                                     71 	.globl _UARTCR1
                                     72 	.globl _SPISR
                                     73 	.globl _SPIDR
                                     74 	.globl _SPICR
                                     75 	.globl _ADWIFRH
                                     76 	.globl _ADWIFRL
                                     77 	.globl _ADWCRH
                                     78 	.globl _ADWCRL
                                     79 	.globl _ADWRCR3
                                     80 	.globl _ADWRCR2
                                     81 	.globl _ADWRCR1
                                     82 	.globl _ADWRCR0
                                     83 	.globl _ADCDRH
                                     84 	.globl _ADCDRL
                                     85 	.globl _ADCCRH
                                     86 	.globl _ADCCRL
                                     87 	.globl _BUZCR
                                     88 	.globl _BUZDR
                                     89 	.globl _T2BDRH
                                     90 	.globl _T2BDRL
                                     91 	.globl _T2ADRH
                                     92 	.globl _T2ADRL
                                     93 	.globl _T2CRH
                                     94 	.globl _T2CRL
                                     95 	.globl _T1BDRH
                                     96 	.globl _T1BDRL
                                     97 	.globl _T1ADRH
                                     98 	.globl _T1ADRL
                                     99 	.globl _T1CRH
                                    100 	.globl _T1CRL
                                    101 	.globl _T0CDR
                                    102 	.globl _T0DR
                                    103 	.globl _T0CNT
                                    104 	.globl _T0CR
                                    105 	.globl _WTCR
                                    106 	.globl _WTCNT
                                    107 	.globl _WTDR
                                    108 	.globl _WDTCR
                                    109 	.globl _WDTCNT
                                    110 	.globl _WDTDR
                                    111 	.globl _LVICR
                                    112 	.globl _LVRCR
                                    113 	.globl _PCON
                                    114 	.globl _RSTFR
                                    115 	.globl _BITCR
                                    116 	.globl _BITCNT
                                    117 	.globl _OSCCR
                                    118 	.globl _SCCR
                                    119 	.globl _EIPOL2
                                    120 	.globl _EIPOL1
                                    121 	.globl _EIPOL0H
                                    122 	.globl _EIPOL0L
                                    123 	.globl _EIFLAG1
                                    124 	.globl _EIFLAG0
                                    125 	.globl _IIFLAG
                                    126 	.globl _IP1
                                    127 	.globl _IP
                                    128 	.globl _IE3
                                    129 	.globl _IE2
                                    130 	.globl _IE1
                                    131 	.globl _IE
                                    132 	.globl _P3FSR
                                    133 	.globl _P2FSR
                                    134 	.globl _P1FSRH
                                    135 	.globl _P1FSRL
                                    136 	.globl _P0FSR
                                    137 	.globl _P3PU
                                    138 	.globl _P3OD
                                    139 	.globl _P3IO
                                    140 	.globl _P3
                                    141 	.globl _P2PU
                                    142 	.globl _P2OD
                                    143 	.globl _P2IO
                                    144 	.globl _P2
                                    145 	.globl _P12DB
                                    146 	.globl _P1PU
                                    147 	.globl _P1OD
                                    148 	.globl _P1IO
                                    149 	.globl _P1
                                    150 	.globl _P03DB
                                    151 	.globl _P0PU
                                    152 	.globl _P0OD
                                    153 	.globl _P0IO
                                    154 	.globl _P0
                                    155 	.globl _Tick
                                    156 	.globl _CheckTimeout_PARM_2
                                    157 	.globl _SysTick_Init
                                    158 	.globl _GetTick
                                    159 	.globl _Delayms
                                    160 	.globl _CheckTimeout
                                    161 ;--------------------------------------------------------
                                    162 ; special function registers
                                    163 ;--------------------------------------------------------
                                    164 	.area RSEG    (ABS,DATA)
      000000                        165 	.org 0x0000
                           000080   166 _P0	=	0x0080
                           0000A1   167 _P0IO	=	0x00a1
                           000091   168 _P0OD	=	0x0091
                           0000AC   169 _P0PU	=	0x00ac
                           0000DE   170 _P03DB	=	0x00de
                           000088   171 _P1	=	0x0088
                           0000B1   172 _P1IO	=	0x00b1
                           000092   173 _P1OD	=	0x0092
                           0000AD   174 _P1PU	=	0x00ad
                           0000DF   175 _P12DB	=	0x00df
                           000090   176 _P2	=	0x0090
                           0000B9   177 _P2IO	=	0x00b9
                           000093   178 _P2OD	=	0x0093
                           0000AE   179 _P2PU	=	0x00ae
                           000098   180 _P3	=	0x0098
                           0000C1   181 _P3IO	=	0x00c1
                           000094   182 _P3OD	=	0x0094
                           0000AF   183 _P3PU	=	0x00af
                           0000D3   184 _P0FSR	=	0x00d3
                           0000D4   185 _P1FSRL	=	0x00d4
                           0000D5   186 _P1FSRH	=	0x00d5
                           0000D6   187 _P2FSR	=	0x00d6
                           0000D7   188 _P3FSR	=	0x00d7
                           0000A8   189 _IE	=	0x00a8
                           0000A9   190 _IE1	=	0x00a9
                           0000AA   191 _IE2	=	0x00aa
                           0000AB   192 _IE3	=	0x00ab
                           0000B8   193 _IP	=	0x00b8
                           0000F8   194 _IP1	=	0x00f8
                           0000A0   195 _IIFLAG	=	0x00a0
                           0000C0   196 _EIFLAG0	=	0x00c0
                           0000B0   197 _EIFLAG1	=	0x00b0
                           0000A4   198 _EIPOL0L	=	0x00a4
                           0000A5   199 _EIPOL0H	=	0x00a5
                           0000A6   200 _EIPOL1	=	0x00a6
                           0000A7   201 _EIPOL2	=	0x00a7
                           00008A   202 _SCCR	=	0x008a
                           0000C8   203 _OSCCR	=	0x00c8
                           00008C   204 _BITCNT	=	0x008c
                           00008B   205 _BITCR	=	0x008b
                           0000E8   206 _RSTFR	=	0x00e8
                           000087   207 _PCON	=	0x0087
                           0000D8   208 _LVRCR	=	0x00d8
                           000086   209 _LVICR	=	0x0086
                           00008E   210 _WDTDR	=	0x008e
                           00008E   211 _WDTCNT	=	0x008e
                           00008D   212 _WDTCR	=	0x008d
                           000089   213 _WTDR	=	0x0089
                           000089   214 _WTCNT	=	0x0089
                           000096   215 _WTCR	=	0x0096
                           0000B2   216 _T0CR	=	0x00b2
                           0000B3   217 _T0CNT	=	0x00b3
                           0000B4   218 _T0DR	=	0x00b4
                           0000B4   219 _T0CDR	=	0x00b4
                           0000BA   220 _T1CRL	=	0x00ba
                           0000BB   221 _T1CRH	=	0x00bb
                           0000BC   222 _T1ADRL	=	0x00bc
                           0000BD   223 _T1ADRH	=	0x00bd
                           0000BE   224 _T1BDRL	=	0x00be
                           0000BF   225 _T1BDRH	=	0x00bf
                           0000C2   226 _T2CRL	=	0x00c2
                           0000C3   227 _T2CRH	=	0x00c3
                           0000C4   228 _T2ADRL	=	0x00c4
                           0000C5   229 _T2ADRH	=	0x00c5
                           0000C6   230 _T2BDRL	=	0x00c6
                           0000C7   231 _T2BDRH	=	0x00c7
                           00008F   232 _BUZDR	=	0x008f
                           000097   233 _BUZCR	=	0x0097
                           00009C   234 _ADCCRL	=	0x009c
                           00009D   235 _ADCCRH	=	0x009d
                           00009E   236 _ADCDRL	=	0x009e
                           00009F   237 _ADCDRH	=	0x009f
                           0000F2   238 _ADWRCR0	=	0x00f2
                           0000F3   239 _ADWRCR1	=	0x00f3
                           0000F4   240 _ADWRCR2	=	0x00f4
                           0000F5   241 _ADWRCR3	=	0x00f5
                           0000F6   242 _ADWCRL	=	0x00f6
                           0000F7   243 _ADWCRH	=	0x00f7
                           0000DC   244 _ADWIFRL	=	0x00dc
                           0000DD   245 _ADWIFRH	=	0x00dd
                           0000B5   246 _SPICR	=	0x00b5
                           0000B6   247 _SPIDR	=	0x00b6
                           0000B7   248 _SPISR	=	0x00b7
                           0000E2   249 _UARTCR1	=	0x00e2
                           0000E3   250 _UARTCR2	=	0x00e3
                           0000E4   251 _UARTCR3	=	0x00e4
                           0000E5   252 _UARTST	=	0x00e5
                           0000E6   253 _UARTBD	=	0x00e6
                           0000E7   254 _UARTDR	=	0x00e7
                           0000E9   255 _I2CCR	=	0x00e9
                           0000EA   256 _I2CSR	=	0x00ea
                           0000EB   257 _I2CSAR0	=	0x00eb
                           0000F1   258 _I2CSAR1	=	0x00f1
                           0000EC   259 _I2CDR	=	0x00ec
                           0000ED   260 _I2CSDHR	=	0x00ed
                           0000EE   261 _I2CSCLR	=	0x00ee
                           0000EF   262 _I2CSCHR	=	0x00ef
                           0000FA   263 _FSADRH	=	0x00fa
                           0000FB   264 _FSADRM	=	0x00fb
                           0000FC   265 _FSADRL	=	0x00fc
                           0000FD   266 _FIDR	=	0x00fd
                           0000FE   267 _FMCR	=	0x00fe
                           0000E0   268 _ACC	=	0x00e0
                           0000F0   269 _B	=	0x00f0
                           0000D0   270 _PSW	=	0x00d0
                           000081   271 _SP	=	0x0081
                           000082   272 _DPL	=	0x0082
                           000083   273 _DPH	=	0x0083
                           000084   274 _DPL1	=	0x0084
                           000085   275 _DPH1	=	0x0085
                           0000A2   276 _EO	=	0x00a2
                                    277 ;--------------------------------------------------------
                                    278 ; special function bits
                                    279 ;--------------------------------------------------------
                                    280 	.area RSEG    (ABS,DATA)
      000000                        281 	.org 0x0000
                           000080   282 _P00	=	0x0080
                           000081   283 _P01	=	0x0081
                           000082   284 _P02	=	0x0082
                           000083   285 _P03	=	0x0083
                           000084   286 _P04	=	0x0084
                           000085   287 _P05	=	0x0085
                           000086   288 _P06	=	0x0086
                           000087   289 _P07	=	0x0087
                           000088   290 _P10	=	0x0088
                           000089   291 _P11	=	0x0089
                           00008A   292 _P12	=	0x008a
                           00008B   293 _P13	=	0x008b
                           00008C   294 _P14	=	0x008c
                           00008D   295 _P15	=	0x008d
                           00008E   296 _P16	=	0x008e
                           00008F   297 _P17	=	0x008f
                           000090   298 _P20	=	0x0090
                           000091   299 _P21	=	0x0091
                           000092   300 _P22	=	0x0092
                           000093   301 _P23	=	0x0093
                           000094   302 _P24	=	0x0094
                           000095   303 _P25	=	0x0095
                           000096   304 _P26	=	0x0096
                           000097   305 _P27	=	0x0097
                           000098   306 _P30	=	0x0098
                           000099   307 _P31	=	0x0099
                           00009A   308 _P32	=	0x009a
                           00009B   309 _P33	=	0x009b
                           00009C   310 _P34	=	0x009c
                           00009D   311 _P35	=	0x009d
                           00009E   312 _P36	=	0x009e
                           00009F   313 _P37	=	0x009f
                                    314 ;--------------------------------------------------------
                                    315 ; overlayable register banks
                                    316 ;--------------------------------------------------------
                                    317 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        318 	.ds 8
                                    319 ;--------------------------------------------------------
                                    320 ; internal ram data
                                    321 ;--------------------------------------------------------
                                    322 	.area DSEG    (DATA)
                                    323 ;--------------------------------------------------------
                                    324 ; overlayable items in internal ram 
                                    325 ;--------------------------------------------------------
                                    326 ;--------------------------------------------------------
                                    327 ; indirectly addressable internal ram data
                                    328 ;--------------------------------------------------------
                                    329 	.area ISEG    (DATA)
                                    330 ;--------------------------------------------------------
                                    331 ; absolute internal ram data
                                    332 ;--------------------------------------------------------
                                    333 	.area IABS    (ABS,DATA)
                                    334 	.area IABS    (ABS,DATA)
                                    335 ;--------------------------------------------------------
                                    336 ; bit data
                                    337 ;--------------------------------------------------------
                                    338 	.area BSEG    (BIT)
                                    339 ;--------------------------------------------------------
                                    340 ; paged external ram data
                                    341 ;--------------------------------------------------------
                                    342 	.area PSEG    (PAG,XDATA)
                                    343 ;--------------------------------------------------------
                                    344 ; external ram data
                                    345 ;--------------------------------------------------------
                                    346 	.area XSEG    (XDATA)
      00011D                        347 _Delayms_Timeout_65536_15:
      00011D                        348 	.ds 2
      00011F                        349 _CheckTimeout_PARM_2:
      00011F                        350 	.ds 2
      000121                        351 _CheckTimeout_Start_65536_19:
      000121                        352 	.ds 2
      000123                        353 _CheckTimeout_ret_65536_20:
      000123                        354 	.ds 1
                                    355 ;--------------------------------------------------------
                                    356 ; absolute external ram data
                                    357 ;--------------------------------------------------------
                                    358 	.area XABS    (ABS,XDATA)
                                    359 ;--------------------------------------------------------
                                    360 ; external initialized ram data
                                    361 ;--------------------------------------------------------
                                    362 	.area XISEG   (XDATA)
      00013D                        363 _Tick::
      00013D                        364 	.ds 2
                                    365 	.area HOME    (CODE)
                                    366 	.area GSINIT0 (CODE)
                                    367 	.area GSINIT1 (CODE)
                                    368 	.area GSINIT2 (CODE)
                                    369 	.area GSINIT3 (CODE)
                                    370 	.area GSINIT4 (CODE)
                                    371 	.area GSINIT5 (CODE)
                                    372 	.area GSINIT  (CODE)
                                    373 	.area GSFINAL (CODE)
                                    374 	.area CSEG    (CODE)
                                    375 ;--------------------------------------------------------
                                    376 ; global & static initialisations
                                    377 ;--------------------------------------------------------
                                    378 	.area HOME    (CODE)
                                    379 	.area GSINIT  (CODE)
                                    380 	.area GSFINAL (CODE)
                                    381 	.area GSINIT  (CODE)
                                    382 ;--------------------------------------------------------
                                    383 ; Home
                                    384 ;--------------------------------------------------------
                                    385 	.area HOME    (CODE)
                                    386 	.area HOME    (CODE)
                                    387 ;--------------------------------------------------------
                                    388 ; code
                                    389 ;--------------------------------------------------------
                                    390 	.area CSEG    (CODE)
                                    391 ;------------------------------------------------------------
                                    392 ;Allocation info for local variables in function 'SysTick_Init'
                                    393 ;------------------------------------------------------------
                                    394 ;	src/mc96f8x16_tim.c:6: void SysTick_Init(void)
                                    395 ;	-----------------------------------------
                                    396 ;	 function SysTick_Init
                                    397 ;	-----------------------------------------
      0003E0                        398 _SysTick_Init:
                           000007   399 	ar7 = 0x07
                           000006   400 	ar6 = 0x06
                           000005   401 	ar5 = 0x05
                           000004   402 	ar4 = 0x04
                           000003   403 	ar3 = 0x03
                           000002   404 	ar2 = 0x02
                           000001   405 	ar1 = 0x01
                           000000   406 	ar0 = 0x00
                                    407 ;	src/mc96f8x16_tim.c:8: BITCR = 0x00;
      0003E0 75 8B 00         [24]  408 	mov	_BITCR,#0x00
                                    409 ;	src/mc96f8x16_tim.c:9: BITCR |= (BITCK_FX_DIV_1024 << 5u) | ((BCK_BIT2_OVFL << 0u) | BITCR_BCLR);
      0003E3 43 8B 2A         [24]  410 	orl	_BITCR,#0x2a
                                    411 ;	src/mc96f8x16_tim.c:10: IE3 = (IE3 & 0x0F) | (0x10);
      0003E6 E5 AB            [12]  412 	mov	a,_IE3
      0003E8 54 0F            [12]  413 	anl	a,#0x0f
      0003EA 44 10            [12]  414 	orl	a,#0x10
      0003EC F5 AB            [12]  415 	mov	_IE3,a
                                    416 ;	src/mc96f8x16_tim.c:11: }
      0003EE 22               [24]  417 	ret
                                    418 ;------------------------------------------------------------
                                    419 ;Allocation info for local variables in function 'GetTick'
                                    420 ;------------------------------------------------------------
                                    421 ;	src/mc96f8x16_tim.c:13: uint16_t GetTick(void)
                                    422 ;	-----------------------------------------
                                    423 ;	 function GetTick
                                    424 ;	-----------------------------------------
      0003EF                        425 _GetTick:
                                    426 ;	src/mc96f8x16_tim.c:15: return Tick;
      0003EF 90 01 3D         [24]  427 	mov	dptr,#_Tick
      0003F2 E0               [24]  428 	movx	a,@dptr
      0003F3 FE               [12]  429 	mov	r6,a
      0003F4 A3               [24]  430 	inc	dptr
      0003F5 E0               [24]  431 	movx	a,@dptr
                                    432 ;	src/mc96f8x16_tim.c:16: }
      0003F6 8E 82            [24]  433 	mov	dpl,r6
      0003F8 F5 83            [12]  434 	mov	dph,a
      0003FA 22               [24]  435 	ret
                                    436 ;------------------------------------------------------------
                                    437 ;Allocation info for local variables in function 'SysTick_ISR'
                                    438 ;------------------------------------------------------------
                                    439 ;	src/mc96f8x16_tim.c:18: void SysTick_ISR(void) __interrupt 23
                                    440 ;	-----------------------------------------
                                    441 ;	 function SysTick_ISR
                                    442 ;	-----------------------------------------
      0003FB                        443 _SysTick_ISR:
      0003FB C0 E0            [24]  444 	push	acc
      0003FD C0 82            [24]  445 	push	dpl
      0003FF C0 83            [24]  446 	push	dph
      000401 C0 07            [24]  447 	push	ar7
      000403 C0 06            [24]  448 	push	ar6
      000405 C0 D0            [24]  449 	push	psw
      000407 75 D0 00         [24]  450 	mov	psw,#0x00
                                    451 ;	src/mc96f8x16_tim.c:20: Tick++;
      00040A 90 01 3D         [24]  452 	mov	dptr,#_Tick
      00040D E0               [24]  453 	movx	a,@dptr
      00040E FE               [12]  454 	mov	r6,a
      00040F A3               [24]  455 	inc	dptr
      000410 E0               [24]  456 	movx	a,@dptr
      000411 FF               [12]  457 	mov	r7,a
      000412 90 01 3D         [24]  458 	mov	dptr,#_Tick
      000415 74 01            [12]  459 	mov	a,#0x01
      000417 2E               [12]  460 	add	a,r6
      000418 F0               [24]  461 	movx	@dptr,a
      000419 E4               [12]  462 	clr	a
      00041A 3F               [12]  463 	addc	a,r7
      00041B A3               [24]  464 	inc	dptr
      00041C F0               [24]  465 	movx	@dptr,a
                                    466 ;	src/mc96f8x16_tim.c:22: BITCR |= BITCR_BCLR;
      00041D 43 8B 08         [24]  467 	orl	_BITCR,#0x08
                                    468 ;	src/mc96f8x16_tim.c:23: }
      000420 D0 D0            [24]  469 	pop	psw
      000422 D0 06            [24]  470 	pop	ar6
      000424 D0 07            [24]  471 	pop	ar7
      000426 D0 83            [24]  472 	pop	dph
      000428 D0 82            [24]  473 	pop	dpl
      00042A D0 E0            [24]  474 	pop	acc
      00042C 32               [24]  475 	reti
                                    476 ;	eliminated unneeded push/pop b
                                    477 ;------------------------------------------------------------
                                    478 ;Allocation info for local variables in function 'Delayms'
                                    479 ;------------------------------------------------------------
                                    480 ;Timeout                   Allocated with name '_Delayms_Timeout_65536_15'
                                    481 ;StartTick                 Allocated with name '_Delayms_StartTick_65536_16'
                                    482 ;------------------------------------------------------------
                                    483 ;	src/mc96f8x16_tim.c:25: void Delayms(uint16_t Timeout)
                                    484 ;	-----------------------------------------
                                    485 ;	 function Delayms
                                    486 ;	-----------------------------------------
      00042D                        487 _Delayms:
      00042D AF 83            [24]  488 	mov	r7,dph
      00042F E5 82            [12]  489 	mov	a,dpl
      000431 90 01 1D         [24]  490 	mov	dptr,#_Delayms_Timeout_65536_15
      000434 F0               [24]  491 	movx	@dptr,a
      000435 EF               [12]  492 	mov	a,r7
      000436 A3               [24]  493 	inc	dptr
      000437 F0               [24]  494 	movx	@dptr,a
                                    495 ;	src/mc96f8x16_tim.c:27: uint16_t StartTick = GetTick();
      000438 12 03 EF         [24]  496 	lcall	_GetTick
      00043B AE 82            [24]  497 	mov	r6,dpl
      00043D AF 83            [24]  498 	mov	r7,dph
                                    499 ;	src/mc96f8x16_tim.c:28: if(StartTick + Timeout > StartTick)
      00043F 90 01 1D         [24]  500 	mov	dptr,#_Delayms_Timeout_65536_15
      000442 E0               [24]  501 	movx	a,@dptr
      000443 FC               [12]  502 	mov	r4,a
      000444 A3               [24]  503 	inc	dptr
      000445 E0               [24]  504 	movx	a,@dptr
      000446 FD               [12]  505 	mov	r5,a
      000447 EC               [12]  506 	mov	a,r4
      000448 2E               [12]  507 	add	a,r6
      000449 FA               [12]  508 	mov	r2,a
      00044A ED               [12]  509 	mov	a,r5
      00044B 3F               [12]  510 	addc	a,r7
      00044C FB               [12]  511 	mov	r3,a
      00044D C3               [12]  512 	clr	c
      00044E EE               [12]  513 	mov	a,r6
      00044F 9A               [12]  514 	subb	a,r2
      000450 EF               [12]  515 	mov	a,r7
      000451 9B               [12]  516 	subb	a,r3
      000452 50 1E            [24]  517 	jnc	00115$
                                    518 ;	src/mc96f8x16_tim.c:30: while(GetTick() < StartTick + Timeout);
      000454 EC               [12]  519 	mov	a,r4
      000455 2E               [12]  520 	add	a,r6
      000456 FA               [12]  521 	mov	r2,a
      000457 ED               [12]  522 	mov	a,r5
      000458 3F               [12]  523 	addc	a,r7
      000459 FB               [12]  524 	mov	r3,a
      00045A                        525 00101$:
      00045A C0 03            [24]  526 	push	ar3
      00045C C0 02            [24]  527 	push	ar2
      00045E 12 03 EF         [24]  528 	lcall	_GetTick
      000461 A8 82            [24]  529 	mov	r0,dpl
      000463 A9 83            [24]  530 	mov	r1,dph
      000465 D0 02            [24]  531 	pop	ar2
      000467 D0 03            [24]  532 	pop	ar3
      000469 C3               [12]  533 	clr	c
      00046A E8               [12]  534 	mov	a,r0
      00046B 9A               [12]  535 	subb	a,r2
      00046C E9               [12]  536 	mov	a,r1
      00046D 9B               [12]  537 	subb	a,r3
      00046E 50 4E            [24]  538 	jnc	00111$
                                    539 ;	src/mc96f8x16_tim.c:34: while((GetTick() < (Timeout - (0xFFFFU - StartTick))) || (GetTick() > StartTick));
      000470 80 E8            [24]  540 	sjmp	00101$
      000472                        541 00115$:
      000472 74 FF            [12]  542 	mov	a,#0xff
      000474 C3               [12]  543 	clr	c
      000475 9E               [12]  544 	subb	a,r6
      000476 FA               [12]  545 	mov	r2,a
      000477 74 FF            [12]  546 	mov	a,#0xff
      000479 9F               [12]  547 	subb	a,r7
      00047A FB               [12]  548 	mov	r3,a
      00047B EC               [12]  549 	mov	a,r4
      00047C C3               [12]  550 	clr	c
      00047D 9A               [12]  551 	subb	a,r2
      00047E FC               [12]  552 	mov	r4,a
      00047F ED               [12]  553 	mov	a,r5
      000480 9B               [12]  554 	subb	a,r3
      000481 FD               [12]  555 	mov	r5,a
      000482                        556 00105$:
      000482 C0 07            [24]  557 	push	ar7
      000484 C0 06            [24]  558 	push	ar6
      000486 C0 05            [24]  559 	push	ar5
      000488 C0 04            [24]  560 	push	ar4
      00048A 12 03 EF         [24]  561 	lcall	_GetTick
      00048D AA 82            [24]  562 	mov	r2,dpl
      00048F AB 83            [24]  563 	mov	r3,dph
      000491 D0 04            [24]  564 	pop	ar4
      000493 D0 05            [24]  565 	pop	ar5
      000495 D0 06            [24]  566 	pop	ar6
      000497 D0 07            [24]  567 	pop	ar7
      000499 C3               [12]  568 	clr	c
      00049A EA               [12]  569 	mov	a,r2
      00049B 9C               [12]  570 	subb	a,r4
      00049C EB               [12]  571 	mov	a,r3
      00049D 9D               [12]  572 	subb	a,r5
      00049E 40 E2            [24]  573 	jc	00105$
      0004A0 C0 07            [24]  574 	push	ar7
      0004A2 C0 06            [24]  575 	push	ar6
      0004A4 C0 05            [24]  576 	push	ar5
      0004A6 C0 04            [24]  577 	push	ar4
      0004A8 12 03 EF         [24]  578 	lcall	_GetTick
      0004AB AA 82            [24]  579 	mov	r2,dpl
      0004AD AB 83            [24]  580 	mov	r3,dph
      0004AF D0 04            [24]  581 	pop	ar4
      0004B1 D0 05            [24]  582 	pop	ar5
      0004B3 D0 06            [24]  583 	pop	ar6
      0004B5 D0 07            [24]  584 	pop	ar7
      0004B7 C3               [12]  585 	clr	c
      0004B8 EE               [12]  586 	mov	a,r6
      0004B9 9A               [12]  587 	subb	a,r2
      0004BA EF               [12]  588 	mov	a,r7
      0004BB 9B               [12]  589 	subb	a,r3
      0004BC 40 C4            [24]  590 	jc	00105$
      0004BE                        591 00111$:
                                    592 ;	src/mc96f8x16_tim.c:36: }
      0004BE 22               [24]  593 	ret
                                    594 ;------------------------------------------------------------
                                    595 ;Allocation info for local variables in function 'CheckTimeout'
                                    596 ;------------------------------------------------------------
                                    597 ;Timeout                   Allocated with name '_CheckTimeout_PARM_2'
                                    598 ;Start                     Allocated with name '_CheckTimeout_Start_65536_19'
                                    599 ;ret                       Allocated with name '_CheckTimeout_ret_65536_20'
                                    600 ;------------------------------------------------------------
                                    601 ;	src/mc96f8x16_tim.c:38: HAL_Status CheckTimeout(uint16_t Start, uint16_t Timeout)
                                    602 ;	-----------------------------------------
                                    603 ;	 function CheckTimeout
                                    604 ;	-----------------------------------------
      0004BF                        605 _CheckTimeout:
      0004BF AF 83            [24]  606 	mov	r7,dph
      0004C1 E5 82            [12]  607 	mov	a,dpl
      0004C3 90 01 21         [24]  608 	mov	dptr,#_CheckTimeout_Start_65536_19
      0004C6 F0               [24]  609 	movx	@dptr,a
      0004C7 EF               [12]  610 	mov	a,r7
      0004C8 A3               [24]  611 	inc	dptr
      0004C9 F0               [24]  612 	movx	@dptr,a
                                    613 ;	src/mc96f8x16_tim.c:41: if(Start + Timeout > Start)
      0004CA 90 01 1F         [24]  614 	mov	dptr,#_CheckTimeout_PARM_2
      0004CD E0               [24]  615 	movx	a,@dptr
      0004CE FE               [12]  616 	mov	r6,a
      0004CF A3               [24]  617 	inc	dptr
      0004D0 E0               [24]  618 	movx	a,@dptr
      0004D1 FF               [12]  619 	mov	r7,a
      0004D2 90 01 21         [24]  620 	mov	dptr,#_CheckTimeout_Start_65536_19
      0004D5 E0               [24]  621 	movx	a,@dptr
      0004D6 FC               [12]  622 	mov	r4,a
      0004D7 A3               [24]  623 	inc	dptr
      0004D8 E0               [24]  624 	movx	a,@dptr
      0004D9 FD               [12]  625 	mov	r5,a
      0004DA EE               [12]  626 	mov	a,r6
      0004DB 2C               [12]  627 	add	a,r4
      0004DC FA               [12]  628 	mov	r2,a
      0004DD EF               [12]  629 	mov	a,r7
      0004DE 3D               [12]  630 	addc	a,r5
      0004DF FB               [12]  631 	mov	r3,a
      0004E0 C3               [12]  632 	clr	c
      0004E1 EC               [12]  633 	mov	a,r4
      0004E2 9A               [12]  634 	subb	a,r2
      0004E3 ED               [12]  635 	mov	a,r5
      0004E4 9B               [12]  636 	subb	a,r3
      0004E5 50 34            [24]  637 	jnc	00109$
                                    638 ;	src/mc96f8x16_tim.c:43: if(GetTick() < (Start + Timeout))
      0004E7 C0 07            [24]  639 	push	ar7
      0004E9 C0 06            [24]  640 	push	ar6
      0004EB C0 05            [24]  641 	push	ar5
      0004ED C0 04            [24]  642 	push	ar4
      0004EF 12 03 EF         [24]  643 	lcall	_GetTick
      0004F2 AA 82            [24]  644 	mov	r2,dpl
      0004F4 AB 83            [24]  645 	mov	r3,dph
      0004F6 D0 04            [24]  646 	pop	ar4
      0004F8 D0 05            [24]  647 	pop	ar5
      0004FA D0 06            [24]  648 	pop	ar6
      0004FC D0 07            [24]  649 	pop	ar7
      0004FE EE               [12]  650 	mov	a,r6
      0004FF 2C               [12]  651 	add	a,r4
      000500 F8               [12]  652 	mov	r0,a
      000501 EF               [12]  653 	mov	a,r7
      000502 3D               [12]  654 	addc	a,r5
      000503 F9               [12]  655 	mov	r1,a
      000504 C3               [12]  656 	clr	c
      000505 EA               [12]  657 	mov	a,r2
      000506 98               [12]  658 	subb	a,r0
      000507 EB               [12]  659 	mov	a,r3
      000508 99               [12]  660 	subb	a,r1
      000509 50 08            [24]  661 	jnc	00102$
                                    662 ;	src/mc96f8x16_tim.c:45: ret = HAL_OK;
      00050B 90 01 23         [24]  663 	mov	dptr,#_CheckTimeout_ret_65536_20
      00050E 74 01            [12]  664 	mov	a,#0x01
      000510 F0               [24]  665 	movx	@dptr,a
      000511 80 5A            [24]  666 	sjmp	00110$
      000513                        667 00102$:
                                    668 ;	src/mc96f8x16_tim.c:49: ret = HAL_TIMEOUT;
      000513 90 01 23         [24]  669 	mov	dptr,#_CheckTimeout_ret_65536_20
      000516 74 02            [12]  670 	mov	a,#0x02
      000518 F0               [24]  671 	movx	@dptr,a
      000519 80 52            [24]  672 	sjmp	00110$
      00051B                        673 00109$:
                                    674 ;	src/mc96f8x16_tim.c:54: if((GetTick() < (Timeout - (0xFFFFU - Start))) || (GetTick() > Start))
      00051B C0 07            [24]  675 	push	ar7
      00051D C0 06            [24]  676 	push	ar6
      00051F C0 05            [24]  677 	push	ar5
      000521 C0 04            [24]  678 	push	ar4
      000523 12 03 EF         [24]  679 	lcall	_GetTick
      000526 AA 82            [24]  680 	mov	r2,dpl
      000528 AB 83            [24]  681 	mov	r3,dph
      00052A D0 04            [24]  682 	pop	ar4
      00052C D0 05            [24]  683 	pop	ar5
      00052E D0 06            [24]  684 	pop	ar6
      000530 D0 07            [24]  685 	pop	ar7
      000532 74 FF            [12]  686 	mov	a,#0xff
      000534 C3               [12]  687 	clr	c
      000535 9C               [12]  688 	subb	a,r4
      000536 F8               [12]  689 	mov	r0,a
      000537 74 FF            [12]  690 	mov	a,#0xff
      000539 9D               [12]  691 	subb	a,r5
      00053A F9               [12]  692 	mov	r1,a
      00053B EE               [12]  693 	mov	a,r6
      00053C C3               [12]  694 	clr	c
      00053D 98               [12]  695 	subb	a,r0
      00053E FE               [12]  696 	mov	r6,a
      00053F EF               [12]  697 	mov	a,r7
      000540 99               [12]  698 	subb	a,r1
      000541 FF               [12]  699 	mov	r7,a
      000542 C3               [12]  700 	clr	c
      000543 EA               [12]  701 	mov	a,r2
      000544 9E               [12]  702 	subb	a,r6
      000545 EB               [12]  703 	mov	a,r3
      000546 9F               [12]  704 	subb	a,r7
      000547 40 16            [24]  705 	jc	00104$
      000549 C0 05            [24]  706 	push	ar5
      00054B C0 04            [24]  707 	push	ar4
      00054D 12 03 EF         [24]  708 	lcall	_GetTick
      000550 AE 82            [24]  709 	mov	r6,dpl
      000552 AF 83            [24]  710 	mov	r7,dph
      000554 D0 04            [24]  711 	pop	ar4
      000556 D0 05            [24]  712 	pop	ar5
      000558 C3               [12]  713 	clr	c
      000559 EC               [12]  714 	mov	a,r4
      00055A 9E               [12]  715 	subb	a,r6
      00055B ED               [12]  716 	mov	a,r5
      00055C 9F               [12]  717 	subb	a,r7
      00055D 50 08            [24]  718 	jnc	00105$
      00055F                        719 00104$:
                                    720 ;	src/mc96f8x16_tim.c:56: ret = HAL_OK;
      00055F 90 01 23         [24]  721 	mov	dptr,#_CheckTimeout_ret_65536_20
      000562 74 01            [12]  722 	mov	a,#0x01
      000564 F0               [24]  723 	movx	@dptr,a
      000565 80 06            [24]  724 	sjmp	00110$
      000567                        725 00105$:
                                    726 ;	src/mc96f8x16_tim.c:60: ret = HAL_TIMEOUT;
      000567 90 01 23         [24]  727 	mov	dptr,#_CheckTimeout_ret_65536_20
      00056A 74 02            [12]  728 	mov	a,#0x02
      00056C F0               [24]  729 	movx	@dptr,a
      00056D                        730 00110$:
                                    731 ;	src/mc96f8x16_tim.c:63: return ret;
      00056D 90 01 23         [24]  732 	mov	dptr,#_CheckTimeout_ret_65536_20
      000570 E0               [24]  733 	movx	a,@dptr
                                    734 ;	src/mc96f8x16_tim.c:64: }
      000571 F5 82            [12]  735 	mov	dpl,a
      000573 22               [24]  736 	ret
                                    737 	.area CSEG    (CODE)
                                    738 	.area CONST   (CODE)
                                    739 	.area XINIT   (CODE)
      000910                        740 __xinit__Tick:
      000910 00 00                  741 	.byte #0x00, #0x00	; 0
                                    742 	.area CABS    (ABS,CODE)
