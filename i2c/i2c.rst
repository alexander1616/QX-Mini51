                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.8.0 #10562 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module i2c
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _main
                                     12 	.globl _i2c_read_byte
                                     13 	.globl _i2c_write_byte
                                     14 	.globl _i2c_read
                                     15 	.globl _i2c_write
                                     16 	.globl _i2c_stop
                                     17 	.globl _i2c_start
                                     18 	.globl _delayMs
                                     19 	.globl _i2c_delay
                                     20 	.globl _CY
                                     21 	.globl _AC
                                     22 	.globl _F0
                                     23 	.globl _RS1
                                     24 	.globl _RS0
                                     25 	.globl _OV
                                     26 	.globl _F1
                                     27 	.globl _P
                                     28 	.globl _PS
                                     29 	.globl _PT1
                                     30 	.globl _PX1
                                     31 	.globl _PT0
                                     32 	.globl _PX0
                                     33 	.globl _RD
                                     34 	.globl _WR
                                     35 	.globl _T1
                                     36 	.globl _T0
                                     37 	.globl _INT1
                                     38 	.globl _INT0
                                     39 	.globl _TXD
                                     40 	.globl _RXD
                                     41 	.globl _P3_7
                                     42 	.globl _P3_6
                                     43 	.globl _P3_5
                                     44 	.globl _P3_4
                                     45 	.globl _P3_3
                                     46 	.globl _P3_2
                                     47 	.globl _P3_1
                                     48 	.globl _P3_0
                                     49 	.globl _EA
                                     50 	.globl _ES
                                     51 	.globl _ET1
                                     52 	.globl _EX1
                                     53 	.globl _ET0
                                     54 	.globl _EX0
                                     55 	.globl _P2_7
                                     56 	.globl _P2_6
                                     57 	.globl _P2_5
                                     58 	.globl _P2_4
                                     59 	.globl _P2_3
                                     60 	.globl _P2_2
                                     61 	.globl _P2_1
                                     62 	.globl _P2_0
                                     63 	.globl _SM0
                                     64 	.globl _SM1
                                     65 	.globl _SM2
                                     66 	.globl _REN
                                     67 	.globl _TB8
                                     68 	.globl _RB8
                                     69 	.globl _TI
                                     70 	.globl _RI
                                     71 	.globl _P1_7
                                     72 	.globl _P1_6
                                     73 	.globl _P1_5
                                     74 	.globl _P1_4
                                     75 	.globl _P1_3
                                     76 	.globl _P1_2
                                     77 	.globl _P1_1
                                     78 	.globl _P1_0
                                     79 	.globl _TF1
                                     80 	.globl _TR1
                                     81 	.globl _TF0
                                     82 	.globl _TR0
                                     83 	.globl _IE1
                                     84 	.globl _IT1
                                     85 	.globl _IE0
                                     86 	.globl _IT0
                                     87 	.globl _P0_7
                                     88 	.globl _P0_6
                                     89 	.globl _P0_5
                                     90 	.globl _P0_4
                                     91 	.globl _P0_3
                                     92 	.globl _P0_2
                                     93 	.globl _P0_1
                                     94 	.globl _P0_0
                                     95 	.globl _B
                                     96 	.globl _ACC
                                     97 	.globl _PSW
                                     98 	.globl _IP
                                     99 	.globl _P3
                                    100 	.globl _IE
                                    101 	.globl _P2
                                    102 	.globl _SBUF
                                    103 	.globl _SCON
                                    104 	.globl _P1
                                    105 	.globl _TH1
                                    106 	.globl _TH0
                                    107 	.globl _TL1
                                    108 	.globl _TL0
                                    109 	.globl _TMOD
                                    110 	.globl _TCON
                                    111 	.globl _PCON
                                    112 	.globl _DPH
                                    113 	.globl _DPL
                                    114 	.globl _SP
                                    115 	.globl _P0
                                    116 	.globl _i2c_write_byte_PARM_2
                                    117 ;--------------------------------------------------------
                                    118 ; special function registers
                                    119 ;--------------------------------------------------------
                                    120 	.area RSEG    (ABS,DATA)
      000000                        121 	.org 0x0000
                           000080   122 _P0	=	0x0080
                           000081   123 _SP	=	0x0081
                           000082   124 _DPL	=	0x0082
                           000083   125 _DPH	=	0x0083
                           000087   126 _PCON	=	0x0087
                           000088   127 _TCON	=	0x0088
                           000089   128 _TMOD	=	0x0089
                           00008A   129 _TL0	=	0x008a
                           00008B   130 _TL1	=	0x008b
                           00008C   131 _TH0	=	0x008c
                           00008D   132 _TH1	=	0x008d
                           000090   133 _P1	=	0x0090
                           000098   134 _SCON	=	0x0098
                           000099   135 _SBUF	=	0x0099
                           0000A0   136 _P2	=	0x00a0
                           0000A8   137 _IE	=	0x00a8
                           0000B0   138 _P3	=	0x00b0
                           0000B8   139 _IP	=	0x00b8
                           0000D0   140 _PSW	=	0x00d0
                           0000E0   141 _ACC	=	0x00e0
                           0000F0   142 _B	=	0x00f0
                                    143 ;--------------------------------------------------------
                                    144 ; special function bits
                                    145 ;--------------------------------------------------------
                                    146 	.area RSEG    (ABS,DATA)
      000000                        147 	.org 0x0000
                           000080   148 _P0_0	=	0x0080
                           000081   149 _P0_1	=	0x0081
                           000082   150 _P0_2	=	0x0082
                           000083   151 _P0_3	=	0x0083
                           000084   152 _P0_4	=	0x0084
                           000085   153 _P0_5	=	0x0085
                           000086   154 _P0_6	=	0x0086
                           000087   155 _P0_7	=	0x0087
                           000088   156 _IT0	=	0x0088
                           000089   157 _IE0	=	0x0089
                           00008A   158 _IT1	=	0x008a
                           00008B   159 _IE1	=	0x008b
                           00008C   160 _TR0	=	0x008c
                           00008D   161 _TF0	=	0x008d
                           00008E   162 _TR1	=	0x008e
                           00008F   163 _TF1	=	0x008f
                           000090   164 _P1_0	=	0x0090
                           000091   165 _P1_1	=	0x0091
                           000092   166 _P1_2	=	0x0092
                           000093   167 _P1_3	=	0x0093
                           000094   168 _P1_4	=	0x0094
                           000095   169 _P1_5	=	0x0095
                           000096   170 _P1_6	=	0x0096
                           000097   171 _P1_7	=	0x0097
                           000098   172 _RI	=	0x0098
                           000099   173 _TI	=	0x0099
                           00009A   174 _RB8	=	0x009a
                           00009B   175 _TB8	=	0x009b
                           00009C   176 _REN	=	0x009c
                           00009D   177 _SM2	=	0x009d
                           00009E   178 _SM1	=	0x009e
                           00009F   179 _SM0	=	0x009f
                           0000A0   180 _P2_0	=	0x00a0
                           0000A1   181 _P2_1	=	0x00a1
                           0000A2   182 _P2_2	=	0x00a2
                           0000A3   183 _P2_3	=	0x00a3
                           0000A4   184 _P2_4	=	0x00a4
                           0000A5   185 _P2_5	=	0x00a5
                           0000A6   186 _P2_6	=	0x00a6
                           0000A7   187 _P2_7	=	0x00a7
                           0000A8   188 _EX0	=	0x00a8
                           0000A9   189 _ET0	=	0x00a9
                           0000AA   190 _EX1	=	0x00aa
                           0000AB   191 _ET1	=	0x00ab
                           0000AC   192 _ES	=	0x00ac
                           0000AF   193 _EA	=	0x00af
                           0000B0   194 _P3_0	=	0x00b0
                           0000B1   195 _P3_1	=	0x00b1
                           0000B2   196 _P3_2	=	0x00b2
                           0000B3   197 _P3_3	=	0x00b3
                           0000B4   198 _P3_4	=	0x00b4
                           0000B5   199 _P3_5	=	0x00b5
                           0000B6   200 _P3_6	=	0x00b6
                           0000B7   201 _P3_7	=	0x00b7
                           0000B0   202 _RXD	=	0x00b0
                           0000B1   203 _TXD	=	0x00b1
                           0000B2   204 _INT0	=	0x00b2
                           0000B3   205 _INT1	=	0x00b3
                           0000B4   206 _T0	=	0x00b4
                           0000B5   207 _T1	=	0x00b5
                           0000B6   208 _WR	=	0x00b6
                           0000B7   209 _RD	=	0x00b7
                           0000B8   210 _PX0	=	0x00b8
                           0000B9   211 _PT0	=	0x00b9
                           0000BA   212 _PX1	=	0x00ba
                           0000BB   213 _PT1	=	0x00bb
                           0000BC   214 _PS	=	0x00bc
                           0000D0   215 _P	=	0x00d0
                           0000D1   216 _F1	=	0x00d1
                           0000D2   217 _OV	=	0x00d2
                           0000D3   218 _RS0	=	0x00d3
                           0000D4   219 _RS1	=	0x00d4
                           0000D5   220 _F0	=	0x00d5
                           0000D6   221 _AC	=	0x00d6
                           0000D7   222 _CY	=	0x00d7
                                    223 ;--------------------------------------------------------
                                    224 ; overlayable register banks
                                    225 ;--------------------------------------------------------
                                    226 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        227 	.ds 8
                                    228 ;--------------------------------------------------------
                                    229 ; internal ram data
                                    230 ;--------------------------------------------------------
                                    231 	.area DSEG    (DATA)
      000008                        232 _i2c_write_byte_PARM_2:
      000008                        233 	.ds 1
                                    234 ;--------------------------------------------------------
                                    235 ; overlayable items in internal ram 
                                    236 ;--------------------------------------------------------
                                    237 	.area	OSEG    (OVR,DATA)
                                    238 	.area	OSEG    (OVR,DATA)
                                    239 ;--------------------------------------------------------
                                    240 ; Stack segment in internal ram 
                                    241 ;--------------------------------------------------------
                                    242 	.area	SSEG
      000009                        243 __start__stack:
      000009                        244 	.ds	1
                                    245 
                                    246 ;--------------------------------------------------------
                                    247 ; indirectly addressable internal ram data
                                    248 ;--------------------------------------------------------
                                    249 	.area ISEG    (DATA)
                                    250 ;--------------------------------------------------------
                                    251 ; absolute internal ram data
                                    252 ;--------------------------------------------------------
                                    253 	.area IABS    (ABS,DATA)
                                    254 	.area IABS    (ABS,DATA)
                                    255 ;--------------------------------------------------------
                                    256 ; bit data
                                    257 ;--------------------------------------------------------
                                    258 	.area BSEG    (BIT)
                                    259 ;--------------------------------------------------------
                                    260 ; paged external ram data
                                    261 ;--------------------------------------------------------
                                    262 	.area PSEG    (PAG,XDATA)
                                    263 ;--------------------------------------------------------
                                    264 ; external ram data
                                    265 ;--------------------------------------------------------
                                    266 	.area XSEG    (XDATA)
                                    267 ;--------------------------------------------------------
                                    268 ; absolute external ram data
                                    269 ;--------------------------------------------------------
                                    270 	.area XABS    (ABS,XDATA)
                                    271 ;--------------------------------------------------------
                                    272 ; external initialized ram data
                                    273 ;--------------------------------------------------------
                                    274 	.area XISEG   (XDATA)
                                    275 	.area HOME    (CODE)
                                    276 	.area GSINIT0 (CODE)
                                    277 	.area GSINIT1 (CODE)
                                    278 	.area GSINIT2 (CODE)
                                    279 	.area GSINIT3 (CODE)
                                    280 	.area GSINIT4 (CODE)
                                    281 	.area GSINIT5 (CODE)
                                    282 	.area GSINIT  (CODE)
                                    283 	.area GSFINAL (CODE)
                                    284 	.area CSEG    (CODE)
                                    285 ;--------------------------------------------------------
                                    286 ; interrupt vector 
                                    287 ;--------------------------------------------------------
                                    288 	.area HOME    (CODE)
      000000                        289 __interrupt_vect:
      000000 02 00 06         [24]  290 	ljmp	__sdcc_gsinit_startup
                                    291 ;--------------------------------------------------------
                                    292 ; global & static initialisations
                                    293 ;--------------------------------------------------------
                                    294 	.area HOME    (CODE)
                                    295 	.area GSINIT  (CODE)
                                    296 	.area GSFINAL (CODE)
                                    297 	.area GSINIT  (CODE)
                                    298 	.globl __sdcc_gsinit_startup
                                    299 	.globl __sdcc_program_startup
                                    300 	.globl __start__stack
                                    301 	.globl __mcs51_genXINIT
                                    302 	.globl __mcs51_genXRAMCLEAR
                                    303 	.globl __mcs51_genRAMCLEAR
                                    304 	.area GSFINAL (CODE)
      00005F 02 00 03         [24]  305 	ljmp	__sdcc_program_startup
                                    306 ;--------------------------------------------------------
                                    307 ; Home
                                    308 ;--------------------------------------------------------
                                    309 	.area HOME    (CODE)
                                    310 	.area HOME    (CODE)
      000003                        311 __sdcc_program_startup:
      000003 02 01 AC         [24]  312 	ljmp	_main
                                    313 ;	return from main will return to caller
                                    314 ;--------------------------------------------------------
                                    315 ; code
                                    316 ;--------------------------------------------------------
                                    317 	.area CSEG    (CODE)
                                    318 ;------------------------------------------------------------
                                    319 ;Allocation info for local variables in function 'i2c_delay'
                                    320 ;------------------------------------------------------------
                                    321 ;cnt                       Allocated to registers 
                                    322 ;------------------------------------------------------------
                                    323 ;	i2c.c:10: void i2c_delay(unsigned cnt){
                                    324 ;	-----------------------------------------
                                    325 ;	 function i2c_delay
                                    326 ;	-----------------------------------------
      000062                        327 _i2c_delay:
                           000007   328 	ar7 = 0x07
                           000006   329 	ar6 = 0x06
                           000005   330 	ar5 = 0x05
                           000004   331 	ar4 = 0x04
                           000003   332 	ar3 = 0x03
                           000002   333 	ar2 = 0x02
                           000001   334 	ar1 = 0x01
                           000000   335 	ar0 = 0x00
      000062 AE 82            [24]  336 	mov	r6,dpl
      000064 AF 83            [24]  337 	mov	r7,dph
                                    338 ;	i2c.c:11: while(cnt--);
      000066                        339 00101$:
      000066 8E 04            [24]  340 	mov	ar4,r6
      000068 8F 05            [24]  341 	mov	ar5,r7
      00006A 1E               [12]  342 	dec	r6
      00006B BE FF 01         [24]  343 	cjne	r6,#0xff,00111$
      00006E 1F               [12]  344 	dec	r7
      00006F                        345 00111$:
      00006F EC               [12]  346 	mov	a,r4
      000070 4D               [12]  347 	orl	a,r5
      000071 70 F3            [24]  348 	jnz	00101$
                                    349 ;	i2c.c:12: }
      000073 22               [24]  350 	ret
                                    351 ;------------------------------------------------------------
                                    352 ;Allocation info for local variables in function 'delayMs'
                                    353 ;------------------------------------------------------------
                                    354 ;i                         Allocated to registers 
                                    355 ;j                         Allocated to registers r5 
                                    356 ;------------------------------------------------------------
                                    357 ;	i2c.c:14: void delayMs(unsigned int i){
                                    358 ;	-----------------------------------------
                                    359 ;	 function delayMs
                                    360 ;	-----------------------------------------
      000074                        361 _delayMs:
      000074 AE 82            [24]  362 	mov	r6,dpl
      000076 AF 83            [24]  363 	mov	r7,dph
      000078                        364 00107$:
                                    365 ;	i2c.c:15: for (; i> 0; i--)
      000078 EE               [12]  366 	mov	a,r6
      000079 4F               [12]  367 	orl	a,r7
      00007A 60 0F            [24]  368 	jz	00109$
                                    369 ;	i2c.c:16: for (unsigned char j = 155; j > 0; j--);
      00007C 7D 9B            [12]  370 	mov	r5,#0x9b
      00007E                        371 00104$:
      00007E ED               [12]  372 	mov	a,r5
      00007F 60 03            [24]  373 	jz	00108$
      000081 1D               [12]  374 	dec	r5
      000082 80 FA            [24]  375 	sjmp	00104$
      000084                        376 00108$:
                                    377 ;	i2c.c:15: for (; i> 0; i--)
      000084 1E               [12]  378 	dec	r6
      000085 BE FF 01         [24]  379 	cjne	r6,#0xff,00135$
      000088 1F               [12]  380 	dec	r7
      000089                        381 00135$:
      000089 80 ED            [24]  382 	sjmp	00107$
      00008B                        383 00109$:
                                    384 ;	i2c.c:17: }
      00008B 22               [24]  385 	ret
                                    386 ;------------------------------------------------------------
                                    387 ;Allocation info for local variables in function 'i2c_start'
                                    388 ;------------------------------------------------------------
                                    389 ;	i2c.c:19: void i2c_start(void){
                                    390 ;	-----------------------------------------
                                    391 ;	 function i2c_start
                                    392 ;	-----------------------------------------
      00008C                        393 _i2c_start:
                                    394 ;	i2c.c:20: I2C_SDA = 1;
                                    395 ;	assignBit
      00008C D2 86            [12]  396 	setb	_P0_6
                                    397 ;	i2c.c:21: I2C_SCL = 1;
                                    398 ;	assignBit
      00008E D2 87            [12]  399 	setb	_P0_7
                                    400 ;	i2c.c:22: i2c_delay(10);
      000090 90 00 0A         [24]  401 	mov	dptr,#0x000a
      000093 12 00 62         [24]  402 	lcall	_i2c_delay
                                    403 ;	i2c.c:23: I2C_SDA = 0;
                                    404 ;	assignBit
      000096 C2 86            [12]  405 	clr	_P0_6
                                    406 ;	i2c.c:24: i2c_delay(10);
      000098 90 00 0A         [24]  407 	mov	dptr,#0x000a
      00009B 12 00 62         [24]  408 	lcall	_i2c_delay
                                    409 ;	i2c.c:25: I2C_SCL = 0;
                                    410 ;	assignBit
      00009E C2 87            [12]  411 	clr	_P0_7
                                    412 ;	i2c.c:26: }
      0000A0 22               [24]  413 	ret
                                    414 ;------------------------------------------------------------
                                    415 ;Allocation info for local variables in function 'i2c_stop'
                                    416 ;------------------------------------------------------------
                                    417 ;	i2c.c:28: void i2c_stop(void){
                                    418 ;	-----------------------------------------
                                    419 ;	 function i2c_stop
                                    420 ;	-----------------------------------------
      0000A1                        421 _i2c_stop:
                                    422 ;	i2c.c:29: i2c_delay(10);
      0000A1 90 00 0A         [24]  423 	mov	dptr,#0x000a
      0000A4 12 00 62         [24]  424 	lcall	_i2c_delay
                                    425 ;	i2c.c:30: I2C_SDA = 0;
                                    426 ;	assignBit
      0000A7 C2 86            [12]  427 	clr	_P0_6
                                    428 ;	i2c.c:31: i2c_delay(10);
      0000A9 90 00 0A         [24]  429 	mov	dptr,#0x000a
      0000AC 12 00 62         [24]  430 	lcall	_i2c_delay
                                    431 ;	i2c.c:32: I2C_SCL = 1;
                                    432 ;	assignBit
      0000AF D2 87            [12]  433 	setb	_P0_7
                                    434 ;	i2c.c:33: i2c_delay(10);
      0000B1 90 00 0A         [24]  435 	mov	dptr,#0x000a
      0000B4 12 00 62         [24]  436 	lcall	_i2c_delay
                                    437 ;	i2c.c:34: I2C_SDA = 1;
                                    438 ;	assignBit
      0000B7 D2 86            [12]  439 	setb	_P0_6
                                    440 ;	i2c.c:35: }
      0000B9 22               [24]  441 	ret
                                    442 ;------------------------------------------------------------
                                    443 ;Allocation info for local variables in function 'i2c_write'
                                    444 ;------------------------------------------------------------
                                    445 ;val                       Allocated to registers r7 
                                    446 ;i                         Allocated to registers r6 
                                    447 ;ack                       Allocated to registers r7 
                                    448 ;------------------------------------------------------------
                                    449 ;	i2c.c:37: unsigned char i2c_write(unsigned char val){
                                    450 ;	-----------------------------------------
                                    451 ;	 function i2c_write
                                    452 ;	-----------------------------------------
      0000BA                        453 _i2c_write:
      0000BA AF 82            [24]  454 	mov	r7,dpl
                                    455 ;	i2c.c:38: unsigned char i=9, ack=0;
      0000BC 7E 09            [12]  456 	mov	r6,#0x09
                                    457 ;	i2c.c:40: while(--i){
      0000BE                        458 00101$:
      0000BE EE               [12]  459 	mov	a,r6
      0000BF 14               [12]  460 	dec	a
      0000C0 FE               [12]  461 	mov	r6,a
      0000C1 60 35            [24]  462 	jz	00103$
                                    463 ;	i2c.c:41: i2c_delay(10);
      0000C3 90 00 0A         [24]  464 	mov	dptr,#0x000a
      0000C6 C0 07            [24]  465 	push	ar7
      0000C8 C0 06            [24]  466 	push	ar6
      0000CA 12 00 62         [24]  467 	lcall	_i2c_delay
      0000CD D0 06            [24]  468 	pop	ar6
      0000CF D0 07            [24]  469 	pop	ar7
                                    470 ;	i2c.c:42: I2C_SDA = (val & 0x80) ? 1 : 0;
      0000D1 EF               [12]  471 	mov	a,r7
      0000D2 23               [12]  472 	rl	a
      0000D3 54 01            [12]  473 	anl	a,#0x01
      0000D5 24 FF            [12]  474 	add	a,#0xff
      0000D7 92 86            [24]  475 	mov	_P0_6,c
                                    476 ;	i2c.c:43: i2c_delay(10);
      0000D9 90 00 0A         [24]  477 	mov	dptr,#0x000a
      0000DC C0 07            [24]  478 	push	ar7
      0000DE C0 06            [24]  479 	push	ar6
      0000E0 12 00 62         [24]  480 	lcall	_i2c_delay
                                    481 ;	i2c.c:44: I2C_SCL = 1;
                                    482 ;	assignBit
      0000E3 D2 87            [12]  483 	setb	_P0_7
                                    484 ;	i2c.c:45: i2c_delay(10);
      0000E5 90 00 0A         [24]  485 	mov	dptr,#0x000a
      0000E8 12 00 62         [24]  486 	lcall	_i2c_delay
      0000EB D0 06            [24]  487 	pop	ar6
      0000ED D0 07            [24]  488 	pop	ar7
                                    489 ;	i2c.c:46: val<<= 1;
      0000EF 8F 05            [24]  490 	mov	ar5,r7
      0000F1 ED               [12]  491 	mov	a,r5
      0000F2 2D               [12]  492 	add	a,r5
      0000F3 FF               [12]  493 	mov	r7,a
                                    494 ;	i2c.c:47: I2C_SCL = 0;
                                    495 ;	assignBit
      0000F4 C2 87            [12]  496 	clr	_P0_7
      0000F6 80 C6            [24]  497 	sjmp	00101$
      0000F8                        498 00103$:
                                    499 ;	i2c.c:49: i2c_delay(10);
      0000F8 90 00 0A         [24]  500 	mov	dptr,#0x000a
      0000FB 12 00 62         [24]  501 	lcall	_i2c_delay
                                    502 ;	i2c.c:50: I2C_SDA = 1;
                                    503 ;	assignBit
      0000FE D2 86            [12]  504 	setb	_P0_6
                                    505 ;	i2c.c:51: i2c_delay(10);
      000100 90 00 0A         [24]  506 	mov	dptr,#0x000a
      000103 12 00 62         [24]  507 	lcall	_i2c_delay
                                    508 ;	i2c.c:52: I2C_SCL = 1;
                                    509 ;	assignBit
      000106 D2 87            [12]  510 	setb	_P0_7
                                    511 ;	i2c.c:53: i2c_delay(10);
      000108 90 00 0A         [24]  512 	mov	dptr,#0x000a
      00010B 12 00 62         [24]  513 	lcall	_i2c_delay
                                    514 ;	i2c.c:54: ack = I2C_SDA;
      00010E A2 86            [12]  515 	mov	c,_P0_6
      000110 E4               [12]  516 	clr	a
      000111 33               [12]  517 	rlc	a
      000112 FF               [12]  518 	mov	r7,a
                                    519 ;	i2c.c:55: i2c_delay(10);
      000113 90 00 0A         [24]  520 	mov	dptr,#0x000a
      000116 C0 07            [24]  521 	push	ar7
      000118 12 00 62         [24]  522 	lcall	_i2c_delay
      00011B D0 07            [24]  523 	pop	ar7
                                    524 ;	i2c.c:56: I2C_SCL = 0;
                                    525 ;	assignBit
      00011D C2 87            [12]  526 	clr	_P0_7
                                    527 ;	i2c.c:57: return ack;
      00011F 8F 82            [24]  528 	mov	dpl,r7
                                    529 ;	i2c.c:58: }
      000121 22               [24]  530 	ret
                                    531 ;------------------------------------------------------------
                                    532 ;Allocation info for local variables in function 'i2c_read'
                                    533 ;------------------------------------------------------------
                                    534 ;i                         Allocated to registers r7 
                                    535 ;val                       Allocated to registers r5 
                                    536 ;------------------------------------------------------------
                                    537 ;	i2c.c:60: unsigned char i2c_read(void){
                                    538 ;	-----------------------------------------
                                    539 ;	 function i2c_read
                                    540 ;	-----------------------------------------
      000122                        541 _i2c_read:
                                    542 ;	i2c.c:61: unsigned char i=9, val=0;
      000122 7F 09            [12]  543 	mov	r7,#0x09
      000124 7E 00            [12]  544 	mov	r6,#0x00
                                    545 ;	i2c.c:63: while(--i){
      000126                        546 00101$:
      000126 EF               [12]  547 	mov	a,r7
      000127 14               [12]  548 	dec	a
      000128 FF               [12]  549 	mov	r7,a
      000129 60 2F            [24]  550 	jz	00103$
                                    551 ;	i2c.c:64: val<<= 1;
      00012B 8E 05            [24]  552 	mov	ar5,r6
      00012D ED               [12]  553 	mov	a,r5
      00012E 2D               [12]  554 	add	a,r5
      00012F FD               [12]  555 	mov	r5,a
                                    556 ;	i2c.c:65: i2c_delay(10);
      000130 90 00 0A         [24]  557 	mov	dptr,#0x000a
      000133 C0 07            [24]  558 	push	ar7
      000135 C0 05            [24]  559 	push	ar5
      000137 12 00 62         [24]  560 	lcall	_i2c_delay
                                    561 ;	i2c.c:66: I2C_SCL = 1;
                                    562 ;	assignBit
      00013A D2 87            [12]  563 	setb	_P0_7
                                    564 ;	i2c.c:67: i2c_delay(10);
      00013C 90 00 0A         [24]  565 	mov	dptr,#0x000a
      00013F 12 00 62         [24]  566 	lcall	_i2c_delay
      000142 D0 05            [24]  567 	pop	ar5
                                    568 ;	i2c.c:68: val|= I2C_SDA;
      000144 A2 86            [12]  569 	mov	c,_P0_6
      000146 E4               [12]  570 	clr	a
      000147 33               [12]  571 	rlc	a
      000148 4D               [12]  572 	orl	a,r5
      000149 FE               [12]  573 	mov	r6,a
                                    574 ;	i2c.c:69: i2c_delay(10);
      00014A 90 00 0A         [24]  575 	mov	dptr,#0x000a
      00014D C0 06            [24]  576 	push	ar6
      00014F 12 00 62         [24]  577 	lcall	_i2c_delay
      000152 D0 06            [24]  578 	pop	ar6
      000154 D0 07            [24]  579 	pop	ar7
                                    580 ;	i2c.c:70: I2C_SCL = 0;
                                    581 ;	assignBit
      000156 C2 87            [12]  582 	clr	_P0_7
      000158 80 CC            [24]  583 	sjmp	00101$
      00015A                        584 00103$:
                                    585 ;	i2c.c:78: return val;
      00015A 8E 82            [24]  586 	mov	dpl,r6
                                    587 ;	i2c.c:79: }
      00015C 22               [24]  588 	ret
                                    589 ;------------------------------------------------------------
                                    590 ;Allocation info for local variables in function 'i2c_write_byte'
                                    591 ;------------------------------------------------------------
                                    592 ;val                       Allocated with name '_i2c_write_byte_PARM_2'
                                    593 ;addr                      Allocated to registers r7 
                                    594 ;------------------------------------------------------------
                                    595 ;	i2c.c:81: void i2c_write_byte(unsigned char addr, unsigned char val){
                                    596 ;	-----------------------------------------
                                    597 ;	 function i2c_write_byte
                                    598 ;	-----------------------------------------
      00015D                        599 _i2c_write_byte:
                                    600 ;	i2c.c:82: addr<<=1;
      00015D E5 82            [12]  601 	mov	a,dpl
      00015F 25 82            [12]  602 	add	a,dpl
      000161 FF               [12]  603 	mov	r7,a
                                    604 ;	i2c.c:83: i2c_start();
      000162 C0 07            [24]  605 	push	ar7
      000164 12 00 8C         [24]  606 	lcall	_i2c_start
      000167 D0 07            [24]  607 	pop	ar7
                                    608 ;	i2c.c:84: i2c_write(addr);
      000169 8F 82            [24]  609 	mov	dpl,r7
      00016B 12 00 BA         [24]  610 	lcall	_i2c_write
                                    611 ;	i2c.c:85: i2c_write(val);
      00016E 85 08 82         [24]  612 	mov	dpl,_i2c_write_byte_PARM_2
      000171 12 00 BA         [24]  613 	lcall	_i2c_write
                                    614 ;	i2c.c:86: i2c_stop();
                                    615 ;	i2c.c:87: }
      000174 02 00 A1         [24]  616 	ljmp	_i2c_stop
                                    617 ;------------------------------------------------------------
                                    618 ;Allocation info for local variables in function 'i2c_read_byte'
                                    619 ;------------------------------------------------------------
                                    620 ;addr                      Allocated to registers r7 
                                    621 ;value                     Allocated to registers r6 
                                    622 ;------------------------------------------------------------
                                    623 ;	i2c.c:89: unsigned char i2c_read_byte(unsigned char addr){
                                    624 ;	-----------------------------------------
                                    625 ;	 function i2c_read_byte
                                    626 ;	-----------------------------------------
      000177                        627 _i2c_read_byte:
      000177 AF 82            [24]  628 	mov	r7,dpl
                                    629 ;	i2c.c:90: P0_1 = 1;
                                    630 ;	assignBit
      000179 D2 81            [12]  631 	setb	_P0_1
                                    632 ;	i2c.c:91: unsigned char value = 0;
      00017B 7E 00            [12]  633 	mov	r6,#0x00
                                    634 ;	i2c.c:92: addr <<=1;
      00017D EF               [12]  635 	mov	a,r7
      00017E 2F               [12]  636 	add	a,r7
      00017F FF               [12]  637 	mov	r7,a
                                    638 ;	i2c.c:93: addr |= 1;
      000180 43 07 01         [24]  639 	orl	ar7,#0x01
                                    640 ;	i2c.c:94: i2c_start();
      000183 C0 07            [24]  641 	push	ar7
      000185 C0 06            [24]  642 	push	ar6
      000187 12 00 8C         [24]  643 	lcall	_i2c_start
      00018A D0 06            [24]  644 	pop	ar6
      00018C D0 07            [24]  645 	pop	ar7
                                    646 ;	i2c.c:95: if(!i2c_write(addr)){
      00018E 8F 82            [24]  647 	mov	dpl,r7
      000190 C0 06            [24]  648 	push	ar6
      000192 12 00 BA         [24]  649 	lcall	_i2c_write
      000195 E5 82            [12]  650 	mov	a,dpl
      000197 D0 06            [24]  651 	pop	ar6
      000199 70 05            [24]  652 	jnz	00102$
                                    653 ;	i2c.c:96: value = i2c_read();
      00019B 12 01 22         [24]  654 	lcall	_i2c_read
      00019E AE 82            [24]  655 	mov	r6,dpl
      0001A0                        656 00102$:
                                    657 ;	i2c.c:98: i2c_stop();
      0001A0 C0 06            [24]  658 	push	ar6
      0001A2 12 00 A1         [24]  659 	lcall	_i2c_stop
      0001A5 D0 06            [24]  660 	pop	ar6
                                    661 ;	i2c.c:99: P0_1 = 0;
                                    662 ;	assignBit
      0001A7 C2 81            [12]  663 	clr	_P0_1
                                    664 ;	i2c.c:100: return value;
      0001A9 8E 82            [24]  665 	mov	dpl,r6
                                    666 ;	i2c.c:101: }
      0001AB 22               [24]  667 	ret
                                    668 ;------------------------------------------------------------
                                    669 ;Allocation info for local variables in function 'main'
                                    670 ;------------------------------------------------------------
                                    671 ;readVal                   Allocated to registers r6 
                                    672 ;data                      Allocated to registers r7 
                                    673 ;------------------------------------------------------------
                                    674 ;	i2c.c:103: void main(void){
                                    675 ;	-----------------------------------------
                                    676 ;	 function main
                                    677 ;	-----------------------------------------
      0001AC                        678 _main:
                                    679 ;	i2c.c:105: unsigned char data = 0;
      0001AC 7F 00            [12]  680 	mov	r7,#0x00
                                    681 ;	i2c.c:106: readVal = i2c_read_byte(LED_I2C_ADDR);
      0001AE 75 82 20         [24]  682 	mov	dpl,#0x20
      0001B1 C0 07            [24]  683 	push	ar7
      0001B3 12 01 77         [24]  684 	lcall	_i2c_read_byte
      0001B6 AE 82            [24]  685 	mov	r6,dpl
      0001B8 D0 07            [24]  686 	pop	ar7
                                    687 ;	i2c.c:108: if(readVal & 0x80){
      0001BA EE               [12]  688 	mov	a,r6
      0001BB 30 E7 02         [24]  689 	jnb	acc.7,00102$
                                    690 ;	i2c.c:109: data |= 0x01;
      0001BE 7F 01            [12]  691 	mov	r7,#0x01
      0001C0                        692 00102$:
                                    693 ;	i2c.c:111: if (readVal & 0x40){
      0001C0 EE               [12]  694 	mov	a,r6
      0001C1 30 E6 09         [24]  695 	jnb	acc.6,00104$
                                    696 ;	i2c.c:112: data |= 0x02;
      0001C4 8F 04            [24]  697 	mov	ar4,r7
      0001C6 7D 00            [12]  698 	mov	r5,#0x00
      0001C8 43 04 02         [24]  699 	orl	ar4,#0x02
      0001CB 8C 07            [24]  700 	mov	ar7,r4
      0001CD                        701 00104$:
                                    702 ;	i2c.c:114: if (readVal & 0x20){
      0001CD EE               [12]  703 	mov	a,r6
      0001CE 30 E5 09         [24]  704 	jnb	acc.5,00106$
                                    705 ;	i2c.c:115: data |= 0x04;
      0001D1 8F 04            [24]  706 	mov	ar4,r7
      0001D3 7D 00            [12]  707 	mov	r5,#0x00
      0001D5 43 04 04         [24]  708 	orl	ar4,#0x04
      0001D8 8C 07            [24]  709 	mov	ar7,r4
      0001DA                        710 00106$:
                                    711 ;	i2c.c:117: if (readVal & 0x10){
      0001DA EE               [12]  712 	mov	a,r6
      0001DB 30 E4 09         [24]  713 	jnb	acc.4,00108$
                                    714 ;	i2c.c:118: data |= 0x08;
      0001DE 8F 05            [24]  715 	mov	ar5,r7
      0001E0 7E 00            [12]  716 	mov	r6,#0x00
      0001E2 43 05 08         [24]  717 	orl	ar5,#0x08
      0001E5 8D 07            [24]  718 	mov	ar7,r5
      0001E7                        719 00108$:
                                    720 ;	i2c.c:120: i2c_write_byte(LED_I2C_ADDR, data);
      0001E7 8F 08            [24]  721 	mov	_i2c_write_byte_PARM_2,r7
      0001E9 75 82 20         [24]  722 	mov	dpl,#0x20
      0001EC 12 01 5D         [24]  723 	lcall	_i2c_write_byte
                                    724 ;	i2c.c:121: P1 = 0;
      0001EF 75 90 00         [24]  725 	mov	_P1,#0x00
                                    726 ;	i2c.c:123: }
      0001F2 22               [24]  727 	ret
                                    728 	.area CSEG    (CODE)
                                    729 	.area CONST   (CODE)
                                    730 	.area XINIT   (CODE)
                                    731 	.area CABS    (ABS,CODE)
