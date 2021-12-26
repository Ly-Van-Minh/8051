                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.1.14 #12827 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module main
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _main
                                     12 	.globl _I2C_Config
                                     13 	.globl _UART_Config
                                     14 	.globl _GPIOPin_Toggle
                                     15 	.globl _GPIOPin_Write
                                     16 	.globl _GPIO_Config
                                     17 	.globl _Delayms
                                     18 	.globl _SysTick_Init
                                     19 	.globl _SysClock_Config
                                     20 	.globl _P37
                                     21 	.globl _P36
                                     22 	.globl _P35
                                     23 	.globl _P34
                                     24 	.globl _P33
                                     25 	.globl _P32
                                     26 	.globl _P31
                                     27 	.globl _P30
                                     28 	.globl _P27
                                     29 	.globl _P26
                                     30 	.globl _P25
                                     31 	.globl _P24
                                     32 	.globl _P23
                                     33 	.globl _P22
                                     34 	.globl _P21
                                     35 	.globl _P20
                                     36 	.globl _P17
                                     37 	.globl _P16
                                     38 	.globl _P15
                                     39 	.globl _P14
                                     40 	.globl _P13
                                     41 	.globl _P12
                                     42 	.globl _P11
                                     43 	.globl _P10
                                     44 	.globl _P07
                                     45 	.globl _P06
                                     46 	.globl _P05
                                     47 	.globl _P04
                                     48 	.globl _P03
                                     49 	.globl _P02
                                     50 	.globl _P01
                                     51 	.globl _P00
                                     52 	.globl _EO
                                     53 	.globl _DPH1
                                     54 	.globl _DPL1
                                     55 	.globl _DPH
                                     56 	.globl _DPL
                                     57 	.globl _SP
                                     58 	.globl _PSW
                                     59 	.globl _B
                                     60 	.globl _ACC
                                     61 	.globl _FMCR
                                     62 	.globl _FIDR
                                     63 	.globl _FSADRL
                                     64 	.globl _FSADRM
                                     65 	.globl _FSADRH
                                     66 	.globl _I2CSCHR
                                     67 	.globl _I2CSCLR
                                     68 	.globl _I2CSDHR
                                     69 	.globl _I2CDR
                                     70 	.globl _I2CSAR1
                                     71 	.globl _I2CSAR0
                                     72 	.globl _I2CSR
                                     73 	.globl _I2CCR
                                     74 	.globl _UARTDR
                                     75 	.globl _UARTBD
                                     76 	.globl _UARTST
                                     77 	.globl _UARTCR3
                                     78 	.globl _UARTCR2
                                     79 	.globl _UARTCR1
                                     80 	.globl _SPISR
                                     81 	.globl _SPIDR
                                     82 	.globl _SPICR
                                     83 	.globl _ADWIFRH
                                     84 	.globl _ADWIFRL
                                     85 	.globl _ADWCRH
                                     86 	.globl _ADWCRL
                                     87 	.globl _ADWRCR3
                                     88 	.globl _ADWRCR2
                                     89 	.globl _ADWRCR1
                                     90 	.globl _ADWRCR0
                                     91 	.globl _ADCDRH
                                     92 	.globl _ADCDRL
                                     93 	.globl _ADCCRH
                                     94 	.globl _ADCCRL
                                     95 	.globl _BUZCR
                                     96 	.globl _BUZDR
                                     97 	.globl _T2BDRH
                                     98 	.globl _T2BDRL
                                     99 	.globl _T2ADRH
                                    100 	.globl _T2ADRL
                                    101 	.globl _T2CRH
                                    102 	.globl _T2CRL
                                    103 	.globl _T1BDRH
                                    104 	.globl _T1BDRL
                                    105 	.globl _T1ADRH
                                    106 	.globl _T1ADRL
                                    107 	.globl _T1CRH
                                    108 	.globl _T1CRL
                                    109 	.globl _T0CDR
                                    110 	.globl _T0DR
                                    111 	.globl _T0CNT
                                    112 	.globl _T0CR
                                    113 	.globl _WTCR
                                    114 	.globl _WTCNT
                                    115 	.globl _WTDR
                                    116 	.globl _WDTCR
                                    117 	.globl _WDTCNT
                                    118 	.globl _WDTDR
                                    119 	.globl _LVICR
                                    120 	.globl _LVRCR
                                    121 	.globl _PCON
                                    122 	.globl _RSTFR
                                    123 	.globl _BITCR
                                    124 	.globl _BITCNT
                                    125 	.globl _OSCCR
                                    126 	.globl _SCCR
                                    127 	.globl _EIPOL2
                                    128 	.globl _EIPOL1
                                    129 	.globl _EIPOL0H
                                    130 	.globl _EIPOL0L
                                    131 	.globl _EIFLAG1
                                    132 	.globl _EIFLAG0
                                    133 	.globl _IIFLAG
                                    134 	.globl _IP1
                                    135 	.globl _IP
                                    136 	.globl _IE3
                                    137 	.globl _IE2
                                    138 	.globl _IE1
                                    139 	.globl _IE
                                    140 	.globl _P3FSR
                                    141 	.globl _P2FSR
                                    142 	.globl _P1FSRH
                                    143 	.globl _P1FSRL
                                    144 	.globl _P0FSR
                                    145 	.globl _P3PU
                                    146 	.globl _P3OD
                                    147 	.globl _P3IO
                                    148 	.globl _P3
                                    149 	.globl _P2PU
                                    150 	.globl _P2OD
                                    151 	.globl _P2IO
                                    152 	.globl _P2
                                    153 	.globl _P12DB
                                    154 	.globl _P1PU
                                    155 	.globl _P1OD
                                    156 	.globl _P1IO
                                    157 	.globl _P1
                                    158 	.globl _P03DB
                                    159 	.globl _P0PU
                                    160 	.globl _P0OD
                                    161 	.globl _P0IO
                                    162 	.globl _P0
                                    163 	.globl _i
                                    164 	.globl _Buf
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
                                    327 ;--------------------------------------------------------
                                    328 ; overlayable items in internal ram 
                                    329 ;--------------------------------------------------------
                                    330 ;--------------------------------------------------------
                                    331 ; Stack segment in internal ram 
                                    332 ;--------------------------------------------------------
                                    333 	.area	SSEG
      000080                        334 __start__stack:
      000080                        335 	.ds	1
                                    336 
                                    337 ;--------------------------------------------------------
                                    338 ; indirectly addressable internal ram data
                                    339 ;--------------------------------------------------------
                                    340 	.area ISEG    (DATA)
                                    341 ;--------------------------------------------------------
                                    342 ; absolute internal ram data
                                    343 ;--------------------------------------------------------
                                    344 	.area IABS    (ABS,DATA)
                                    345 	.area IABS    (ABS,DATA)
                                    346 ;--------------------------------------------------------
                                    347 ; bit data
                                    348 ;--------------------------------------------------------
                                    349 	.area BSEG    (BIT)
                                    350 ;--------------------------------------------------------
                                    351 ; paged external ram data
                                    352 ;--------------------------------------------------------
                                    353 	.area PSEG    (PAG,XDATA)
                                    354 ;--------------------------------------------------------
                                    355 ; external ram data
                                    356 ;--------------------------------------------------------
                                    357 	.area XSEG    (XDATA)
      000112                        358 _Buf::
      000112                        359 	.ds 1
      000113                        360 _main_uart_65536_58:
      000113                        361 	.ds 4
      000117                        362 _main_i2c_65536_58:
      000117                        363 	.ds 6
                                    364 ;--------------------------------------------------------
                                    365 ; absolute external ram data
                                    366 ;--------------------------------------------------------
                                    367 	.area XABS    (ABS,XDATA)
                                    368 ;--------------------------------------------------------
                                    369 ; external initialized ram data
                                    370 ;--------------------------------------------------------
                                    371 	.area XISEG   (XDATA)
      00013B                        372 _i::
      00013B                        373 	.ds 2
                                    374 	.area HOME    (CODE)
                                    375 	.area GSINIT0 (CODE)
                                    376 	.area GSINIT1 (CODE)
                                    377 	.area GSINIT2 (CODE)
                                    378 	.area GSINIT3 (CODE)
                                    379 	.area GSINIT4 (CODE)
                                    380 	.area GSINIT5 (CODE)
                                    381 	.area GSINIT  (CODE)
                                    382 	.area GSFINAL (CODE)
                                    383 	.area CSEG    (CODE)
                                    384 ;--------------------------------------------------------
                                    385 ; interrupt vector 
                                    386 ;--------------------------------------------------------
                                    387 	.area HOME    (CODE)
      000000                        388 __interrupt_vect:
      000000 02 00 06         [24]  389 	ljmp	__sdcc_gsinit_startup
                                    390 ;--------------------------------------------------------
                                    391 ; global & static initialisations
                                    392 ;--------------------------------------------------------
                                    393 	.area HOME    (CODE)
                                    394 	.area GSINIT  (CODE)
                                    395 	.area GSFINAL (CODE)
                                    396 	.area GSINIT  (CODE)
                                    397 	.globl __sdcc_gsinit_startup
                                    398 	.globl __sdcc_program_startup
                                    399 	.globl __start__stack
                                    400 	.globl __mcs51_genXINIT
                                    401 	.globl __mcs51_genXRAMCLEAR
                                    402 	.globl __mcs51_genRAMCLEAR
                                    403 	.area GSFINAL (CODE)
      00005F 02 00 03         [24]  404 	ljmp	__sdcc_program_startup
                                    405 ;--------------------------------------------------------
                                    406 ; Home
                                    407 ;--------------------------------------------------------
                                    408 	.area HOME    (CODE)
                                    409 	.area HOME    (CODE)
      000003                        410 __sdcc_program_startup:
      000003 02 03 59         [24]  411 	ljmp	_main
                                    412 ;	return from main will return to caller
                                    413 ;--------------------------------------------------------
                                    414 ; code
                                    415 ;--------------------------------------------------------
                                    416 	.area CSEG    (CODE)
                                    417 ;------------------------------------------------------------
                                    418 ;Allocation info for local variables in function 'main'
                                    419 ;------------------------------------------------------------
                                    420 ;uart                      Allocated with name '_main_uart_65536_58'
                                    421 ;i2c                       Allocated with name '_main_i2c_65536_58'
                                    422 ;------------------------------------------------------------
                                    423 ;	src/main.c:20: int main(void)
                                    424 ;	-----------------------------------------
                                    425 ;	 function main
                                    426 ;	-----------------------------------------
      000359                        427 _main:
                           000007   428 	ar7 = 0x07
                           000006   429 	ar6 = 0x06
                           000005   430 	ar5 = 0x05
                           000004   431 	ar4 = 0x04
                           000003   432 	ar3 = 0x03
                           000002   433 	ar2 = 0x02
                           000001   434 	ar1 = 0x01
                           000000   435 	ar0 = 0x00
                                    436 ;	src/main.c:25: uart.Baud       = 12;
      000359 90 01 13         [24]  437 	mov	dptr,#_main_uart_65536_58
      00035C 74 0C            [12]  438 	mov	a,#0x0c
      00035E F0               [24]  439 	movx	@dptr,a
                                    440 ;	src/main.c:26: uart.Parity     = UART_NO_PARITY;
      00035F 90 01 14         [24]  441 	mov	dptr,#(_main_uart_65536_58 + 0x0001)
      000362 E4               [12]  442 	clr	a
      000363 F0               [24]  443 	movx	@dptr,a
                                    444 ;	src/main.c:27: uart.DataLength = UART_DATA_LEN_8BIT;
      000364 90 01 15         [24]  445 	mov	dptr,#(_main_uart_65536_58 + 0x0002)
      000367 74 03            [12]  446 	mov	a,#0x03
      000369 F0               [24]  447 	movx	@dptr,a
                                    448 ;	src/main.c:28: uart.StopBits   = UART_1_STOP_BIT;
      00036A 90 01 16         [24]  449 	mov	dptr,#(_main_uart_65536_58 + 0x0003)
      00036D E4               [12]  450 	clr	a
      00036E F0               [24]  451 	movx	@dptr,a
                                    452 ;	src/main.c:35: cli();
      00036F 53 A8 7F         [24]  453 	anl	_IE,#0x7f
                                    454 ;	src/main.c:37: SysClock_Config();
      000372 12 03 D8         [24]  455 	lcall	_SysClock_Config
                                    456 ;	src/main.c:38: UART_Config(&uart);
      000375 90 01 13         [24]  457 	mov	dptr,#_main_uart_65536_58
      000378 75 F0 00         [24]  458 	mov	b,#0x00
      00037B 12 05 74         [24]  459 	lcall	_UART_Config
                                    460 ;	src/main.c:39: I2C_Config(&i2c);
      00037E 90 01 17         [24]  461 	mov	dptr,#_main_i2c_65536_58
      000381 75 F0 00         [24]  462 	mov	b,#0x00
      000384 12 00 62         [24]  463 	lcall	_I2C_Config
                                    464 ;	src/main.c:40: GPIO_Config();
      000387 12 07 BD         [24]  465 	lcall	_GPIO_Config
                                    466 ;	src/main.c:41: SysTick_Init();
      00038A 12 03 E0         [24]  467 	lcall	_SysTick_Init
                                    468 ;	src/main.c:44: sei();
      00038D 43 A8 80         [24]  469 	orl	_IE,#0x80
                                    470 ;	src/main.c:45: GPIOPin_Write(GPIO_LED2, GPIO_SET);
      000390 90 01 35         [24]  471 	mov	dptr,#_GPIOPin_Write_PARM_2
      000393 74 01            [12]  472 	mov	a,#0x01
      000395 F0               [24]  473 	movx	@dptr,a
      000396 75 82 01         [24]  474 	mov	dpl,#0x01
      000399 12 07 D6         [24]  475 	lcall	_GPIOPin_Write
                                    476 ;	src/main.c:46: GPIOPin_Write(GPIO_COM_MODE, GPIO_RESET);
      00039C 90 01 35         [24]  477 	mov	dptr,#_GPIOPin_Write_PARM_2
      00039F E4               [12]  478 	clr	a
      0003A0 F0               [24]  479 	movx	@dptr,a
      0003A1 75 82 05         [24]  480 	mov	dpl,#0x05
      0003A4 12 07 D6         [24]  481 	lcall	_GPIOPin_Write
                                    482 ;	src/main.c:47: GPIOPin_Write(GPIO_DCDC_EN, GPIO_SET);
      0003A7 90 01 35         [24]  483 	mov	dptr,#_GPIOPin_Write_PARM_2
      0003AA 74 01            [12]  484 	mov	a,#0x01
      0003AC F0               [24]  485 	movx	@dptr,a
      0003AD 75 82 04         [24]  486 	mov	dpl,#0x04
      0003B0 12 07 D6         [24]  487 	lcall	_GPIOPin_Write
                                    488 ;	src/main.c:48: GPIOPin_Write(GPIO_5V_CNTL, GPIO_SET);
      0003B3 90 01 35         [24]  489 	mov	dptr,#_GPIOPin_Write_PARM_2
      0003B6 74 01            [12]  490 	mov	a,#0x01
      0003B8 F0               [24]  491 	movx	@dptr,a
      0003B9 75 82 03         [24]  492 	mov	dpl,#0x03
      0003BC 12 07 D6         [24]  493 	lcall	_GPIOPin_Write
                                    494 ;	src/main.c:50: while(1)
      0003BF                        495 00108$:
                                    496 ;	src/main.c:63: Delayms(2000);
      0003BF 90 07 D0         [24]  497 	mov	dptr,#0x07d0
      0003C2 12 04 2D         [24]  498 	lcall	_Delayms
                                    499 ;	src/main.c:64: UARTCR2 = (UARTCR2 & (~UARTCR2_RXE));
      0003C5 53 E3 FB         [24]  500 	anl	_UARTCR2,#0xfb
                                    501 ;	src/main.c:74: UARTCR2 = ((UARTCR2 & (~UARTCR2_RXE)) | UARTCR2_RXE);
      0003C8 74 FB            [12]  502 	mov	a,#0xfb
      0003CA 55 E3            [12]  503 	anl	a,_UARTCR2
      0003CC 44 04            [12]  504 	orl	a,#0x04
      0003CE F5 E3            [12]  505 	mov	_UARTCR2,a
                                    506 ;	src/main.c:88: GPIOPin_Toggle(GPIO_LED2);
      0003D0 75 82 01         [24]  507 	mov	dpl,#0x01
      0003D3 12 08 A3         [24]  508 	lcall	_GPIOPin_Toggle
                                    509 ;	src/main.c:108: }
      0003D6 80 E7            [24]  510 	sjmp	00108$
                                    511 	.area CSEG    (CODE)
                                    512 	.area CONST   (CODE)
                                    513 	.area XINIT   (CODE)
      00090E                        514 __xinit__i:
      00090E 00 00                  515 	.byte #0x00, #0x00	;  0
                                    516 	.area CABS    (ABS,CODE)
