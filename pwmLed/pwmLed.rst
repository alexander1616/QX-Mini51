                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.8.0 #10562 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module pwmLed
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _main
                                     12 	.globl _Beep
                                     13 	.globl _delayms
                                     14 	.globl _delay
                                     15 	.globl _timer1
                                     16 	.globl _timer0
                                     17 	.globl _CY
                                     18 	.globl _AC
                                     19 	.globl _F0
                                     20 	.globl _RS1
                                     21 	.globl _RS0
                                     22 	.globl _OV
                                     23 	.globl _F1
                                     24 	.globl _P
                                     25 	.globl _PS
                                     26 	.globl _PT1
                                     27 	.globl _PX1
                                     28 	.globl _PT0
                                     29 	.globl _PX0
                                     30 	.globl _RD
                                     31 	.globl _WR
                                     32 	.globl _T1
                                     33 	.globl _T0
                                     34 	.globl _INT1
                                     35 	.globl _INT0
                                     36 	.globl _TXD
                                     37 	.globl _RXD
                                     38 	.globl _P3_7
                                     39 	.globl _P3_6
                                     40 	.globl _P3_5
                                     41 	.globl _P3_4
                                     42 	.globl _P3_3
                                     43 	.globl _P3_2
                                     44 	.globl _P3_1
                                     45 	.globl _P3_0
                                     46 	.globl _EA
                                     47 	.globl _ES
                                     48 	.globl _ET1
                                     49 	.globl _EX1
                                     50 	.globl _ET0
                                     51 	.globl _EX0
                                     52 	.globl _P2_7
                                     53 	.globl _P2_6
                                     54 	.globl _P2_5
                                     55 	.globl _P2_4
                                     56 	.globl _P2_3
                                     57 	.globl _P2_2
                                     58 	.globl _P2_1
                                     59 	.globl _P2_0
                                     60 	.globl _SM0
                                     61 	.globl _SM1
                                     62 	.globl _SM2
                                     63 	.globl _REN
                                     64 	.globl _TB8
                                     65 	.globl _RB8
                                     66 	.globl _TI
                                     67 	.globl _RI
                                     68 	.globl _P1_7
                                     69 	.globl _P1_6
                                     70 	.globl _P1_5
                                     71 	.globl _P1_4
                                     72 	.globl _P1_3
                                     73 	.globl _P1_2
                                     74 	.globl _P1_1
                                     75 	.globl _P1_0
                                     76 	.globl _TF1
                                     77 	.globl _TR1
                                     78 	.globl _TF0
                                     79 	.globl _TR0
                                     80 	.globl _IE1
                                     81 	.globl _IT1
                                     82 	.globl _IE0
                                     83 	.globl _IT0
                                     84 	.globl _P0_7
                                     85 	.globl _P0_6
                                     86 	.globl _P0_5
                                     87 	.globl _P0_4
                                     88 	.globl _P0_3
                                     89 	.globl _P0_2
                                     90 	.globl _P0_1
                                     91 	.globl _P0_0
                                     92 	.globl _B
                                     93 	.globl _ACC
                                     94 	.globl _PSW
                                     95 	.globl _IP
                                     96 	.globl _P3
                                     97 	.globl _IE
                                     98 	.globl _P2
                                     99 	.globl _SBUF
                                    100 	.globl _SCON
                                    101 	.globl _P1
                                    102 	.globl _TH1
                                    103 	.globl _TH0
                                    104 	.globl _TL1
                                    105 	.globl _TL0
                                    106 	.globl _TMOD
                                    107 	.globl _TCON
                                    108 	.globl _PCON
                                    109 	.globl _DPH
                                    110 	.globl _DPL
                                    111 	.globl _SP
                                    112 	.globl _P0
                                    113 	.globl _PWM
                                    114 ;--------------------------------------------------------
                                    115 ; special function registers
                                    116 ;--------------------------------------------------------
                                    117 	.area RSEG    (ABS,DATA)
      000000                        118 	.org 0x0000
                           000080   119 _P0	=	0x0080
                           000081   120 _SP	=	0x0081
                           000082   121 _DPL	=	0x0082
                           000083   122 _DPH	=	0x0083
                           000087   123 _PCON	=	0x0087
                           000088   124 _TCON	=	0x0088
                           000089   125 _TMOD	=	0x0089
                           00008A   126 _TL0	=	0x008a
                           00008B   127 _TL1	=	0x008b
                           00008C   128 _TH0	=	0x008c
                           00008D   129 _TH1	=	0x008d
                           000090   130 _P1	=	0x0090
                           000098   131 _SCON	=	0x0098
                           000099   132 _SBUF	=	0x0099
                           0000A0   133 _P2	=	0x00a0
                           0000A8   134 _IE	=	0x00a8
                           0000B0   135 _P3	=	0x00b0
                           0000B8   136 _IP	=	0x00b8
                           0000D0   137 _PSW	=	0x00d0
                           0000E0   138 _ACC	=	0x00e0
                           0000F0   139 _B	=	0x00f0
                                    140 ;--------------------------------------------------------
                                    141 ; special function bits
                                    142 ;--------------------------------------------------------
                                    143 	.area RSEG    (ABS,DATA)
      000000                        144 	.org 0x0000
                           000080   145 _P0_0	=	0x0080
                           000081   146 _P0_1	=	0x0081
                           000082   147 _P0_2	=	0x0082
                           000083   148 _P0_3	=	0x0083
                           000084   149 _P0_4	=	0x0084
                           000085   150 _P0_5	=	0x0085
                           000086   151 _P0_6	=	0x0086
                           000087   152 _P0_7	=	0x0087
                           000088   153 _IT0	=	0x0088
                           000089   154 _IE0	=	0x0089
                           00008A   155 _IT1	=	0x008a
                           00008B   156 _IE1	=	0x008b
                           00008C   157 _TR0	=	0x008c
                           00008D   158 _TF0	=	0x008d
                           00008E   159 _TR1	=	0x008e
                           00008F   160 _TF1	=	0x008f
                           000090   161 _P1_0	=	0x0090
                           000091   162 _P1_1	=	0x0091
                           000092   163 _P1_2	=	0x0092
                           000093   164 _P1_3	=	0x0093
                           000094   165 _P1_4	=	0x0094
                           000095   166 _P1_5	=	0x0095
                           000096   167 _P1_6	=	0x0096
                           000097   168 _P1_7	=	0x0097
                           000098   169 _RI	=	0x0098
                           000099   170 _TI	=	0x0099
                           00009A   171 _RB8	=	0x009a
                           00009B   172 _TB8	=	0x009b
                           00009C   173 _REN	=	0x009c
                           00009D   174 _SM2	=	0x009d
                           00009E   175 _SM1	=	0x009e
                           00009F   176 _SM0	=	0x009f
                           0000A0   177 _P2_0	=	0x00a0
                           0000A1   178 _P2_1	=	0x00a1
                           0000A2   179 _P2_2	=	0x00a2
                           0000A3   180 _P2_3	=	0x00a3
                           0000A4   181 _P2_4	=	0x00a4
                           0000A5   182 _P2_5	=	0x00a5
                           0000A6   183 _P2_6	=	0x00a6
                           0000A7   184 _P2_7	=	0x00a7
                           0000A8   185 _EX0	=	0x00a8
                           0000A9   186 _ET0	=	0x00a9
                           0000AA   187 _EX1	=	0x00aa
                           0000AB   188 _ET1	=	0x00ab
                           0000AC   189 _ES	=	0x00ac
                           0000AF   190 _EA	=	0x00af
                           0000B0   191 _P3_0	=	0x00b0
                           0000B1   192 _P3_1	=	0x00b1
                           0000B2   193 _P3_2	=	0x00b2
                           0000B3   194 _P3_3	=	0x00b3
                           0000B4   195 _P3_4	=	0x00b4
                           0000B5   196 _P3_5	=	0x00b5
                           0000B6   197 _P3_6	=	0x00b6
                           0000B7   198 _P3_7	=	0x00b7
                           0000B0   199 _RXD	=	0x00b0
                           0000B1   200 _TXD	=	0x00b1
                           0000B2   201 _INT0	=	0x00b2
                           0000B3   202 _INT1	=	0x00b3
                           0000B4   203 _T0	=	0x00b4
                           0000B5   204 _T1	=	0x00b5
                           0000B6   205 _WR	=	0x00b6
                           0000B7   206 _RD	=	0x00b7
                           0000B8   207 _PX0	=	0x00b8
                           0000B9   208 _PT0	=	0x00b9
                           0000BA   209 _PX1	=	0x00ba
                           0000BB   210 _PT1	=	0x00bb
                           0000BC   211 _PS	=	0x00bc
                           0000D0   212 _P	=	0x00d0
                           0000D1   213 _F1	=	0x00d1
                           0000D2   214 _OV	=	0x00d2
                           0000D3   215 _RS0	=	0x00d3
                           0000D4   216 _RS1	=	0x00d4
                           0000D5   217 _F0	=	0x00d5
                           0000D6   218 _AC	=	0x00d6
                           0000D7   219 _CY	=	0x00d7
                                    220 ;--------------------------------------------------------
                                    221 ; overlayable register banks
                                    222 ;--------------------------------------------------------
                                    223 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        224 	.ds 8
                                    225 ;--------------------------------------------------------
                                    226 ; internal ram data
                                    227 ;--------------------------------------------------------
                                    228 	.area DSEG    (DATA)
      000008                        229 _PWM::
      000008                        230 	.ds 1
                                    231 ;--------------------------------------------------------
                                    232 ; overlayable items in internal ram 
                                    233 ;--------------------------------------------------------
                                    234 	.area	OSEG    (OVR,DATA)
                                    235 	.area	OSEG    (OVR,DATA)
                                    236 ;--------------------------------------------------------
                                    237 ; Stack segment in internal ram 
                                    238 ;--------------------------------------------------------
                                    239 	.area	SSEG
      000009                        240 __start__stack:
      000009                        241 	.ds	1
                                    242 
                                    243 ;--------------------------------------------------------
                                    244 ; indirectly addressable internal ram data
                                    245 ;--------------------------------------------------------
                                    246 	.area ISEG    (DATA)
                                    247 ;--------------------------------------------------------
                                    248 ; absolute internal ram data
                                    249 ;--------------------------------------------------------
                                    250 	.area IABS    (ABS,DATA)
                                    251 	.area IABS    (ABS,DATA)
                                    252 ;--------------------------------------------------------
                                    253 ; bit data
                                    254 ;--------------------------------------------------------
                                    255 	.area BSEG    (BIT)
                                    256 ;--------------------------------------------------------
                                    257 ; paged external ram data
                                    258 ;--------------------------------------------------------
                                    259 	.area PSEG    (PAG,XDATA)
                                    260 ;--------------------------------------------------------
                                    261 ; external ram data
                                    262 ;--------------------------------------------------------
                                    263 	.area XSEG    (XDATA)
                                    264 ;--------------------------------------------------------
                                    265 ; absolute external ram data
                                    266 ;--------------------------------------------------------
                                    267 	.area XABS    (ABS,XDATA)
                                    268 ;--------------------------------------------------------
                                    269 ; external initialized ram data
                                    270 ;--------------------------------------------------------
                                    271 	.area XISEG   (XDATA)
                                    272 	.area HOME    (CODE)
                                    273 	.area GSINIT0 (CODE)
                                    274 	.area GSINIT1 (CODE)
                                    275 	.area GSINIT2 (CODE)
                                    276 	.area GSINIT3 (CODE)
                                    277 	.area GSINIT4 (CODE)
                                    278 	.area GSINIT5 (CODE)
                                    279 	.area GSINIT  (CODE)
                                    280 	.area GSFINAL (CODE)
                                    281 	.area CSEG    (CODE)
                                    282 ;--------------------------------------------------------
                                    283 ; interrupt vector 
                                    284 ;--------------------------------------------------------
                                    285 	.area HOME    (CODE)
      000000                        286 __interrupt_vect:
      000000 02 00 21         [24]  287 	ljmp	__sdcc_gsinit_startup
      000003 32               [24]  288 	reti
      000004                        289 	.ds	7
      00000B 02 00 80         [24]  290 	ljmp	_timer0
      00000E                        291 	.ds	5
      000013 32               [24]  292 	reti
      000014                        293 	.ds	7
      00001B 02 00 91         [24]  294 	ljmp	_timer1
                                    295 ;--------------------------------------------------------
                                    296 ; global & static initialisations
                                    297 ;--------------------------------------------------------
                                    298 	.area HOME    (CODE)
                                    299 	.area GSINIT  (CODE)
                                    300 	.area GSFINAL (CODE)
                                    301 	.area GSINIT  (CODE)
                                    302 	.globl __sdcc_gsinit_startup
                                    303 	.globl __sdcc_program_startup
                                    304 	.globl __start__stack
                                    305 	.globl __mcs51_genXINIT
                                    306 	.globl __mcs51_genXRAMCLEAR
                                    307 	.globl __mcs51_genRAMCLEAR
                                    308 ;	pwmLed.c:5: unsigned char PWM = 0x7f;
      00007A 75 08 7F         [24]  309 	mov	_PWM,#0x7f
                                    310 	.area GSFINAL (CODE)
      00007D 02 00 1E         [24]  311 	ljmp	__sdcc_program_startup
                                    312 ;--------------------------------------------------------
                                    313 ; Home
                                    314 ;--------------------------------------------------------
                                    315 	.area HOME    (CODE)
                                    316 	.area HOME    (CODE)
      00001E                        317 __sdcc_program_startup:
      00001E 02 00 CF         [24]  318 	ljmp	_main
                                    319 ;	return from main will return to caller
                                    320 ;--------------------------------------------------------
                                    321 ; code
                                    322 ;--------------------------------------------------------
                                    323 	.area CSEG    (CODE)
                                    324 ;------------------------------------------------------------
                                    325 ;Allocation info for local variables in function 'timer0'
                                    326 ;------------------------------------------------------------
                                    327 ;	pwmLed.c:7: void timer0(void) __interrupt(1)
                                    328 ;	-----------------------------------------
                                    329 ;	 function timer0
                                    330 ;	-----------------------------------------
      000080                        331 _timer0:
                           000007   332 	ar7 = 0x07
                           000006   333 	ar6 = 0x06
                           000005   334 	ar5 = 0x05
                           000004   335 	ar4 = 0x04
                           000003   336 	ar3 = 0x03
                           000002   337 	ar2 = 0x02
                           000001   338 	ar1 = 0x01
                           000000   339 	ar0 = 0x00
                                    340 ;	pwmLed.c:9: TR1 = 0;
                                    341 ;	assignBit
      000080 C2 8E            [12]  342 	clr	_TR1
                                    343 ;	pwmLed.c:10: TH0 = 0xfc;
      000082 75 8C FC         [24]  344 	mov	_TH0,#0xfc
                                    345 ;	pwmLed.c:11: TL0 = 0x66;
      000085 75 8A 66         [24]  346 	mov	_TL0,#0x66
                                    347 ;	pwmLed.c:12: TH1 = PWM;
      000088 85 08 8D         [24]  348 	mov	_TH1,_PWM
                                    349 ;	pwmLed.c:13: TR1 = 1;
                                    350 ;	assignBit
      00008B D2 8E            [12]  351 	setb	_TR1
                                    352 ;	pwmLed.c:14: P1 = 0x00;
      00008D 75 90 00         [24]  353 	mov	_P1,#0x00
                                    354 ;	pwmLed.c:15: }
      000090 32               [24]  355 	reti
                                    356 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                    357 ;	eliminated unneeded push/pop psw
                                    358 ;	eliminated unneeded push/pop dpl
                                    359 ;	eliminated unneeded push/pop dph
                                    360 ;	eliminated unneeded push/pop b
                                    361 ;	eliminated unneeded push/pop acc
                                    362 ;------------------------------------------------------------
                                    363 ;Allocation info for local variables in function 'timer1'
                                    364 ;------------------------------------------------------------
                                    365 ;	pwmLed.c:17: void timer1(void) __interrupt(3)
                                    366 ;	-----------------------------------------
                                    367 ;	 function timer1
                                    368 ;	-----------------------------------------
      000091                        369 _timer1:
                                    370 ;	pwmLed.c:19: TR1 = 0;
                                    371 ;	assignBit
      000091 C2 8E            [12]  372 	clr	_TR1
                                    373 ;	pwmLed.c:20: P1 = 0xff;
      000093 75 90 FF         [24]  374 	mov	_P1,#0xff
                                    375 ;	pwmLed.c:21: }
      000096 32               [24]  376 	reti
                                    377 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                    378 ;	eliminated unneeded push/pop psw
                                    379 ;	eliminated unneeded push/pop dpl
                                    380 ;	eliminated unneeded push/pop dph
                                    381 ;	eliminated unneeded push/pop b
                                    382 ;	eliminated unneeded push/pop acc
                                    383 ;------------------------------------------------------------
                                    384 ;Allocation info for local variables in function 'delay'
                                    385 ;------------------------------------------------------------
                                    386 ;t                         Allocated to registers 
                                    387 ;------------------------------------------------------------
                                    388 ;	pwmLed.c:23: void delay(unsigned char t)
                                    389 ;	-----------------------------------------
                                    390 ;	 function delay
                                    391 ;	-----------------------------------------
      000097                        392 _delay:
      000097 AF 82            [24]  393 	mov	r7,dpl
                                    394 ;	pwmLed.c:25: while (t--);
      000099                        395 00101$:
      000099 8F 06            [24]  396 	mov	ar6,r7
      00009B 1F               [12]  397 	dec	r7
      00009C EE               [12]  398 	mov	a,r6
      00009D 70 FA            [24]  399 	jnz	00101$
                                    400 ;	pwmLed.c:26: }
      00009F 22               [24]  401 	ret
                                    402 ;------------------------------------------------------------
                                    403 ;Allocation info for local variables in function 'delayms'
                                    404 ;------------------------------------------------------------
                                    405 ;ms                        Allocated to registers 
                                    406 ;i                         Allocated to registers r6 
                                    407 ;------------------------------------------------------------
                                    408 ;	pwmLed.c:28: void delayms(unsigned char ms)
                                    409 ;	-----------------------------------------
                                    410 ;	 function delayms
                                    411 ;	-----------------------------------------
      0000A0                        412 _delayms:
      0000A0 AF 82            [24]  413 	mov	r7,dpl
                                    414 ;	pwmLed.c:32: while (ms--) {
      0000A2                        415 00102$:
      0000A2 8F 06            [24]  416 	mov	ar6,r7
      0000A4 1F               [12]  417 	dec	r7
      0000A5 EE               [12]  418 	mov	a,r6
      0000A6 60 0A            [24]  419 	jz	00108$
                                    420 ;	pwmLed.c:33: for (i = 0; i < 120; i++);
      0000A8 7E 78            [12]  421 	mov	r6,#0x78
      0000AA                        422 00107$:
      0000AA EE               [12]  423 	mov	a,r6
      0000AB 14               [12]  424 	dec	a
      0000AC FD               [12]  425 	mov	r5,a
      0000AD FE               [12]  426 	mov	r6,a
      0000AE 70 FA            [24]  427 	jnz	00107$
      0000B0 80 F0            [24]  428 	sjmp	00102$
      0000B2                        429 00108$:
                                    430 ;	pwmLed.c:35: }
      0000B2 22               [24]  431 	ret
                                    432 ;------------------------------------------------------------
                                    433 ;Allocation info for local variables in function 'Beep'
                                    434 ;------------------------------------------------------------
                                    435 ;i                         Allocated to registers r7 
                                    436 ;------------------------------------------------------------
                                    437 ;	pwmLed.c:37: void Beep(void)
                                    438 ;	-----------------------------------------
                                    439 ;	 function Beep
                                    440 ;	-----------------------------------------
      0000B3                        441 _Beep:
                                    442 ;	pwmLed.c:41: for (i = 0; i < 100; i++) {
      0000B3 7F 00            [12]  443 	mov	r7,#0x00
      0000B5                        444 00102$:
                                    445 ;	pwmLed.c:42: delay(100);
      0000B5 75 82 64         [24]  446 	mov	dpl,#0x64
      0000B8 C0 07            [24]  447 	push	ar7
      0000BA 12 00 97         [24]  448 	lcall	_delay
      0000BD D0 07            [24]  449 	pop	ar7
                                    450 ;	pwmLed.c:43: BEEP ^= 1;
      0000BF B2 B6            [12]  451 	cpl	_P3_6
                                    452 ;	pwmLed.c:41: for (i = 0; i < 100; i++) {
      0000C1 0F               [12]  453 	inc	r7
      0000C2 BF 64 00         [24]  454 	cjne	r7,#0x64,00115$
      0000C5                        455 00115$:
      0000C5 40 EE            [24]  456 	jc	00102$
                                    457 ;	pwmLed.c:45: BEEP = 1;
                                    458 ;	assignBit
      0000C7 D2 B6            [12]  459 	setb	_P3_6
                                    460 ;	pwmLed.c:46: delayms(100);
      0000C9 75 82 64         [24]  461 	mov	dpl,#0x64
                                    462 ;	pwmLed.c:47: }
      0000CC 02 00 A0         [24]  463 	ljmp	_delayms
                                    464 ;------------------------------------------------------------
                                    465 ;Allocation info for local variables in function 'main'
                                    466 ;------------------------------------------------------------
                                    467 ;	pwmLed.c:49: void main(void)
                                    468 ;	-----------------------------------------
                                    469 ;	 function main
                                    470 ;	-----------------------------------------
      0000CF                        471 _main:
                                    472 ;	pwmLed.c:51: P1 = 0xff;
      0000CF 75 90 FF         [24]  473 	mov	_P1,#0xff
                                    474 ;	pwmLed.c:52: TMOD = 0x21;
      0000D2 75 89 21         [24]  475 	mov	_TMOD,#0x21
                                    476 ;	pwmLed.c:53: TH0 = 0xfc;
      0000D5 75 8C FC         [24]  477 	mov	_TH0,#0xfc
                                    478 ;	pwmLed.c:54: TL0 = 0x66;
      0000D8 75 8A 66         [24]  479 	mov	_TL0,#0x66
                                    480 ;	pwmLed.c:56: TH1 = PWM;
      0000DB 85 08 8D         [24]  481 	mov	_TH1,_PWM
                                    482 ;	pwmLed.c:57: TL1 = 0;
      0000DE 75 8B 00         [24]  483 	mov	_TL1,#0x00
                                    484 ;	pwmLed.c:59: EA = 1;
                                    485 ;	assignBit
      0000E1 D2 AF            [12]  486 	setb	_EA
                                    487 ;	pwmLed.c:60: ET0 = 1;
                                    488 ;	assignBit
      0000E3 D2 A9            [12]  489 	setb	_ET0
                                    490 ;	pwmLed.c:61: ET1 = 1;
                                    491 ;	assignBit
      0000E5 D2 AB            [12]  492 	setb	_ET1
                                    493 ;	pwmLed.c:63: TR0 = 1;
                                    494 ;	assignBit
      0000E7 D2 8C            [12]  495 	setb	_TR0
                                    496 ;	pwmLed.c:66: do {
      0000E9                        497 00104$:
                                    498 ;	pwmLed.c:67: if (PWM != 0xff) {
      0000E9 74 FF            [12]  499 	mov	a,#0xff
      0000EB B5 08 02         [24]  500 	cjne	a,_PWM,00138$
      0000EE 80 0A            [24]  501 	sjmp	00102$
      0000F0                        502 00138$:
                                    503 ;	pwmLed.c:68: PWM++;
      0000F0 05 08            [12]  504 	inc	_PWM
                                    505 ;	pwmLed.c:69: delayms(10);
      0000F2 75 82 0A         [24]  506 	mov	dpl,#0x0a
      0000F5 12 00 A0         [24]  507 	lcall	_delayms
      0000F8 80 03            [24]  508 	sjmp	00105$
      0000FA                        509 00102$:
                                    510 ;	pwmLed.c:71: Beep();
      0000FA 12 00 B3         [24]  511 	lcall	_Beep
      0000FD                        512 00105$:
      0000FD 30 B4 E9         [24]  513 	jnb	_P3_4,00104$
                                    514 ;	pwmLed.c:73: do {
      000100                        515 00110$:
                                    516 ;	pwmLed.c:74: if (PWM != 0x02) {
      000100 74 02            [12]  517 	mov	a,#0x02
      000102 B5 08 02         [24]  518 	cjne	a,_PWM,00140$
      000105 80 0A            [24]  519 	sjmp	00108$
      000107                        520 00140$:
                                    521 ;	pwmLed.c:75: PWM--;
      000107 15 08            [12]  522 	dec	_PWM
                                    523 ;	pwmLed.c:76: delayms(10);
      000109 75 82 0A         [24]  524 	mov	dpl,#0x0a
      00010C 12 00 A0         [24]  525 	lcall	_delayms
      00010F 80 03            [24]  526 	sjmp	00111$
      000111                        527 00108$:
                                    528 ;	pwmLed.c:78: Beep();
      000111 12 00 B3         [24]  529 	lcall	_Beep
      000114                        530 00111$:
      000114 30 B5 E9         [24]  531 	jnb	_P3_5,00110$
                                    532 ;	pwmLed.c:81: }
      000117 80 D0            [24]  533 	sjmp	00104$
                                    534 	.area CSEG    (CODE)
                                    535 	.area CONST   (CODE)
                                    536 	.area XINIT   (CODE)
                                    537 	.area CABS    (ABS,CODE)
