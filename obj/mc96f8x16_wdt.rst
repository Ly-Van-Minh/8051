                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.1.14 #12827 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module mc96f8x16_wdt
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
                                    154 	.globl _WDT_Config
                                    155 	.globl _WDT_Clear
                                    156 ;--------------------------------------------------------
                                    157 ; special function registers
                                    158 ;--------------------------------------------------------
                                    159 	.area RSEG    (ABS,DATA)
      000000                        160 	.org 0x0000
                           000080   161 _P0	=	0x0080
                           0000A1   162 _P0IO	=	0x00a1
                           000091   163 _P0OD	=	0x0091
                           0000AC   164 _P0PU	=	0x00ac
                           0000DE   165 _P03DB	=	0x00de
                           000088   166 _P1	=	0x0088
                           0000B1   167 _P1IO	=	0x00b1
                           000092   168 _P1OD	=	0x0092
                           0000AD   169 _P1PU	=	0x00ad
                           0000DF   170 _P12DB	=	0x00df
                           000090   171 _P2	=	0x0090
                           0000B9   172 _P2IO	=	0x00b9
                           000093   173 _P2OD	=	0x0093
                           0000AE   174 _P2PU	=	0x00ae
                           000098   175 _P3	=	0x0098
                           0000C1   176 _P3IO	=	0x00c1
                           000094   177 _P3OD	=	0x0094
                           0000AF   178 _P3PU	=	0x00af
                           0000D3   179 _P0FSR	=	0x00d3
                           0000D4   180 _P1FSRL	=	0x00d4
                           0000D5   181 _P1FSRH	=	0x00d5
                           0000D6   182 _P2FSR	=	0x00d6
                           0000D7   183 _P3FSR	=	0x00d7
                           0000A8   184 _IE	=	0x00a8
                           0000A9   185 _IE1	=	0x00a9
                           0000AA   186 _IE2	=	0x00aa
                           0000AB   187 _IE3	=	0x00ab
                           0000B8   188 _IP	=	0x00b8
                           0000F8   189 _IP1	=	0x00f8
                           0000A0   190 _IIFLAG	=	0x00a0
                           0000C0   191 _EIFLAG0	=	0x00c0
                           0000B0   192 _EIFLAG1	=	0x00b0
                           0000A4   193 _EIPOL0L	=	0x00a4
                           0000A5   194 _EIPOL0H	=	0x00a5
                           0000A6   195 _EIPOL1	=	0x00a6
                           0000A7   196 _EIPOL2	=	0x00a7
                           00008A   197 _SCCR	=	0x008a
                           0000C8   198 _OSCCR	=	0x00c8
                           00008C   199 _BITCNT	=	0x008c
                           00008B   200 _BITCR	=	0x008b
                           0000E8   201 _RSTFR	=	0x00e8
                           000087   202 _PCON	=	0x0087
                           0000D8   203 _LVRCR	=	0x00d8
                           000086   204 _LVICR	=	0x0086
                           00008E   205 _WDTDR	=	0x008e
                           00008E   206 _WDTCNT	=	0x008e
                           00008D   207 _WDTCR	=	0x008d
                           000089   208 _WTDR	=	0x0089
                           000089   209 _WTCNT	=	0x0089
                           000096   210 _WTCR	=	0x0096
                           0000B2   211 _T0CR	=	0x00b2
                           0000B3   212 _T0CNT	=	0x00b3
                           0000B4   213 _T0DR	=	0x00b4
                           0000B4   214 _T0CDR	=	0x00b4
                           0000BA   215 _T1CRL	=	0x00ba
                           0000BB   216 _T1CRH	=	0x00bb
                           0000BC   217 _T1ADRL	=	0x00bc
                           0000BD   218 _T1ADRH	=	0x00bd
                           0000BE   219 _T1BDRL	=	0x00be
                           0000BF   220 _T1BDRH	=	0x00bf
                           0000C2   221 _T2CRL	=	0x00c2
                           0000C3   222 _T2CRH	=	0x00c3
                           0000C4   223 _T2ADRL	=	0x00c4
                           0000C5   224 _T2ADRH	=	0x00c5
                           0000C6   225 _T2BDRL	=	0x00c6
                           0000C7   226 _T2BDRH	=	0x00c7
                           00008F   227 _BUZDR	=	0x008f
                           000097   228 _BUZCR	=	0x0097
                           00009C   229 _ADCCRL	=	0x009c
                           00009D   230 _ADCCRH	=	0x009d
                           00009E   231 _ADCDRL	=	0x009e
                           00009F   232 _ADCDRH	=	0x009f
                           0000F2   233 _ADWRCR0	=	0x00f2
                           0000F3   234 _ADWRCR1	=	0x00f3
                           0000F4   235 _ADWRCR2	=	0x00f4
                           0000F5   236 _ADWRCR3	=	0x00f5
                           0000F6   237 _ADWCRL	=	0x00f6
                           0000F7   238 _ADWCRH	=	0x00f7
                           0000DC   239 _ADWIFRL	=	0x00dc
                           0000DD   240 _ADWIFRH	=	0x00dd
                           0000B5   241 _SPICR	=	0x00b5
                           0000B6   242 _SPIDR	=	0x00b6
                           0000B7   243 _SPISR	=	0x00b7
                           0000E2   244 _UARTCR1	=	0x00e2
                           0000E3   245 _UARTCR2	=	0x00e3
                           0000E4   246 _UARTCR3	=	0x00e4
                           0000E5   247 _UARTST	=	0x00e5
                           0000E6   248 _UARTBD	=	0x00e6
                           0000E7   249 _UARTDR	=	0x00e7
                           0000E9   250 _I2CCR	=	0x00e9
                           0000EA   251 _I2CSR	=	0x00ea
                           0000EB   252 _I2CSAR0	=	0x00eb
                           0000F1   253 _I2CSAR1	=	0x00f1
                           0000EC   254 _I2CDR	=	0x00ec
                           0000ED   255 _I2CSDHR	=	0x00ed
                           0000EE   256 _I2CSCLR	=	0x00ee
                           0000EF   257 _I2CSCHR	=	0x00ef
                           0000FA   258 _FSADRH	=	0x00fa
                           0000FB   259 _FSADRM	=	0x00fb
                           0000FC   260 _FSADRL	=	0x00fc
                           0000FD   261 _FIDR	=	0x00fd
                           0000FE   262 _FMCR	=	0x00fe
                           0000E0   263 _ACC	=	0x00e0
                           0000F0   264 _B	=	0x00f0
                           0000D0   265 _PSW	=	0x00d0
                           000081   266 _SP	=	0x0081
                           000082   267 _DPL	=	0x0082
                           000083   268 _DPH	=	0x0083
                           000084   269 _DPL1	=	0x0084
                           000085   270 _DPH1	=	0x0085
                           0000A2   271 _EO	=	0x00a2
                                    272 ;--------------------------------------------------------
                                    273 ; special function bits
                                    274 ;--------------------------------------------------------
                                    275 	.area RSEG    (ABS,DATA)
      000000                        276 	.org 0x0000
                           000080   277 _P00	=	0x0080
                           000081   278 _P01	=	0x0081
                           000082   279 _P02	=	0x0082
                           000083   280 _P03	=	0x0083
                           000084   281 _P04	=	0x0084
                           000085   282 _P05	=	0x0085
                           000086   283 _P06	=	0x0086
                           000087   284 _P07	=	0x0087
                           000088   285 _P10	=	0x0088
                           000089   286 _P11	=	0x0089
                           00008A   287 _P12	=	0x008a
                           00008B   288 _P13	=	0x008b
                           00008C   289 _P14	=	0x008c
                           00008D   290 _P15	=	0x008d
                           00008E   291 _P16	=	0x008e
                           00008F   292 _P17	=	0x008f
                           000090   293 _P20	=	0x0090
                           000091   294 _P21	=	0x0091
                           000092   295 _P22	=	0x0092
                           000093   296 _P23	=	0x0093
                           000094   297 _P24	=	0x0094
                           000095   298 _P25	=	0x0095
                           000096   299 _P26	=	0x0096
                           000097   300 _P27	=	0x0097
                           000098   301 _P30	=	0x0098
                           000099   302 _P31	=	0x0099
                           00009A   303 _P32	=	0x009a
                           00009B   304 _P33	=	0x009b
                           00009C   305 _P34	=	0x009c
                           00009D   306 _P35	=	0x009d
                           00009E   307 _P36	=	0x009e
                           00009F   308 _P37	=	0x009f
                                    309 ;--------------------------------------------------------
                                    310 ; overlayable register banks
                                    311 ;--------------------------------------------------------
                                    312 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        313 	.ds 8
                                    314 ;--------------------------------------------------------
                                    315 ; internal ram data
                                    316 ;--------------------------------------------------------
                                    317 	.area DSEG    (DATA)
                                    318 ;--------------------------------------------------------
                                    319 ; overlayable items in internal ram 
                                    320 ;--------------------------------------------------------
                                    321 ;--------------------------------------------------------
                                    322 ; indirectly addressable internal ram data
                                    323 ;--------------------------------------------------------
                                    324 	.area ISEG    (DATA)
                                    325 ;--------------------------------------------------------
                                    326 ; absolute internal ram data
                                    327 ;--------------------------------------------------------
                                    328 	.area IABS    (ABS,DATA)
                                    329 	.area IABS    (ABS,DATA)
                                    330 ;--------------------------------------------------------
                                    331 ; bit data
                                    332 ;--------------------------------------------------------
                                    333 	.area BSEG    (BIT)
                                    334 ;--------------------------------------------------------
                                    335 ; paged external ram data
                                    336 ;--------------------------------------------------------
                                    337 	.area PSEG    (PAG,XDATA)
                                    338 ;--------------------------------------------------------
                                    339 ; external ram data
                                    340 ;--------------------------------------------------------
                                    341 	.area XSEG    (XDATA)
      00010F                        342 _WDT_Config_Time_65536_3:
      00010F                        343 	.ds 1
                                    344 ;--------------------------------------------------------
                                    345 ; absolute external ram data
                                    346 ;--------------------------------------------------------
                                    347 	.area XABS    (ABS,XDATA)
                                    348 ;--------------------------------------------------------
                                    349 ; external initialized ram data
                                    350 ;--------------------------------------------------------
                                    351 	.area XISEG   (XDATA)
                                    352 	.area HOME    (CODE)
                                    353 	.area GSINIT0 (CODE)
                                    354 	.area GSINIT1 (CODE)
                                    355 	.area GSINIT2 (CODE)
                                    356 	.area GSINIT3 (CODE)
                                    357 	.area GSINIT4 (CODE)
                                    358 	.area GSINIT5 (CODE)
                                    359 	.area GSINIT  (CODE)
                                    360 	.area GSFINAL (CODE)
                                    361 	.area CSEG    (CODE)
                                    362 ;--------------------------------------------------------
                                    363 ; global & static initialisations
                                    364 ;--------------------------------------------------------
                                    365 	.area HOME    (CODE)
                                    366 	.area GSINIT  (CODE)
                                    367 	.area GSFINAL (CODE)
                                    368 	.area GSINIT  (CODE)
                                    369 ;--------------------------------------------------------
                                    370 ; Home
                                    371 ;--------------------------------------------------------
                                    372 	.area HOME    (CODE)
                                    373 	.area HOME    (CODE)
                                    374 ;--------------------------------------------------------
                                    375 ; code
                                    376 ;--------------------------------------------------------
                                    377 	.area CSEG    (CODE)
                                    378 ;------------------------------------------------------------
                                    379 ;Allocation info for local variables in function 'WDT_Config'
                                    380 ;------------------------------------------------------------
                                    381 ;Time                      Allocated with name '_WDT_Config_Time_65536_3'
                                    382 ;------------------------------------------------------------
                                    383 ;	src/mc96f8x16_wdt.c:4: void WDT_Config(uint8_t Time)
                                    384 ;	-----------------------------------------
                                    385 ;	 function WDT_Config
                                    386 ;	-----------------------------------------
      00030B                        387 _WDT_Config:
                           000007   388 	ar7 = 0x07
                           000006   389 	ar6 = 0x06
                           000005   390 	ar5 = 0x05
                           000004   391 	ar4 = 0x04
                           000003   392 	ar3 = 0x03
                           000002   393 	ar2 = 0x02
                           000001   394 	ar1 = 0x01
                           000000   395 	ar0 = 0x00
      00030B E5 82            [12]  396 	mov	a,dpl
      00030D 90 01 0F         [24]  397 	mov	dptr,#_WDT_Config_Time_65536_3
      000310 F0               [24]  398 	movx	@dptr,a
                                    399 ;	src/mc96f8x16_wdt.c:6: WDTDR = Time;
      000311 E0               [24]  400 	movx	a,@dptr
      000312 F5 8E            [12]  401 	mov	_WDTDR,a
                                    402 ;	src/mc96f8x16_wdt.c:7: WDTCR = WDTCK | WDTCL | WDTRSON | WDTEN; 
      000314 75 8D E2         [24]  403 	mov	_WDTCR,#0xe2
                                    404 ;	src/mc96f8x16_wdt.c:8: }
      000317 22               [24]  405 	ret
                                    406 ;------------------------------------------------------------
                                    407 ;Allocation info for local variables in function 'WDT_Clear'
                                    408 ;------------------------------------------------------------
                                    409 ;	src/mc96f8x16_wdt.c:10: void WDT_Clear(void)
                                    410 ;	-----------------------------------------
                                    411 ;	 function WDT_Clear
                                    412 ;	-----------------------------------------
      000318                        413 _WDT_Clear:
                                    414 ;	src/mc96f8x16_wdt.c:12: WDTCR |= WDTCL;
      000318 43 8D 20         [24]  415 	orl	_WDTCR,#0x20
                                    416 ;	src/mc96f8x16_wdt.c:13: }
      00031B 22               [24]  417 	ret
                                    418 	.area CSEG    (CODE)
                                    419 	.area CONST   (CODE)
                                    420 	.area XINIT   (CODE)
                                    421 	.area CABS    (ABS,CODE)
