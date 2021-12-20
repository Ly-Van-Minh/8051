                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.8.0 #10562 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module mc96f8x16_wdt
                                      6 	.optsdcc -mmcs51 --model-small
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
      000000                        161 _P0::
      000000                        162 	.ds 1
      000001                        163 _P0IO::
      000001                        164 	.ds 1
      000002                        165 _P0OD::
      000002                        166 	.ds 1
      000003                        167 _P0PU::
      000003                        168 	.ds 1
      000004                        169 _P03DB::
      000004                        170 	.ds 1
      000005                        171 _P1::
      000005                        172 	.ds 1
      000006                        173 _P1IO::
      000006                        174 	.ds 1
      000007                        175 _P1OD::
      000007                        176 	.ds 1
      000008                        177 _P1PU::
      000008                        178 	.ds 1
      000009                        179 _P12DB::
      000009                        180 	.ds 1
      00000A                        181 _P2::
      00000A                        182 	.ds 1
      00000B                        183 _P2IO::
      00000B                        184 	.ds 1
      00000C                        185 _P2OD::
      00000C                        186 	.ds 1
      00000D                        187 _P2PU::
      00000D                        188 	.ds 1
      00000E                        189 _P3::
      00000E                        190 	.ds 1
      00000F                        191 _P3IO::
      00000F                        192 	.ds 1
      000010                        193 _P3OD::
      000010                        194 	.ds 1
      000011                        195 _P3PU::
      000011                        196 	.ds 1
      000012                        197 _P0FSR::
      000012                        198 	.ds 1
      000013                        199 _P1FSRL::
      000013                        200 	.ds 1
      000014                        201 _P1FSRH::
      000014                        202 	.ds 1
      000015                        203 _P2FSR::
      000015                        204 	.ds 1
      000016                        205 _P3FSR::
      000016                        206 	.ds 1
      000017                        207 _IE::
      000017                        208 	.ds 1
      000018                        209 _IE1::
      000018                        210 	.ds 1
      000019                        211 _IE2::
      000019                        212 	.ds 1
      00001A                        213 _IE3::
      00001A                        214 	.ds 1
      00001B                        215 _IP::
      00001B                        216 	.ds 1
      00001C                        217 _IP1::
      00001C                        218 	.ds 1
      00001D                        219 _IIFLAG::
      00001D                        220 	.ds 1
      00001E                        221 _EIFLAG0::
      00001E                        222 	.ds 1
      00001F                        223 _EIFLAG1::
      00001F                        224 	.ds 1
      000020                        225 _EIPOL0L::
      000020                        226 	.ds 1
      000021                        227 _EIPOL0H::
      000021                        228 	.ds 1
      000022                        229 _EIPOL1::
      000022                        230 	.ds 1
      000023                        231 _EIPOL2::
      000023                        232 	.ds 1
      000024                        233 _SCCR::
      000024                        234 	.ds 1
      000025                        235 _OSCCR::
      000025                        236 	.ds 1
      000026                        237 _BITCNT::
      000026                        238 	.ds 1
      000027                        239 _BITCR::
      000027                        240 	.ds 1
      000028                        241 _RSTFR::
      000028                        242 	.ds 1
      000029                        243 _PCON::
      000029                        244 	.ds 1
      00002A                        245 _LVRCR::
      00002A                        246 	.ds 1
      00002B                        247 _LVICR::
      00002B                        248 	.ds 1
      00002C                        249 _WDTDR::
      00002C                        250 	.ds 1
      00002D                        251 _WDTCNT::
      00002D                        252 	.ds 1
      00002E                        253 _WDTCR::
      00002E                        254 	.ds 1
      00002F                        255 _WTDR::
      00002F                        256 	.ds 1
      000030                        257 _WTCNT::
      000030                        258 	.ds 1
      000031                        259 _WTCR::
      000031                        260 	.ds 1
      000032                        261 _T0CR::
      000032                        262 	.ds 1
      000033                        263 _T0CNT::
      000033                        264 	.ds 1
      000034                        265 _T0DR::
      000034                        266 	.ds 1
      000035                        267 _T0CDR::
      000035                        268 	.ds 1
      000036                        269 _T1CRL::
      000036                        270 	.ds 1
      000037                        271 _T1CRH::
      000037                        272 	.ds 1
      000038                        273 _T1ADRL::
      000038                        274 	.ds 1
      000039                        275 _T1ADRH::
      000039                        276 	.ds 1
      00003A                        277 _T1BDRL::
      00003A                        278 	.ds 1
      00003B                        279 _T1BDRH::
      00003B                        280 	.ds 1
      00003C                        281 _T2CRL::
      00003C                        282 	.ds 1
      00003D                        283 _T2CRH::
      00003D                        284 	.ds 1
      00003E                        285 _T2ADRL::
      00003E                        286 	.ds 1
      00003F                        287 _T2ADRH::
      00003F                        288 	.ds 1
      000040                        289 _T2BDRL::
      000040                        290 	.ds 1
      000041                        291 _T2BDRH::
      000041                        292 	.ds 1
      000042                        293 _BUZDR::
      000042                        294 	.ds 1
      000043                        295 _BUZCR::
      000043                        296 	.ds 1
      000044                        297 _ADCCRL::
      000044                        298 	.ds 1
      000045                        299 _ADCCRH::
      000045                        300 	.ds 1
      000046                        301 _ADCDRL::
      000046                        302 	.ds 1
      000047                        303 _ADCDRH::
      000047                        304 	.ds 1
      000048                        305 _ADWRCR0::
      000048                        306 	.ds 1
      000049                        307 _ADWRCR1::
      000049                        308 	.ds 1
      00004A                        309 _ADWRCR2::
      00004A                        310 	.ds 1
      00004B                        311 _ADWRCR3::
      00004B                        312 	.ds 1
      00004C                        313 _ADWCRL::
      00004C                        314 	.ds 1
      00004D                        315 _ADWCRH::
      00004D                        316 	.ds 1
      00004E                        317 _ADWIFRL::
      00004E                        318 	.ds 1
      00004F                        319 _ADWIFRH::
      00004F                        320 	.ds 1
      000050                        321 _SPICR::
      000050                        322 	.ds 1
      000051                        323 _SPIDR::
      000051                        324 	.ds 1
      000052                        325 _SPISR::
      000052                        326 	.ds 1
      000053                        327 _UARTCR1::
      000053                        328 	.ds 1
      000054                        329 _UARTCR2::
      000054                        330 	.ds 1
      000055                        331 _UARTCR3::
      000055                        332 	.ds 1
      000056                        333 _UARTST::
      000056                        334 	.ds 1
      000057                        335 _UARTBD::
      000057                        336 	.ds 1
      000058                        337 _UARTDR::
      000058                        338 	.ds 1
      000059                        339 _I2CCR::
      000059                        340 	.ds 1
      00005A                        341 _I2CSR::
      00005A                        342 	.ds 1
      00005B                        343 _I2CSAR0::
      00005B                        344 	.ds 1
      00005C                        345 _I2CSAR1::
      00005C                        346 	.ds 1
      00005D                        347 _I2CDR::
      00005D                        348 	.ds 1
      00005E                        349 _I2CSDHR::
      00005E                        350 	.ds 1
      00005F                        351 _I2CSCLR::
      00005F                        352 	.ds 1
      000060                        353 _I2CSCHR::
      000060                        354 	.ds 1
      000061                        355 _FSADRH::
      000061                        356 	.ds 1
      000062                        357 _FSADRM::
      000062                        358 	.ds 1
      000063                        359 _FSADRL::
      000063                        360 	.ds 1
      000064                        361 _FIDR::
      000064                        362 	.ds 1
      000065                        363 _FMCR::
      000065                        364 	.ds 1
      000066                        365 _ACC::
      000066                        366 	.ds 1
      000067                        367 _B::
      000067                        368 	.ds 1
      000068                        369 _PSW::
      000068                        370 	.ds 1
      000069                        371 _SP::
      000069                        372 	.ds 1
      00006A                        373 _DPL::
      00006A                        374 	.ds 1
      00006B                        375 _DPH::
      00006B                        376 	.ds 1
      00006C                        377 _DPL1::
      00006C                        378 	.ds 1
      00006D                        379 _DPH1::
      00006D                        380 	.ds 1
      00006E                        381 _EO::
      00006E                        382 	.ds 1
                                    383 ;--------------------------------------------------------
                                    384 ; special function bits
                                    385 ;--------------------------------------------------------
                                    386 	.area RSEG    (ABS,DATA)
      000000                        387 	.org 0x0000
      000000                        388 _P00::
      000000                        389 	.ds 1
      000001                        390 _P01::
      000001                        391 	.ds 1
      000002                        392 _P02::
      000002                        393 	.ds 1
      000003                        394 _P03::
      000003                        395 	.ds 1
      000004                        396 _P04::
      000004                        397 	.ds 1
      000005                        398 _P05::
      000005                        399 	.ds 1
      000006                        400 _P06::
      000006                        401 	.ds 1
      000007                        402 _P07::
      000007                        403 	.ds 1
      000008                        404 _P10::
      000008                        405 	.ds 1
      000009                        406 _P11::
      000009                        407 	.ds 1
      00000A                        408 _P12::
      00000A                        409 	.ds 1
      00000B                        410 _P13::
      00000B                        411 	.ds 1
      00000C                        412 _P14::
      00000C                        413 	.ds 1
      00000D                        414 _P15::
      00000D                        415 	.ds 1
      00000E                        416 _P16::
      00000E                        417 	.ds 1
      00000F                        418 _P17::
      00000F                        419 	.ds 1
      000010                        420 _P20::
      000010                        421 	.ds 1
      000011                        422 _P21::
      000011                        423 	.ds 1
      000012                        424 _P22::
      000012                        425 	.ds 1
      000013                        426 _P23::
      000013                        427 	.ds 1
      000014                        428 _P24::
      000014                        429 	.ds 1
      000015                        430 _P25::
      000015                        431 	.ds 1
      000016                        432 _P26::
      000016                        433 	.ds 1
      000017                        434 _P27::
      000017                        435 	.ds 1
      000018                        436 _P30::
      000018                        437 	.ds 1
      000019                        438 _P31::
      000019                        439 	.ds 1
      00001A                        440 _P32::
      00001A                        441 	.ds 1
      00001B                        442 _P33::
      00001B                        443 	.ds 1
      00001C                        444 _P34::
      00001C                        445 	.ds 1
      00001D                        446 _P35::
      00001D                        447 	.ds 1
      00001E                        448 _P36::
      00001E                        449 	.ds 1
      00001F                        450 _P37::
      00001F                        451 	.ds 1
                                    452 ;--------------------------------------------------------
                                    453 ; overlayable register banks
                                    454 ;--------------------------------------------------------
                                    455 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        456 	.ds 8
                                    457 ;--------------------------------------------------------
                                    458 ; internal ram data
                                    459 ;--------------------------------------------------------
                                    460 	.area DSEG    (DATA)
                                    461 ;--------------------------------------------------------
                                    462 ; overlayable items in internal ram 
                                    463 ;--------------------------------------------------------
                                    464 ;--------------------------------------------------------
                                    465 ; indirectly addressable internal ram data
                                    466 ;--------------------------------------------------------
                                    467 	.area ISEG    (DATA)
                                    468 ;--------------------------------------------------------
                                    469 ; absolute internal ram data
                                    470 ;--------------------------------------------------------
                                    471 	.area IABS    (ABS,DATA)
                                    472 	.area IABS    (ABS,DATA)
                                    473 ;--------------------------------------------------------
                                    474 ; bit data
                                    475 ;--------------------------------------------------------
                                    476 	.area BSEG    (BIT)
                                    477 ;--------------------------------------------------------
                                    478 ; paged external ram data
                                    479 ;--------------------------------------------------------
                                    480 	.area PSEG    (PAG,XDATA)
                                    481 ;--------------------------------------------------------
                                    482 ; external ram data
                                    483 ;--------------------------------------------------------
                                    484 	.area XSEG    (XDATA)
                                    485 ;--------------------------------------------------------
                                    486 ; absolute external ram data
                                    487 ;--------------------------------------------------------
                                    488 	.area XABS    (ABS,XDATA)
                                    489 ;--------------------------------------------------------
                                    490 ; external initialized ram data
                                    491 ;--------------------------------------------------------
                                    492 	.area XISEG   (XDATA)
                                    493 	.area HOME    (CODE)
                                    494 	.area GSINIT0 (CODE)
                                    495 	.area GSINIT1 (CODE)
                                    496 	.area GSINIT2 (CODE)
                                    497 	.area GSINIT3 (CODE)
                                    498 	.area GSINIT4 (CODE)
                                    499 	.area GSINIT5 (CODE)
                                    500 	.area GSINIT  (CODE)
                                    501 	.area GSFINAL (CODE)
                                    502 	.area CSEG    (CODE)
                                    503 ;--------------------------------------------------------
                                    504 ; global & static initialisations
                                    505 ;--------------------------------------------------------
                                    506 	.area HOME    (CODE)
                                    507 	.area GSINIT  (CODE)
                                    508 	.area GSFINAL (CODE)
                                    509 	.area GSINIT  (CODE)
                                    510 ;	./inc/MC96F8316.h:17: sfr			P0			= 0x80;			// P0 Data Register
      0001EC 75 00 80         [24]  511 	mov	_P0,#0x80
                                    512 ;	./inc/MC96F8316.h:27: sfr			P0IO		= 0xA1;			// P0 Direction Register
      0001EF 75 01 A1         [24]  513 	mov	_P0IO,#0xa1
                                    514 ;	./inc/MC96F8316.h:28: sfr			P0OD		= 0x91;			// P0 Open-drain Selection Register
      0001F2 75 02 91         [24]  515 	mov	_P0OD,#0x91
                                    516 ;	./inc/MC96F8316.h:29: sfr			P0PU		= 0xAC;			// P0 Pull-up Resistor Selection Register
      0001F5 75 03 AC         [24]  517 	mov	_P0PU,#0xac
                                    518 ;	./inc/MC96F8316.h:30: sfr			P03DB		= 0xDE;			// P0/P3 Debounce Enable Register
      0001F8 75 04 DE         [24]  519 	mov	_P03DB,#0xde
                                    520 ;	./inc/MC96F8316.h:32: sfr			P1			= 0x88;			// P1 Data Register
      0001FB 75 05 88         [24]  521 	mov	_P1,#0x88
                                    522 ;	./inc/MC96F8316.h:42: sfr			P1IO		= 0xB1;			// P1 Direction Register
      0001FE 75 06 B1         [24]  523 	mov	_P1IO,#0xb1
                                    524 ;	./inc/MC96F8316.h:43: sfr			P1OD		= 0x92;			// P1 Open-drain Selection Register
      000201 75 07 92         [24]  525 	mov	_P1OD,#0x92
                                    526 ;	./inc/MC96F8316.h:44: sfr			P1PU		= 0xAD;			// P1 Pull-up Resistor Selection Register
      000204 75 08 AD         [24]  527 	mov	_P1PU,#0xad
                                    528 ;	./inc/MC96F8316.h:45: sfr			P12DB		= 0xDF;			// P1/P2 Debounce Enable Register
      000207 75 09 DF         [24]  529 	mov	_P12DB,#0xdf
                                    530 ;	./inc/MC96F8316.h:47: sfr			P2			= 0x90;			// P2 Data Register
      00020A 75 0A 90         [24]  531 	mov	_P2,#0x90
                                    532 ;	./inc/MC96F8316.h:57: sfr			P2IO		= 0xB9;			// P2 Direction Register
      00020D 75 0B B9         [24]  533 	mov	_P2IO,#0xb9
                                    534 ;	./inc/MC96F8316.h:58: sfr			P2OD		= 0x93;			// P2 Open-drain Selection Register
      000210 75 0C 93         [24]  535 	mov	_P2OD,#0x93
                                    536 ;	./inc/MC96F8316.h:59: sfr			P2PU		= 0xAE;			// P2 Pull-up Resistor Selection Register
      000213 75 0D AE         [24]  537 	mov	_P2PU,#0xae
                                    538 ;	./inc/MC96F8316.h:61: sfr			P3			= 0x98;			// P3 Data Register
      000216 75 0E 98         [24]  539 	mov	_P3,#0x98
                                    540 ;	./inc/MC96F8316.h:71: sfr			P3IO		= 0xC1;			// P3 Direction Register
      000219 75 0F C1         [24]  541 	mov	_P3IO,#0xc1
                                    542 ;	./inc/MC96F8316.h:72: sfr			P3OD		= 0x94;			// P3 Open-drain Selection Register
      00021C 75 10 94         [24]  543 	mov	_P3OD,#0x94
                                    544 ;	./inc/MC96F8316.h:73: sfr			P3PU		= 0xAF;			// P3 Pull-up Resistor Selection Register
      00021F 75 11 AF         [24]  545 	mov	_P3PU,#0xaf
                                    546 ;	./inc/MC96F8316.h:75: sfr			P0FSR		= 0xD3;			//P0 Function Selection Register
      000222 75 12 D3         [24]  547 	mov	_P0FSR,#0xd3
                                    548 ;	./inc/MC96F8316.h:76: sfr			P1FSRL		= 0xD4;			//P1 Function Selection Low Register
      000225 75 13 D4         [24]  549 	mov	_P1FSRL,#0xd4
                                    550 ;	./inc/MC96F8316.h:77: sfr			P1FSRH		= 0xD5;			//P1 Function Selection High Register
      000228 75 14 D5         [24]  551 	mov	_P1FSRH,#0xd5
                                    552 ;	./inc/MC96F8316.h:78: sfr			P2FSR		= 0xD6;			//P2 Function Selection Register
      00022B 75 15 D6         [24]  553 	mov	_P2FSR,#0xd6
                                    554 ;	./inc/MC96F8316.h:79: sfr			P3FSR		= 0xD7;			//P3 Function Selection Register
      00022E 75 16 D7         [24]  555 	mov	_P3FSR,#0xd7
                                    556 ;	./inc/MC96F8316.h:82: sfr			IE			= 0xA8;			// Interrupt Enable Register 0
      000231 75 17 A8         [24]  557 	mov	_IE,#0xa8
                                    558 ;	./inc/MC96F8316.h:83: sfr			IE1			= 0xA9;			// Interrupt Enable Register 1
      000234 75 18 A9         [24]  559 	mov	_IE1,#0xa9
                                    560 ;	./inc/MC96F8316.h:84: sfr			IE2			= 0xAA;			// Interrupt Enable Register 2
      000237 75 19 AA         [24]  561 	mov	_IE2,#0xaa
                                    562 ;	./inc/MC96F8316.h:85: sfr			IE3			= 0xAB;			// Interrupt Enable Register 3
      00023A 75 1A AB         [24]  563 	mov	_IE3,#0xab
                                    564 ;	./inc/MC96F8316.h:86: sfr			IP			= 0xB8;			// Interrupt Priority Register 0
      00023D 75 1B B8         [24]  565 	mov	_IP,#0xb8
                                    566 ;	./inc/MC96F8316.h:87: sfr			IP1			= 0xF8;			// Interrupt Priority Register 1
      000240 75 1C F8         [24]  567 	mov	_IP1,#0xf8
                                    568 ;	./inc/MC96F8316.h:88: sfr			IIFLAG		= 0xA0;			// Internal Interrupt Flag Register
      000243 75 1D A0         [24]  569 	mov	_IIFLAG,#0xa0
                                    570 ;	./inc/MC96F8316.h:89: sfr			EIFLAG0		= 0xC0;			// External Interrupt Flag 0 Register
      000246 75 1E C0         [24]  571 	mov	_EIFLAG0,#0xc0
                                    572 ;	./inc/MC96F8316.h:90: sfr			EIFLAG1		= 0xB0;			// External Interrupt Flag 1 Register
      000249 75 1F B0         [24]  573 	mov	_EIFLAG1,#0xb0
                                    574 ;	./inc/MC96F8316.h:91: sfr			EIPOL0L		= 0xA4;			// External Interrupt Polarity 0 Low Register
      00024C 75 20 A4         [24]  575 	mov	_EIPOL0L,#0xa4
                                    576 ;	./inc/MC96F8316.h:92: sfr			EIPOL0H		= 0xA5;			// External Interrupt Polarity 0 High Register
      00024F 75 21 A5         [24]  577 	mov	_EIPOL0H,#0xa5
                                    578 ;	./inc/MC96F8316.h:93: sfr			EIPOL1		= 0xA6;			// External Interrupt Polarity 1 Register
      000252 75 22 A6         [24]  579 	mov	_EIPOL1,#0xa6
                                    580 ;	./inc/MC96F8316.h:94: sfr			EIPOL2		= 0xA7;			// External Interrupt Polarity 2 Register
      000255 75 23 A7         [24]  581 	mov	_EIPOL2,#0xa7
                                    582 ;	./inc/MC96F8316.h:97: sfr			SCCR		= 0x8A;			// System Clock Control Register
      000258 75 24 8A         [24]  583 	mov	_SCCR,#0x8a
                                    584 ;	./inc/MC96F8316.h:98: sfr			OSCCR		= 0xC8;			// Oscillator Control Register
      00025B 75 25 C8         [24]  585 	mov	_OSCCR,#0xc8
                                    586 ;	./inc/MC96F8316.h:99: sfr			BITCNT		= 0x8C;			// Basic Interval Timer Counter Register
      00025E 75 26 8C         [24]  587 	mov	_BITCNT,#0x8c
                                    588 ;	./inc/MC96F8316.h:100: sfr			BITCR		= 0x8B;			// Basic Interval Timer Control Register
      000261 75 27 8B         [24]  589 	mov	_BITCR,#0x8b
                                    590 ;	./inc/MC96F8316.h:101: sfr			RSTFR		= 0xE8;			// Reset Flag Register
      000264 75 28 E8         [24]  591 	mov	_RSTFR,#0xe8
                                    592 ;	./inc/MC96F8316.h:102: sfr			PCON		= 0x87;			// Power Control Register
      000267 75 29 87         [24]  593 	mov	_PCON,#0x87
                                    594 ;	./inc/MC96F8316.h:103: sfr			LVRCR		= 0xD8;			// Low Voltage Reset Control Register
      00026A 75 2A D8         [24]  595 	mov	_LVRCR,#0xd8
                                    596 ;	./inc/MC96F8316.h:104: sfr			LVICR		= 0x86;			// Low Voltage Indicator Control Register
      00026D 75 2B 86         [24]  597 	mov	_LVICR,#0x86
                                    598 ;	./inc/MC96F8316.h:107: sfr			WDTDR		= 0x8E;			// Watch Dog Timer Data Register
      000270 75 2C 8E         [24]  599 	mov	_WDTDR,#0x8e
                                    600 ;	./inc/MC96F8316.h:108: sfr			WDTCNT		= 0x8E;			// Watch Dog Timer Counter Register
      000273 75 2D 8E         [24]  601 	mov	_WDTCNT,#0x8e
                                    602 ;	./inc/MC96F8316.h:109: sfr			WDTCR		= 0x8D;			// Watch Dog Timer Control Register
      000276 75 2E 8D         [24]  603 	mov	_WDTCR,#0x8d
                                    604 ;	./inc/MC96F8316.h:112: sfr			WTDR		= 0x89;			// Watch Timer Data Register
      000279 75 2F 89         [24]  605 	mov	_WTDR,#0x89
                                    606 ;	./inc/MC96F8316.h:113: sfr			WTCNT		= 0x89;			// Watch Timer Counter Register
      00027C 75 30 89         [24]  607 	mov	_WTCNT,#0x89
                                    608 ;	./inc/MC96F8316.h:114: sfr			WTCR		= 0x96;			// Watch Timer Control Register
      00027F 75 31 96         [24]  609 	mov	_WTCR,#0x96
                                    610 ;	./inc/MC96F8316.h:117: sfr			T0CR		= 0xB2;			// Timer 0 Control Register
      000282 75 32 B2         [24]  611 	mov	_T0CR,#0xb2
                                    612 ;	./inc/MC96F8316.h:118: sfr			T0CNT		= 0xB3;			// Timer 0 Counter Register
      000285 75 33 B3         [24]  613 	mov	_T0CNT,#0xb3
                                    614 ;	./inc/MC96F8316.h:119: sfr			T0DR		= 0xB4;			// Timer 0 Data Register
      000288 75 34 B4         [24]  615 	mov	_T0DR,#0xb4
                                    616 ;	./inc/MC96F8316.h:120: sfr			T0CDR		= 0xB4;			// Timer 0 Capture Data Register
      00028B 75 35 B4         [24]  617 	mov	_T0CDR,#0xb4
                                    618 ;	./inc/MC96F8316.h:126: sfr			T1CRL		= 0xBA;			// Timer 1 Control Low Register
      00028E 75 36 BA         [24]  619 	mov	_T1CRL,#0xba
                                    620 ;	./inc/MC96F8316.h:127: sfr			T1CRH		= 0xBB;			// Timer 1 Control High Register
      000291 75 37 BB         [24]  621 	mov	_T1CRH,#0xbb
                                    622 ;	./inc/MC96F8316.h:128: sfr			T1ADRL		= 0xBC;			// Timer 1 A Data Low Register
      000294 75 38 BC         [24]  623 	mov	_T1ADRL,#0xbc
                                    624 ;	./inc/MC96F8316.h:129: sfr			T1ADRH		= 0xBD;			// Timer 1 A Data High Register
      000297 75 39 BD         [24]  625 	mov	_T1ADRH,#0xbd
                                    626 ;	./inc/MC96F8316.h:130: sfr			T1BDRL		= 0xBE;			// Timer 1 B Data Low Register
      00029A 75 3A BE         [24]  627 	mov	_T1BDRL,#0xbe
                                    628 ;	./inc/MC96F8316.h:131: sfr			T1BDRH		= 0xBF;			// Timer 1 B Data High Register
      00029D 75 3B BF         [24]  629 	mov	_T1BDRH,#0xbf
                                    630 ;	./inc/MC96F8316.h:134: sfr			T2CRL		= 0xC2;			// Timer 2 Control Low Register
      0002A0 75 3C C2         [24]  631 	mov	_T2CRL,#0xc2
                                    632 ;	./inc/MC96F8316.h:135: sfr			T2CRH		= 0xC3;			// Timer 2 Control High Register
      0002A3 75 3D C3         [24]  633 	mov	_T2CRH,#0xc3
                                    634 ;	./inc/MC96F8316.h:136: sfr			T2ADRL		= 0xC4;			// Timer 2 A Data Low Register
      0002A6 75 3E C4         [24]  635 	mov	_T2ADRL,#0xc4
                                    636 ;	./inc/MC96F8316.h:137: sfr			T2ADRH		= 0xC5;			// Timer 2 A Data High Register
      0002A9 75 3F C5         [24]  637 	mov	_T2ADRH,#0xc5
                                    638 ;	./inc/MC96F8316.h:138: sfr			T2BDRL		= 0xC6;			// Timer 2 B Data Low Register
      0002AC 75 40 C6         [24]  639 	mov	_T2BDRL,#0xc6
                                    640 ;	./inc/MC96F8316.h:139: sfr			T2BDRH		= 0xC7;			// Timer 2 B Data High Register
      0002AF 75 41 C7         [24]  641 	mov	_T2BDRH,#0xc7
                                    642 ;	./inc/MC96F8316.h:142: sfr			BUZDR		= 0x8F;			// BUZZER Data Register
      0002B2 75 42 8F         [24]  643 	mov	_BUZDR,#0x8f
                                    644 ;	./inc/MC96F8316.h:143: sfr			BUZCR		= 0x97;			// BUZZER Control Register
      0002B5 75 43 97         [24]  645 	mov	_BUZCR,#0x97
                                    646 ;	./inc/MC96F8316.h:146: sfr			ADCCRL		= 0x9C;			// A/D Converter Control Low Register
      0002B8 75 44 9C         [24]  647 	mov	_ADCCRL,#0x9c
                                    648 ;	./inc/MC96F8316.h:147: sfr			ADCCRH		= 0x9D;			// A/D Converter Control High Register
      0002BB 75 45 9D         [24]  649 	mov	_ADCCRH,#0x9d
                                    650 ;	./inc/MC96F8316.h:148: sfr			ADCDRL		= 0x9E;			// A/D Converter Data Low Register
      0002BE 75 46 9E         [24]  651 	mov	_ADCDRL,#0x9e
                                    652 ;	./inc/MC96F8316.h:149: sfr			ADCDRH		= 0x9F;			// A/D Converter Data High Register
      0002C1 75 47 9F         [24]  653 	mov	_ADCDRH,#0x9f
                                    654 ;	./inc/MC96F8316.h:151: sfr			ADWRCR0		= 0xF2;			// ADC Wake-up Resistor Control Register 0
      0002C4 75 48 F2         [24]  655 	mov	_ADWRCR0,#0xf2
                                    656 ;	./inc/MC96F8316.h:152: sfr			ADWRCR1		= 0xF3;			// ADC Wake-up Resistor Control Register 1
      0002C7 75 49 F3         [24]  657 	mov	_ADWRCR1,#0xf3
                                    658 ;	./inc/MC96F8316.h:153: sfr			ADWRCR2		= 0xF4;			// ADC Wake-up Resistor Control Register 2
      0002CA 75 4A F4         [24]  659 	mov	_ADWRCR2,#0xf4
                                    660 ;	./inc/MC96F8316.h:154: sfr			ADWRCR3		= 0xF5;			// ADC Wake-up Resistor Control Register 3
      0002CD 75 4B F5         [24]  661 	mov	_ADWRCR3,#0xf5
                                    662 ;	./inc/MC96F8316.h:155: sfr			ADWCRL		= 0xF6;			// ADC Wake-up Control Low Register
      0002D0 75 4C F6         [24]  663 	mov	_ADWCRL,#0xf6
                                    664 ;	./inc/MC96F8316.h:156: sfr			ADWCRH		= 0xF7;			// ADC Wake-up Control High Register
      0002D3 75 4D F7         [24]  665 	mov	_ADWCRH,#0xf7
                                    666 ;	./inc/MC96F8316.h:157: sfr			ADWIFRL		= 0xDC;			// ADC Wake-up Interrupt Flag Low Register
      0002D6 75 4E DC         [24]  667 	mov	_ADWIFRL,#0xdc
                                    668 ;	./inc/MC96F8316.h:158: sfr			ADWIFRH		= 0xDD;			// ADC Wake-up Interrupt Flag High Register
      0002D9 75 4F DD         [24]  669 	mov	_ADWIFRH,#0xdd
                                    670 ;	./inc/MC96F8316.h:161: sfr			SPICR		= 0xB5;			// SPI Control Register
      0002DC 75 50 B5         [24]  671 	mov	_SPICR,#0xb5
                                    672 ;	./inc/MC96F8316.h:162: sfr			SPIDR		= 0xB6;			// SPI Data Register
      0002DF 75 51 B6         [24]  673 	mov	_SPIDR,#0xb6
                                    674 ;	./inc/MC96F8316.h:163: sfr			SPISR		= 0xB7;			// SPI Status Register
      0002E2 75 52 B7         [24]  675 	mov	_SPISR,#0xb7
                                    676 ;	./inc/MC96F8316.h:166: sfr			UARTCR1		= 0xE2;			// UART Control Register 1
      0002E5 75 53 E2         [24]  677 	mov	_UARTCR1,#0xe2
                                    678 ;	./inc/MC96F8316.h:167: sfr			UARTCR2		= 0xE3;			// UART Control Register 2
      0002E8 75 54 E3         [24]  679 	mov	_UARTCR2,#0xe3
                                    680 ;	./inc/MC96F8316.h:168: sfr			UARTCR3		= 0xE4;			// UART Control Register 3
      0002EB 75 55 E4         [24]  681 	mov	_UARTCR3,#0xe4
                                    682 ;	./inc/MC96F8316.h:169: sfr			UARTST		= 0xE5;			// UART Status Register
      0002EE 75 56 E5         [24]  683 	mov	_UARTST,#0xe5
                                    684 ;	./inc/MC96F8316.h:170: sfr			UARTBD		= 0xE6;			// UART BaudRate Register
      0002F1 75 57 E6         [24]  685 	mov	_UARTBD,#0xe6
                                    686 ;	./inc/MC96F8316.h:171: sfr			UARTDR		= 0xE7;			// UART Data Register
      0002F4 75 58 E7         [24]  687 	mov	_UARTDR,#0xe7
                                    688 ;	./inc/MC96F8316.h:174: sfr			I2CCR		= 0xE9;			// I2C Control Register
      0002F7 75 59 E9         [24]  689 	mov	_I2CCR,#0xe9
                                    690 ;	./inc/MC96F8316.h:175: sfr			I2CSR		= 0xEA;			// I2C Status Register
      0002FA 75 5A EA         [24]  691 	mov	_I2CSR,#0xea
                                    692 ;	./inc/MC96F8316.h:176: sfr			I2CSAR0		= 0xEB;			// I2C Slave Address 0 Register
      0002FD 75 5B EB         [24]  693 	mov	_I2CSAR0,#0xeb
                                    694 ;	./inc/MC96F8316.h:177: sfr			I2CSAR1		= 0xF1;			// I2C Slave Address 1 Register
      000300 75 5C F1         [24]  695 	mov	_I2CSAR1,#0xf1
                                    696 ;	./inc/MC96F8316.h:178: sfr			I2CDR		= 0xEC;			// I2C Data Register
      000303 75 5D EC         [24]  697 	mov	_I2CDR,#0xec
                                    698 ;	./inc/MC96F8316.h:179: sfr			I2CSDHR		= 0xED;			// I2C SDA Hold Time Register
      000306 75 5E ED         [24]  699 	mov	_I2CSDHR,#0xed
                                    700 ;	./inc/MC96F8316.h:180: sfr			I2CSCLR		= 0xEE;			// I2C SCL Low Period Register
      000309 75 5F EE         [24]  701 	mov	_I2CSCLR,#0xee
                                    702 ;	./inc/MC96F8316.h:181: sfr			I2CSCHR		= 0xEF;			// I2C SCL High Period Register
      00030C 75 60 EF         [24]  703 	mov	_I2CSCHR,#0xef
                                    704 ;	./inc/MC96F8316.h:184: sfr			FSADRH		= 0xFA;			// Flash Sector Address High Register
      00030F 75 61 FA         [24]  705 	mov	_FSADRH,#0xfa
                                    706 ;	./inc/MC96F8316.h:185: sfr			FSADRM		= 0xFB;			// Flash Sector Address Middle Register
      000312 75 62 FB         [24]  707 	mov	_FSADRM,#0xfb
                                    708 ;	./inc/MC96F8316.h:186: sfr			FSADRL		= 0xFC;			// Flash Sector Address Low Register
      000315 75 63 FC         [24]  709 	mov	_FSADRL,#0xfc
                                    710 ;	./inc/MC96F8316.h:187: sfr			FIDR		= 0xFD;			// Flash Identification Register
      000318 75 64 FD         [24]  711 	mov	_FIDR,#0xfd
                                    712 ;	./inc/MC96F8316.h:188: sfr			FMCR		= 0xFE;			// Flash Mode Control Register
      00031B 75 65 FE         [24]  713 	mov	_FMCR,#0xfe
                                    714 ;	./inc/MC96F8316.h:190: sfr			ACC			= 0xE0;
      00031E 75 66 E0         [24]  715 	mov	_ACC,#0xe0
                                    716 ;	./inc/MC96F8316.h:191: sfr			B			= 0xF0;
      000321 75 67 F0         [24]  717 	mov	_B,#0xf0
                                    718 ;	./inc/MC96F8316.h:192: sfr			PSW			= 0xD0;
      000324 75 68 D0         [24]  719 	mov	_PSW,#0xd0
                                    720 ;	./inc/MC96F8316.h:193: sfr			SP			= 0x81;
      000327 75 69 81         [24]  721 	mov	_SP,#0x81
                                    722 ;	./inc/MC96F8316.h:194: sfr			DPL			= 0x82;
      00032A 75 6A 82         [24]  723 	mov	_DPL,#0x82
                                    724 ;	./inc/MC96F8316.h:195: sfr			DPH			= 0x83;
      00032D 75 6B 83         [24]  725 	mov	_DPH,#0x83
                                    726 ;	./inc/MC96F8316.h:196: sfr			DPL1		= 0x84;
      000330 75 6C 84         [24]  727 	mov	_DPL1,#0x84
                                    728 ;	./inc/MC96F8316.h:197: sfr			DPH1		= 0x85;
      000333 75 6D 85         [24]  729 	mov	_DPH1,#0x85
                                    730 ;	./inc/MC96F8316.h:198: sfr			EO			= 0xA2;			// EXTENDED OPERATION REGISTER
      000336 75 6E A2         [24]  731 	mov	_EO,#0xa2
                                    732 ;	./inc/MC96F8316.h:18: sbit	P00			= 0x80;
                                    733 ;	assignBit
      000339 D2 00            [12]  734 	setb	_P00
                                    735 ;	./inc/MC96F8316.h:19: sbit	P01			= 0x81;
                                    736 ;	assignBit
      00033B D2 01            [12]  737 	setb	_P01
                                    738 ;	./inc/MC96F8316.h:20: sbit	P02			= 0x82;
                                    739 ;	assignBit
      00033D D2 02            [12]  740 	setb	_P02
                                    741 ;	./inc/MC96F8316.h:21: sbit	P03			= 0x83;
                                    742 ;	assignBit
      00033F D2 03            [12]  743 	setb	_P03
                                    744 ;	./inc/MC96F8316.h:22: sbit	P04			= 0x84;
                                    745 ;	assignBit
      000341 D2 04            [12]  746 	setb	_P04
                                    747 ;	./inc/MC96F8316.h:23: sbit	P05			= 0x85;
                                    748 ;	assignBit
      000343 D2 05            [12]  749 	setb	_P05
                                    750 ;	./inc/MC96F8316.h:24: sbit	P06			= 0x86;
                                    751 ;	assignBit
      000345 D2 06            [12]  752 	setb	_P06
                                    753 ;	./inc/MC96F8316.h:25: sbit	P07			= 0x87;
                                    754 ;	assignBit
      000347 D2 07            [12]  755 	setb	_P07
                                    756 ;	./inc/MC96F8316.h:33: sbit	P10			= 0x88;
                                    757 ;	assignBit
      000349 D2 08            [12]  758 	setb	_P10
                                    759 ;	./inc/MC96F8316.h:34: sbit	P11			= 0x89;
                                    760 ;	assignBit
      00034B D2 09            [12]  761 	setb	_P11
                                    762 ;	./inc/MC96F8316.h:35: sbit	P12			= 0x8A;
                                    763 ;	assignBit
      00034D D2 0A            [12]  764 	setb	_P12
                                    765 ;	./inc/MC96F8316.h:36: sbit	P13			= 0x8B;
                                    766 ;	assignBit
      00034F D2 0B            [12]  767 	setb	_P13
                                    768 ;	./inc/MC96F8316.h:37: sbit	P14			= 0x8C;
                                    769 ;	assignBit
      000351 D2 0C            [12]  770 	setb	_P14
                                    771 ;	./inc/MC96F8316.h:38: sbit	P15			= 0x8D;
                                    772 ;	assignBit
      000353 D2 0D            [12]  773 	setb	_P15
                                    774 ;	./inc/MC96F8316.h:39: sbit	P16			= 0x8E;
                                    775 ;	assignBit
      000355 D2 0E            [12]  776 	setb	_P16
                                    777 ;	./inc/MC96F8316.h:40: sbit	P17			= 0x8F;
                                    778 ;	assignBit
      000357 D2 0F            [12]  779 	setb	_P17
                                    780 ;	./inc/MC96F8316.h:48: sbit	P20			= 0x90;
                                    781 ;	assignBit
      000359 D2 10            [12]  782 	setb	_P20
                                    783 ;	./inc/MC96F8316.h:49: sbit	P21			= 0x91;
                                    784 ;	assignBit
      00035B D2 11            [12]  785 	setb	_P21
                                    786 ;	./inc/MC96F8316.h:50: sbit	P22			= 0x92;
                                    787 ;	assignBit
      00035D D2 12            [12]  788 	setb	_P22
                                    789 ;	./inc/MC96F8316.h:51: sbit	P23			= 0x93;
                                    790 ;	assignBit
      00035F D2 13            [12]  791 	setb	_P23
                                    792 ;	./inc/MC96F8316.h:52: sbit	P24			= 0x94;
                                    793 ;	assignBit
      000361 D2 14            [12]  794 	setb	_P24
                                    795 ;	./inc/MC96F8316.h:53: sbit	P25			= 0x95;
                                    796 ;	assignBit
      000363 D2 15            [12]  797 	setb	_P25
                                    798 ;	./inc/MC96F8316.h:54: sbit	P26			= 0x96;
                                    799 ;	assignBit
      000365 D2 16            [12]  800 	setb	_P26
                                    801 ;	./inc/MC96F8316.h:55: sbit	P27			= 0x97;
                                    802 ;	assignBit
      000367 D2 17            [12]  803 	setb	_P27
                                    804 ;	./inc/MC96F8316.h:62: sbit	P30			= 0x98;
                                    805 ;	assignBit
      000369 D2 18            [12]  806 	setb	_P30
                                    807 ;	./inc/MC96F8316.h:63: sbit	P31			= 0x99;
                                    808 ;	assignBit
      00036B D2 19            [12]  809 	setb	_P31
                                    810 ;	./inc/MC96F8316.h:64: sbit	P32			= 0x9A;
                                    811 ;	assignBit
      00036D D2 1A            [12]  812 	setb	_P32
                                    813 ;	./inc/MC96F8316.h:65: sbit	P33			= 0x9B;
                                    814 ;	assignBit
      00036F D2 1B            [12]  815 	setb	_P33
                                    816 ;	./inc/MC96F8316.h:66: sbit	P34			= 0x9C;
                                    817 ;	assignBit
      000371 D2 1C            [12]  818 	setb	_P34
                                    819 ;	./inc/MC96F8316.h:67: sbit	P35			= 0x9D;
                                    820 ;	assignBit
      000373 D2 1D            [12]  821 	setb	_P35
                                    822 ;	./inc/MC96F8316.h:68: sbit	P36			= 0x9E;
                                    823 ;	assignBit
      000375 D2 1E            [12]  824 	setb	_P36
                                    825 ;	./inc/MC96F8316.h:69: sbit	P37			= 0x9F;
                                    826 ;	assignBit
      000377 D2 1F            [12]  827 	setb	_P37
                                    828 ;--------------------------------------------------------
                                    829 ; Home
                                    830 ;--------------------------------------------------------
                                    831 	.area HOME    (CODE)
                                    832 	.area HOME    (CODE)
                                    833 ;--------------------------------------------------------
                                    834 ; code
                                    835 ;--------------------------------------------------------
                                    836 	.area CSEG    (CODE)
                                    837 ;------------------------------------------------------------
                                    838 ;Allocation info for local variables in function 'WDT_Config'
                                    839 ;------------------------------------------------------------
                                    840 ;Time                      Allocated to registers 
                                    841 ;------------------------------------------------------------
                                    842 ;	src/mc96f8x16_wdt.c:5: void WDT_Config(uint8_t Time)
                                    843 ;	-----------------------------------------
                                    844 ;	 function WDT_Config
                                    845 ;	-----------------------------------------
      000F46                        846 _WDT_Config:
                           000007   847 	ar7 = 0x07
                           000006   848 	ar6 = 0x06
                           000005   849 	ar5 = 0x05
                           000004   850 	ar4 = 0x04
                           000003   851 	ar3 = 0x03
                           000002   852 	ar2 = 0x02
                           000001   853 	ar1 = 0x01
                           000000   854 	ar0 = 0x00
      000F46 85 82 2C         [24]  855 	mov	_WDTDR,dpl
                                    856 ;	src/mc96f8x16_wdt.c:8: WDTCR = WDTCK | WDTCL | WDTRSON | WDTEN; 
      000F49 75 2E E2         [24]  857 	mov	_WDTCR,#0xe2
                                    858 ;	src/mc96f8x16_wdt.c:9: }
      000F4C 22               [24]  859 	ret
                                    860 ;------------------------------------------------------------
                                    861 ;Allocation info for local variables in function 'WDT_Clear'
                                    862 ;------------------------------------------------------------
                                    863 ;	src/mc96f8x16_wdt.c:11: void WDT_Clear(void)
                                    864 ;	-----------------------------------------
                                    865 ;	 function WDT_Clear
                                    866 ;	-----------------------------------------
      000F4D                        867 _WDT_Clear:
                                    868 ;	src/mc96f8x16_wdt.c:13: WDTCR |= WDTCL;
      000F4D AE 2E            [24]  869 	mov	r6,_WDTCR
      000F4F 43 06 20         [24]  870 	orl	ar6,#0x20
      000F52 8E 2E            [24]  871 	mov	_WDTCR,r6
                                    872 ;	src/mc96f8x16_wdt.c:14: }
      000F54 22               [24]  873 	ret
                                    874 	.area CSEG    (CODE)
                                    875 	.area CONST   (CODE)
                                    876 	.area XINIT   (CODE)
                                    877 	.area CABS    (ABS,CODE)
