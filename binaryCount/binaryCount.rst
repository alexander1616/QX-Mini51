                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.8.0 #10562 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module binaryCount
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _dualCylon
                                     12 	.globl _cylon
                                     13 	.globl _digitDisplay
                                     14 	.globl _digitDisplay_helper
                                     15 	.globl _binaryCount
                                     16 	.globl _getMode
                                     17 	.globl _readButton
                                     18 	.globl _showLcd2
                                     19 	.globl _minusLcd2
                                     20 	.globl _addLcd
                                     21 	.globl _TF2
                                     22 	.globl _EXF2
                                     23 	.globl _RCLK
                                     24 	.globl _TCLK
                                     25 	.globl _EXEN2
                                     26 	.globl _TR2
                                     27 	.globl _C_T2
                                     28 	.globl _CP_RL2
                                     29 	.globl _T2CON_7
                                     30 	.globl _T2CON_6
                                     31 	.globl _T2CON_5
                                     32 	.globl _T2CON_4
                                     33 	.globl _T2CON_3
                                     34 	.globl _T2CON_2
                                     35 	.globl _T2CON_1
                                     36 	.globl _T2CON_0
                                     37 	.globl _PT2
                                     38 	.globl _ET2
                                     39 	.globl _CY
                                     40 	.globl _AC
                                     41 	.globl _F0
                                     42 	.globl _RS1
                                     43 	.globl _RS0
                                     44 	.globl _OV
                                     45 	.globl _F1
                                     46 	.globl _P
                                     47 	.globl _PS
                                     48 	.globl _PT1
                                     49 	.globl _PX1
                                     50 	.globl _PT0
                                     51 	.globl _PX0
                                     52 	.globl _RD
                                     53 	.globl _WR
                                     54 	.globl _T1
                                     55 	.globl _T0
                                     56 	.globl _INT1
                                     57 	.globl _INT0
                                     58 	.globl _TXD
                                     59 	.globl _RXD
                                     60 	.globl _P3_7
                                     61 	.globl _P3_6
                                     62 	.globl _P3_5
                                     63 	.globl _P3_4
                                     64 	.globl _P3_3
                                     65 	.globl _P3_2
                                     66 	.globl _P3_1
                                     67 	.globl _P3_0
                                     68 	.globl _EA
                                     69 	.globl _ES
                                     70 	.globl _ET1
                                     71 	.globl _EX1
                                     72 	.globl _ET0
                                     73 	.globl _EX0
                                     74 	.globl _P2_7
                                     75 	.globl _P2_6
                                     76 	.globl _P2_5
                                     77 	.globl _P2_4
                                     78 	.globl _P2_3
                                     79 	.globl _P2_2
                                     80 	.globl _P2_1
                                     81 	.globl _P2_0
                                     82 	.globl _SM0
                                     83 	.globl _SM1
                                     84 	.globl _SM2
                                     85 	.globl _REN
                                     86 	.globl _TB8
                                     87 	.globl _RB8
                                     88 	.globl _TI
                                     89 	.globl _RI
                                     90 	.globl _P1_7
                                     91 	.globl _P1_6
                                     92 	.globl _P1_5
                                     93 	.globl _P1_4
                                     94 	.globl _P1_3
                                     95 	.globl _P1_2
                                     96 	.globl _P1_1
                                     97 	.globl _P1_0
                                     98 	.globl _TF1
                                     99 	.globl _TR1
                                    100 	.globl _TF0
                                    101 	.globl _TR0
                                    102 	.globl _IE1
                                    103 	.globl _IT1
                                    104 	.globl _IE0
                                    105 	.globl _IT0
                                    106 	.globl _P0_7
                                    107 	.globl _P0_6
                                    108 	.globl _P0_5
                                    109 	.globl _P0_4
                                    110 	.globl _P0_3
                                    111 	.globl _P0_2
                                    112 	.globl _P0_1
                                    113 	.globl _P0_0
                                    114 	.globl _TH2
                                    115 	.globl _TL2
                                    116 	.globl _RCAP2H
                                    117 	.globl _RCAP2L
                                    118 	.globl _T2CON
                                    119 	.globl _B
                                    120 	.globl _ACC
                                    121 	.globl _PSW
                                    122 	.globl _IP
                                    123 	.globl _P3
                                    124 	.globl _IE
                                    125 	.globl _P2
                                    126 	.globl _SBUF
                                    127 	.globl _SCON
                                    128 	.globl _P1
                                    129 	.globl _TH1
                                    130 	.globl _TH0
                                    131 	.globl _TL1
                                    132 	.globl _TL0
                                    133 	.globl _TMOD
                                    134 	.globl _TCON
                                    135 	.globl _PCON
                                    136 	.globl _DPH
                                    137 	.globl _DPL
                                    138 	.globl _SP
                                    139 	.globl _P0
                                    140 ;--------------------------------------------------------
                                    141 ; special function registers
                                    142 ;--------------------------------------------------------
                                    143 	.area RSEG    (ABS,DATA)
      000000                        144 	.org 0x0000
                           000080   145 _P0	=	0x0080
                           000081   146 _SP	=	0x0081
                           000082   147 _DPL	=	0x0082
                           000083   148 _DPH	=	0x0083
                           000087   149 _PCON	=	0x0087
                           000088   150 _TCON	=	0x0088
                           000089   151 _TMOD	=	0x0089
                           00008A   152 _TL0	=	0x008a
                           00008B   153 _TL1	=	0x008b
                           00008C   154 _TH0	=	0x008c
                           00008D   155 _TH1	=	0x008d
                           000090   156 _P1	=	0x0090
                           000098   157 _SCON	=	0x0098
                           000099   158 _SBUF	=	0x0099
                           0000A0   159 _P2	=	0x00a0
                           0000A8   160 _IE	=	0x00a8
                           0000B0   161 _P3	=	0x00b0
                           0000B8   162 _IP	=	0x00b8
                           0000D0   163 _PSW	=	0x00d0
                           0000E0   164 _ACC	=	0x00e0
                           0000F0   165 _B	=	0x00f0
                           0000C8   166 _T2CON	=	0x00c8
                           0000CA   167 _RCAP2L	=	0x00ca
                           0000CB   168 _RCAP2H	=	0x00cb
                           0000CC   169 _TL2	=	0x00cc
                           0000CD   170 _TH2	=	0x00cd
                                    171 ;--------------------------------------------------------
                                    172 ; special function bits
                                    173 ;--------------------------------------------------------
                                    174 	.area RSEG    (ABS,DATA)
      000000                        175 	.org 0x0000
                           000080   176 _P0_0	=	0x0080
                           000081   177 _P0_1	=	0x0081
                           000082   178 _P0_2	=	0x0082
                           000083   179 _P0_3	=	0x0083
                           000084   180 _P0_4	=	0x0084
                           000085   181 _P0_5	=	0x0085
                           000086   182 _P0_6	=	0x0086
                           000087   183 _P0_7	=	0x0087
                           000088   184 _IT0	=	0x0088
                           000089   185 _IE0	=	0x0089
                           00008A   186 _IT1	=	0x008a
                           00008B   187 _IE1	=	0x008b
                           00008C   188 _TR0	=	0x008c
                           00008D   189 _TF0	=	0x008d
                           00008E   190 _TR1	=	0x008e
                           00008F   191 _TF1	=	0x008f
                           000090   192 _P1_0	=	0x0090
                           000091   193 _P1_1	=	0x0091
                           000092   194 _P1_2	=	0x0092
                           000093   195 _P1_3	=	0x0093
                           000094   196 _P1_4	=	0x0094
                           000095   197 _P1_5	=	0x0095
                           000096   198 _P1_6	=	0x0096
                           000097   199 _P1_7	=	0x0097
                           000098   200 _RI	=	0x0098
                           000099   201 _TI	=	0x0099
                           00009A   202 _RB8	=	0x009a
                           00009B   203 _TB8	=	0x009b
                           00009C   204 _REN	=	0x009c
                           00009D   205 _SM2	=	0x009d
                           00009E   206 _SM1	=	0x009e
                           00009F   207 _SM0	=	0x009f
                           0000A0   208 _P2_0	=	0x00a0
                           0000A1   209 _P2_1	=	0x00a1
                           0000A2   210 _P2_2	=	0x00a2
                           0000A3   211 _P2_3	=	0x00a3
                           0000A4   212 _P2_4	=	0x00a4
                           0000A5   213 _P2_5	=	0x00a5
                           0000A6   214 _P2_6	=	0x00a6
                           0000A7   215 _P2_7	=	0x00a7
                           0000A8   216 _EX0	=	0x00a8
                           0000A9   217 _ET0	=	0x00a9
                           0000AA   218 _EX1	=	0x00aa
                           0000AB   219 _ET1	=	0x00ab
                           0000AC   220 _ES	=	0x00ac
                           0000AF   221 _EA	=	0x00af
                           0000B0   222 _P3_0	=	0x00b0
                           0000B1   223 _P3_1	=	0x00b1
                           0000B2   224 _P3_2	=	0x00b2
                           0000B3   225 _P3_3	=	0x00b3
                           0000B4   226 _P3_4	=	0x00b4
                           0000B5   227 _P3_5	=	0x00b5
                           0000B6   228 _P3_6	=	0x00b6
                           0000B7   229 _P3_7	=	0x00b7
                           0000B0   230 _RXD	=	0x00b0
                           0000B1   231 _TXD	=	0x00b1
                           0000B2   232 _INT0	=	0x00b2
                           0000B3   233 _INT1	=	0x00b3
                           0000B4   234 _T0	=	0x00b4
                           0000B5   235 _T1	=	0x00b5
                           0000B6   236 _WR	=	0x00b6
                           0000B7   237 _RD	=	0x00b7
                           0000B8   238 _PX0	=	0x00b8
                           0000B9   239 _PT0	=	0x00b9
                           0000BA   240 _PX1	=	0x00ba
                           0000BB   241 _PT1	=	0x00bb
                           0000BC   242 _PS	=	0x00bc
                           0000D0   243 _P	=	0x00d0
                           0000D1   244 _F1	=	0x00d1
                           0000D2   245 _OV	=	0x00d2
                           0000D3   246 _RS0	=	0x00d3
                           0000D4   247 _RS1	=	0x00d4
                           0000D5   248 _F0	=	0x00d5
                           0000D6   249 _AC	=	0x00d6
                           0000D7   250 _CY	=	0x00d7
                           0000AD   251 _ET2	=	0x00ad
                           0000BD   252 _PT2	=	0x00bd
                           0000C8   253 _T2CON_0	=	0x00c8
                           0000C9   254 _T2CON_1	=	0x00c9
                           0000CA   255 _T2CON_2	=	0x00ca
                           0000CB   256 _T2CON_3	=	0x00cb
                           0000CC   257 _T2CON_4	=	0x00cc
                           0000CD   258 _T2CON_5	=	0x00cd
                           0000CE   259 _T2CON_6	=	0x00ce
                           0000CF   260 _T2CON_7	=	0x00cf
                           0000C8   261 _CP_RL2	=	0x00c8
                           0000C9   262 _C_T2	=	0x00c9
                           0000CA   263 _TR2	=	0x00ca
                           0000CB   264 _EXEN2	=	0x00cb
                           0000CC   265 _TCLK	=	0x00cc
                           0000CD   266 _RCLK	=	0x00cd
                           0000CE   267 _EXF2	=	0x00ce
                           0000CF   268 _TF2	=	0x00cf
                                    269 ;--------------------------------------------------------
                                    270 ; overlayable register banks
                                    271 ;--------------------------------------------------------
                                    272 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        273 	.ds 8
                                    274 ;--------------------------------------------------------
                                    275 ; internal ram data
                                    276 ;--------------------------------------------------------
                                    277 	.area DSEG    (DATA)
                                    278 ;--------------------------------------------------------
                                    279 ; overlayable items in internal ram 
                                    280 ;--------------------------------------------------------
                                    281 	.area	OSEG    (OVR,DATA)
                                    282 	.area	OSEG    (OVR,DATA)
                                    283 ;--------------------------------------------------------
                                    284 ; indirectly addressable internal ram data
                                    285 ;--------------------------------------------------------
                                    286 	.area ISEG    (DATA)
                                    287 ;--------------------------------------------------------
                                    288 ; absolute internal ram data
                                    289 ;--------------------------------------------------------
                                    290 	.area IABS    (ABS,DATA)
                                    291 	.area IABS    (ABS,DATA)
                                    292 ;--------------------------------------------------------
                                    293 ; bit data
                                    294 ;--------------------------------------------------------
                                    295 	.area BSEG    (BIT)
                                    296 ;--------------------------------------------------------
                                    297 ; paged external ram data
                                    298 ;--------------------------------------------------------
                                    299 	.area PSEG    (PAG,XDATA)
                                    300 ;--------------------------------------------------------
                                    301 ; external ram data
                                    302 ;--------------------------------------------------------
                                    303 	.area XSEG    (XDATA)
                                    304 ;--------------------------------------------------------
                                    305 ; absolute external ram data
                                    306 ;--------------------------------------------------------
                                    307 	.area XABS    (ABS,XDATA)
                                    308 ;--------------------------------------------------------
                                    309 ; external initialized ram data
                                    310 ;--------------------------------------------------------
                                    311 	.area XISEG   (XDATA)
                                    312 	.area HOME    (CODE)
                                    313 	.area GSINIT0 (CODE)
                                    314 	.area GSINIT1 (CODE)
                                    315 	.area GSINIT2 (CODE)
                                    316 	.area GSINIT3 (CODE)
                                    317 	.area GSINIT4 (CODE)
                                    318 	.area GSINIT5 (CODE)
                                    319 	.area GSINIT  (CODE)
                                    320 	.area GSFINAL (CODE)
                                    321 	.area CSEG    (CODE)
                                    322 ;--------------------------------------------------------
                                    323 ; global & static initialisations
                                    324 ;--------------------------------------------------------
                                    325 	.area HOME    (CODE)
                                    326 	.area GSINIT  (CODE)
                                    327 	.area GSFINAL (CODE)
                                    328 	.area GSINIT  (CODE)
                                    329 ;--------------------------------------------------------
                                    330 ; Home
                                    331 ;--------------------------------------------------------
                                    332 	.area HOME    (CODE)
                                    333 	.area HOME    (CODE)
                                    334 ;--------------------------------------------------------
                                    335 ; code
                                    336 ;--------------------------------------------------------
                                    337 	.area CSEG    (CODE)
                                    338 ;------------------------------------------------------------
                                    339 ;Allocation info for local variables in function 'delay'
                                    340 ;------------------------------------------------------------
                                    341 ;t                         Allocated to registers 
                                    342 ;i                         Allocated to registers r5 
                                    343 ;------------------------------------------------------------
                                    344 ;	binaryCount.c:9: static void delay(unsigned int t){
                                    345 ;	-----------------------------------------
                                    346 ;	 function delay
                                    347 ;	-----------------------------------------
      000444                        348 _delay:
                           000007   349 	ar7 = 0x07
                           000006   350 	ar6 = 0x06
                           000005   351 	ar5 = 0x05
                           000004   352 	ar4 = 0x04
                           000003   353 	ar3 = 0x03
                           000002   354 	ar2 = 0x02
                           000001   355 	ar1 = 0x01
                           000000   356 	ar0 = 0x00
      000444 AE 82            [24]  357 	mov	r6,dpl
      000446 AF 83            [24]  358 	mov	r7,dph
      000448                        359 00106$:
                                    360 ;	binaryCount.c:11: for ( ; t > 0; t--){
      000448 EE               [12]  361 	mov	a,r6
      000449 4F               [12]  362 	orl	a,r7
      00044A 60 0F            [24]  363 	jz	00108$
                                    364 ;	binaryCount.c:17: for (i = 200; i > 0; i--){
      00044C 7D C8            [12]  365 	mov	r5,#0xc8
      00044E                        366 00104$:
      00044E ED               [12]  367 	mov	a,r5
      00044F 14               [12]  368 	dec	a
      000450 FC               [12]  369 	mov	r4,a
      000451 FD               [12]  370 	mov	r5,a
      000452 70 FA            [24]  371 	jnz	00104$
                                    372 ;	binaryCount.c:11: for ( ; t > 0; t--){
      000454 1E               [12]  373 	dec	r6
      000455 BE FF 01         [24]  374 	cjne	r6,#0xff,00133$
      000458 1F               [12]  375 	dec	r7
      000459                        376 00133$:
      000459 80 ED            [24]  377 	sjmp	00106$
      00045B                        378 00108$:
                                    379 ;	binaryCount.c:21: }
      00045B 22               [24]  380 	ret
                                    381 ;------------------------------------------------------------
                                    382 ;Allocation info for local variables in function 'delay2'
                                    383 ;------------------------------------------------------------
                                    384 ;t                         Allocated to registers 
                                    385 ;i                         Allocated to registers r5 
                                    386 ;------------------------------------------------------------
                                    387 ;	binaryCount.c:23: static void delay2(unsigned int t){
                                    388 ;	-----------------------------------------
                                    389 ;	 function delay2
                                    390 ;	-----------------------------------------
      00045C                        391 _delay2:
      00045C AE 82            [24]  392 	mov	r6,dpl
      00045E AF 83            [24]  393 	mov	r7,dph
      000460                        394 00106$:
                                    395 ;	binaryCount.c:25: for ( ; t > 0; t--){
      000460 EE               [12]  396 	mov	a,r6
      000461 4F               [12]  397 	orl	a,r7
      000462 60 0F            [24]  398 	jz	00108$
                                    399 ;	binaryCount.c:26: for (i = 200; i > 0; i--){
      000464 7D C8            [12]  400 	mov	r5,#0xc8
      000466                        401 00104$:
      000466 ED               [12]  402 	mov	a,r5
      000467 14               [12]  403 	dec	a
      000468 FC               [12]  404 	mov	r4,a
      000469 FD               [12]  405 	mov	r5,a
      00046A 70 FA            [24]  406 	jnz	00104$
                                    407 ;	binaryCount.c:25: for ( ; t > 0; t--){
      00046C 1E               [12]  408 	dec	r6
      00046D BE FF 01         [24]  409 	cjne	r6,#0xff,00133$
      000470 1F               [12]  410 	dec	r7
      000471                        411 00133$:
      000471 80 ED            [24]  412 	sjmp	00106$
      000473                        413 00108$:
                                    414 ;	binaryCount.c:34: }
      000473 22               [24]  415 	ret
                                    416 ;------------------------------------------------------------
                                    417 ;Allocation info for local variables in function 'delay3'
                                    418 ;------------------------------------------------------------
                                    419 ;t                         Allocated to registers 
                                    420 ;i                         Allocated to registers r5 
                                    421 ;------------------------------------------------------------
                                    422 ;	binaryCount.c:36: static void delay3(unsigned int t){
                                    423 ;	-----------------------------------------
                                    424 ;	 function delay3
                                    425 ;	-----------------------------------------
      000474                        426 _delay3:
      000474 AE 82            [24]  427 	mov	r6,dpl
      000476 AF 83            [24]  428 	mov	r7,dph
      000478                        429 00106$:
                                    430 ;	binaryCount.c:38: for ( ; t > 0; t--){
      000478 EE               [12]  431 	mov	a,r6
      000479 4F               [12]  432 	orl	a,r7
      00047A 60 1A            [24]  433 	jz	00108$
                                    434 ;	binaryCount.c:39: showLcd2();
      00047C C0 07            [24]  435 	push	ar7
      00047E C0 06            [24]  436 	push	ar6
      000480 12 00 E8         [24]  437 	lcall	_showLcd2
      000483 D0 06            [24]  438 	pop	ar6
      000485 D0 07            [24]  439 	pop	ar7
                                    440 ;	binaryCount.c:44: for (i = 200; i > 0; i--){
      000487 7D C8            [12]  441 	mov	r5,#0xc8
      000489                        442 00104$:
      000489 ED               [12]  443 	mov	a,r5
      00048A 14               [12]  444 	dec	a
      00048B FC               [12]  445 	mov	r4,a
      00048C FD               [12]  446 	mov	r5,a
      00048D 70 FA            [24]  447 	jnz	00104$
                                    448 ;	binaryCount.c:38: for ( ; t > 0; t--){
      00048F 1E               [12]  449 	dec	r6
      000490 BE FF 01         [24]  450 	cjne	r6,#0xff,00133$
      000493 1F               [12]  451 	dec	r7
      000494                        452 00133$:
      000494 80 E2            [24]  453 	sjmp	00106$
      000496                        454 00108$:
                                    455 ;	binaryCount.c:48: }
      000496 22               [24]  456 	ret
                                    457 ;------------------------------------------------------------
                                    458 ;Allocation info for local variables in function 'binaryCount'
                                    459 ;------------------------------------------------------------
                                    460 ;val                       Allocated to registers r6 
                                    461 ;i                         Allocated to registers r7 
                                    462 ;------------------------------------------------------------
                                    463 ;	binaryCount.c:50: void binaryCount(){
                                    464 ;	-----------------------------------------
                                    465 ;	 function binaryCount
                                    466 ;	-----------------------------------------
      000497                        467 _binaryCount:
                                    468 ;	binaryCount.c:53: for (i = 0; i < 255; i++){
      000497 7F 00            [12]  469 	mov	r7,#0x00
      000499 7E FF            [12]  470 	mov	r6,#0xff
      00049B                        471 00104$:
                                    472 ;	binaryCount.c:54: P1 = val--;
      00049B 8E 90            [24]  473 	mov	_P1,r6
      00049D 1E               [12]  474 	dec	r6
                                    475 ;	binaryCount.c:55: delay(50);
      00049E 90 00 32         [24]  476 	mov	dptr,#0x0032
      0004A1 C0 07            [24]  477 	push	ar7
      0004A3 C0 06            [24]  478 	push	ar6
      0004A5 12 04 44         [24]  479 	lcall	_delay
                                    480 ;	binaryCount.c:56: if (getMode()){
      0004A8 12 00 86         [24]  481 	lcall	_getMode
      0004AB E5 82            [12]  482 	mov	a,dpl
      0004AD D0 06            [24]  483 	pop	ar6
      0004AF D0 07            [24]  484 	pop	ar7
      0004B1 60 01            [24]  485 	jz	00105$
                                    486 ;	binaryCount.c:57: return;
      0004B3 22               [24]  487 	ret
      0004B4                        488 00105$:
                                    489 ;	binaryCount.c:53: for (i = 0; i < 255; i++){
      0004B4 0F               [12]  490 	inc	r7
      0004B5 BF FF 00         [24]  491 	cjne	r7,#0xff,00117$
      0004B8                        492 00117$:
      0004B8 40 E1            [24]  493 	jc	00104$
                                    494 ;	binaryCount.c:60: }
      0004BA 22               [24]  495 	ret
                                    496 ;------------------------------------------------------------
                                    497 ;Allocation info for local variables in function 'digitDisplay_helper'
                                    498 ;------------------------------------------------------------
                                    499 ;button                    Allocated to registers r7 
                                    500 ;------------------------------------------------------------
                                    501 ;	binaryCount.c:62: unsigned char digitDisplay_helper(){
                                    502 ;	-----------------------------------------
                                    503 ;	 function digitDisplay_helper
                                    504 ;	-----------------------------------------
      0004BB                        505 _digitDisplay_helper:
                                    506 ;	binaryCount.c:64: button = readButton();
      0004BB 12 03 D8         [24]  507 	lcall	_readButton
      0004BE AF 82            [24]  508 	mov	r7,dpl
                                    509 ;	binaryCount.c:65: switch (button){
      0004C0 BF 01 02         [24]  510 	cjne	r7,#0x01,00125$
      0004C3 80 0F            [24]  511 	sjmp	00101$
      0004C5                        512 00125$:
      0004C5 BF 02 02         [24]  513 	cjne	r7,#0x02,00126$
      0004C8 80 10            [24]  514 	sjmp	00102$
      0004CA                        515 00126$:
      0004CA BF 03 02         [24]  516 	cjne	r7,#0x03,00127$
      0004CD 80 13            [24]  517 	sjmp	00103$
      0004CF                        518 00127$:
                                    519 ;	binaryCount.c:66: case 1:
      0004CF BF 04 1E         [24]  520 	cjne	r7,#0x04,00106$
      0004D2 80 16            [24]  521 	sjmp	00104$
      0004D4                        522 00101$:
                                    523 ;	binaryCount.c:67: mode++;
      0004D4 05 08            [12]  524 	inc	_mode
                                    525 ;	binaryCount.c:68: return 1;
      0004D6 75 82 01         [24]  526 	mov	dpl,#0x01
                                    527 ;	binaryCount.c:69: case 2:
      0004D9 22               [24]  528 	ret
      0004DA                        529 00102$:
                                    530 ;	binaryCount.c:70: minusLcd2(3);
      0004DA 75 82 03         [24]  531 	mov	dpl,#0x03
      0004DD 12 02 59         [24]  532 	lcall	_minusLcd2
                                    533 ;	binaryCount.c:71: break;
                                    534 ;	binaryCount.c:72: case 3:
      0004E0 80 0E            [24]  535 	sjmp	00106$
      0004E2                        536 00103$:
                                    537 ;	binaryCount.c:73: addLcd(3);
      0004E2 75 82 03         [24]  538 	mov	dpl,#0x03
      0004E5 12 02 21         [24]  539 	lcall	_addLcd
                                    540 ;	binaryCount.c:74: break;
                                    541 ;	binaryCount.c:75: case 4:
      0004E8 80 06            [24]  542 	sjmp	00106$
      0004EA                        543 00104$:
                                    544 ;	binaryCount.c:76: minusLcd2(3);
      0004EA 75 82 03         [24]  545 	mov	dpl,#0x03
      0004ED 12 02 59         [24]  546 	lcall	_minusLcd2
                                    547 ;	binaryCount.c:80: }
      0004F0                        548 00106$:
                                    549 ;	binaryCount.c:81: return 0;
      0004F0 75 82 00         [24]  550 	mov	dpl,#0x00
                                    551 ;	binaryCount.c:82: }
      0004F3 22               [24]  552 	ret
                                    553 ;------------------------------------------------------------
                                    554 ;Allocation info for local variables in function 'digitDisplay'
                                    555 ;------------------------------------------------------------
                                    556 ;	binaryCount.c:85: void digitDisplay(){
                                    557 ;	-----------------------------------------
                                    558 ;	 function digitDisplay
                                    559 ;	-----------------------------------------
      0004F4                        560 _digitDisplay:
                                    561 ;	binaryCount.c:86: showLcd2();
      0004F4 12 00 E8         [24]  562 	lcall	_showLcd2
                                    563 ;	binaryCount.c:87: if (digitDisplay_helper()){
      0004F7 12 04 BB         [24]  564 	lcall	_digitDisplay_helper
      0004FA E5 82            [12]  565 	mov	a,dpl
      0004FC 60 00            [24]  566 	jz	00103$
                                    567 ;	binaryCount.c:88: return;
      0004FE                        568 00103$:
                                    569 ;	binaryCount.c:90: }
      0004FE 22               [24]  570 	ret
                                    571 ;------------------------------------------------------------
                                    572 ;Allocation info for local variables in function 'cylon'
                                    573 ;------------------------------------------------------------
                                    574 ;val                       Allocated to registers r5 
                                    575 ;i                         Allocated to registers r6 
                                    576 ;------------------------------------------------------------
                                    577 ;	binaryCount.c:92: void cylon(){
                                    578 ;	-----------------------------------------
                                    579 ;	 function cylon
                                    580 ;	-----------------------------------------
      0004FF                        581 _cylon:
                                    582 ;	binaryCount.c:94: val = 0xFE;
      0004FF 7F FE            [12]  583 	mov	r7,#0xfe
                                    584 ;	binaryCount.c:95: for (i = 0; i < 7; i++){
      000501 7E 00            [12]  585 	mov	r6,#0x00
      000503                        586 00107$:
                                    587 ;	binaryCount.c:96: P1 = val;
      000503 8F 90            [24]  588 	mov	_P1,r7
                                    589 ;	binaryCount.c:97: val = val<<1;
      000505 8F 05            [24]  590 	mov	ar5,r7
      000507 ED               [12]  591 	mov	a,r5
      000508 2D               [12]  592 	add	a,r5
      000509 FD               [12]  593 	mov	r5,a
                                    594 ;	binaryCount.c:98: val = val | 0x01;
      00050A 43 05 01         [24]  595 	orl	ar5,#0x01
      00050D 8D 07            [24]  596 	mov	ar7,r5
                                    597 ;	binaryCount.c:102: delay2(50);
      00050F 90 00 32         [24]  598 	mov	dptr,#0x0032
      000512 C0 07            [24]  599 	push	ar7
      000514 C0 06            [24]  600 	push	ar6
      000516 12 04 5C         [24]  601 	lcall	_delay2
                                    602 ;	binaryCount.c:103: if (getMode()){
      000519 12 00 86         [24]  603 	lcall	_getMode
      00051C E5 82            [12]  604 	mov	a,dpl
      00051E D0 06            [24]  605 	pop	ar6
      000520 D0 07            [24]  606 	pop	ar7
      000522 60 01            [24]  607 	jz	00108$
                                    608 ;	binaryCount.c:104: return;
      000524 22               [24]  609 	ret
      000525                        610 00108$:
                                    611 ;	binaryCount.c:95: for (i = 0; i < 7; i++){
      000525 0E               [12]  612 	inc	r6
      000526 BE 07 00         [24]  613 	cjne	r6,#0x07,00139$
      000529                        614 00139$:
      000529 40 D8            [24]  615 	jc	00107$
                                    616 ;	binaryCount.c:107: for (i = 0; i < 7; i++){
      00052B 7E 00            [12]  617 	mov	r6,#0x00
      00052D                        618 00109$:
                                    619 ;	binaryCount.c:108: P1 = val;
                                    620 ;	binaryCount.c:109: val = val>>1;
      00052D EF               [12]  621 	mov	a,r7
      00052E F5 90            [12]  622 	mov	_P1,a
      000530 C3               [12]  623 	clr	c
      000531 13               [12]  624 	rrc	a
      000532 FD               [12]  625 	mov	r5,a
                                    626 ;	binaryCount.c:110: val = val | 0x80;
      000533 43 05 80         [24]  627 	orl	ar5,#0x80
      000536 8D 07            [24]  628 	mov	ar7,r5
                                    629 ;	binaryCount.c:114: delay2(50);
      000538 90 00 32         [24]  630 	mov	dptr,#0x0032
      00053B C0 07            [24]  631 	push	ar7
      00053D C0 06            [24]  632 	push	ar6
      00053F 12 04 5C         [24]  633 	lcall	_delay2
                                    634 ;	binaryCount.c:115: if (getMode()){
      000542 12 00 86         [24]  635 	lcall	_getMode
      000545 E5 82            [12]  636 	mov	a,dpl
      000547 D0 06            [24]  637 	pop	ar6
      000549 D0 07            [24]  638 	pop	ar7
      00054B 60 01            [24]  639 	jz	00110$
                                    640 ;	binaryCount.c:116: return;
      00054D 22               [24]  641 	ret
      00054E                        642 00110$:
                                    643 ;	binaryCount.c:107: for (i = 0; i < 7; i++){
      00054E 0E               [12]  644 	inc	r6
      00054F BE 07 00         [24]  645 	cjne	r6,#0x07,00142$
      000552                        646 00142$:
      000552 40 D9            [24]  647 	jc	00109$
                                    648 ;	binaryCount.c:119: }
      000554 22               [24]  649 	ret
                                    650 ;------------------------------------------------------------
                                    651 ;Allocation info for local variables in function 'dualCylon'
                                    652 ;------------------------------------------------------------
                                    653 ;val1                      Allocated to registers r4 
                                    654 ;val2                      Allocated to registers r4 
                                    655 ;i                         Allocated to registers r5 
                                    656 ;------------------------------------------------------------
                                    657 ;	binaryCount.c:121: void dualCylon(){
                                    658 ;	-----------------------------------------
                                    659 ;	 function dualCylon
                                    660 ;	-----------------------------------------
      000555                        661 _dualCylon:
                                    662 ;	binaryCount.c:123: val1 = 0xFE;
      000555 7F FE            [12]  663 	mov	r7,#0xfe
                                    664 ;	binaryCount.c:124: val2 = 0x7F;
      000557 7E 7F            [12]  665 	mov	r6,#0x7f
                                    666 ;	binaryCount.c:125: for (i = 0; i < 6; i++){
      000559 7D 00            [12]  667 	mov	r5,#0x00
      00055B                        668 00104$:
                                    669 ;	binaryCount.c:126: P1 = val1&val2;
      00055B EE               [12]  670 	mov	a,r6
      00055C 5F               [12]  671 	anl	a,r7
      00055D F5 90            [12]  672 	mov	_P1,a
                                    673 ;	binaryCount.c:127: val1 = val1<<1;
      00055F 8F 04            [24]  674 	mov	ar4,r7
      000561 EC               [12]  675 	mov	a,r4
      000562 2C               [12]  676 	add	a,r4
      000563 FC               [12]  677 	mov	r4,a
                                    678 ;	binaryCount.c:128: val1 = val1|0x01;
      000564 43 04 01         [24]  679 	orl	ar4,#0x01
      000567 8C 07            [24]  680 	mov	ar7,r4
                                    681 ;	binaryCount.c:130: val2 = val2>>1;
      000569 EE               [12]  682 	mov	a,r6
      00056A C3               [12]  683 	clr	c
      00056B 13               [12]  684 	rrc	a
      00056C FC               [12]  685 	mov	r4,a
                                    686 ;	binaryCount.c:131: val2 = val2|0x80;
      00056D 43 04 80         [24]  687 	orl	ar4,#0x80
      000570 8C 06            [24]  688 	mov	ar6,r4
                                    689 ;	binaryCount.c:135: delay2(50);
      000572 90 00 32         [24]  690 	mov	dptr,#0x0032
      000575 C0 07            [24]  691 	push	ar7
      000577 C0 06            [24]  692 	push	ar6
      000579 C0 05            [24]  693 	push	ar5
      00057B 12 04 5C         [24]  694 	lcall	_delay2
                                    695 ;	binaryCount.c:136: if (getMode()){
      00057E 12 00 86         [24]  696 	lcall	_getMode
      000581 E5 82            [12]  697 	mov	a,dpl
      000583 D0 05            [24]  698 	pop	ar5
      000585 D0 06            [24]  699 	pop	ar6
      000587 D0 07            [24]  700 	pop	ar7
      000589 60 01            [24]  701 	jz	00105$
                                    702 ;	binaryCount.c:137: return;
      00058B 22               [24]  703 	ret
      00058C                        704 00105$:
                                    705 ;	binaryCount.c:125: for (i = 0; i < 6; i++){
      00058C 0D               [12]  706 	inc	r5
      00058D BD 06 00         [24]  707 	cjne	r5,#0x06,00119$
      000590                        708 00119$:
      000590 40 C9            [24]  709 	jc	00104$
                                    710 ;	binaryCount.c:140: }
      000592 22               [24]  711 	ret
                                    712 	.area CSEG    (CODE)
                                    713 	.area CONST   (CODE)
                                    714 	.area XINIT   (CODE)
                                    715 	.area CABS    (ABS,CODE)
