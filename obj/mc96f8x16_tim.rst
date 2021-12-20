                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.8.0 #10562 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module mc96f8x16_tim
                                      6 	.optsdcc -mmcs51 --model-small
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
                                    156 	.globl _SysTick_Init
                                    157 	.globl _GetTick
                                    158 	.globl _Delayms
                                    159 	.globl _CheckTimeout
                                    160 ;--------------------------------------------------------
                                    161 ; special function registers
                                    162 ;--------------------------------------------------------
                                    163 	.area RSEG    (ABS,DATA)
      000000                        164 	.org 0x0000
      000000                        165 _P0::
      000000                        166 	.ds 1
      000001                        167 _P0IO::
      000001                        168 	.ds 1
      000002                        169 _P0OD::
      000002                        170 	.ds 1
      000003                        171 _P0PU::
      000003                        172 	.ds 1
      000004                        173 _P03DB::
      000004                        174 	.ds 1
      000005                        175 _P1::
      000005                        176 	.ds 1
      000006                        177 _P1IO::
      000006                        178 	.ds 1
      000007                        179 _P1OD::
      000007                        180 	.ds 1
      000008                        181 _P1PU::
      000008                        182 	.ds 1
      000009                        183 _P12DB::
      000009                        184 	.ds 1
      00000A                        185 _P2::
      00000A                        186 	.ds 1
      00000B                        187 _P2IO::
      00000B                        188 	.ds 1
      00000C                        189 _P2OD::
      00000C                        190 	.ds 1
      00000D                        191 _P2PU::
      00000D                        192 	.ds 1
      00000E                        193 _P3::
      00000E                        194 	.ds 1
      00000F                        195 _P3IO::
      00000F                        196 	.ds 1
      000010                        197 _P3OD::
      000010                        198 	.ds 1
      000011                        199 _P3PU::
      000011                        200 	.ds 1
      000012                        201 _P0FSR::
      000012                        202 	.ds 1
      000013                        203 _P1FSRL::
      000013                        204 	.ds 1
      000014                        205 _P1FSRH::
      000014                        206 	.ds 1
      000015                        207 _P2FSR::
      000015                        208 	.ds 1
      000016                        209 _P3FSR::
      000016                        210 	.ds 1
      000017                        211 _IE::
      000017                        212 	.ds 1
      000018                        213 _IE1::
      000018                        214 	.ds 1
      000019                        215 _IE2::
      000019                        216 	.ds 1
      00001A                        217 _IE3::
      00001A                        218 	.ds 1
      00001B                        219 _IP::
      00001B                        220 	.ds 1
      00001C                        221 _IP1::
      00001C                        222 	.ds 1
      00001D                        223 _IIFLAG::
      00001D                        224 	.ds 1
      00001E                        225 _EIFLAG0::
      00001E                        226 	.ds 1
      00001F                        227 _EIFLAG1::
      00001F                        228 	.ds 1
      000020                        229 _EIPOL0L::
      000020                        230 	.ds 1
      000021                        231 _EIPOL0H::
      000021                        232 	.ds 1
      000022                        233 _EIPOL1::
      000022                        234 	.ds 1
      000023                        235 _EIPOL2::
      000023                        236 	.ds 1
      000024                        237 _SCCR::
      000024                        238 	.ds 1
      000025                        239 _OSCCR::
      000025                        240 	.ds 1
      000026                        241 _BITCNT::
      000026                        242 	.ds 1
      000027                        243 _BITCR::
      000027                        244 	.ds 1
      000028                        245 _RSTFR::
      000028                        246 	.ds 1
      000029                        247 _PCON::
      000029                        248 	.ds 1
      00002A                        249 _LVRCR::
      00002A                        250 	.ds 1
      00002B                        251 _LVICR::
      00002B                        252 	.ds 1
      00002C                        253 _WDTDR::
      00002C                        254 	.ds 1
      00002D                        255 _WDTCNT::
      00002D                        256 	.ds 1
      00002E                        257 _WDTCR::
      00002E                        258 	.ds 1
      00002F                        259 _WTDR::
      00002F                        260 	.ds 1
      000030                        261 _WTCNT::
      000030                        262 	.ds 1
      000031                        263 _WTCR::
      000031                        264 	.ds 1
      000032                        265 _T0CR::
      000032                        266 	.ds 1
      000033                        267 _T0CNT::
      000033                        268 	.ds 1
      000034                        269 _T0DR::
      000034                        270 	.ds 1
      000035                        271 _T0CDR::
      000035                        272 	.ds 1
      000036                        273 _T1CRL::
      000036                        274 	.ds 1
      000037                        275 _T1CRH::
      000037                        276 	.ds 1
      000038                        277 _T1ADRL::
      000038                        278 	.ds 1
      000039                        279 _T1ADRH::
      000039                        280 	.ds 1
      00003A                        281 _T1BDRL::
      00003A                        282 	.ds 1
      00003B                        283 _T1BDRH::
      00003B                        284 	.ds 1
      00003C                        285 _T2CRL::
      00003C                        286 	.ds 1
      00003D                        287 _T2CRH::
      00003D                        288 	.ds 1
      00003E                        289 _T2ADRL::
      00003E                        290 	.ds 1
      00003F                        291 _T2ADRH::
      00003F                        292 	.ds 1
      000040                        293 _T2BDRL::
      000040                        294 	.ds 1
      000041                        295 _T2BDRH::
      000041                        296 	.ds 1
      000042                        297 _BUZDR::
      000042                        298 	.ds 1
      000043                        299 _BUZCR::
      000043                        300 	.ds 1
      000044                        301 _ADCCRL::
      000044                        302 	.ds 1
      000045                        303 _ADCCRH::
      000045                        304 	.ds 1
      000046                        305 _ADCDRL::
      000046                        306 	.ds 1
      000047                        307 _ADCDRH::
      000047                        308 	.ds 1
      000048                        309 _ADWRCR0::
      000048                        310 	.ds 1
      000049                        311 _ADWRCR1::
      000049                        312 	.ds 1
      00004A                        313 _ADWRCR2::
      00004A                        314 	.ds 1
      00004B                        315 _ADWRCR3::
      00004B                        316 	.ds 1
      00004C                        317 _ADWCRL::
      00004C                        318 	.ds 1
      00004D                        319 _ADWCRH::
      00004D                        320 	.ds 1
      00004E                        321 _ADWIFRL::
      00004E                        322 	.ds 1
      00004F                        323 _ADWIFRH::
      00004F                        324 	.ds 1
      000050                        325 _SPICR::
      000050                        326 	.ds 1
      000051                        327 _SPIDR::
      000051                        328 	.ds 1
      000052                        329 _SPISR::
      000052                        330 	.ds 1
      000053                        331 _UARTCR1::
      000053                        332 	.ds 1
      000054                        333 _UARTCR2::
      000054                        334 	.ds 1
      000055                        335 _UARTCR3::
      000055                        336 	.ds 1
      000056                        337 _UARTST::
      000056                        338 	.ds 1
      000057                        339 _UARTBD::
      000057                        340 	.ds 1
      000058                        341 _UARTDR::
      000058                        342 	.ds 1
      000059                        343 _I2CCR::
      000059                        344 	.ds 1
      00005A                        345 _I2CSR::
      00005A                        346 	.ds 1
      00005B                        347 _I2CSAR0::
      00005B                        348 	.ds 1
      00005C                        349 _I2CSAR1::
      00005C                        350 	.ds 1
      00005D                        351 _I2CDR::
      00005D                        352 	.ds 1
      00005E                        353 _I2CSDHR::
      00005E                        354 	.ds 1
      00005F                        355 _I2CSCLR::
      00005F                        356 	.ds 1
      000060                        357 _I2CSCHR::
      000060                        358 	.ds 1
      000061                        359 _FSADRH::
      000061                        360 	.ds 1
      000062                        361 _FSADRM::
      000062                        362 	.ds 1
      000063                        363 _FSADRL::
      000063                        364 	.ds 1
      000064                        365 _FIDR::
      000064                        366 	.ds 1
      000065                        367 _FMCR::
      000065                        368 	.ds 1
      000066                        369 _ACC::
      000066                        370 	.ds 1
      000067                        371 _B::
      000067                        372 	.ds 1
      000068                        373 _PSW::
      000068                        374 	.ds 1
      000069                        375 _SP::
      000069                        376 	.ds 1
      00006A                        377 _DPL::
      00006A                        378 	.ds 1
      00006B                        379 _DPH::
      00006B                        380 	.ds 1
      00006C                        381 _DPL1::
      00006C                        382 	.ds 1
      00006D                        383 _DPH1::
      00006D                        384 	.ds 1
      00006E                        385 _EO::
      00006E                        386 	.ds 1
                                    387 ;--------------------------------------------------------
                                    388 ; special function bits
                                    389 ;--------------------------------------------------------
                                    390 	.area RSEG    (ABS,DATA)
      000000                        391 	.org 0x0000
      000000                        392 _P00::
      000000                        393 	.ds 1
      000001                        394 _P01::
      000001                        395 	.ds 1
      000002                        396 _P02::
      000002                        397 	.ds 1
      000003                        398 _P03::
      000003                        399 	.ds 1
      000004                        400 _P04::
      000004                        401 	.ds 1
      000005                        402 _P05::
      000005                        403 	.ds 1
      000006                        404 _P06::
      000006                        405 	.ds 1
      000007                        406 _P07::
      000007                        407 	.ds 1
      000008                        408 _P10::
      000008                        409 	.ds 1
      000009                        410 _P11::
      000009                        411 	.ds 1
      00000A                        412 _P12::
      00000A                        413 	.ds 1
      00000B                        414 _P13::
      00000B                        415 	.ds 1
      00000C                        416 _P14::
      00000C                        417 	.ds 1
      00000D                        418 _P15::
      00000D                        419 	.ds 1
      00000E                        420 _P16::
      00000E                        421 	.ds 1
      00000F                        422 _P17::
      00000F                        423 	.ds 1
      000010                        424 _P20::
      000010                        425 	.ds 1
      000011                        426 _P21::
      000011                        427 	.ds 1
      000012                        428 _P22::
      000012                        429 	.ds 1
      000013                        430 _P23::
      000013                        431 	.ds 1
      000014                        432 _P24::
      000014                        433 	.ds 1
      000015                        434 _P25::
      000015                        435 	.ds 1
      000016                        436 _P26::
      000016                        437 	.ds 1
      000017                        438 _P27::
      000017                        439 	.ds 1
      000018                        440 _P30::
      000018                        441 	.ds 1
      000019                        442 _P31::
      000019                        443 	.ds 1
      00001A                        444 _P32::
      00001A                        445 	.ds 1
      00001B                        446 _P33::
      00001B                        447 	.ds 1
      00001C                        448 _P34::
      00001C                        449 	.ds 1
      00001D                        450 _P35::
      00001D                        451 	.ds 1
      00001E                        452 _P36::
      00001E                        453 	.ds 1
      00001F                        454 _P37::
      00001F                        455 	.ds 1
                                    456 ;--------------------------------------------------------
                                    457 ; overlayable register banks
                                    458 ;--------------------------------------------------------
                                    459 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        460 	.ds 8
                                    461 ;--------------------------------------------------------
                                    462 ; internal ram data
                                    463 ;--------------------------------------------------------
                                    464 	.area DSEG    (DATA)
      000072                        465 _Tick::
      000072                        466 	.ds 2
                                    467 ;--------------------------------------------------------
                                    468 ; overlayable items in internal ram 
                                    469 ;--------------------------------------------------------
                                    470 ;--------------------------------------------------------
                                    471 ; indirectly addressable internal ram data
                                    472 ;--------------------------------------------------------
                                    473 	.area ISEG    (DATA)
                                    474 ;--------------------------------------------------------
                                    475 ; absolute internal ram data
                                    476 ;--------------------------------------------------------
                                    477 	.area IABS    (ABS,DATA)
                                    478 	.area IABS    (ABS,DATA)
                                    479 ;--------------------------------------------------------
                                    480 ; bit data
                                    481 ;--------------------------------------------------------
                                    482 	.area BSEG    (BIT)
                                    483 ;--------------------------------------------------------
                                    484 ; paged external ram data
                                    485 ;--------------------------------------------------------
                                    486 	.area PSEG    (PAG,XDATA)
                                    487 ;--------------------------------------------------------
                                    488 ; external ram data
                                    489 ;--------------------------------------------------------
                                    490 	.area XSEG    (XDATA)
                                    491 ;--------------------------------------------------------
                                    492 ; absolute external ram data
                                    493 ;--------------------------------------------------------
                                    494 	.area XABS    (ABS,XDATA)
                                    495 ;--------------------------------------------------------
                                    496 ; external initialized ram data
                                    497 ;--------------------------------------------------------
                                    498 	.area XISEG   (XDATA)
                                    499 	.area HOME    (CODE)
                                    500 	.area GSINIT0 (CODE)
                                    501 	.area GSINIT1 (CODE)
                                    502 	.area GSINIT2 (CODE)
                                    503 	.area GSINIT3 (CODE)
                                    504 	.area GSINIT4 (CODE)
                                    505 	.area GSINIT5 (CODE)
                                    506 	.area GSINIT  (CODE)
                                    507 	.area GSFINAL (CODE)
                                    508 	.area CSEG    (CODE)
                                    509 ;--------------------------------------------------------
                                    510 ; global & static initialisations
                                    511 ;--------------------------------------------------------
                                    512 	.area HOME    (CODE)
                                    513 	.area GSINIT  (CODE)
                                    514 	.area GSFINAL (CODE)
                                    515 	.area GSINIT  (CODE)
                                    516 ;	src/mc96f8x16_tim.c:5: volatile uint16_t Tick = 0;
      000825 E4               [12]  517 	clr	a
      000826 F5 72            [12]  518 	mov	_Tick,a
      000828 F5 73            [12]  519 	mov	(_Tick + 1),a
                                    520 ;	./inc/MC96F8316.h:17: sfr			P0			= 0x80;			// P0 Data Register
      00082A 75 00 80         [24]  521 	mov	_P0,#0x80
                                    522 ;	./inc/MC96F8316.h:27: sfr			P0IO		= 0xA1;			// P0 Direction Register
      00082D 75 01 A1         [24]  523 	mov	_P0IO,#0xa1
                                    524 ;	./inc/MC96F8316.h:28: sfr			P0OD		= 0x91;			// P0 Open-drain Selection Register
      000830 75 02 91         [24]  525 	mov	_P0OD,#0x91
                                    526 ;	./inc/MC96F8316.h:29: sfr			P0PU		= 0xAC;			// P0 Pull-up Resistor Selection Register
      000833 75 03 AC         [24]  527 	mov	_P0PU,#0xac
                                    528 ;	./inc/MC96F8316.h:30: sfr			P03DB		= 0xDE;			// P0/P3 Debounce Enable Register
      000836 75 04 DE         [24]  529 	mov	_P03DB,#0xde
                                    530 ;	./inc/MC96F8316.h:32: sfr			P1			= 0x88;			// P1 Data Register
      000839 75 05 88         [24]  531 	mov	_P1,#0x88
                                    532 ;	./inc/MC96F8316.h:42: sfr			P1IO		= 0xB1;			// P1 Direction Register
      00083C 75 06 B1         [24]  533 	mov	_P1IO,#0xb1
                                    534 ;	./inc/MC96F8316.h:43: sfr			P1OD		= 0x92;			// P1 Open-drain Selection Register
      00083F 75 07 92         [24]  535 	mov	_P1OD,#0x92
                                    536 ;	./inc/MC96F8316.h:44: sfr			P1PU		= 0xAD;			// P1 Pull-up Resistor Selection Register
      000842 75 08 AD         [24]  537 	mov	_P1PU,#0xad
                                    538 ;	./inc/MC96F8316.h:45: sfr			P12DB		= 0xDF;			// P1/P2 Debounce Enable Register
      000845 75 09 DF         [24]  539 	mov	_P12DB,#0xdf
                                    540 ;	./inc/MC96F8316.h:47: sfr			P2			= 0x90;			// P2 Data Register
      000848 75 0A 90         [24]  541 	mov	_P2,#0x90
                                    542 ;	./inc/MC96F8316.h:57: sfr			P2IO		= 0xB9;			// P2 Direction Register
      00084B 75 0B B9         [24]  543 	mov	_P2IO,#0xb9
                                    544 ;	./inc/MC96F8316.h:58: sfr			P2OD		= 0x93;			// P2 Open-drain Selection Register
      00084E 75 0C 93         [24]  545 	mov	_P2OD,#0x93
                                    546 ;	./inc/MC96F8316.h:59: sfr			P2PU		= 0xAE;			// P2 Pull-up Resistor Selection Register
      000851 75 0D AE         [24]  547 	mov	_P2PU,#0xae
                                    548 ;	./inc/MC96F8316.h:61: sfr			P3			= 0x98;			// P3 Data Register
      000854 75 0E 98         [24]  549 	mov	_P3,#0x98
                                    550 ;	./inc/MC96F8316.h:71: sfr			P3IO		= 0xC1;			// P3 Direction Register
      000857 75 0F C1         [24]  551 	mov	_P3IO,#0xc1
                                    552 ;	./inc/MC96F8316.h:72: sfr			P3OD		= 0x94;			// P3 Open-drain Selection Register
      00085A 75 10 94         [24]  553 	mov	_P3OD,#0x94
                                    554 ;	./inc/MC96F8316.h:73: sfr			P3PU		= 0xAF;			// P3 Pull-up Resistor Selection Register
      00085D 75 11 AF         [24]  555 	mov	_P3PU,#0xaf
                                    556 ;	./inc/MC96F8316.h:75: sfr			P0FSR		= 0xD3;			//P0 Function Selection Register
      000860 75 12 D3         [24]  557 	mov	_P0FSR,#0xd3
                                    558 ;	./inc/MC96F8316.h:76: sfr			P1FSRL		= 0xD4;			//P1 Function Selection Low Register
      000863 75 13 D4         [24]  559 	mov	_P1FSRL,#0xd4
                                    560 ;	./inc/MC96F8316.h:77: sfr			P1FSRH		= 0xD5;			//P1 Function Selection High Register
      000866 75 14 D5         [24]  561 	mov	_P1FSRH,#0xd5
                                    562 ;	./inc/MC96F8316.h:78: sfr			P2FSR		= 0xD6;			//P2 Function Selection Register
      000869 75 15 D6         [24]  563 	mov	_P2FSR,#0xd6
                                    564 ;	./inc/MC96F8316.h:79: sfr			P3FSR		= 0xD7;			//P3 Function Selection Register
      00086C 75 16 D7         [24]  565 	mov	_P3FSR,#0xd7
                                    566 ;	./inc/MC96F8316.h:82: sfr			IE			= 0xA8;			// Interrupt Enable Register 0
      00086F 75 17 A8         [24]  567 	mov	_IE,#0xa8
                                    568 ;	./inc/MC96F8316.h:83: sfr			IE1			= 0xA9;			// Interrupt Enable Register 1
      000872 75 18 A9         [24]  569 	mov	_IE1,#0xa9
                                    570 ;	./inc/MC96F8316.h:84: sfr			IE2			= 0xAA;			// Interrupt Enable Register 2
      000875 75 19 AA         [24]  571 	mov	_IE2,#0xaa
                                    572 ;	./inc/MC96F8316.h:85: sfr			IE3			= 0xAB;			// Interrupt Enable Register 3
      000878 75 1A AB         [24]  573 	mov	_IE3,#0xab
                                    574 ;	./inc/MC96F8316.h:86: sfr			IP			= 0xB8;			// Interrupt Priority Register 0
      00087B 75 1B B8         [24]  575 	mov	_IP,#0xb8
                                    576 ;	./inc/MC96F8316.h:87: sfr			IP1			= 0xF8;			// Interrupt Priority Register 1
      00087E 75 1C F8         [24]  577 	mov	_IP1,#0xf8
                                    578 ;	./inc/MC96F8316.h:88: sfr			IIFLAG		= 0xA0;			// Internal Interrupt Flag Register
      000881 75 1D A0         [24]  579 	mov	_IIFLAG,#0xa0
                                    580 ;	./inc/MC96F8316.h:89: sfr			EIFLAG0		= 0xC0;			// External Interrupt Flag 0 Register
      000884 75 1E C0         [24]  581 	mov	_EIFLAG0,#0xc0
                                    582 ;	./inc/MC96F8316.h:90: sfr			EIFLAG1		= 0xB0;			// External Interrupt Flag 1 Register
      000887 75 1F B0         [24]  583 	mov	_EIFLAG1,#0xb0
                                    584 ;	./inc/MC96F8316.h:91: sfr			EIPOL0L		= 0xA4;			// External Interrupt Polarity 0 Low Register
      00088A 75 20 A4         [24]  585 	mov	_EIPOL0L,#0xa4
                                    586 ;	./inc/MC96F8316.h:92: sfr			EIPOL0H		= 0xA5;			// External Interrupt Polarity 0 High Register
      00088D 75 21 A5         [24]  587 	mov	_EIPOL0H,#0xa5
                                    588 ;	./inc/MC96F8316.h:93: sfr			EIPOL1		= 0xA6;			// External Interrupt Polarity 1 Register
      000890 75 22 A6         [24]  589 	mov	_EIPOL1,#0xa6
                                    590 ;	./inc/MC96F8316.h:94: sfr			EIPOL2		= 0xA7;			// External Interrupt Polarity 2 Register
      000893 75 23 A7         [24]  591 	mov	_EIPOL2,#0xa7
                                    592 ;	./inc/MC96F8316.h:97: sfr			SCCR		= 0x8A;			// System Clock Control Register
      000896 75 24 8A         [24]  593 	mov	_SCCR,#0x8a
                                    594 ;	./inc/MC96F8316.h:98: sfr			OSCCR		= 0xC8;			// Oscillator Control Register
      000899 75 25 C8         [24]  595 	mov	_OSCCR,#0xc8
                                    596 ;	./inc/MC96F8316.h:99: sfr			BITCNT		= 0x8C;			// Basic Interval Timer Counter Register
      00089C 75 26 8C         [24]  597 	mov	_BITCNT,#0x8c
                                    598 ;	./inc/MC96F8316.h:100: sfr			BITCR		= 0x8B;			// Basic Interval Timer Control Register
      00089F 75 27 8B         [24]  599 	mov	_BITCR,#0x8b
                                    600 ;	./inc/MC96F8316.h:101: sfr			RSTFR		= 0xE8;			// Reset Flag Register
      0008A2 75 28 E8         [24]  601 	mov	_RSTFR,#0xe8
                                    602 ;	./inc/MC96F8316.h:102: sfr			PCON		= 0x87;			// Power Control Register
      0008A5 75 29 87         [24]  603 	mov	_PCON,#0x87
                                    604 ;	./inc/MC96F8316.h:103: sfr			LVRCR		= 0xD8;			// Low Voltage Reset Control Register
      0008A8 75 2A D8         [24]  605 	mov	_LVRCR,#0xd8
                                    606 ;	./inc/MC96F8316.h:104: sfr			LVICR		= 0x86;			// Low Voltage Indicator Control Register
      0008AB 75 2B 86         [24]  607 	mov	_LVICR,#0x86
                                    608 ;	./inc/MC96F8316.h:107: sfr			WDTDR		= 0x8E;			// Watch Dog Timer Data Register
      0008AE 75 2C 8E         [24]  609 	mov	_WDTDR,#0x8e
                                    610 ;	./inc/MC96F8316.h:108: sfr			WDTCNT		= 0x8E;			// Watch Dog Timer Counter Register
      0008B1 75 2D 8E         [24]  611 	mov	_WDTCNT,#0x8e
                                    612 ;	./inc/MC96F8316.h:109: sfr			WDTCR		= 0x8D;			// Watch Dog Timer Control Register
      0008B4 75 2E 8D         [24]  613 	mov	_WDTCR,#0x8d
                                    614 ;	./inc/MC96F8316.h:112: sfr			WTDR		= 0x89;			// Watch Timer Data Register
      0008B7 75 2F 89         [24]  615 	mov	_WTDR,#0x89
                                    616 ;	./inc/MC96F8316.h:113: sfr			WTCNT		= 0x89;			// Watch Timer Counter Register
      0008BA 75 30 89         [24]  617 	mov	_WTCNT,#0x89
                                    618 ;	./inc/MC96F8316.h:114: sfr			WTCR		= 0x96;			// Watch Timer Control Register
      0008BD 75 31 96         [24]  619 	mov	_WTCR,#0x96
                                    620 ;	./inc/MC96F8316.h:117: sfr			T0CR		= 0xB2;			// Timer 0 Control Register
      0008C0 75 32 B2         [24]  621 	mov	_T0CR,#0xb2
                                    622 ;	./inc/MC96F8316.h:118: sfr			T0CNT		= 0xB3;			// Timer 0 Counter Register
      0008C3 75 33 B3         [24]  623 	mov	_T0CNT,#0xb3
                                    624 ;	./inc/MC96F8316.h:119: sfr			T0DR		= 0xB4;			// Timer 0 Data Register
      0008C6 75 34 B4         [24]  625 	mov	_T0DR,#0xb4
                                    626 ;	./inc/MC96F8316.h:120: sfr			T0CDR		= 0xB4;			// Timer 0 Capture Data Register
      0008C9 75 35 B4         [24]  627 	mov	_T0CDR,#0xb4
                                    628 ;	./inc/MC96F8316.h:126: sfr			T1CRL		= 0xBA;			// Timer 1 Control Low Register
      0008CC 75 36 BA         [24]  629 	mov	_T1CRL,#0xba
                                    630 ;	./inc/MC96F8316.h:127: sfr			T1CRH		= 0xBB;			// Timer 1 Control High Register
      0008CF 75 37 BB         [24]  631 	mov	_T1CRH,#0xbb
                                    632 ;	./inc/MC96F8316.h:128: sfr			T1ADRL		= 0xBC;			// Timer 1 A Data Low Register
      0008D2 75 38 BC         [24]  633 	mov	_T1ADRL,#0xbc
                                    634 ;	./inc/MC96F8316.h:129: sfr			T1ADRH		= 0xBD;			// Timer 1 A Data High Register
      0008D5 75 39 BD         [24]  635 	mov	_T1ADRH,#0xbd
                                    636 ;	./inc/MC96F8316.h:130: sfr			T1BDRL		= 0xBE;			// Timer 1 B Data Low Register
      0008D8 75 3A BE         [24]  637 	mov	_T1BDRL,#0xbe
                                    638 ;	./inc/MC96F8316.h:131: sfr			T1BDRH		= 0xBF;			// Timer 1 B Data High Register
      0008DB 75 3B BF         [24]  639 	mov	_T1BDRH,#0xbf
                                    640 ;	./inc/MC96F8316.h:134: sfr			T2CRL		= 0xC2;			// Timer 2 Control Low Register
      0008DE 75 3C C2         [24]  641 	mov	_T2CRL,#0xc2
                                    642 ;	./inc/MC96F8316.h:135: sfr			T2CRH		= 0xC3;			// Timer 2 Control High Register
      0008E1 75 3D C3         [24]  643 	mov	_T2CRH,#0xc3
                                    644 ;	./inc/MC96F8316.h:136: sfr			T2ADRL		= 0xC4;			// Timer 2 A Data Low Register
      0008E4 75 3E C4         [24]  645 	mov	_T2ADRL,#0xc4
                                    646 ;	./inc/MC96F8316.h:137: sfr			T2ADRH		= 0xC5;			// Timer 2 A Data High Register
      0008E7 75 3F C5         [24]  647 	mov	_T2ADRH,#0xc5
                                    648 ;	./inc/MC96F8316.h:138: sfr			T2BDRL		= 0xC6;			// Timer 2 B Data Low Register
      0008EA 75 40 C6         [24]  649 	mov	_T2BDRL,#0xc6
                                    650 ;	./inc/MC96F8316.h:139: sfr			T2BDRH		= 0xC7;			// Timer 2 B Data High Register
      0008ED 75 41 C7         [24]  651 	mov	_T2BDRH,#0xc7
                                    652 ;	./inc/MC96F8316.h:142: sfr			BUZDR		= 0x8F;			// BUZZER Data Register
      0008F0 75 42 8F         [24]  653 	mov	_BUZDR,#0x8f
                                    654 ;	./inc/MC96F8316.h:143: sfr			BUZCR		= 0x97;			// BUZZER Control Register
      0008F3 75 43 97         [24]  655 	mov	_BUZCR,#0x97
                                    656 ;	./inc/MC96F8316.h:146: sfr			ADCCRL		= 0x9C;			// A/D Converter Control Low Register
      0008F6 75 44 9C         [24]  657 	mov	_ADCCRL,#0x9c
                                    658 ;	./inc/MC96F8316.h:147: sfr			ADCCRH		= 0x9D;			// A/D Converter Control High Register
      0008F9 75 45 9D         [24]  659 	mov	_ADCCRH,#0x9d
                                    660 ;	./inc/MC96F8316.h:148: sfr			ADCDRL		= 0x9E;			// A/D Converter Data Low Register
      0008FC 75 46 9E         [24]  661 	mov	_ADCDRL,#0x9e
                                    662 ;	./inc/MC96F8316.h:149: sfr			ADCDRH		= 0x9F;			// A/D Converter Data High Register
      0008FF 75 47 9F         [24]  663 	mov	_ADCDRH,#0x9f
                                    664 ;	./inc/MC96F8316.h:151: sfr			ADWRCR0		= 0xF2;			// ADC Wake-up Resistor Control Register 0
      000902 75 48 F2         [24]  665 	mov	_ADWRCR0,#0xf2
                                    666 ;	./inc/MC96F8316.h:152: sfr			ADWRCR1		= 0xF3;			// ADC Wake-up Resistor Control Register 1
      000905 75 49 F3         [24]  667 	mov	_ADWRCR1,#0xf3
                                    668 ;	./inc/MC96F8316.h:153: sfr			ADWRCR2		= 0xF4;			// ADC Wake-up Resistor Control Register 2
      000908 75 4A F4         [24]  669 	mov	_ADWRCR2,#0xf4
                                    670 ;	./inc/MC96F8316.h:154: sfr			ADWRCR3		= 0xF5;			// ADC Wake-up Resistor Control Register 3
      00090B 75 4B F5         [24]  671 	mov	_ADWRCR3,#0xf5
                                    672 ;	./inc/MC96F8316.h:155: sfr			ADWCRL		= 0xF6;			// ADC Wake-up Control Low Register
      00090E 75 4C F6         [24]  673 	mov	_ADWCRL,#0xf6
                                    674 ;	./inc/MC96F8316.h:156: sfr			ADWCRH		= 0xF7;			// ADC Wake-up Control High Register
      000911 75 4D F7         [24]  675 	mov	_ADWCRH,#0xf7
                                    676 ;	./inc/MC96F8316.h:157: sfr			ADWIFRL		= 0xDC;			// ADC Wake-up Interrupt Flag Low Register
      000914 75 4E DC         [24]  677 	mov	_ADWIFRL,#0xdc
                                    678 ;	./inc/MC96F8316.h:158: sfr			ADWIFRH		= 0xDD;			// ADC Wake-up Interrupt Flag High Register
      000917 75 4F DD         [24]  679 	mov	_ADWIFRH,#0xdd
                                    680 ;	./inc/MC96F8316.h:161: sfr			SPICR		= 0xB5;			// SPI Control Register
      00091A 75 50 B5         [24]  681 	mov	_SPICR,#0xb5
                                    682 ;	./inc/MC96F8316.h:162: sfr			SPIDR		= 0xB6;			// SPI Data Register
      00091D 75 51 B6         [24]  683 	mov	_SPIDR,#0xb6
                                    684 ;	./inc/MC96F8316.h:163: sfr			SPISR		= 0xB7;			// SPI Status Register
      000920 75 52 B7         [24]  685 	mov	_SPISR,#0xb7
                                    686 ;	./inc/MC96F8316.h:166: sfr			UARTCR1		= 0xE2;			// UART Control Register 1
      000923 75 53 E2         [24]  687 	mov	_UARTCR1,#0xe2
                                    688 ;	./inc/MC96F8316.h:167: sfr			UARTCR2		= 0xE3;			// UART Control Register 2
      000926 75 54 E3         [24]  689 	mov	_UARTCR2,#0xe3
                                    690 ;	./inc/MC96F8316.h:168: sfr			UARTCR3		= 0xE4;			// UART Control Register 3
      000929 75 55 E4         [24]  691 	mov	_UARTCR3,#0xe4
                                    692 ;	./inc/MC96F8316.h:169: sfr			UARTST		= 0xE5;			// UART Status Register
      00092C 75 56 E5         [24]  693 	mov	_UARTST,#0xe5
                                    694 ;	./inc/MC96F8316.h:170: sfr			UARTBD		= 0xE6;			// UART BaudRate Register
      00092F 75 57 E6         [24]  695 	mov	_UARTBD,#0xe6
                                    696 ;	./inc/MC96F8316.h:171: sfr			UARTDR		= 0xE7;			// UART Data Register
      000932 75 58 E7         [24]  697 	mov	_UARTDR,#0xe7
                                    698 ;	./inc/MC96F8316.h:174: sfr			I2CCR		= 0xE9;			// I2C Control Register
      000935 75 59 E9         [24]  699 	mov	_I2CCR,#0xe9
                                    700 ;	./inc/MC96F8316.h:175: sfr			I2CSR		= 0xEA;			// I2C Status Register
      000938 75 5A EA         [24]  701 	mov	_I2CSR,#0xea
                                    702 ;	./inc/MC96F8316.h:176: sfr			I2CSAR0		= 0xEB;			// I2C Slave Address 0 Register
      00093B 75 5B EB         [24]  703 	mov	_I2CSAR0,#0xeb
                                    704 ;	./inc/MC96F8316.h:177: sfr			I2CSAR1		= 0xF1;			// I2C Slave Address 1 Register
      00093E 75 5C F1         [24]  705 	mov	_I2CSAR1,#0xf1
                                    706 ;	./inc/MC96F8316.h:178: sfr			I2CDR		= 0xEC;			// I2C Data Register
      000941 75 5D EC         [24]  707 	mov	_I2CDR,#0xec
                                    708 ;	./inc/MC96F8316.h:179: sfr			I2CSDHR		= 0xED;			// I2C SDA Hold Time Register
      000944 75 5E ED         [24]  709 	mov	_I2CSDHR,#0xed
                                    710 ;	./inc/MC96F8316.h:180: sfr			I2CSCLR		= 0xEE;			// I2C SCL Low Period Register
      000947 75 5F EE         [24]  711 	mov	_I2CSCLR,#0xee
                                    712 ;	./inc/MC96F8316.h:181: sfr			I2CSCHR		= 0xEF;			// I2C SCL High Period Register
      00094A 75 60 EF         [24]  713 	mov	_I2CSCHR,#0xef
                                    714 ;	./inc/MC96F8316.h:184: sfr			FSADRH		= 0xFA;			// Flash Sector Address High Register
      00094D 75 61 FA         [24]  715 	mov	_FSADRH,#0xfa
                                    716 ;	./inc/MC96F8316.h:185: sfr			FSADRM		= 0xFB;			// Flash Sector Address Middle Register
      000950 75 62 FB         [24]  717 	mov	_FSADRM,#0xfb
                                    718 ;	./inc/MC96F8316.h:186: sfr			FSADRL		= 0xFC;			// Flash Sector Address Low Register
      000953 75 63 FC         [24]  719 	mov	_FSADRL,#0xfc
                                    720 ;	./inc/MC96F8316.h:187: sfr			FIDR		= 0xFD;			// Flash Identification Register
      000956 75 64 FD         [24]  721 	mov	_FIDR,#0xfd
                                    722 ;	./inc/MC96F8316.h:188: sfr			FMCR		= 0xFE;			// Flash Mode Control Register
      000959 75 65 FE         [24]  723 	mov	_FMCR,#0xfe
                                    724 ;	./inc/MC96F8316.h:190: sfr			ACC			= 0xE0;
      00095C 75 66 E0         [24]  725 	mov	_ACC,#0xe0
                                    726 ;	./inc/MC96F8316.h:191: sfr			B			= 0xF0;
      00095F 75 67 F0         [24]  727 	mov	_B,#0xf0
                                    728 ;	./inc/MC96F8316.h:192: sfr			PSW			= 0xD0;
      000962 75 68 D0         [24]  729 	mov	_PSW,#0xd0
                                    730 ;	./inc/MC96F8316.h:193: sfr			SP			= 0x81;
      000965 75 69 81         [24]  731 	mov	_SP,#0x81
                                    732 ;	./inc/MC96F8316.h:194: sfr			DPL			= 0x82;
      000968 75 6A 82         [24]  733 	mov	_DPL,#0x82
                                    734 ;	./inc/MC96F8316.h:195: sfr			DPH			= 0x83;
      00096B 75 6B 83         [24]  735 	mov	_DPH,#0x83
                                    736 ;	./inc/MC96F8316.h:196: sfr			DPL1		= 0x84;
      00096E 75 6C 84         [24]  737 	mov	_DPL1,#0x84
                                    738 ;	./inc/MC96F8316.h:197: sfr			DPH1		= 0x85;
      000971 75 6D 85         [24]  739 	mov	_DPH1,#0x85
                                    740 ;	./inc/MC96F8316.h:198: sfr			EO			= 0xA2;			// EXTENDED OPERATION REGISTER
      000974 75 6E A2         [24]  741 	mov	_EO,#0xa2
                                    742 ;	./inc/MC96F8316.h:18: sbit	P00			= 0x80;
                                    743 ;	assignBit
      000977 D2 00            [12]  744 	setb	_P00
                                    745 ;	./inc/MC96F8316.h:19: sbit	P01			= 0x81;
                                    746 ;	assignBit
      000979 D2 01            [12]  747 	setb	_P01
                                    748 ;	./inc/MC96F8316.h:20: sbit	P02			= 0x82;
                                    749 ;	assignBit
      00097B D2 02            [12]  750 	setb	_P02
                                    751 ;	./inc/MC96F8316.h:21: sbit	P03			= 0x83;
                                    752 ;	assignBit
      00097D D2 03            [12]  753 	setb	_P03
                                    754 ;	./inc/MC96F8316.h:22: sbit	P04			= 0x84;
                                    755 ;	assignBit
      00097F D2 04            [12]  756 	setb	_P04
                                    757 ;	./inc/MC96F8316.h:23: sbit	P05			= 0x85;
                                    758 ;	assignBit
      000981 D2 05            [12]  759 	setb	_P05
                                    760 ;	./inc/MC96F8316.h:24: sbit	P06			= 0x86;
                                    761 ;	assignBit
      000983 D2 06            [12]  762 	setb	_P06
                                    763 ;	./inc/MC96F8316.h:25: sbit	P07			= 0x87;
                                    764 ;	assignBit
      000985 D2 07            [12]  765 	setb	_P07
                                    766 ;	./inc/MC96F8316.h:33: sbit	P10			= 0x88;
                                    767 ;	assignBit
      000987 D2 08            [12]  768 	setb	_P10
                                    769 ;	./inc/MC96F8316.h:34: sbit	P11			= 0x89;
                                    770 ;	assignBit
      000989 D2 09            [12]  771 	setb	_P11
                                    772 ;	./inc/MC96F8316.h:35: sbit	P12			= 0x8A;
                                    773 ;	assignBit
      00098B D2 0A            [12]  774 	setb	_P12
                                    775 ;	./inc/MC96F8316.h:36: sbit	P13			= 0x8B;
                                    776 ;	assignBit
      00098D D2 0B            [12]  777 	setb	_P13
                                    778 ;	./inc/MC96F8316.h:37: sbit	P14			= 0x8C;
                                    779 ;	assignBit
      00098F D2 0C            [12]  780 	setb	_P14
                                    781 ;	./inc/MC96F8316.h:38: sbit	P15			= 0x8D;
                                    782 ;	assignBit
      000991 D2 0D            [12]  783 	setb	_P15
                                    784 ;	./inc/MC96F8316.h:39: sbit	P16			= 0x8E;
                                    785 ;	assignBit
      000993 D2 0E            [12]  786 	setb	_P16
                                    787 ;	./inc/MC96F8316.h:40: sbit	P17			= 0x8F;
                                    788 ;	assignBit
      000995 D2 0F            [12]  789 	setb	_P17
                                    790 ;	./inc/MC96F8316.h:48: sbit	P20			= 0x90;
                                    791 ;	assignBit
      000997 D2 10            [12]  792 	setb	_P20
                                    793 ;	./inc/MC96F8316.h:49: sbit	P21			= 0x91;
                                    794 ;	assignBit
      000999 D2 11            [12]  795 	setb	_P21
                                    796 ;	./inc/MC96F8316.h:50: sbit	P22			= 0x92;
                                    797 ;	assignBit
      00099B D2 12            [12]  798 	setb	_P22
                                    799 ;	./inc/MC96F8316.h:51: sbit	P23			= 0x93;
                                    800 ;	assignBit
      00099D D2 13            [12]  801 	setb	_P23
                                    802 ;	./inc/MC96F8316.h:52: sbit	P24			= 0x94;
                                    803 ;	assignBit
      00099F D2 14            [12]  804 	setb	_P24
                                    805 ;	./inc/MC96F8316.h:53: sbit	P25			= 0x95;
                                    806 ;	assignBit
      0009A1 D2 15            [12]  807 	setb	_P25
                                    808 ;	./inc/MC96F8316.h:54: sbit	P26			= 0x96;
                                    809 ;	assignBit
      0009A3 D2 16            [12]  810 	setb	_P26
                                    811 ;	./inc/MC96F8316.h:55: sbit	P27			= 0x97;
                                    812 ;	assignBit
      0009A5 D2 17            [12]  813 	setb	_P27
                                    814 ;	./inc/MC96F8316.h:62: sbit	P30			= 0x98;
                                    815 ;	assignBit
      0009A7 D2 18            [12]  816 	setb	_P30
                                    817 ;	./inc/MC96F8316.h:63: sbit	P31			= 0x99;
                                    818 ;	assignBit
      0009A9 D2 19            [12]  819 	setb	_P31
                                    820 ;	./inc/MC96F8316.h:64: sbit	P32			= 0x9A;
                                    821 ;	assignBit
      0009AB D2 1A            [12]  822 	setb	_P32
                                    823 ;	./inc/MC96F8316.h:65: sbit	P33			= 0x9B;
                                    824 ;	assignBit
      0009AD D2 1B            [12]  825 	setb	_P33
                                    826 ;	./inc/MC96F8316.h:66: sbit	P34			= 0x9C;
                                    827 ;	assignBit
      0009AF D2 1C            [12]  828 	setb	_P34
                                    829 ;	./inc/MC96F8316.h:67: sbit	P35			= 0x9D;
                                    830 ;	assignBit
      0009B1 D2 1D            [12]  831 	setb	_P35
                                    832 ;	./inc/MC96F8316.h:68: sbit	P36			= 0x9E;
                                    833 ;	assignBit
      0009B3 D2 1E            [12]  834 	setb	_P36
                                    835 ;	./inc/MC96F8316.h:69: sbit	P37			= 0x9F;
                                    836 ;	assignBit
      0009B5 D2 1F            [12]  837 	setb	_P37
                                    838 ;--------------------------------------------------------
                                    839 ; Home
                                    840 ;--------------------------------------------------------
                                    841 	.area HOME    (CODE)
                                    842 	.area HOME    (CODE)
                                    843 ;--------------------------------------------------------
                                    844 ; code
                                    845 ;--------------------------------------------------------
                                    846 	.area CSEG    (CODE)
                                    847 ;------------------------------------------------------------
                                    848 ;Allocation info for local variables in function 'SysTick_Init'
                                    849 ;------------------------------------------------------------
                                    850 ;	src/mc96f8x16_tim.c:7: void SysTick_Init(void)
                                    851 ;	-----------------------------------------
                                    852 ;	 function SysTick_Init
                                    853 ;	-----------------------------------------
      00104A                        854 _SysTick_Init:
                           000007   855 	ar7 = 0x07
                           000006   856 	ar6 = 0x06
                           000005   857 	ar5 = 0x05
                           000004   858 	ar4 = 0x04
                           000003   859 	ar3 = 0x03
                           000002   860 	ar2 = 0x02
                           000001   861 	ar1 = 0x01
                           000000   862 	ar0 = 0x00
                                    863 ;	src/mc96f8x16_tim.c:9: BITCR = 0x00;
      00104A 75 27 00         [24]  864 	mov	_BITCR,#0x00
                                    865 ;	src/mc96f8x16_tim.c:10: BITCR |= (BITCK_FX_DIV_1024 << 5u) | ((BCK_BIT2_OVFL << 0u) | BITCR_BCLR);
      00104D 43 27 2A         [24]  866 	orl	_BITCR,#0x2a
                                    867 ;	src/mc96f8x16_tim.c:11: IE3 = (IE3 & 0x0F) | (0x10);
      001050 AE 1A            [24]  868 	mov	r6,_IE3
      001052 53 06 0F         [24]  869 	anl	ar6,#0x0f
      001055 43 06 10         [24]  870 	orl	ar6,#0x10
      001058 8E 1A            [24]  871 	mov	_IE3,r6
                                    872 ;	src/mc96f8x16_tim.c:12: }
      00105A 22               [24]  873 	ret
                                    874 ;------------------------------------------------------------
                                    875 ;Allocation info for local variables in function 'GetTick'
                                    876 ;------------------------------------------------------------
                                    877 ;	src/mc96f8x16_tim.c:14: uint16_t GetTick(void)
                                    878 ;	-----------------------------------------
                                    879 ;	 function GetTick
                                    880 ;	-----------------------------------------
      00105B                        881 _GetTick:
                                    882 ;	src/mc96f8x16_tim.c:16: return Tick;
      00105B 85 72 82         [24]  883 	mov	dpl,_Tick
      00105E 85 73 83         [24]  884 	mov	dph,(_Tick + 1)
                                    885 ;	src/mc96f8x16_tim.c:17: }
      001061 22               [24]  886 	ret
                                    887 ;------------------------------------------------------------
                                    888 ;Allocation info for local variables in function 'SysTick_ISR'
                                    889 ;------------------------------------------------------------
                                    890 ;	src/mc96f8x16_tim.c:19: void SysTick_ISR(void) __interrupt 23
                                    891 ;	-----------------------------------------
                                    892 ;	 function SysTick_ISR
                                    893 ;	-----------------------------------------
      001062                        894 _SysTick_ISR:
      001062 C0 E0            [24]  895 	push	acc
      001064 C0 D0            [24]  896 	push	psw
                                    897 ;	src/mc96f8x16_tim.c:21: Tick++;
      001066 74 01            [12]  898 	mov	a,#0x01
      001068 25 72            [12]  899 	add	a,_Tick
      00106A F5 72            [12]  900 	mov	_Tick,a
      00106C E4               [12]  901 	clr	a
      00106D 35 73            [12]  902 	addc	a,(_Tick + 1)
      00106F F5 73            [12]  903 	mov	(_Tick + 1),a
                                    904 ;	src/mc96f8x16_tim.c:23: BITCR |= BITCR_BCLR;
      001071 43 27 08         [24]  905 	orl	_BITCR,#0x08
                                    906 ;	src/mc96f8x16_tim.c:24: }
      001074 D0 D0            [24]  907 	pop	psw
      001076 D0 E0            [24]  908 	pop	acc
      001078 32               [24]  909 	reti
                                    910 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                    911 ;	eliminated unneeded push/pop dpl
                                    912 ;	eliminated unneeded push/pop dph
                                    913 ;	eliminated unneeded push/pop b
                                    914 ;------------------------------------------------------------
                                    915 ;Allocation info for local variables in function 'Delayms'
                                    916 ;------------------------------------------------------------
                                    917 ;Timeout                   Allocated to registers r6 r7 
                                    918 ;StartTick                 Allocated to registers r4 r5 
                                    919 ;sloc0                     Allocated to stack - _bp +1
                                    920 ;------------------------------------------------------------
                                    921 ;	src/mc96f8x16_tim.c:26: void Delayms(uint16_t Timeout)
                                    922 ;	-----------------------------------------
                                    923 ;	 function Delayms
                                    924 ;	-----------------------------------------
      001079                        925 _Delayms:
      001079 C0 75            [24]  926 	push	_bp
      00107B 85 81 75         [24]  927 	mov	_bp,sp
      00107E 05 81            [12]  928 	inc	sp
      001080 05 81            [12]  929 	inc	sp
      001082 AE 82            [24]  930 	mov	r6,dpl
      001084 AF 83            [24]  931 	mov	r7,dph
                                    932 ;	src/mc96f8x16_tim.c:28: uint16_t StartTick = GetTick();
      001086 C0 07            [24]  933 	push	ar7
      001088 C0 06            [24]  934 	push	ar6
      00108A 12 10 5B         [24]  935 	lcall	_GetTick
      00108D AC 82            [24]  936 	mov	r4,dpl
      00108F AD 83            [24]  937 	mov	r5,dph
      001091 D0 06            [24]  938 	pop	ar6
      001093 D0 07            [24]  939 	pop	ar7
                                    940 ;	src/mc96f8x16_tim.c:29: if(StartTick + Timeout > StartTick)
      001095 EE               [12]  941 	mov	a,r6
      001096 2C               [12]  942 	add	a,r4
      001097 FA               [12]  943 	mov	r2,a
      001098 EF               [12]  944 	mov	a,r7
      001099 3D               [12]  945 	addc	a,r5
      00109A FB               [12]  946 	mov	r3,a
      00109B C3               [12]  947 	clr	c
      00109C EC               [12]  948 	mov	a,r4
      00109D 9A               [12]  949 	subb	a,r2
      00109E ED               [12]  950 	mov	a,r5
      00109F 9B               [12]  951 	subb	a,r3
      0010A0 50 1E            [24]  952 	jnc	00115$
                                    953 ;	src/mc96f8x16_tim.c:31: while(GetTick() < StartTick + Timeout);
      0010A2 A8 75            [24]  954 	mov	r0,_bp
      0010A4 08               [12]  955 	inc	r0
      0010A5 EE               [12]  956 	mov	a,r6
      0010A6 2C               [12]  957 	add	a,r4
      0010A7 F6               [12]  958 	mov	@r0,a
      0010A8 EF               [12]  959 	mov	a,r7
      0010A9 3D               [12]  960 	addc	a,r5
      0010AA 08               [12]  961 	inc	r0
      0010AB F6               [12]  962 	mov	@r0,a
      0010AC                        963 00101$:
      0010AC 12 10 5B         [24]  964 	lcall	_GetTick
      0010AF AA 82            [24]  965 	mov	r2,dpl
      0010B1 AB 83            [24]  966 	mov	r3,dph
      0010B3 A8 75            [24]  967 	mov	r0,_bp
      0010B5 08               [12]  968 	inc	r0
      0010B6 C3               [12]  969 	clr	c
      0010B7 EA               [12]  970 	mov	a,r2
      0010B8 96               [12]  971 	subb	a,@r0
      0010B9 EB               [12]  972 	mov	a,r3
      0010BA 08               [12]  973 	inc	r0
      0010BB 96               [12]  974 	subb	a,@r0
      0010BC 50 4E            [24]  975 	jnc	00111$
                                    976 ;	src/mc96f8x16_tim.c:35: while((GetTick() < (Timeout - (0xFFFFU - StartTick))) || (GetTick() > StartTick));
      0010BE 80 EC            [24]  977 	sjmp	00101$
      0010C0                        978 00115$:
      0010C0 74 FF            [12]  979 	mov	a,#0xff
      0010C2 C3               [12]  980 	clr	c
      0010C3 9C               [12]  981 	subb	a,r4
      0010C4 FA               [12]  982 	mov	r2,a
      0010C5 74 FF            [12]  983 	mov	a,#0xff
      0010C7 9D               [12]  984 	subb	a,r5
      0010C8 FB               [12]  985 	mov	r3,a
      0010C9 EE               [12]  986 	mov	a,r6
      0010CA C3               [12]  987 	clr	c
      0010CB 9A               [12]  988 	subb	a,r2
      0010CC FE               [12]  989 	mov	r6,a
      0010CD EF               [12]  990 	mov	a,r7
      0010CE 9B               [12]  991 	subb	a,r3
      0010CF FF               [12]  992 	mov	r7,a
      0010D0                        993 00105$:
      0010D0 C0 07            [24]  994 	push	ar7
      0010D2 C0 06            [24]  995 	push	ar6
      0010D4 C0 05            [24]  996 	push	ar5
      0010D6 C0 04            [24]  997 	push	ar4
      0010D8 12 10 5B         [24]  998 	lcall	_GetTick
      0010DB AA 82            [24]  999 	mov	r2,dpl
      0010DD AB 83            [24] 1000 	mov	r3,dph
      0010DF D0 04            [24] 1001 	pop	ar4
      0010E1 D0 05            [24] 1002 	pop	ar5
      0010E3 D0 06            [24] 1003 	pop	ar6
      0010E5 D0 07            [24] 1004 	pop	ar7
      0010E7 C3               [12] 1005 	clr	c
      0010E8 EA               [12] 1006 	mov	a,r2
      0010E9 9E               [12] 1007 	subb	a,r6
      0010EA EB               [12] 1008 	mov	a,r3
      0010EB 9F               [12] 1009 	subb	a,r7
      0010EC 40 E2            [24] 1010 	jc	00105$
      0010EE C0 07            [24] 1011 	push	ar7
      0010F0 C0 06            [24] 1012 	push	ar6
      0010F2 C0 05            [24] 1013 	push	ar5
      0010F4 C0 04            [24] 1014 	push	ar4
      0010F6 12 10 5B         [24] 1015 	lcall	_GetTick
      0010F9 AA 82            [24] 1016 	mov	r2,dpl
      0010FB AB 83            [24] 1017 	mov	r3,dph
      0010FD D0 04            [24] 1018 	pop	ar4
      0010FF D0 05            [24] 1019 	pop	ar5
      001101 D0 06            [24] 1020 	pop	ar6
      001103 D0 07            [24] 1021 	pop	ar7
      001105 C3               [12] 1022 	clr	c
      001106 EC               [12] 1023 	mov	a,r4
      001107 9A               [12] 1024 	subb	a,r2
      001108 ED               [12] 1025 	mov	a,r5
      001109 9B               [12] 1026 	subb	a,r3
      00110A 40 C4            [24] 1027 	jc	00105$
      00110C                       1028 00111$:
                                   1029 ;	src/mc96f8x16_tim.c:37: }
      00110C 85 75 81         [24] 1030 	mov	sp,_bp
      00110F D0 75            [24] 1031 	pop	_bp
      001111 22               [24] 1032 	ret
                                   1033 ;------------------------------------------------------------
                                   1034 ;Allocation info for local variables in function 'CheckTimeout'
                                   1035 ;------------------------------------------------------------
                                   1036 ;Timeout                   Allocated to stack - _bp -4
                                   1037 ;Start                     Allocated to stack - _bp +1
                                   1038 ;ret                       Allocated to registers r5 
                                   1039 ;------------------------------------------------------------
                                   1040 ;	src/mc96f8x16_tim.c:39: HAL_Status CheckTimeout(uint16_t Start, uint16_t Timeout)
                                   1041 ;	-----------------------------------------
                                   1042 ;	 function CheckTimeout
                                   1043 ;	-----------------------------------------
      001112                       1044 _CheckTimeout:
      001112 C0 75            [24] 1045 	push	_bp
      001114 85 81 75         [24] 1046 	mov	_bp,sp
      001117 C0 82            [24] 1047 	push	dpl
      001119 C0 83            [24] 1048 	push	dph
                                   1049 ;	src/mc96f8x16_tim.c:42: if(Start + Timeout > Start)
      00111B A8 75            [24] 1050 	mov	r0,_bp
      00111D 08               [12] 1051 	inc	r0
      00111E E5 75            [12] 1052 	mov	a,_bp
      001120 24 FC            [12] 1053 	add	a,#0xfc
      001122 F9               [12] 1054 	mov	r1,a
      001123 E7               [12] 1055 	mov	a,@r1
      001124 26               [12] 1056 	add	a,@r0
      001125 FC               [12] 1057 	mov	r4,a
      001126 09               [12] 1058 	inc	r1
      001127 E7               [12] 1059 	mov	a,@r1
      001128 08               [12] 1060 	inc	r0
      001129 36               [12] 1061 	addc	a,@r0
      00112A FD               [12] 1062 	mov	r5,a
      00112B A8 75            [24] 1063 	mov	r0,_bp
      00112D 08               [12] 1064 	inc	r0
      00112E C3               [12] 1065 	clr	c
      00112F E6               [12] 1066 	mov	a,@r0
      001130 9C               [12] 1067 	subb	a,r4
      001131 08               [12] 1068 	inc	r0
      001132 E6               [12] 1069 	mov	a,@r0
      001133 9D               [12] 1070 	subb	a,r5
      001134 50 26            [24] 1071 	jnc	00109$
                                   1072 ;	src/mc96f8x16_tim.c:44: if(GetTick() < (Start + Timeout))
      001136 12 10 5B         [24] 1073 	lcall	_GetTick
      001139 AC 82            [24] 1074 	mov	r4,dpl
      00113B AD 83            [24] 1075 	mov	r5,dph
      00113D A8 75            [24] 1076 	mov	r0,_bp
      00113F 08               [12] 1077 	inc	r0
      001140 E5 75            [12] 1078 	mov	a,_bp
      001142 24 FC            [12] 1079 	add	a,#0xfc
      001144 F9               [12] 1080 	mov	r1,a
      001145 E7               [12] 1081 	mov	a,@r1
      001146 26               [12] 1082 	add	a,@r0
      001147 FA               [12] 1083 	mov	r2,a
      001148 09               [12] 1084 	inc	r1
      001149 E7               [12] 1085 	mov	a,@r1
      00114A 08               [12] 1086 	inc	r0
      00114B 36               [12] 1087 	addc	a,@r0
      00114C FB               [12] 1088 	mov	r3,a
      00114D C3               [12] 1089 	clr	c
      00114E EC               [12] 1090 	mov	a,r4
      00114F 9A               [12] 1091 	subb	a,r2
      001150 ED               [12] 1092 	mov	a,r5
      001151 9B               [12] 1093 	subb	a,r3
      001152 50 04            [24] 1094 	jnc	00102$
                                   1095 ;	src/mc96f8x16_tim.c:46: ret = HAL_OK;
      001154 7D 01            [12] 1096 	mov	r5,#0x01
      001156 80 44            [24] 1097 	sjmp	00110$
      001158                       1098 00102$:
                                   1099 ;	src/mc96f8x16_tim.c:50: ret = HAL_TIMEOUT;
      001158 7D 02            [12] 1100 	mov	r5,#0x02
      00115A 80 40            [24] 1101 	sjmp	00110$
      00115C                       1102 00109$:
                                   1103 ;	src/mc96f8x16_tim.c:55: if((GetTick() < (Timeout - (0xFFFFU - Start))) || (GetTick() > Start))
      00115C 12 10 5B         [24] 1104 	lcall	_GetTick
      00115F AB 82            [24] 1105 	mov	r3,dpl
      001161 AC 83            [24] 1106 	mov	r4,dph
      001163 A8 75            [24] 1107 	mov	r0,_bp
      001165 08               [12] 1108 	inc	r0
      001166 74 FF            [12] 1109 	mov	a,#0xff
      001168 C3               [12] 1110 	clr	c
      001169 96               [12] 1111 	subb	a,@r0
      00116A FA               [12] 1112 	mov	r2,a
      00116B 74 FF            [12] 1113 	mov	a,#0xff
      00116D 08               [12] 1114 	inc	r0
      00116E 96               [12] 1115 	subb	a,@r0
      00116F FF               [12] 1116 	mov	r7,a
      001170 E5 75            [12] 1117 	mov	a,_bp
      001172 24 FC            [12] 1118 	add	a,#0xfc
      001174 F8               [12] 1119 	mov	r0,a
      001175 E6               [12] 1120 	mov	a,@r0
      001176 C3               [12] 1121 	clr	c
      001177 9A               [12] 1122 	subb	a,r2
      001178 FA               [12] 1123 	mov	r2,a
      001179 08               [12] 1124 	inc	r0
      00117A E6               [12] 1125 	mov	a,@r0
      00117B 9F               [12] 1126 	subb	a,r7
      00117C FF               [12] 1127 	mov	r7,a
      00117D C3               [12] 1128 	clr	c
      00117E EB               [12] 1129 	mov	a,r3
      00117F 9A               [12] 1130 	subb	a,r2
      001180 EC               [12] 1131 	mov	a,r4
      001181 9F               [12] 1132 	subb	a,r7
      001182 40 12            [24] 1133 	jc	00104$
      001184 12 10 5B         [24] 1134 	lcall	_GetTick
      001187 AE 82            [24] 1135 	mov	r6,dpl
      001189 AF 83            [24] 1136 	mov	r7,dph
      00118B A8 75            [24] 1137 	mov	r0,_bp
      00118D 08               [12] 1138 	inc	r0
      00118E C3               [12] 1139 	clr	c
      00118F E6               [12] 1140 	mov	a,@r0
      001190 9E               [12] 1141 	subb	a,r6
      001191 08               [12] 1142 	inc	r0
      001192 E6               [12] 1143 	mov	a,@r0
      001193 9F               [12] 1144 	subb	a,r7
      001194 50 04            [24] 1145 	jnc	00105$
      001196                       1146 00104$:
                                   1147 ;	src/mc96f8x16_tim.c:57: ret = HAL_OK;
      001196 7D 01            [12] 1148 	mov	r5,#0x01
      001198 80 02            [24] 1149 	sjmp	00110$
      00119A                       1150 00105$:
                                   1151 ;	src/mc96f8x16_tim.c:61: ret = HAL_TIMEOUT;
      00119A 7D 02            [12] 1152 	mov	r5,#0x02
      00119C                       1153 00110$:
                                   1154 ;	src/mc96f8x16_tim.c:64: return ret;
      00119C 8D 82            [24] 1155 	mov	dpl,r5
                                   1156 ;	src/mc96f8x16_tim.c:65: }
      00119E 85 75 81         [24] 1157 	mov	sp,_bp
      0011A1 D0 75            [24] 1158 	pop	_bp
      0011A3 22               [24] 1159 	ret
                                   1160 	.area CSEG    (CODE)
                                   1161 	.area CONST   (CODE)
                                   1162 	.area XINIT   (CODE)
                                   1163 	.area CABS    (ABS,CODE)
