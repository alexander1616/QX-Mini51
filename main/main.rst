                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.8.0 #10562 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module main
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _main
                                     12 	.globl _getMode
                                     13 	.globl _digitDisplay
                                     14 	.globl _dualCylon
                                     15 	.globl _cylon
                                     16 	.globl _binaryCount
                                     17 	.globl _readButton
                                     18 	.globl _TF2
                                     19 	.globl _EXF2
                                     20 	.globl _RCLK
                                     21 	.globl _TCLK
                                     22 	.globl _EXEN2
                                     23 	.globl _TR2
                                     24 	.globl _C_T2
                                     25 	.globl _CP_RL2
                                     26 	.globl _T2CON_7
                                     27 	.globl _T2CON_6
                                     28 	.globl _T2CON_5
                                     29 	.globl _T2CON_4
                                     30 	.globl _T2CON_3
                                     31 	.globl _T2CON_2
                                     32 	.globl _T2CON_1
                                     33 	.globl _T2CON_0
                                     34 	.globl _PT2
                                     35 	.globl _ET2
                                     36 	.globl _CY
                                     37 	.globl _AC
                                     38 	.globl _F0
                                     39 	.globl _RS1
                                     40 	.globl _RS0
                                     41 	.globl _OV
                                     42 	.globl _F1
                                     43 	.globl _P
                                     44 	.globl _PS
                                     45 	.globl _PT1
                                     46 	.globl _PX1
                                     47 	.globl _PT0
                                     48 	.globl _PX0
                                     49 	.globl _RD
                                     50 	.globl _WR
                                     51 	.globl _T1
                                     52 	.globl _T0
                                     53 	.globl _INT1
                                     54 	.globl _INT0
                                     55 	.globl _TXD
                                     56 	.globl _RXD
                                     57 	.globl _P3_7
                                     58 	.globl _P3_6
                                     59 	.globl _P3_5
                                     60 	.globl _P3_4
                                     61 	.globl _P3_3
                                     62 	.globl _P3_2
                                     63 	.globl _P3_1
                                     64 	.globl _P3_0
                                     65 	.globl _EA
                                     66 	.globl _ES
                                     67 	.globl _ET1
                                     68 	.globl _EX1
                                     69 	.globl _ET0
                                     70 	.globl _EX0
                                     71 	.globl _P2_7
                                     72 	.globl _P2_6
                                     73 	.globl _P2_5
                                     74 	.globl _P2_4
                                     75 	.globl _P2_3
                                     76 	.globl _P2_2
                                     77 	.globl _P2_1
                                     78 	.globl _P2_0
                                     79 	.globl _SM0
                                     80 	.globl _SM1
                                     81 	.globl _SM2
                                     82 	.globl _REN
                                     83 	.globl _TB8
                                     84 	.globl _RB8
                                     85 	.globl _TI
                                     86 	.globl _RI
                                     87 	.globl _P1_7
                                     88 	.globl _P1_6
                                     89 	.globl _P1_5
                                     90 	.globl _P1_4
                                     91 	.globl _P1_3
                                     92 	.globl _P1_2
                                     93 	.globl _P1_1
                                     94 	.globl _P1_0
                                     95 	.globl _TF1
                                     96 	.globl _TR1
                                     97 	.globl _TF0
                                     98 	.globl _TR0
                                     99 	.globl _IE1
                                    100 	.globl _IT1
                                    101 	.globl _IE0
                                    102 	.globl _IT0
                                    103 	.globl _P0_7
                                    104 	.globl _P0_6
                                    105 	.globl _P0_5
                                    106 	.globl _P0_4
                                    107 	.globl _P0_3
                                    108 	.globl _P0_2
                                    109 	.globl _P0_1
                                    110 	.globl _P0_0
                                    111 	.globl _TH2
                                    112 	.globl _TL2
                                    113 	.globl _RCAP2H
                                    114 	.globl _RCAP2L
                                    115 	.globl _T2CON
                                    116 	.globl _B
                                    117 	.globl _ACC
                                    118 	.globl _PSW
                                    119 	.globl _IP
                                    120 	.globl _P3
                                    121 	.globl _IE
                                    122 	.globl _P2
                                    123 	.globl _SBUF
                                    124 	.globl _SCON
                                    125 	.globl _P1
                                    126 	.globl _TH1
                                    127 	.globl _TH0
                                    128 	.globl _TL1
                                    129 	.globl _TL0
                                    130 	.globl _TMOD
                                    131 	.globl _TCON
                                    132 	.globl _PCON
                                    133 	.globl _DPH
                                    134 	.globl _DPL
                                    135 	.globl _SP
                                    136 	.globl _P0
                                    137 	.globl _mode
                                    138 ;--------------------------------------------------------
                                    139 ; special function registers
                                    140 ;--------------------------------------------------------
                                    141 	.area RSEG    (ABS,DATA)
      000000                        142 	.org 0x0000
                           000080   143 _P0	=	0x0080
                           000081   144 _SP	=	0x0081
                           000082   145 _DPL	=	0x0082
                           000083   146 _DPH	=	0x0083
                           000087   147 _PCON	=	0x0087
                           000088   148 _TCON	=	0x0088
                           000089   149 _TMOD	=	0x0089
                           00008A   150 _TL0	=	0x008a
                           00008B   151 _TL1	=	0x008b
                           00008C   152 _TH0	=	0x008c
                           00008D   153 _TH1	=	0x008d
                           000090   154 _P1	=	0x0090
                           000098   155 _SCON	=	0x0098
                           000099   156 _SBUF	=	0x0099
                           0000A0   157 _P2	=	0x00a0
                           0000A8   158 _IE	=	0x00a8
                           0000B0   159 _P3	=	0x00b0
                           0000B8   160 _IP	=	0x00b8
                           0000D0   161 _PSW	=	0x00d0
                           0000E0   162 _ACC	=	0x00e0
                           0000F0   163 _B	=	0x00f0
                           0000C8   164 _T2CON	=	0x00c8
                           0000CA   165 _RCAP2L	=	0x00ca
                           0000CB   166 _RCAP2H	=	0x00cb
                           0000CC   167 _TL2	=	0x00cc
                           0000CD   168 _TH2	=	0x00cd
                                    169 ;--------------------------------------------------------
                                    170 ; special function bits
                                    171 ;--------------------------------------------------------
                                    172 	.area RSEG    (ABS,DATA)
      000000                        173 	.org 0x0000
                           000080   174 _P0_0	=	0x0080
                           000081   175 _P0_1	=	0x0081
                           000082   176 _P0_2	=	0x0082
                           000083   177 _P0_3	=	0x0083
                           000084   178 _P0_4	=	0x0084
                           000085   179 _P0_5	=	0x0085
                           000086   180 _P0_6	=	0x0086
                           000087   181 _P0_7	=	0x0087
                           000088   182 _IT0	=	0x0088
                           000089   183 _IE0	=	0x0089
                           00008A   184 _IT1	=	0x008a
                           00008B   185 _IE1	=	0x008b
                           00008C   186 _TR0	=	0x008c
                           00008D   187 _TF0	=	0x008d
                           00008E   188 _TR1	=	0x008e
                           00008F   189 _TF1	=	0x008f
                           000090   190 _P1_0	=	0x0090
                           000091   191 _P1_1	=	0x0091
                           000092   192 _P1_2	=	0x0092
                           000093   193 _P1_3	=	0x0093
                           000094   194 _P1_4	=	0x0094
                           000095   195 _P1_5	=	0x0095
                           000096   196 _P1_6	=	0x0096
                           000097   197 _P1_7	=	0x0097
                           000098   198 _RI	=	0x0098
                           000099   199 _TI	=	0x0099
                           00009A   200 _RB8	=	0x009a
                           00009B   201 _TB8	=	0x009b
                           00009C   202 _REN	=	0x009c
                           00009D   203 _SM2	=	0x009d
                           00009E   204 _SM1	=	0x009e
                           00009F   205 _SM0	=	0x009f
                           0000A0   206 _P2_0	=	0x00a0
                           0000A1   207 _P2_1	=	0x00a1
                           0000A2   208 _P2_2	=	0x00a2
                           0000A3   209 _P2_3	=	0x00a3
                           0000A4   210 _P2_4	=	0x00a4
                           0000A5   211 _P2_5	=	0x00a5
                           0000A6   212 _P2_6	=	0x00a6
                           0000A7   213 _P2_7	=	0x00a7
                           0000A8   214 _EX0	=	0x00a8
                           0000A9   215 _ET0	=	0x00a9
                           0000AA   216 _EX1	=	0x00aa
                           0000AB   217 _ET1	=	0x00ab
                           0000AC   218 _ES	=	0x00ac
                           0000AF   219 _EA	=	0x00af
                           0000B0   220 _P3_0	=	0x00b0
                           0000B1   221 _P3_1	=	0x00b1
                           0000B2   222 _P3_2	=	0x00b2
                           0000B3   223 _P3_3	=	0x00b3
                           0000B4   224 _P3_4	=	0x00b4
                           0000B5   225 _P3_5	=	0x00b5
                           0000B6   226 _P3_6	=	0x00b6
                           0000B7   227 _P3_7	=	0x00b7
                           0000B0   228 _RXD	=	0x00b0
                           0000B1   229 _TXD	=	0x00b1
                           0000B2   230 _INT0	=	0x00b2
                           0000B3   231 _INT1	=	0x00b3
                           0000B4   232 _T0	=	0x00b4
                           0000B5   233 _T1	=	0x00b5
                           0000B6   234 _WR	=	0x00b6
                           0000B7   235 _RD	=	0x00b7
                           0000B8   236 _PX0	=	0x00b8
                           0000B9   237 _PT0	=	0x00b9
                           0000BA   238 _PX1	=	0x00ba
                           0000BB   239 _PT1	=	0x00bb
                           0000BC   240 _PS	=	0x00bc
                           0000D0   241 _P	=	0x00d0
                           0000D1   242 _F1	=	0x00d1
                           0000D2   243 _OV	=	0x00d2
                           0000D3   244 _RS0	=	0x00d3
                           0000D4   245 _RS1	=	0x00d4
                           0000D5   246 _F0	=	0x00d5
                           0000D6   247 _AC	=	0x00d6
                           0000D7   248 _CY	=	0x00d7
                           0000AD   249 _ET2	=	0x00ad
                           0000BD   250 _PT2	=	0x00bd
                           0000C8   251 _T2CON_0	=	0x00c8
                           0000C9   252 _T2CON_1	=	0x00c9
                           0000CA   253 _T2CON_2	=	0x00ca
                           0000CB   254 _T2CON_3	=	0x00cb
                           0000CC   255 _T2CON_4	=	0x00cc
                           0000CD   256 _T2CON_5	=	0x00cd
                           0000CE   257 _T2CON_6	=	0x00ce
                           0000CF   258 _T2CON_7	=	0x00cf
                           0000C8   259 _CP_RL2	=	0x00c8
                           0000C9   260 _C_T2	=	0x00c9
                           0000CA   261 _TR2	=	0x00ca
                           0000CB   262 _EXEN2	=	0x00cb
                           0000CC   263 _TCLK	=	0x00cc
                           0000CD   264 _RCLK	=	0x00cd
                           0000CE   265 _EXF2	=	0x00ce
                           0000CF   266 _TF2	=	0x00cf
                                    267 ;--------------------------------------------------------
                                    268 ; overlayable register banks
                                    269 ;--------------------------------------------------------
                                    270 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        271 	.ds 8
                                    272 ;--------------------------------------------------------
                                    273 ; internal ram data
                                    274 ;--------------------------------------------------------
                                    275 	.area DSEG    (DATA)
      000008                        276 _mode::
      000008                        277 	.ds 1
                                    278 ;--------------------------------------------------------
                                    279 ; overlayable items in internal ram 
                                    280 ;--------------------------------------------------------
                                    281 ;--------------------------------------------------------
                                    282 ; Stack segment in internal ram 
                                    283 ;--------------------------------------------------------
                                    284 	.area	SSEG
      00001F                        285 __start__stack:
      00001F                        286 	.ds	1
                                    287 
                                    288 ;--------------------------------------------------------
                                    289 ; indirectly addressable internal ram data
                                    290 ;--------------------------------------------------------
                                    291 	.area ISEG    (DATA)
                                    292 ;--------------------------------------------------------
                                    293 ; absolute internal ram data
                                    294 ;--------------------------------------------------------
                                    295 	.area IABS    (ABS,DATA)
                                    296 	.area IABS    (ABS,DATA)
                                    297 ;--------------------------------------------------------
                                    298 ; bit data
                                    299 ;--------------------------------------------------------
                                    300 	.area BSEG    (BIT)
                                    301 ;--------------------------------------------------------
                                    302 ; paged external ram data
                                    303 ;--------------------------------------------------------
                                    304 	.area PSEG    (PAG,XDATA)
                                    305 ;--------------------------------------------------------
                                    306 ; external ram data
                                    307 ;--------------------------------------------------------
                                    308 	.area XSEG    (XDATA)
                                    309 ;--------------------------------------------------------
                                    310 ; absolute external ram data
                                    311 ;--------------------------------------------------------
                                    312 	.area XABS    (ABS,XDATA)
                                    313 ;--------------------------------------------------------
                                    314 ; external initialized ram data
                                    315 ;--------------------------------------------------------
                                    316 	.area XISEG   (XDATA)
                                    317 	.area HOME    (CODE)
                                    318 	.area GSINIT0 (CODE)
                                    319 	.area GSINIT1 (CODE)
                                    320 	.area GSINIT2 (CODE)
                                    321 	.area GSINIT3 (CODE)
                                    322 	.area GSINIT4 (CODE)
                                    323 	.area GSINIT5 (CODE)
                                    324 	.area GSINIT  (CODE)
                                    325 	.area GSFINAL (CODE)
                                    326 	.area CSEG    (CODE)
                                    327 ;--------------------------------------------------------
                                    328 ; interrupt vector 
                                    329 ;--------------------------------------------------------
                                    330 	.area HOME    (CODE)
      000000                        331 __interrupt_vect:
      000000 02 00 06         [24]  332 	ljmp	__sdcc_gsinit_startup
                                    333 ;--------------------------------------------------------
                                    334 ; global & static initialisations
                                    335 ;--------------------------------------------------------
                                    336 	.area HOME    (CODE)
                                    337 	.area GSINIT  (CODE)
                                    338 	.area GSFINAL (CODE)
                                    339 	.area GSINIT  (CODE)
                                    340 	.globl __sdcc_gsinit_startup
                                    341 	.globl __sdcc_program_startup
                                    342 	.globl __start__stack
                                    343 	.globl __mcs51_genXINIT
                                    344 	.globl __mcs51_genXRAMCLEAR
                                    345 	.globl __mcs51_genRAMCLEAR
                                    346 ;	main.c:6: unsigned char mode = 0;
      00005F 75 08 00         [24]  347 	mov	_mode,#0x00
                                    348 	.area GSFINAL (CODE)
      000083 02 00 03         [24]  349 	ljmp	__sdcc_program_startup
                                    350 ;--------------------------------------------------------
                                    351 ; Home
                                    352 ;--------------------------------------------------------
                                    353 	.area HOME    (CODE)
                                    354 	.area HOME    (CODE)
      000003                        355 __sdcc_program_startup:
      000003 02 00 98         [24]  356 	ljmp	_main
                                    357 ;	return from main will return to caller
                                    358 ;--------------------------------------------------------
                                    359 ; code
                                    360 ;--------------------------------------------------------
                                    361 	.area CSEG    (CODE)
                                    362 ;------------------------------------------------------------
                                    363 ;Allocation info for local variables in function 'getMode'
                                    364 ;------------------------------------------------------------
                                    365 ;switchMode                Allocated to registers r7 
                                    366 ;------------------------------------------------------------
                                    367 ;	main.c:8: unsigned char getMode(){
                                    368 ;	-----------------------------------------
                                    369 ;	 function getMode
                                    370 ;	-----------------------------------------
      000086                        371 _getMode:
                           000007   372 	ar7 = 0x07
                           000006   373 	ar6 = 0x06
                           000005   374 	ar5 = 0x05
                           000004   375 	ar4 = 0x04
                           000003   376 	ar3 = 0x03
                           000002   377 	ar2 = 0x02
                           000001   378 	ar1 = 0x01
                           000000   379 	ar0 = 0x00
                                    380 ;	main.c:10: switchMode = readButton();
      000086 12 03 D8         [24]  381 	lcall	_readButton
      000089 AF 82            [24]  382 	mov	r7,dpl
                                    383 ;	main.c:11: if (switchMode == 1){
      00008B BF 01 06         [24]  384 	cjne	r7,#0x01,00102$
                                    385 ;	main.c:12: mode++;
      00008E 05 08            [12]  386 	inc	_mode
                                    387 ;	main.c:16: return 1;
      000090 75 82 01         [24]  388 	mov	dpl,#0x01
      000093 22               [24]  389 	ret
      000094                        390 00102$:
                                    391 ;	main.c:18: return 0;
      000094 75 82 00         [24]  392 	mov	dpl,#0x00
                                    393 ;	main.c:19: }
      000097 22               [24]  394 	ret
                                    395 ;------------------------------------------------------------
                                    396 ;Allocation info for local variables in function 'main'
                                    397 ;------------------------------------------------------------
                                    398 ;button                    Allocated to registers r7 
                                    399 ;------------------------------------------------------------
                                    400 ;	main.c:21: void main(){
                                    401 ;	-----------------------------------------
                                    402 ;	 function main
                                    403 ;	-----------------------------------------
      000098                        404 _main:
                                    405 ;	main.c:22: while(1){
      000098                        406 00110$:
                                    407 ;	main.c:24: button = readButton();
      000098 12 03 D8         [24]  408 	lcall	_readButton
      00009B AF 82            [24]  409 	mov	r7,dpl
                                    410 ;	main.c:25: if (button == 1){
      00009D BF 01 02         [24]  411 	cjne	r7,#0x01,00102$
                                    412 ;	main.c:26: mode++;
      0000A0 05 08            [12]  413 	inc	_mode
      0000A2                        414 00102$:
                                    415 ;	main.c:28: switch (mode){
      0000A2 E5 08            [12]  416 	mov	a,_mode
      0000A4 24 FC            [12]  417 	add	a,#0xff - 0x03
      0000A6 40 2A            [24]  418 	jc	00107$
      0000A8 E5 08            [12]  419 	mov	a,_mode
      0000AA 75 F0 03         [24]  420 	mov	b,#0x03
      0000AD A4               [48]  421 	mul	ab
      0000AE 90 00 B2         [24]  422 	mov	dptr,#00129$
      0000B1 73               [24]  423 	jmp	@a+dptr
      0000B2                        424 00129$:
      0000B2 02 00 BE         [24]  425 	ljmp	00103$
      0000B5 02 00 C3         [24]  426 	ljmp	00104$
      0000B8 02 00 C8         [24]  427 	ljmp	00105$
      0000BB 02 00 CD         [24]  428 	ljmp	00106$
                                    429 ;	main.c:29: case 0:
      0000BE                        430 00103$:
                                    431 ;	main.c:30: dualCylon();
      0000BE 12 05 4D         [24]  432 	lcall	_dualCylon
                                    433 ;	main.c:31: break;
                                    434 ;	main.c:32: case 1:
      0000C1 80 D5            [24]  435 	sjmp	00110$
      0000C3                        436 00104$:
                                    437 ;	main.c:33: cylon();
      0000C3 12 04 F7         [24]  438 	lcall	_cylon
                                    439 ;	main.c:34: break;
                                    440 ;	main.c:35: case 2:
      0000C6 80 D0            [24]  441 	sjmp	00110$
      0000C8                        442 00105$:
                                    443 ;	main.c:36: binaryCount();
      0000C8 12 04 97         [24]  444 	lcall	_binaryCount
                                    445 ;	main.c:37: break;
                                    446 ;	main.c:38: case 3:
      0000CB 80 CB            [24]  447 	sjmp	00110$
      0000CD                        448 00106$:
                                    449 ;	main.c:39: digitDisplay();
      0000CD 12 04 EC         [24]  450 	lcall	_digitDisplay
                                    451 ;	main.c:40: break;
                                    452 ;	main.c:41: default:
      0000D0 80 C6            [24]  453 	sjmp	00110$
      0000D2                        454 00107$:
                                    455 ;	main.c:42: mode = 0;
      0000D2 75 08 00         [24]  456 	mov	_mode,#0x00
                                    457 ;	main.c:44: }
                                    458 ;	main.c:46: }
      0000D5 80 C1            [24]  459 	sjmp	00110$
                                    460 	.area CSEG    (CODE)
                                    461 	.area CONST   (CODE)
                                    462 	.area XINIT   (CODE)
                                    463 	.area CABS    (ABS,CODE)
