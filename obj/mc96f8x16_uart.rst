                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.8.0 #10562 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module mc96f8x16_uart
                                      6 	.optsdcc -mmcs51 --model-small
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
                                    158 	.globl _UART_Config
                                    159 	.globl _UART_Transmit
                                    160 	.globl _UART_Receive
                                    161 ;--------------------------------------------------------
                                    162 ; special function registers
                                    163 ;--------------------------------------------------------
                                    164 	.area RSEG    (ABS,DATA)
      000000                        165 	.org 0x0000
      000000                        166 _P0::
      000000                        167 	.ds 1
      000001                        168 _P0IO::
      000001                        169 	.ds 1
      000002                        170 _P0OD::
      000002                        171 	.ds 1
      000003                        172 _P0PU::
      000003                        173 	.ds 1
      000004                        174 _P03DB::
      000004                        175 	.ds 1
      000005                        176 _P1::
      000005                        177 	.ds 1
      000006                        178 _P1IO::
      000006                        179 	.ds 1
      000007                        180 _P1OD::
      000007                        181 	.ds 1
      000008                        182 _P1PU::
      000008                        183 	.ds 1
      000009                        184 _P12DB::
      000009                        185 	.ds 1
      00000A                        186 _P2::
      00000A                        187 	.ds 1
      00000B                        188 _P2IO::
      00000B                        189 	.ds 1
      00000C                        190 _P2OD::
      00000C                        191 	.ds 1
      00000D                        192 _P2PU::
      00000D                        193 	.ds 1
      00000E                        194 _P3::
      00000E                        195 	.ds 1
      00000F                        196 _P3IO::
      00000F                        197 	.ds 1
      000010                        198 _P3OD::
      000010                        199 	.ds 1
      000011                        200 _P3PU::
      000011                        201 	.ds 1
      000012                        202 _P0FSR::
      000012                        203 	.ds 1
      000013                        204 _P1FSRL::
      000013                        205 	.ds 1
      000014                        206 _P1FSRH::
      000014                        207 	.ds 1
      000015                        208 _P2FSR::
      000015                        209 	.ds 1
      000016                        210 _P3FSR::
      000016                        211 	.ds 1
      000017                        212 _IE::
      000017                        213 	.ds 1
      000018                        214 _IE1::
      000018                        215 	.ds 1
      000019                        216 _IE2::
      000019                        217 	.ds 1
      00001A                        218 _IE3::
      00001A                        219 	.ds 1
      00001B                        220 _IP::
      00001B                        221 	.ds 1
      00001C                        222 _IP1::
      00001C                        223 	.ds 1
      00001D                        224 _IIFLAG::
      00001D                        225 	.ds 1
      00001E                        226 _EIFLAG0::
      00001E                        227 	.ds 1
      00001F                        228 _EIFLAG1::
      00001F                        229 	.ds 1
      000020                        230 _EIPOL0L::
      000020                        231 	.ds 1
      000021                        232 _EIPOL0H::
      000021                        233 	.ds 1
      000022                        234 _EIPOL1::
      000022                        235 	.ds 1
      000023                        236 _EIPOL2::
      000023                        237 	.ds 1
      000024                        238 _SCCR::
      000024                        239 	.ds 1
      000025                        240 _OSCCR::
      000025                        241 	.ds 1
      000026                        242 _BITCNT::
      000026                        243 	.ds 1
      000027                        244 _BITCR::
      000027                        245 	.ds 1
      000028                        246 _RSTFR::
      000028                        247 	.ds 1
      000029                        248 _PCON::
      000029                        249 	.ds 1
      00002A                        250 _LVRCR::
      00002A                        251 	.ds 1
      00002B                        252 _LVICR::
      00002B                        253 	.ds 1
      00002C                        254 _WDTDR::
      00002C                        255 	.ds 1
      00002D                        256 _WDTCNT::
      00002D                        257 	.ds 1
      00002E                        258 _WDTCR::
      00002E                        259 	.ds 1
      00002F                        260 _WTDR::
      00002F                        261 	.ds 1
      000030                        262 _WTCNT::
      000030                        263 	.ds 1
      000031                        264 _WTCR::
      000031                        265 	.ds 1
      000032                        266 _T0CR::
      000032                        267 	.ds 1
      000033                        268 _T0CNT::
      000033                        269 	.ds 1
      000034                        270 _T0DR::
      000034                        271 	.ds 1
      000035                        272 _T0CDR::
      000035                        273 	.ds 1
      000036                        274 _T1CRL::
      000036                        275 	.ds 1
      000037                        276 _T1CRH::
      000037                        277 	.ds 1
      000038                        278 _T1ADRL::
      000038                        279 	.ds 1
      000039                        280 _T1ADRH::
      000039                        281 	.ds 1
      00003A                        282 _T1BDRL::
      00003A                        283 	.ds 1
      00003B                        284 _T1BDRH::
      00003B                        285 	.ds 1
      00003C                        286 _T2CRL::
      00003C                        287 	.ds 1
      00003D                        288 _T2CRH::
      00003D                        289 	.ds 1
      00003E                        290 _T2ADRL::
      00003E                        291 	.ds 1
      00003F                        292 _T2ADRH::
      00003F                        293 	.ds 1
      000040                        294 _T2BDRL::
      000040                        295 	.ds 1
      000041                        296 _T2BDRH::
      000041                        297 	.ds 1
      000042                        298 _BUZDR::
      000042                        299 	.ds 1
      000043                        300 _BUZCR::
      000043                        301 	.ds 1
      000044                        302 _ADCCRL::
      000044                        303 	.ds 1
      000045                        304 _ADCCRH::
      000045                        305 	.ds 1
      000046                        306 _ADCDRL::
      000046                        307 	.ds 1
      000047                        308 _ADCDRH::
      000047                        309 	.ds 1
      000048                        310 _ADWRCR0::
      000048                        311 	.ds 1
      000049                        312 _ADWRCR1::
      000049                        313 	.ds 1
      00004A                        314 _ADWRCR2::
      00004A                        315 	.ds 1
      00004B                        316 _ADWRCR3::
      00004B                        317 	.ds 1
      00004C                        318 _ADWCRL::
      00004C                        319 	.ds 1
      00004D                        320 _ADWCRH::
      00004D                        321 	.ds 1
      00004E                        322 _ADWIFRL::
      00004E                        323 	.ds 1
      00004F                        324 _ADWIFRH::
      00004F                        325 	.ds 1
      000050                        326 _SPICR::
      000050                        327 	.ds 1
      000051                        328 _SPIDR::
      000051                        329 	.ds 1
      000052                        330 _SPISR::
      000052                        331 	.ds 1
      000053                        332 _UARTCR1::
      000053                        333 	.ds 1
      000054                        334 _UARTCR2::
      000054                        335 	.ds 1
      000055                        336 _UARTCR3::
      000055                        337 	.ds 1
      000056                        338 _UARTST::
      000056                        339 	.ds 1
      000057                        340 _UARTBD::
      000057                        341 	.ds 1
      000058                        342 _UARTDR::
      000058                        343 	.ds 1
      000059                        344 _I2CCR::
      000059                        345 	.ds 1
      00005A                        346 _I2CSR::
      00005A                        347 	.ds 1
      00005B                        348 _I2CSAR0::
      00005B                        349 	.ds 1
      00005C                        350 _I2CSAR1::
      00005C                        351 	.ds 1
      00005D                        352 _I2CDR::
      00005D                        353 	.ds 1
      00005E                        354 _I2CSDHR::
      00005E                        355 	.ds 1
      00005F                        356 _I2CSCLR::
      00005F                        357 	.ds 1
      000060                        358 _I2CSCHR::
      000060                        359 	.ds 1
      000061                        360 _FSADRH::
      000061                        361 	.ds 1
      000062                        362 _FSADRM::
      000062                        363 	.ds 1
      000063                        364 _FSADRL::
      000063                        365 	.ds 1
      000064                        366 _FIDR::
      000064                        367 	.ds 1
      000065                        368 _FMCR::
      000065                        369 	.ds 1
      000066                        370 _ACC::
      000066                        371 	.ds 1
      000067                        372 _B::
      000067                        373 	.ds 1
      000068                        374 _PSW::
      000068                        375 	.ds 1
      000069                        376 _SP::
      000069                        377 	.ds 1
      00006A                        378 _DPL::
      00006A                        379 	.ds 1
      00006B                        380 _DPH::
      00006B                        381 	.ds 1
      00006C                        382 _DPL1::
      00006C                        383 	.ds 1
      00006D                        384 _DPH1::
      00006D                        385 	.ds 1
      00006E                        386 _EO::
      00006E                        387 	.ds 1
                                    388 ;--------------------------------------------------------
                                    389 ; special function bits
                                    390 ;--------------------------------------------------------
                                    391 	.area RSEG    (ABS,DATA)
      000000                        392 	.org 0x0000
      000000                        393 _P00::
      000000                        394 	.ds 1
      000001                        395 _P01::
      000001                        396 	.ds 1
      000002                        397 _P02::
      000002                        398 	.ds 1
      000003                        399 _P03::
      000003                        400 	.ds 1
      000004                        401 _P04::
      000004                        402 	.ds 1
      000005                        403 _P05::
      000005                        404 	.ds 1
      000006                        405 _P06::
      000006                        406 	.ds 1
      000007                        407 _P07::
      000007                        408 	.ds 1
      000008                        409 _P10::
      000008                        410 	.ds 1
      000009                        411 _P11::
      000009                        412 	.ds 1
      00000A                        413 _P12::
      00000A                        414 	.ds 1
      00000B                        415 _P13::
      00000B                        416 	.ds 1
      00000C                        417 _P14::
      00000C                        418 	.ds 1
      00000D                        419 _P15::
      00000D                        420 	.ds 1
      00000E                        421 _P16::
      00000E                        422 	.ds 1
      00000F                        423 _P17::
      00000F                        424 	.ds 1
      000010                        425 _P20::
      000010                        426 	.ds 1
      000011                        427 _P21::
      000011                        428 	.ds 1
      000012                        429 _P22::
      000012                        430 	.ds 1
      000013                        431 _P23::
      000013                        432 	.ds 1
      000014                        433 _P24::
      000014                        434 	.ds 1
      000015                        435 _P25::
      000015                        436 	.ds 1
      000016                        437 _P26::
      000016                        438 	.ds 1
      000017                        439 _P27::
      000017                        440 	.ds 1
      000018                        441 _P30::
      000018                        442 	.ds 1
      000019                        443 _P31::
      000019                        444 	.ds 1
      00001A                        445 _P32::
      00001A                        446 	.ds 1
      00001B                        447 _P33::
      00001B                        448 	.ds 1
      00001C                        449 _P34::
      00001C                        450 	.ds 1
      00001D                        451 _P35::
      00001D                        452 	.ds 1
      00001E                        453 _P36::
      00001E                        454 	.ds 1
      00001F                        455 _P37::
      00001F                        456 	.ds 1
                                    457 ;--------------------------------------------------------
                                    458 ; overlayable register banks
                                    459 ;--------------------------------------------------------
                                    460 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        461 	.ds 8
                                    462 ;--------------------------------------------------------
                                    463 ; internal ram data
                                    464 ;--------------------------------------------------------
                                    465 	.area DSEG    (DATA)
      000074                        466 _RxData::
      000074                        467 	.ds 1
                                    468 ;--------------------------------------------------------
                                    469 ; overlayable items in internal ram 
                                    470 ;--------------------------------------------------------
                                    471 ;--------------------------------------------------------
                                    472 ; indirectly addressable internal ram data
                                    473 ;--------------------------------------------------------
                                    474 	.area ISEG    (DATA)
                                    475 ;--------------------------------------------------------
                                    476 ; absolute internal ram data
                                    477 ;--------------------------------------------------------
                                    478 	.area IABS    (ABS,DATA)
                                    479 	.area IABS    (ABS,DATA)
                                    480 ;--------------------------------------------------------
                                    481 ; bit data
                                    482 ;--------------------------------------------------------
                                    483 	.area BSEG    (BIT)
                                    484 ;--------------------------------------------------------
                                    485 ; paged external ram data
                                    486 ;--------------------------------------------------------
                                    487 	.area PSEG    (PAG,XDATA)
                                    488 ;--------------------------------------------------------
                                    489 ; external ram data
                                    490 ;--------------------------------------------------------
                                    491 	.area XSEG    (XDATA)
                                    492 ;--------------------------------------------------------
                                    493 ; absolute external ram data
                                    494 ;--------------------------------------------------------
                                    495 	.area XABS    (ABS,XDATA)
                                    496 ;--------------------------------------------------------
                                    497 ; external initialized ram data
                                    498 ;--------------------------------------------------------
                                    499 	.area XISEG   (XDATA)
                                    500 	.area HOME    (CODE)
                                    501 	.area GSINIT0 (CODE)
                                    502 	.area GSINIT1 (CODE)
                                    503 	.area GSINIT2 (CODE)
                                    504 	.area GSINIT3 (CODE)
                                    505 	.area GSINIT4 (CODE)
                                    506 	.area GSINIT5 (CODE)
                                    507 	.area GSINIT  (CODE)
                                    508 	.area GSFINAL (CODE)
                                    509 	.area CSEG    (CODE)
                                    510 ;--------------------------------------------------------
                                    511 ; global & static initialisations
                                    512 ;--------------------------------------------------------
                                    513 	.area HOME    (CODE)
                                    514 	.area GSINIT  (CODE)
                                    515 	.area GSFINAL (CODE)
                                    516 	.area GSINIT  (CODE)
                                    517 ;	src/mc96f8x16_uart.c:7: volatile uint8_t RxData = 0;
      0009B7 75 74 00         [24]  518 	mov	_RxData,#0x00
                                    519 ;	./inc/MC96F8316.h:17: sfr			P0			= 0x80;			// P0 Data Register
      0009BA 75 00 80         [24]  520 	mov	_P0,#0x80
                                    521 ;	./inc/MC96F8316.h:27: sfr			P0IO		= 0xA1;			// P0 Direction Register
      0009BD 75 01 A1         [24]  522 	mov	_P0IO,#0xa1
                                    523 ;	./inc/MC96F8316.h:28: sfr			P0OD		= 0x91;			// P0 Open-drain Selection Register
      0009C0 75 02 91         [24]  524 	mov	_P0OD,#0x91
                                    525 ;	./inc/MC96F8316.h:29: sfr			P0PU		= 0xAC;			// P0 Pull-up Resistor Selection Register
      0009C3 75 03 AC         [24]  526 	mov	_P0PU,#0xac
                                    527 ;	./inc/MC96F8316.h:30: sfr			P03DB		= 0xDE;			// P0/P3 Debounce Enable Register
      0009C6 75 04 DE         [24]  528 	mov	_P03DB,#0xde
                                    529 ;	./inc/MC96F8316.h:32: sfr			P1			= 0x88;			// P1 Data Register
      0009C9 75 05 88         [24]  530 	mov	_P1,#0x88
                                    531 ;	./inc/MC96F8316.h:42: sfr			P1IO		= 0xB1;			// P1 Direction Register
      0009CC 75 06 B1         [24]  532 	mov	_P1IO,#0xb1
                                    533 ;	./inc/MC96F8316.h:43: sfr			P1OD		= 0x92;			// P1 Open-drain Selection Register
      0009CF 75 07 92         [24]  534 	mov	_P1OD,#0x92
                                    535 ;	./inc/MC96F8316.h:44: sfr			P1PU		= 0xAD;			// P1 Pull-up Resistor Selection Register
      0009D2 75 08 AD         [24]  536 	mov	_P1PU,#0xad
                                    537 ;	./inc/MC96F8316.h:45: sfr			P12DB		= 0xDF;			// P1/P2 Debounce Enable Register
      0009D5 75 09 DF         [24]  538 	mov	_P12DB,#0xdf
                                    539 ;	./inc/MC96F8316.h:47: sfr			P2			= 0x90;			// P2 Data Register
      0009D8 75 0A 90         [24]  540 	mov	_P2,#0x90
                                    541 ;	./inc/MC96F8316.h:57: sfr			P2IO		= 0xB9;			// P2 Direction Register
      0009DB 75 0B B9         [24]  542 	mov	_P2IO,#0xb9
                                    543 ;	./inc/MC96F8316.h:58: sfr			P2OD		= 0x93;			// P2 Open-drain Selection Register
      0009DE 75 0C 93         [24]  544 	mov	_P2OD,#0x93
                                    545 ;	./inc/MC96F8316.h:59: sfr			P2PU		= 0xAE;			// P2 Pull-up Resistor Selection Register
      0009E1 75 0D AE         [24]  546 	mov	_P2PU,#0xae
                                    547 ;	./inc/MC96F8316.h:61: sfr			P3			= 0x98;			// P3 Data Register
      0009E4 75 0E 98         [24]  548 	mov	_P3,#0x98
                                    549 ;	./inc/MC96F8316.h:71: sfr			P3IO		= 0xC1;			// P3 Direction Register
      0009E7 75 0F C1         [24]  550 	mov	_P3IO,#0xc1
                                    551 ;	./inc/MC96F8316.h:72: sfr			P3OD		= 0x94;			// P3 Open-drain Selection Register
      0009EA 75 10 94         [24]  552 	mov	_P3OD,#0x94
                                    553 ;	./inc/MC96F8316.h:73: sfr			P3PU		= 0xAF;			// P3 Pull-up Resistor Selection Register
      0009ED 75 11 AF         [24]  554 	mov	_P3PU,#0xaf
                                    555 ;	./inc/MC96F8316.h:75: sfr			P0FSR		= 0xD3;			//P0 Function Selection Register
      0009F0 75 12 D3         [24]  556 	mov	_P0FSR,#0xd3
                                    557 ;	./inc/MC96F8316.h:76: sfr			P1FSRL		= 0xD4;			//P1 Function Selection Low Register
      0009F3 75 13 D4         [24]  558 	mov	_P1FSRL,#0xd4
                                    559 ;	./inc/MC96F8316.h:77: sfr			P1FSRH		= 0xD5;			//P1 Function Selection High Register
      0009F6 75 14 D5         [24]  560 	mov	_P1FSRH,#0xd5
                                    561 ;	./inc/MC96F8316.h:78: sfr			P2FSR		= 0xD6;			//P2 Function Selection Register
      0009F9 75 15 D6         [24]  562 	mov	_P2FSR,#0xd6
                                    563 ;	./inc/MC96F8316.h:79: sfr			P3FSR		= 0xD7;			//P3 Function Selection Register
      0009FC 75 16 D7         [24]  564 	mov	_P3FSR,#0xd7
                                    565 ;	./inc/MC96F8316.h:82: sfr			IE			= 0xA8;			// Interrupt Enable Register 0
      0009FF 75 17 A8         [24]  566 	mov	_IE,#0xa8
                                    567 ;	./inc/MC96F8316.h:83: sfr			IE1			= 0xA9;			// Interrupt Enable Register 1
      000A02 75 18 A9         [24]  568 	mov	_IE1,#0xa9
                                    569 ;	./inc/MC96F8316.h:84: sfr			IE2			= 0xAA;			// Interrupt Enable Register 2
      000A05 75 19 AA         [24]  570 	mov	_IE2,#0xaa
                                    571 ;	./inc/MC96F8316.h:85: sfr			IE3			= 0xAB;			// Interrupt Enable Register 3
      000A08 75 1A AB         [24]  572 	mov	_IE3,#0xab
                                    573 ;	./inc/MC96F8316.h:86: sfr			IP			= 0xB8;			// Interrupt Priority Register 0
      000A0B 75 1B B8         [24]  574 	mov	_IP,#0xb8
                                    575 ;	./inc/MC96F8316.h:87: sfr			IP1			= 0xF8;			// Interrupt Priority Register 1
      000A0E 75 1C F8         [24]  576 	mov	_IP1,#0xf8
                                    577 ;	./inc/MC96F8316.h:88: sfr			IIFLAG		= 0xA0;			// Internal Interrupt Flag Register
      000A11 75 1D A0         [24]  578 	mov	_IIFLAG,#0xa0
                                    579 ;	./inc/MC96F8316.h:89: sfr			EIFLAG0		= 0xC0;			// External Interrupt Flag 0 Register
      000A14 75 1E C0         [24]  580 	mov	_EIFLAG0,#0xc0
                                    581 ;	./inc/MC96F8316.h:90: sfr			EIFLAG1		= 0xB0;			// External Interrupt Flag 1 Register
      000A17 75 1F B0         [24]  582 	mov	_EIFLAG1,#0xb0
                                    583 ;	./inc/MC96F8316.h:91: sfr			EIPOL0L		= 0xA4;			// External Interrupt Polarity 0 Low Register
      000A1A 75 20 A4         [24]  584 	mov	_EIPOL0L,#0xa4
                                    585 ;	./inc/MC96F8316.h:92: sfr			EIPOL0H		= 0xA5;			// External Interrupt Polarity 0 High Register
      000A1D 75 21 A5         [24]  586 	mov	_EIPOL0H,#0xa5
                                    587 ;	./inc/MC96F8316.h:93: sfr			EIPOL1		= 0xA6;			// External Interrupt Polarity 1 Register
      000A20 75 22 A6         [24]  588 	mov	_EIPOL1,#0xa6
                                    589 ;	./inc/MC96F8316.h:94: sfr			EIPOL2		= 0xA7;			// External Interrupt Polarity 2 Register
      000A23 75 23 A7         [24]  590 	mov	_EIPOL2,#0xa7
                                    591 ;	./inc/MC96F8316.h:97: sfr			SCCR		= 0x8A;			// System Clock Control Register
      000A26 75 24 8A         [24]  592 	mov	_SCCR,#0x8a
                                    593 ;	./inc/MC96F8316.h:98: sfr			OSCCR		= 0xC8;			// Oscillator Control Register
      000A29 75 25 C8         [24]  594 	mov	_OSCCR,#0xc8
                                    595 ;	./inc/MC96F8316.h:99: sfr			BITCNT		= 0x8C;			// Basic Interval Timer Counter Register
      000A2C 75 26 8C         [24]  596 	mov	_BITCNT,#0x8c
                                    597 ;	./inc/MC96F8316.h:100: sfr			BITCR		= 0x8B;			// Basic Interval Timer Control Register
      000A2F 75 27 8B         [24]  598 	mov	_BITCR,#0x8b
                                    599 ;	./inc/MC96F8316.h:101: sfr			RSTFR		= 0xE8;			// Reset Flag Register
      000A32 75 28 E8         [24]  600 	mov	_RSTFR,#0xe8
                                    601 ;	./inc/MC96F8316.h:102: sfr			PCON		= 0x87;			// Power Control Register
      000A35 75 29 87         [24]  602 	mov	_PCON,#0x87
                                    603 ;	./inc/MC96F8316.h:103: sfr			LVRCR		= 0xD8;			// Low Voltage Reset Control Register
      000A38 75 2A D8         [24]  604 	mov	_LVRCR,#0xd8
                                    605 ;	./inc/MC96F8316.h:104: sfr			LVICR		= 0x86;			// Low Voltage Indicator Control Register
      000A3B 75 2B 86         [24]  606 	mov	_LVICR,#0x86
                                    607 ;	./inc/MC96F8316.h:107: sfr			WDTDR		= 0x8E;			// Watch Dog Timer Data Register
      000A3E 75 2C 8E         [24]  608 	mov	_WDTDR,#0x8e
                                    609 ;	./inc/MC96F8316.h:108: sfr			WDTCNT		= 0x8E;			// Watch Dog Timer Counter Register
      000A41 75 2D 8E         [24]  610 	mov	_WDTCNT,#0x8e
                                    611 ;	./inc/MC96F8316.h:109: sfr			WDTCR		= 0x8D;			// Watch Dog Timer Control Register
      000A44 75 2E 8D         [24]  612 	mov	_WDTCR,#0x8d
                                    613 ;	./inc/MC96F8316.h:112: sfr			WTDR		= 0x89;			// Watch Timer Data Register
      000A47 75 2F 89         [24]  614 	mov	_WTDR,#0x89
                                    615 ;	./inc/MC96F8316.h:113: sfr			WTCNT		= 0x89;			// Watch Timer Counter Register
      000A4A 75 30 89         [24]  616 	mov	_WTCNT,#0x89
                                    617 ;	./inc/MC96F8316.h:114: sfr			WTCR		= 0x96;			// Watch Timer Control Register
      000A4D 75 31 96         [24]  618 	mov	_WTCR,#0x96
                                    619 ;	./inc/MC96F8316.h:117: sfr			T0CR		= 0xB2;			// Timer 0 Control Register
      000A50 75 32 B2         [24]  620 	mov	_T0CR,#0xb2
                                    621 ;	./inc/MC96F8316.h:118: sfr			T0CNT		= 0xB3;			// Timer 0 Counter Register
      000A53 75 33 B3         [24]  622 	mov	_T0CNT,#0xb3
                                    623 ;	./inc/MC96F8316.h:119: sfr			T0DR		= 0xB4;			// Timer 0 Data Register
      000A56 75 34 B4         [24]  624 	mov	_T0DR,#0xb4
                                    625 ;	./inc/MC96F8316.h:120: sfr			T0CDR		= 0xB4;			// Timer 0 Capture Data Register
      000A59 75 35 B4         [24]  626 	mov	_T0CDR,#0xb4
                                    627 ;	./inc/MC96F8316.h:126: sfr			T1CRL		= 0xBA;			// Timer 1 Control Low Register
      000A5C 75 36 BA         [24]  628 	mov	_T1CRL,#0xba
                                    629 ;	./inc/MC96F8316.h:127: sfr			T1CRH		= 0xBB;			// Timer 1 Control High Register
      000A5F 75 37 BB         [24]  630 	mov	_T1CRH,#0xbb
                                    631 ;	./inc/MC96F8316.h:128: sfr			T1ADRL		= 0xBC;			// Timer 1 A Data Low Register
      000A62 75 38 BC         [24]  632 	mov	_T1ADRL,#0xbc
                                    633 ;	./inc/MC96F8316.h:129: sfr			T1ADRH		= 0xBD;			// Timer 1 A Data High Register
      000A65 75 39 BD         [24]  634 	mov	_T1ADRH,#0xbd
                                    635 ;	./inc/MC96F8316.h:130: sfr			T1BDRL		= 0xBE;			// Timer 1 B Data Low Register
      000A68 75 3A BE         [24]  636 	mov	_T1BDRL,#0xbe
                                    637 ;	./inc/MC96F8316.h:131: sfr			T1BDRH		= 0xBF;			// Timer 1 B Data High Register
      000A6B 75 3B BF         [24]  638 	mov	_T1BDRH,#0xbf
                                    639 ;	./inc/MC96F8316.h:134: sfr			T2CRL		= 0xC2;			// Timer 2 Control Low Register
      000A6E 75 3C C2         [24]  640 	mov	_T2CRL,#0xc2
                                    641 ;	./inc/MC96F8316.h:135: sfr			T2CRH		= 0xC3;			// Timer 2 Control High Register
      000A71 75 3D C3         [24]  642 	mov	_T2CRH,#0xc3
                                    643 ;	./inc/MC96F8316.h:136: sfr			T2ADRL		= 0xC4;			// Timer 2 A Data Low Register
      000A74 75 3E C4         [24]  644 	mov	_T2ADRL,#0xc4
                                    645 ;	./inc/MC96F8316.h:137: sfr			T2ADRH		= 0xC5;			// Timer 2 A Data High Register
      000A77 75 3F C5         [24]  646 	mov	_T2ADRH,#0xc5
                                    647 ;	./inc/MC96F8316.h:138: sfr			T2BDRL		= 0xC6;			// Timer 2 B Data Low Register
      000A7A 75 40 C6         [24]  648 	mov	_T2BDRL,#0xc6
                                    649 ;	./inc/MC96F8316.h:139: sfr			T2BDRH		= 0xC7;			// Timer 2 B Data High Register
      000A7D 75 41 C7         [24]  650 	mov	_T2BDRH,#0xc7
                                    651 ;	./inc/MC96F8316.h:142: sfr			BUZDR		= 0x8F;			// BUZZER Data Register
      000A80 75 42 8F         [24]  652 	mov	_BUZDR,#0x8f
                                    653 ;	./inc/MC96F8316.h:143: sfr			BUZCR		= 0x97;			// BUZZER Control Register
      000A83 75 43 97         [24]  654 	mov	_BUZCR,#0x97
                                    655 ;	./inc/MC96F8316.h:146: sfr			ADCCRL		= 0x9C;			// A/D Converter Control Low Register
      000A86 75 44 9C         [24]  656 	mov	_ADCCRL,#0x9c
                                    657 ;	./inc/MC96F8316.h:147: sfr			ADCCRH		= 0x9D;			// A/D Converter Control High Register
      000A89 75 45 9D         [24]  658 	mov	_ADCCRH,#0x9d
                                    659 ;	./inc/MC96F8316.h:148: sfr			ADCDRL		= 0x9E;			// A/D Converter Data Low Register
      000A8C 75 46 9E         [24]  660 	mov	_ADCDRL,#0x9e
                                    661 ;	./inc/MC96F8316.h:149: sfr			ADCDRH		= 0x9F;			// A/D Converter Data High Register
      000A8F 75 47 9F         [24]  662 	mov	_ADCDRH,#0x9f
                                    663 ;	./inc/MC96F8316.h:151: sfr			ADWRCR0		= 0xF2;			// ADC Wake-up Resistor Control Register 0
      000A92 75 48 F2         [24]  664 	mov	_ADWRCR0,#0xf2
                                    665 ;	./inc/MC96F8316.h:152: sfr			ADWRCR1		= 0xF3;			// ADC Wake-up Resistor Control Register 1
      000A95 75 49 F3         [24]  666 	mov	_ADWRCR1,#0xf3
                                    667 ;	./inc/MC96F8316.h:153: sfr			ADWRCR2		= 0xF4;			// ADC Wake-up Resistor Control Register 2
      000A98 75 4A F4         [24]  668 	mov	_ADWRCR2,#0xf4
                                    669 ;	./inc/MC96F8316.h:154: sfr			ADWRCR3		= 0xF5;			// ADC Wake-up Resistor Control Register 3
      000A9B 75 4B F5         [24]  670 	mov	_ADWRCR3,#0xf5
                                    671 ;	./inc/MC96F8316.h:155: sfr			ADWCRL		= 0xF6;			// ADC Wake-up Control Low Register
      000A9E 75 4C F6         [24]  672 	mov	_ADWCRL,#0xf6
                                    673 ;	./inc/MC96F8316.h:156: sfr			ADWCRH		= 0xF7;			// ADC Wake-up Control High Register
      000AA1 75 4D F7         [24]  674 	mov	_ADWCRH,#0xf7
                                    675 ;	./inc/MC96F8316.h:157: sfr			ADWIFRL		= 0xDC;			// ADC Wake-up Interrupt Flag Low Register
      000AA4 75 4E DC         [24]  676 	mov	_ADWIFRL,#0xdc
                                    677 ;	./inc/MC96F8316.h:158: sfr			ADWIFRH		= 0xDD;			// ADC Wake-up Interrupt Flag High Register
      000AA7 75 4F DD         [24]  678 	mov	_ADWIFRH,#0xdd
                                    679 ;	./inc/MC96F8316.h:161: sfr			SPICR		= 0xB5;			// SPI Control Register
      000AAA 75 50 B5         [24]  680 	mov	_SPICR,#0xb5
                                    681 ;	./inc/MC96F8316.h:162: sfr			SPIDR		= 0xB6;			// SPI Data Register
      000AAD 75 51 B6         [24]  682 	mov	_SPIDR,#0xb6
                                    683 ;	./inc/MC96F8316.h:163: sfr			SPISR		= 0xB7;			// SPI Status Register
      000AB0 75 52 B7         [24]  684 	mov	_SPISR,#0xb7
                                    685 ;	./inc/MC96F8316.h:166: sfr			UARTCR1		= 0xE2;			// UART Control Register 1
      000AB3 75 53 E2         [24]  686 	mov	_UARTCR1,#0xe2
                                    687 ;	./inc/MC96F8316.h:167: sfr			UARTCR2		= 0xE3;			// UART Control Register 2
      000AB6 75 54 E3         [24]  688 	mov	_UARTCR2,#0xe3
                                    689 ;	./inc/MC96F8316.h:168: sfr			UARTCR3		= 0xE4;			// UART Control Register 3
      000AB9 75 55 E4         [24]  690 	mov	_UARTCR3,#0xe4
                                    691 ;	./inc/MC96F8316.h:169: sfr			UARTST		= 0xE5;			// UART Status Register
      000ABC 75 56 E5         [24]  692 	mov	_UARTST,#0xe5
                                    693 ;	./inc/MC96F8316.h:170: sfr			UARTBD		= 0xE6;			// UART BaudRate Register
      000ABF 75 57 E6         [24]  694 	mov	_UARTBD,#0xe6
                                    695 ;	./inc/MC96F8316.h:171: sfr			UARTDR		= 0xE7;			// UART Data Register
      000AC2 75 58 E7         [24]  696 	mov	_UARTDR,#0xe7
                                    697 ;	./inc/MC96F8316.h:174: sfr			I2CCR		= 0xE9;			// I2C Control Register
      000AC5 75 59 E9         [24]  698 	mov	_I2CCR,#0xe9
                                    699 ;	./inc/MC96F8316.h:175: sfr			I2CSR		= 0xEA;			// I2C Status Register
      000AC8 75 5A EA         [24]  700 	mov	_I2CSR,#0xea
                                    701 ;	./inc/MC96F8316.h:176: sfr			I2CSAR0		= 0xEB;			// I2C Slave Address 0 Register
      000ACB 75 5B EB         [24]  702 	mov	_I2CSAR0,#0xeb
                                    703 ;	./inc/MC96F8316.h:177: sfr			I2CSAR1		= 0xF1;			// I2C Slave Address 1 Register
      000ACE 75 5C F1         [24]  704 	mov	_I2CSAR1,#0xf1
                                    705 ;	./inc/MC96F8316.h:178: sfr			I2CDR		= 0xEC;			// I2C Data Register
      000AD1 75 5D EC         [24]  706 	mov	_I2CDR,#0xec
                                    707 ;	./inc/MC96F8316.h:179: sfr			I2CSDHR		= 0xED;			// I2C SDA Hold Time Register
      000AD4 75 5E ED         [24]  708 	mov	_I2CSDHR,#0xed
                                    709 ;	./inc/MC96F8316.h:180: sfr			I2CSCLR		= 0xEE;			// I2C SCL Low Period Register
      000AD7 75 5F EE         [24]  710 	mov	_I2CSCLR,#0xee
                                    711 ;	./inc/MC96F8316.h:181: sfr			I2CSCHR		= 0xEF;			// I2C SCL High Period Register
      000ADA 75 60 EF         [24]  712 	mov	_I2CSCHR,#0xef
                                    713 ;	./inc/MC96F8316.h:184: sfr			FSADRH		= 0xFA;			// Flash Sector Address High Register
      000ADD 75 61 FA         [24]  714 	mov	_FSADRH,#0xfa
                                    715 ;	./inc/MC96F8316.h:185: sfr			FSADRM		= 0xFB;			// Flash Sector Address Middle Register
      000AE0 75 62 FB         [24]  716 	mov	_FSADRM,#0xfb
                                    717 ;	./inc/MC96F8316.h:186: sfr			FSADRL		= 0xFC;			// Flash Sector Address Low Register
      000AE3 75 63 FC         [24]  718 	mov	_FSADRL,#0xfc
                                    719 ;	./inc/MC96F8316.h:187: sfr			FIDR		= 0xFD;			// Flash Identification Register
      000AE6 75 64 FD         [24]  720 	mov	_FIDR,#0xfd
                                    721 ;	./inc/MC96F8316.h:188: sfr			FMCR		= 0xFE;			// Flash Mode Control Register
      000AE9 75 65 FE         [24]  722 	mov	_FMCR,#0xfe
                                    723 ;	./inc/MC96F8316.h:190: sfr			ACC			= 0xE0;
      000AEC 75 66 E0         [24]  724 	mov	_ACC,#0xe0
                                    725 ;	./inc/MC96F8316.h:191: sfr			B			= 0xF0;
      000AEF 75 67 F0         [24]  726 	mov	_B,#0xf0
                                    727 ;	./inc/MC96F8316.h:192: sfr			PSW			= 0xD0;
      000AF2 75 68 D0         [24]  728 	mov	_PSW,#0xd0
                                    729 ;	./inc/MC96F8316.h:193: sfr			SP			= 0x81;
      000AF5 75 69 81         [24]  730 	mov	_SP,#0x81
                                    731 ;	./inc/MC96F8316.h:194: sfr			DPL			= 0x82;
      000AF8 75 6A 82         [24]  732 	mov	_DPL,#0x82
                                    733 ;	./inc/MC96F8316.h:195: sfr			DPH			= 0x83;
      000AFB 75 6B 83         [24]  734 	mov	_DPH,#0x83
                                    735 ;	./inc/MC96F8316.h:196: sfr			DPL1		= 0x84;
      000AFE 75 6C 84         [24]  736 	mov	_DPL1,#0x84
                                    737 ;	./inc/MC96F8316.h:197: sfr			DPH1		= 0x85;
      000B01 75 6D 85         [24]  738 	mov	_DPH1,#0x85
                                    739 ;	./inc/MC96F8316.h:198: sfr			EO			= 0xA2;			// EXTENDED OPERATION REGISTER
      000B04 75 6E A2         [24]  740 	mov	_EO,#0xa2
                                    741 ;	./inc/MC96F8316.h:18: sbit	P00			= 0x80;
                                    742 ;	assignBit
      000B07 D2 00            [12]  743 	setb	_P00
                                    744 ;	./inc/MC96F8316.h:19: sbit	P01			= 0x81;
                                    745 ;	assignBit
      000B09 D2 01            [12]  746 	setb	_P01
                                    747 ;	./inc/MC96F8316.h:20: sbit	P02			= 0x82;
                                    748 ;	assignBit
      000B0B D2 02            [12]  749 	setb	_P02
                                    750 ;	./inc/MC96F8316.h:21: sbit	P03			= 0x83;
                                    751 ;	assignBit
      000B0D D2 03            [12]  752 	setb	_P03
                                    753 ;	./inc/MC96F8316.h:22: sbit	P04			= 0x84;
                                    754 ;	assignBit
      000B0F D2 04            [12]  755 	setb	_P04
                                    756 ;	./inc/MC96F8316.h:23: sbit	P05			= 0x85;
                                    757 ;	assignBit
      000B11 D2 05            [12]  758 	setb	_P05
                                    759 ;	./inc/MC96F8316.h:24: sbit	P06			= 0x86;
                                    760 ;	assignBit
      000B13 D2 06            [12]  761 	setb	_P06
                                    762 ;	./inc/MC96F8316.h:25: sbit	P07			= 0x87;
                                    763 ;	assignBit
      000B15 D2 07            [12]  764 	setb	_P07
                                    765 ;	./inc/MC96F8316.h:33: sbit	P10			= 0x88;
                                    766 ;	assignBit
      000B17 D2 08            [12]  767 	setb	_P10
                                    768 ;	./inc/MC96F8316.h:34: sbit	P11			= 0x89;
                                    769 ;	assignBit
      000B19 D2 09            [12]  770 	setb	_P11
                                    771 ;	./inc/MC96F8316.h:35: sbit	P12			= 0x8A;
                                    772 ;	assignBit
      000B1B D2 0A            [12]  773 	setb	_P12
                                    774 ;	./inc/MC96F8316.h:36: sbit	P13			= 0x8B;
                                    775 ;	assignBit
      000B1D D2 0B            [12]  776 	setb	_P13
                                    777 ;	./inc/MC96F8316.h:37: sbit	P14			= 0x8C;
                                    778 ;	assignBit
      000B1F D2 0C            [12]  779 	setb	_P14
                                    780 ;	./inc/MC96F8316.h:38: sbit	P15			= 0x8D;
                                    781 ;	assignBit
      000B21 D2 0D            [12]  782 	setb	_P15
                                    783 ;	./inc/MC96F8316.h:39: sbit	P16			= 0x8E;
                                    784 ;	assignBit
      000B23 D2 0E            [12]  785 	setb	_P16
                                    786 ;	./inc/MC96F8316.h:40: sbit	P17			= 0x8F;
                                    787 ;	assignBit
      000B25 D2 0F            [12]  788 	setb	_P17
                                    789 ;	./inc/MC96F8316.h:48: sbit	P20			= 0x90;
                                    790 ;	assignBit
      000B27 D2 10            [12]  791 	setb	_P20
                                    792 ;	./inc/MC96F8316.h:49: sbit	P21			= 0x91;
                                    793 ;	assignBit
      000B29 D2 11            [12]  794 	setb	_P21
                                    795 ;	./inc/MC96F8316.h:50: sbit	P22			= 0x92;
                                    796 ;	assignBit
      000B2B D2 12            [12]  797 	setb	_P22
                                    798 ;	./inc/MC96F8316.h:51: sbit	P23			= 0x93;
                                    799 ;	assignBit
      000B2D D2 13            [12]  800 	setb	_P23
                                    801 ;	./inc/MC96F8316.h:52: sbit	P24			= 0x94;
                                    802 ;	assignBit
      000B2F D2 14            [12]  803 	setb	_P24
                                    804 ;	./inc/MC96F8316.h:53: sbit	P25			= 0x95;
                                    805 ;	assignBit
      000B31 D2 15            [12]  806 	setb	_P25
                                    807 ;	./inc/MC96F8316.h:54: sbit	P26			= 0x96;
                                    808 ;	assignBit
      000B33 D2 16            [12]  809 	setb	_P26
                                    810 ;	./inc/MC96F8316.h:55: sbit	P27			= 0x97;
                                    811 ;	assignBit
      000B35 D2 17            [12]  812 	setb	_P27
                                    813 ;	./inc/MC96F8316.h:62: sbit	P30			= 0x98;
                                    814 ;	assignBit
      000B37 D2 18            [12]  815 	setb	_P30
                                    816 ;	./inc/MC96F8316.h:63: sbit	P31			= 0x99;
                                    817 ;	assignBit
      000B39 D2 19            [12]  818 	setb	_P31
                                    819 ;	./inc/MC96F8316.h:64: sbit	P32			= 0x9A;
                                    820 ;	assignBit
      000B3B D2 1A            [12]  821 	setb	_P32
                                    822 ;	./inc/MC96F8316.h:65: sbit	P33			= 0x9B;
                                    823 ;	assignBit
      000B3D D2 1B            [12]  824 	setb	_P33
                                    825 ;	./inc/MC96F8316.h:66: sbit	P34			= 0x9C;
                                    826 ;	assignBit
      000B3F D2 1C            [12]  827 	setb	_P34
                                    828 ;	./inc/MC96F8316.h:67: sbit	P35			= 0x9D;
                                    829 ;	assignBit
      000B41 D2 1D            [12]  830 	setb	_P35
                                    831 ;	./inc/MC96F8316.h:68: sbit	P36			= 0x9E;
                                    832 ;	assignBit
      000B43 D2 1E            [12]  833 	setb	_P36
                                    834 ;	./inc/MC96F8316.h:69: sbit	P37			= 0x9F;
                                    835 ;	assignBit
      000B45 D2 1F            [12]  836 	setb	_P37
                                    837 ;--------------------------------------------------------
                                    838 ; Home
                                    839 ;--------------------------------------------------------
                                    840 	.area HOME    (CODE)
                                    841 	.area HOME    (CODE)
                                    842 ;--------------------------------------------------------
                                    843 ; code
                                    844 ;--------------------------------------------------------
                                    845 	.area CSEG    (CODE)
                                    846 ;------------------------------------------------------------
                                    847 ;Allocation info for local variables in function 'UART_Config'
                                    848 ;------------------------------------------------------------
                                    849 ;UART_Conf                 Allocated to registers r5 r6 r7 
                                    850 ;------------------------------------------------------------
                                    851 ;	src/mc96f8x16_uart.c:9: void UART_Config(UARTConfig_Typedef *UART_Conf)
                                    852 ;	-----------------------------------------
                                    853 ;	 function UART_Config
                                    854 ;	-----------------------------------------
      0011A4                        855 _UART_Config:
                           000007   856 	ar7 = 0x07
                           000006   857 	ar6 = 0x06
                           000005   858 	ar5 = 0x05
                           000004   859 	ar4 = 0x04
                           000003   860 	ar3 = 0x03
                           000002   861 	ar2 = 0x02
                           000001   862 	ar1 = 0x01
                           000000   863 	ar0 = 0x00
                                    864 ;	src/mc96f8x16_uart.c:11: UARTBD = UART_Conf->Baud;
      0011A4 AD 82            [24]  865 	mov	r5,dpl
      0011A6 AE 83            [24]  866 	mov	r6,dph
      0011A8 AF F0            [24]  867 	mov	r7,b
      0011AA 12 15 16         [24]  868 	lcall	__gptrget
      0011AD F5 57            [12]  869 	mov	_UARTBD,a
                                    870 ;	src/mc96f8x16_uart.c:12: UARTCR1 = (UARTCR1 & 0x0F) | ((UART_Conf->Parity) << 4u);
      0011AF AB 53            [24]  871 	mov	r3,_UARTCR1
      0011B1 53 03 0F         [24]  872 	anl	ar3,#0x0f
      0011B4 7C 00            [12]  873 	mov	r4,#0x00
      0011B6 74 01            [12]  874 	mov	a,#0x01
      0011B8 2D               [12]  875 	add	a,r5
      0011B9 F8               [12]  876 	mov	r0,a
      0011BA E4               [12]  877 	clr	a
      0011BB 3E               [12]  878 	addc	a,r6
      0011BC F9               [12]  879 	mov	r1,a
      0011BD 8F 02            [24]  880 	mov	ar2,r7
      0011BF 88 82            [24]  881 	mov	dpl,r0
      0011C1 89 83            [24]  882 	mov	dph,r1
      0011C3 8A F0            [24]  883 	mov	b,r2
      0011C5 12 15 16         [24]  884 	lcall	__gptrget
      0011C8 C4               [12]  885 	swap	a
      0011C9 54 F0            [12]  886 	anl	a,#0xf0
      0011CB 7A 00            [12]  887 	mov	r2,#0x00
      0011CD 42 03            [12]  888 	orl	ar3,a
      0011CF EA               [12]  889 	mov	a,r2
      0011D0 42 04            [12]  890 	orl	ar4,a
      0011D2 8B 53            [24]  891 	mov	_UARTCR1,r3
                                    892 ;	src/mc96f8x16_uart.c:13: UARTCR1 = (UARTCR1 & 0xF0) | ((UART_Conf->DataLength) << 1u);
      0011D4 AB 53            [24]  893 	mov	r3,_UARTCR1
      0011D6 53 03 F0         [24]  894 	anl	ar3,#0xf0
      0011D9 7C 00            [12]  895 	mov	r4,#0x00
      0011DB 74 02            [12]  896 	mov	a,#0x02
      0011DD 2D               [12]  897 	add	a,r5
      0011DE F8               [12]  898 	mov	r0,a
      0011DF E4               [12]  899 	clr	a
      0011E0 3E               [12]  900 	addc	a,r6
      0011E1 F9               [12]  901 	mov	r1,a
      0011E2 8F 02            [24]  902 	mov	ar2,r7
      0011E4 88 82            [24]  903 	mov	dpl,r0
      0011E6 89 83            [24]  904 	mov	dph,r1
      0011E8 8A F0            [24]  905 	mov	b,r2
      0011EA 12 15 16         [24]  906 	lcall	__gptrget
      0011ED 25 E0            [12]  907 	add	a,acc
      0011EF 7A 00            [12]  908 	mov	r2,#0x00
      0011F1 42 03            [12]  909 	orl	ar3,a
      0011F3 EA               [12]  910 	mov	a,r2
      0011F4 42 04            [12]  911 	orl	ar4,a
      0011F6 8B 53            [24]  912 	mov	_UARTCR1,r3
                                    913 ;	src/mc96f8x16_uart.c:14: UARTCR3 = (UARTCR3 & 0xF4) | (UART_Conf->StopBits);
      0011F8 AB 55            [24]  914 	mov	r3,_UARTCR3
      0011FA 53 03 F4         [24]  915 	anl	ar3,#0xf4
      0011FD 7C 00            [12]  916 	mov	r4,#0x00
      0011FF 74 03            [12]  917 	mov	a,#0x03
      001201 2D               [12]  918 	add	a,r5
      001202 FD               [12]  919 	mov	r5,a
      001203 E4               [12]  920 	clr	a
      001204 3E               [12]  921 	addc	a,r6
      001205 FE               [12]  922 	mov	r6,a
      001206 8D 82            [24]  923 	mov	dpl,r5
      001208 8E 83            [24]  924 	mov	dph,r6
      00120A 8F F0            [24]  925 	mov	b,r7
      00120C 12 15 16         [24]  926 	lcall	__gptrget
      00120F 7F 00            [12]  927 	mov	r7,#0x00
      001211 42 03            [12]  928 	orl	ar3,a
      001213 EF               [12]  929 	mov	a,r7
      001214 42 04            [12]  930 	orl	ar4,a
      001216 8B 55            [24]  931 	mov	_UARTCR3,r3
                                    932 ;	src/mc96f8x16_uart.c:15: UARTCR2 = (UARTCR2 & 0xD1) | (UARTCR2_RXE | UARTCR2_RXCIE | UARTCR2_TXE | UARTCR2_UARTEN);
      001218 AE 54            [24]  933 	mov	r6,_UARTCR2
      00121A 53 06 D1         [24]  934 	anl	ar6,#0xd1
      00121D 43 06 2E         [24]  935 	orl	ar6,#0x2e
      001220 8E 54            [24]  936 	mov	_UARTCR2,r6
                                    937 ;	src/mc96f8x16_uart.c:16: IE1 = (IE1 & 0xF7) | (0x08);
      001222 AE 18            [24]  938 	mov	r6,_IE1
      001224 53 06 F7         [24]  939 	anl	ar6,#0xf7
      001227 43 06 08         [24]  940 	orl	ar6,#0x08
      00122A 8E 18            [24]  941 	mov	_IE1,r6
                                    942 ;	src/mc96f8x16_uart.c:17: }
      00122C 22               [24]  943 	ret
                                    944 ;------------------------------------------------------------
                                    945 ;Allocation info for local variables in function 'UART_Transmit'
                                    946 ;------------------------------------------------------------
                                    947 ;Size                      Allocated to stack - _bp -4
                                    948 ;Timeout                   Allocated to stack - _bp -6
                                    949 ;Buffer                    Allocated to stack - _bp +1
                                    950 ;i                         Allocated to stack - _bp +4
                                    951 ;StartTick                 Allocated to registers r3 r4 
                                    952 ;------------------------------------------------------------
                                    953 ;	src/mc96f8x16_uart.c:19: HAL_Status UART_Transmit(uint8_t *Buffer, uint16_t Size, uint16_t Timeout)
                                    954 ;	-----------------------------------------
                                    955 ;	 function UART_Transmit
                                    956 ;	-----------------------------------------
      00122D                        957 _UART_Transmit:
      00122D C0 75            [24]  958 	push	_bp
      00122F 85 81 75         [24]  959 	mov	_bp,sp
      001232 C0 82            [24]  960 	push	dpl
      001234 C0 83            [24]  961 	push	dph
      001236 C0 F0            [24]  962 	push	b
      001238 05 81            [12]  963 	inc	sp
      00123A 05 81            [12]  964 	inc	sp
                                    965 ;	src/mc96f8x16_uart.c:22: uint16_t StartTick = GetTick();
      00123C 12 10 5B         [24]  966 	lcall	_GetTick
      00123F AB 82            [24]  967 	mov	r3,dpl
      001241 AC 83            [24]  968 	mov	r4,dph
                                    969 ;	src/mc96f8x16_uart.c:23: while(Size--)
      001243 E5 75            [12]  970 	mov	a,_bp
      001245 24 04            [12]  971 	add	a,#0x04
      001247 F8               [12]  972 	mov	r0,a
      001248 E4               [12]  973 	clr	a
      001249 F6               [12]  974 	mov	@r0,a
      00124A 08               [12]  975 	inc	r0
      00124B F6               [12]  976 	mov	@r0,a
      00124C E5 75            [12]  977 	mov	a,_bp
      00124E 24 FC            [12]  978 	add	a,#0xfc
      001250 F8               [12]  979 	mov	r0,a
      001251 86 05            [24]  980 	mov	ar5,@r0
      001253 08               [12]  981 	inc	r0
      001254 86 06            [24]  982 	mov	ar6,@r0
      001256                        983 00109$:
      001256 8D 02            [24]  984 	mov	ar2,r5
      001258 8E 07            [24]  985 	mov	ar7,r6
      00125A 1D               [12]  986 	dec	r5
      00125B BD FF 01         [24]  987 	cjne	r5,#0xff,00134$
      00125E 1E               [12]  988 	dec	r6
      00125F                        989 00134$:
      00125F EA               [12]  990 	mov	a,r2
      001260 4F               [12]  991 	orl	a,r7
      001261 70 03            [24]  992 	jnz	00135$
      001263 02 13 03         [24]  993 	ljmp	00111$
      001266                        994 00135$:
                                    995 ;	src/mc96f8x16_uart.c:25: if(CheckTimeout(StartTick, Timeout) == HAL_OK)
      001266 C0 06            [24]  996 	push	ar6
      001268 C0 05            [24]  997 	push	ar5
      00126A C0 04            [24]  998 	push	ar4
      00126C C0 03            [24]  999 	push	ar3
      00126E E5 75            [12] 1000 	mov	a,_bp
      001270 24 FA            [12] 1001 	add	a,#0xfa
      001272 F8               [12] 1002 	mov	r0,a
      001273 E6               [12] 1003 	mov	a,@r0
      001274 C0 E0            [24] 1004 	push	acc
      001276 08               [12] 1005 	inc	r0
      001277 E6               [12] 1006 	mov	a,@r0
      001278 C0 E0            [24] 1007 	push	acc
      00127A 8B 82            [24] 1008 	mov	dpl,r3
      00127C 8C 83            [24] 1009 	mov	dph,r4
      00127E 12 11 12         [24] 1010 	lcall	_CheckTimeout
      001281 AF 82            [24] 1011 	mov	r7,dpl
      001283 15 81            [12] 1012 	dec	sp
      001285 15 81            [12] 1013 	dec	sp
      001287 D0 03            [24] 1014 	pop	ar3
      001289 D0 04            [24] 1015 	pop	ar4
      00128B D0 05            [24] 1016 	pop	ar5
      00128D D0 06            [24] 1017 	pop	ar6
      00128F BF 01 6C         [24] 1018 	cjne	r7,#0x01,00107$
                                   1019 ;	src/mc96f8x16_uart.c:27: while(!(UARTST & UARTST_UDRE))
      001292                       1020 00103$:
      001292 E5 56            [12] 1021 	mov	a,_UARTST
      001294 20 E7 33         [24] 1022 	jb	acc.7,00105$
                                   1023 ;	src/mc96f8x16_uart.c:29: if(CheckTimeout(StartTick, Timeout) != HAL_OK)
      001297 C0 06            [24] 1024 	push	ar6
      001299 C0 05            [24] 1025 	push	ar5
      00129B C0 04            [24] 1026 	push	ar4
      00129D C0 03            [24] 1027 	push	ar3
      00129F E5 75            [12] 1028 	mov	a,_bp
      0012A1 24 FA            [12] 1029 	add	a,#0xfa
      0012A3 F8               [12] 1030 	mov	r0,a
      0012A4 E6               [12] 1031 	mov	a,@r0
      0012A5 C0 E0            [24] 1032 	push	acc
      0012A7 08               [12] 1033 	inc	r0
      0012A8 E6               [12] 1034 	mov	a,@r0
      0012A9 C0 E0            [24] 1035 	push	acc
      0012AB 8B 82            [24] 1036 	mov	dpl,r3
      0012AD 8C 83            [24] 1037 	mov	dph,r4
      0012AF 12 11 12         [24] 1038 	lcall	_CheckTimeout
      0012B2 AF 82            [24] 1039 	mov	r7,dpl
      0012B4 15 81            [12] 1040 	dec	sp
      0012B6 15 81            [12] 1041 	dec	sp
      0012B8 D0 03            [24] 1042 	pop	ar3
      0012BA D0 04            [24] 1043 	pop	ar4
      0012BC D0 05            [24] 1044 	pop	ar5
      0012BE D0 06            [24] 1045 	pop	ar6
      0012C0 BF 01 02         [24] 1046 	cjne	r7,#0x01,00139$
      0012C3 80 CD            [24] 1047 	sjmp	00103$
      0012C5                       1048 00139$:
                                   1049 ;	src/mc96f8x16_uart.c:31: return HAL_TIMEOUT;
      0012C5 75 82 02         [24] 1050 	mov	dpl,#0x02
      0012C8 80 3C            [24] 1051 	sjmp	00112$
      0012CA                       1052 00105$:
                                   1053 ;	src/mc96f8x16_uart.c:34: UARTDR = *(Buffer + i);
      0012CA C0 05            [24] 1054 	push	ar5
      0012CC C0 06            [24] 1055 	push	ar6
      0012CE A8 75            [24] 1056 	mov	r0,_bp
      0012D0 08               [12] 1057 	inc	r0
      0012D1 E5 75            [12] 1058 	mov	a,_bp
      0012D3 24 04            [12] 1059 	add	a,#0x04
      0012D5 F9               [12] 1060 	mov	r1,a
      0012D6 E7               [12] 1061 	mov	a,@r1
      0012D7 26               [12] 1062 	add	a,@r0
      0012D8 FA               [12] 1063 	mov	r2,a
      0012D9 09               [12] 1064 	inc	r1
      0012DA E7               [12] 1065 	mov	a,@r1
      0012DB 08               [12] 1066 	inc	r0
      0012DC 36               [12] 1067 	addc	a,@r0
      0012DD FE               [12] 1068 	mov	r6,a
      0012DE 08               [12] 1069 	inc	r0
      0012DF 86 07            [24] 1070 	mov	ar7,@r0
      0012E1 8A 82            [24] 1071 	mov	dpl,r2
      0012E3 8E 83            [24] 1072 	mov	dph,r6
      0012E5 8F F0            [24] 1073 	mov	b,r7
      0012E7 12 15 16         [24] 1074 	lcall	__gptrget
      0012EA F5 58            [12] 1075 	mov	_UARTDR,a
                                   1076 ;	src/mc96f8x16_uart.c:35: i++;
      0012EC E5 75            [12] 1077 	mov	a,_bp
      0012EE 24 04            [12] 1078 	add	a,#0x04
      0012F0 F8               [12] 1079 	mov	r0,a
      0012F1 06               [12] 1080 	inc	@r0
      0012F2 B6 00 02         [24] 1081 	cjne	@r0,#0x00,00140$
      0012F5 08               [12] 1082 	inc	r0
      0012F6 06               [12] 1083 	inc	@r0
      0012F7                       1084 00140$:
      0012F7 D0 06            [24] 1085 	pop	ar6
      0012F9 D0 05            [24] 1086 	pop	ar5
      0012FB 02 12 56         [24] 1087 	ljmp	00109$
      0012FE                       1088 00107$:
                                   1089 ;	src/mc96f8x16_uart.c:39: return HAL_TIMEOUT;
      0012FE 75 82 02         [24] 1090 	mov	dpl,#0x02
      001301 80 03            [24] 1091 	sjmp	00112$
      001303                       1092 00111$:
                                   1093 ;	src/mc96f8x16_uart.c:42: return HAL_OK;
      001303 75 82 01         [24] 1094 	mov	dpl,#0x01
      001306                       1095 00112$:
                                   1096 ;	src/mc96f8x16_uart.c:43: }
      001306 85 75 81         [24] 1097 	mov	sp,_bp
      001309 D0 75            [24] 1098 	pop	_bp
      00130B 22               [24] 1099 	ret
                                   1100 ;------------------------------------------------------------
                                   1101 ;Allocation info for local variables in function 'UART_Receive'
                                   1102 ;------------------------------------------------------------
                                   1103 ;Size                      Allocated to stack - _bp -4
                                   1104 ;Timeout                   Allocated to stack - _bp -6
                                   1105 ;Buffer                    Allocated to stack - _bp +1
                                   1106 ;i                         Allocated to stack - _bp +4
                                   1107 ;StartTick                 Allocated to registers r3 r4 
                                   1108 ;------------------------------------------------------------
                                   1109 ;	src/mc96f8x16_uart.c:45: HAL_Status UART_Receive(uint8_t *Buffer, uint16_t Size, uint16_t Timeout)
                                   1110 ;	-----------------------------------------
                                   1111 ;	 function UART_Receive
                                   1112 ;	-----------------------------------------
      00130C                       1113 _UART_Receive:
      00130C C0 75            [24] 1114 	push	_bp
      00130E 85 81 75         [24] 1115 	mov	_bp,sp
      001311 C0 82            [24] 1116 	push	dpl
      001313 C0 83            [24] 1117 	push	dph
      001315 C0 F0            [24] 1118 	push	b
      001317 05 81            [12] 1119 	inc	sp
      001319 05 81            [12] 1120 	inc	sp
                                   1121 ;	src/mc96f8x16_uart.c:48: uint16_t StartTick = GetTick();
      00131B 12 10 5B         [24] 1122 	lcall	_GetTick
      00131E AB 82            [24] 1123 	mov	r3,dpl
      001320 AC 83            [24] 1124 	mov	r4,dph
                                   1125 ;	src/mc96f8x16_uart.c:49: while(Size--)
      001322 E5 75            [12] 1126 	mov	a,_bp
      001324 24 04            [12] 1127 	add	a,#0x04
      001326 F8               [12] 1128 	mov	r0,a
      001327 E4               [12] 1129 	clr	a
      001328 F6               [12] 1130 	mov	@r0,a
      001329 08               [12] 1131 	inc	r0
      00132A F6               [12] 1132 	mov	@r0,a
      00132B E5 75            [12] 1133 	mov	a,_bp
      00132D 24 FC            [12] 1134 	add	a,#0xfc
      00132F F8               [12] 1135 	mov	r0,a
      001330 86 05            [24] 1136 	mov	ar5,@r0
      001332 08               [12] 1137 	inc	r0
      001333 86 06            [24] 1138 	mov	ar6,@r0
      001335                       1139 00109$:
      001335 8D 02            [24] 1140 	mov	ar2,r5
      001337 8E 07            [24] 1141 	mov	ar7,r6
      001339 1D               [12] 1142 	dec	r5
      00133A BD FF 01         [24] 1143 	cjne	r5,#0xff,00134$
      00133D 1E               [12] 1144 	dec	r6
      00133E                       1145 00134$:
      00133E EA               [12] 1146 	mov	a,r2
      00133F 4F               [12] 1147 	orl	a,r7
      001340 70 03            [24] 1148 	jnz	00135$
      001342 02 13 E2         [24] 1149 	ljmp	00111$
      001345                       1150 00135$:
                                   1151 ;	src/mc96f8x16_uart.c:51: if(CheckTimeout(StartTick, Timeout) == HAL_OK)
      001345 C0 06            [24] 1152 	push	ar6
      001347 C0 05            [24] 1153 	push	ar5
      001349 C0 04            [24] 1154 	push	ar4
      00134B C0 03            [24] 1155 	push	ar3
      00134D E5 75            [12] 1156 	mov	a,_bp
      00134F 24 FA            [12] 1157 	add	a,#0xfa
      001351 F8               [12] 1158 	mov	r0,a
      001352 E6               [12] 1159 	mov	a,@r0
      001353 C0 E0            [24] 1160 	push	acc
      001355 08               [12] 1161 	inc	r0
      001356 E6               [12] 1162 	mov	a,@r0
      001357 C0 E0            [24] 1163 	push	acc
      001359 8B 82            [24] 1164 	mov	dpl,r3
      00135B 8C 83            [24] 1165 	mov	dph,r4
      00135D 12 11 12         [24] 1166 	lcall	_CheckTimeout
      001360 AF 82            [24] 1167 	mov	r7,dpl
      001362 15 81            [12] 1168 	dec	sp
      001364 15 81            [12] 1169 	dec	sp
      001366 D0 03            [24] 1170 	pop	ar3
      001368 D0 04            [24] 1171 	pop	ar4
      00136A D0 05            [24] 1172 	pop	ar5
      00136C D0 06            [24] 1173 	pop	ar6
      00136E BF 01 6C         [24] 1174 	cjne	r7,#0x01,00107$
                                   1175 ;	src/mc96f8x16_uart.c:53: while(!(UARTST & UARTST_RXC))
      001371                       1176 00103$:
      001371 E5 56            [12] 1177 	mov	a,_UARTST
      001373 20 E5 33         [24] 1178 	jb	acc.5,00105$
                                   1179 ;	src/mc96f8x16_uart.c:55: if(CheckTimeout(StartTick, Timeout) != HAL_OK)
      001376 C0 06            [24] 1180 	push	ar6
      001378 C0 05            [24] 1181 	push	ar5
      00137A C0 04            [24] 1182 	push	ar4
      00137C C0 03            [24] 1183 	push	ar3
      00137E E5 75            [12] 1184 	mov	a,_bp
      001380 24 FA            [12] 1185 	add	a,#0xfa
      001382 F8               [12] 1186 	mov	r0,a
      001383 E6               [12] 1187 	mov	a,@r0
      001384 C0 E0            [24] 1188 	push	acc
      001386 08               [12] 1189 	inc	r0
      001387 E6               [12] 1190 	mov	a,@r0
      001388 C0 E0            [24] 1191 	push	acc
      00138A 8B 82            [24] 1192 	mov	dpl,r3
      00138C 8C 83            [24] 1193 	mov	dph,r4
      00138E 12 11 12         [24] 1194 	lcall	_CheckTimeout
      001391 AF 82            [24] 1195 	mov	r7,dpl
      001393 15 81            [12] 1196 	dec	sp
      001395 15 81            [12] 1197 	dec	sp
      001397 D0 03            [24] 1198 	pop	ar3
      001399 D0 04            [24] 1199 	pop	ar4
      00139B D0 05            [24] 1200 	pop	ar5
      00139D D0 06            [24] 1201 	pop	ar6
      00139F BF 01 02         [24] 1202 	cjne	r7,#0x01,00139$
      0013A2 80 CD            [24] 1203 	sjmp	00103$
      0013A4                       1204 00139$:
                                   1205 ;	src/mc96f8x16_uart.c:57: return HAL_TIMEOUT;
      0013A4 75 82 02         [24] 1206 	mov	dpl,#0x02
      0013A7 80 3C            [24] 1207 	sjmp	00112$
      0013A9                       1208 00105$:
                                   1209 ;	src/mc96f8x16_uart.c:60: *(Buffer + i) = UARTDR;
      0013A9 C0 05            [24] 1210 	push	ar5
      0013AB C0 06            [24] 1211 	push	ar6
      0013AD A8 75            [24] 1212 	mov	r0,_bp
      0013AF 08               [12] 1213 	inc	r0
      0013B0 E5 75            [12] 1214 	mov	a,_bp
      0013B2 24 04            [12] 1215 	add	a,#0x04
      0013B4 F9               [12] 1216 	mov	r1,a
      0013B5 E7               [12] 1217 	mov	a,@r1
      0013B6 26               [12] 1218 	add	a,@r0
      0013B7 FA               [12] 1219 	mov	r2,a
      0013B8 09               [12] 1220 	inc	r1
      0013B9 E7               [12] 1221 	mov	a,@r1
      0013BA 08               [12] 1222 	inc	r0
      0013BB 36               [12] 1223 	addc	a,@r0
      0013BC FE               [12] 1224 	mov	r6,a
      0013BD 08               [12] 1225 	inc	r0
      0013BE 86 07            [24] 1226 	mov	ar7,@r0
      0013C0 8A 82            [24] 1227 	mov	dpl,r2
      0013C2 8E 83            [24] 1228 	mov	dph,r6
      0013C4 8F F0            [24] 1229 	mov	b,r7
      0013C6 E5 58            [12] 1230 	mov	a,_UARTDR
      0013C8 12 14 FB         [24] 1231 	lcall	__gptrput
                                   1232 ;	src/mc96f8x16_uart.c:61: i++;
      0013CB E5 75            [12] 1233 	mov	a,_bp
      0013CD 24 04            [12] 1234 	add	a,#0x04
      0013CF F8               [12] 1235 	mov	r0,a
      0013D0 06               [12] 1236 	inc	@r0
      0013D1 B6 00 02         [24] 1237 	cjne	@r0,#0x00,00140$
      0013D4 08               [12] 1238 	inc	r0
      0013D5 06               [12] 1239 	inc	@r0
      0013D6                       1240 00140$:
      0013D6 D0 06            [24] 1241 	pop	ar6
      0013D8 D0 05            [24] 1242 	pop	ar5
      0013DA 02 13 35         [24] 1243 	ljmp	00109$
      0013DD                       1244 00107$:
                                   1245 ;	src/mc96f8x16_uart.c:65: return HAL_TIMEOUT;
      0013DD 75 82 02         [24] 1246 	mov	dpl,#0x02
      0013E0 80 03            [24] 1247 	sjmp	00112$
      0013E2                       1248 00111$:
                                   1249 ;	src/mc96f8x16_uart.c:68: return HAL_OK;
      0013E2 75 82 01         [24] 1250 	mov	dpl,#0x01
      0013E5                       1251 00112$:
                                   1252 ;	src/mc96f8x16_uart.c:69: }
      0013E5 85 75 81         [24] 1253 	mov	sp,_bp
      0013E8 D0 75            [24] 1254 	pop	_bp
      0013EA 22               [24] 1255 	ret
                                   1256 ;------------------------------------------------------------
                                   1257 ;Allocation info for local variables in function 'UART_Receive_ISR'
                                   1258 ;------------------------------------------------------------
                                   1259 ;	src/mc96f8x16_uart.c:71: void UART_Receive_ISR(void) __interrupt 10
                                   1260 ;	-----------------------------------------
                                   1261 ;	 function UART_Receive_ISR
                                   1262 ;	-----------------------------------------
      0013EB                       1263 _UART_Receive_ISR:
                                   1264 ;	src/mc96f8x16_uart.c:73: RxData = UARTDR;
      0013EB 85 58 74         [24] 1265 	mov	_RxData,_UARTDR
                                   1266 ;	src/mc96f8x16_uart.c:74: }
      0013EE 32               [24] 1267 	reti
                                   1268 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                   1269 ;	eliminated unneeded push/pop psw
                                   1270 ;	eliminated unneeded push/pop dpl
                                   1271 ;	eliminated unneeded push/pop dph
                                   1272 ;	eliminated unneeded push/pop b
                                   1273 ;	eliminated unneeded push/pop acc
                                   1274 	.area CSEG    (CODE)
                                   1275 	.area CONST   (CODE)
                                   1276 	.area XINIT   (CODE)
                                   1277 	.area CABS    (ABS,CODE)
