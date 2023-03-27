                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.8.0 #10562 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module buttonPress
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _readButton
                                     12 	.globl _readButton_helper
                                     13 	.globl _TF2
                                     14 	.globl _EXF2
                                     15 	.globl _RCLK
                                     16 	.globl _TCLK
                                     17 	.globl _EXEN2
                                     18 	.globl _TR2
                                     19 	.globl _C_T2
                                     20 	.globl _CP_RL2
                                     21 	.globl _T2CON_7
                                     22 	.globl _T2CON_6
                                     23 	.globl _T2CON_5
                                     24 	.globl _T2CON_4
                                     25 	.globl _T2CON_3
                                     26 	.globl _T2CON_2
                                     27 	.globl _T2CON_1
                                     28 	.globl _T2CON_0
                                     29 	.globl _PT2
                                     30 	.globl _ET2
                                     31 	.globl _CY
                                     32 	.globl _AC
                                     33 	.globl _F0
                                     34 	.globl _RS1
                                     35 	.globl _RS0
                                     36 	.globl _OV
                                     37 	.globl _F1
                                     38 	.globl _P
                                     39 	.globl _PS
                                     40 	.globl _PT1
                                     41 	.globl _PX1
                                     42 	.globl _PT0
                                     43 	.globl _PX0
                                     44 	.globl _RD
                                     45 	.globl _WR
                                     46 	.globl _T1
                                     47 	.globl _T0
                                     48 	.globl _INT1
                                     49 	.globl _INT0
                                     50 	.globl _TXD
                                     51 	.globl _RXD
                                     52 	.globl _P3_7
                                     53 	.globl _P3_6
                                     54 	.globl _P3_5
                                     55 	.globl _P3_4
                                     56 	.globl _P3_3
                                     57 	.globl _P3_2
                                     58 	.globl _P3_1
                                     59 	.globl _P3_0
                                     60 	.globl _EA
                                     61 	.globl _ES
                                     62 	.globl _ET1
                                     63 	.globl _EX1
                                     64 	.globl _ET0
                                     65 	.globl _EX0
                                     66 	.globl _P2_7
                                     67 	.globl _P2_6
                                     68 	.globl _P2_5
                                     69 	.globl _P2_4
                                     70 	.globl _P2_3
                                     71 	.globl _P2_2
                                     72 	.globl _P2_1
                                     73 	.globl _P2_0
                                     74 	.globl _SM0
                                     75 	.globl _SM1
                                     76 	.globl _SM2
                                     77 	.globl _REN
                                     78 	.globl _TB8
                                     79 	.globl _RB8
                                     80 	.globl _TI
                                     81 	.globl _RI
                                     82 	.globl _P1_7
                                     83 	.globl _P1_6
                                     84 	.globl _P1_5
                                     85 	.globl _P1_4
                                     86 	.globl _P1_3
                                     87 	.globl _P1_2
                                     88 	.globl _P1_1
                                     89 	.globl _P1_0
                                     90 	.globl _TF1
                                     91 	.globl _TR1
                                     92 	.globl _TF0
                                     93 	.globl _TR0
                                     94 	.globl _IE1
                                     95 	.globl _IT1
                                     96 	.globl _IE0
                                     97 	.globl _IT0
                                     98 	.globl _P0_7
                                     99 	.globl _P0_6
                                    100 	.globl _P0_5
                                    101 	.globl _P0_4
                                    102 	.globl _P0_3
                                    103 	.globl _P0_2
                                    104 	.globl _P0_1
                                    105 	.globl _P0_0
                                    106 	.globl _TH2
                                    107 	.globl _TL2
                                    108 	.globl _RCAP2H
                                    109 	.globl _RCAP2L
                                    110 	.globl _T2CON
                                    111 	.globl _B
                                    112 	.globl _ACC
                                    113 	.globl _PSW
                                    114 	.globl _IP
                                    115 	.globl _P3
                                    116 	.globl _IE
                                    117 	.globl _P2
                                    118 	.globl _SBUF
                                    119 	.globl _SCON
                                    120 	.globl _P1
                                    121 	.globl _TH1
                                    122 	.globl _TH0
                                    123 	.globl _TL1
                                    124 	.globl _TL0
                                    125 	.globl _TMOD
                                    126 	.globl _TCON
                                    127 	.globl _PCON
                                    128 	.globl _DPH
                                    129 	.globl _DPL
                                    130 	.globl _SP
                                    131 	.globl _P0
                                    132 ;--------------------------------------------------------
                                    133 ; special function registers
                                    134 ;--------------------------------------------------------
                                    135 	.area RSEG    (ABS,DATA)
      000000                        136 	.org 0x0000
                           000080   137 _P0	=	0x0080
                           000081   138 _SP	=	0x0081
                           000082   139 _DPL	=	0x0082
                           000083   140 _DPH	=	0x0083
                           000087   141 _PCON	=	0x0087
                           000088   142 _TCON	=	0x0088
                           000089   143 _TMOD	=	0x0089
                           00008A   144 _TL0	=	0x008a
                           00008B   145 _TL1	=	0x008b
                           00008C   146 _TH0	=	0x008c
                           00008D   147 _TH1	=	0x008d
                           000090   148 _P1	=	0x0090
                           000098   149 _SCON	=	0x0098
                           000099   150 _SBUF	=	0x0099
                           0000A0   151 _P2	=	0x00a0
                           0000A8   152 _IE	=	0x00a8
                           0000B0   153 _P3	=	0x00b0
                           0000B8   154 _IP	=	0x00b8
                           0000D0   155 _PSW	=	0x00d0
                           0000E0   156 _ACC	=	0x00e0
                           0000F0   157 _B	=	0x00f0
                           0000C8   158 _T2CON	=	0x00c8
                           0000CA   159 _RCAP2L	=	0x00ca
                           0000CB   160 _RCAP2H	=	0x00cb
                           0000CC   161 _TL2	=	0x00cc
                           0000CD   162 _TH2	=	0x00cd
                                    163 ;--------------------------------------------------------
                                    164 ; special function bits
                                    165 ;--------------------------------------------------------
                                    166 	.area RSEG    (ABS,DATA)
      000000                        167 	.org 0x0000
                           000080   168 _P0_0	=	0x0080
                           000081   169 _P0_1	=	0x0081
                           000082   170 _P0_2	=	0x0082
                           000083   171 _P0_3	=	0x0083
                           000084   172 _P0_4	=	0x0084
                           000085   173 _P0_5	=	0x0085
                           000086   174 _P0_6	=	0x0086
                           000087   175 _P0_7	=	0x0087
                           000088   176 _IT0	=	0x0088
                           000089   177 _IE0	=	0x0089
                           00008A   178 _IT1	=	0x008a
                           00008B   179 _IE1	=	0x008b
                           00008C   180 _TR0	=	0x008c
                           00008D   181 _TF0	=	0x008d
                           00008E   182 _TR1	=	0x008e
                           00008F   183 _TF1	=	0x008f
                           000090   184 _P1_0	=	0x0090
                           000091   185 _P1_1	=	0x0091
                           000092   186 _P1_2	=	0x0092
                           000093   187 _P1_3	=	0x0093
                           000094   188 _P1_4	=	0x0094
                           000095   189 _P1_5	=	0x0095
                           000096   190 _P1_6	=	0x0096
                           000097   191 _P1_7	=	0x0097
                           000098   192 _RI	=	0x0098
                           000099   193 _TI	=	0x0099
                           00009A   194 _RB8	=	0x009a
                           00009B   195 _TB8	=	0x009b
                           00009C   196 _REN	=	0x009c
                           00009D   197 _SM2	=	0x009d
                           00009E   198 _SM1	=	0x009e
                           00009F   199 _SM0	=	0x009f
                           0000A0   200 _P2_0	=	0x00a0
                           0000A1   201 _P2_1	=	0x00a1
                           0000A2   202 _P2_2	=	0x00a2
                           0000A3   203 _P2_3	=	0x00a3
                           0000A4   204 _P2_4	=	0x00a4
                           0000A5   205 _P2_5	=	0x00a5
                           0000A6   206 _P2_6	=	0x00a6
                           0000A7   207 _P2_7	=	0x00a7
                           0000A8   208 _EX0	=	0x00a8
                           0000A9   209 _ET0	=	0x00a9
                           0000AA   210 _EX1	=	0x00aa
                           0000AB   211 _ET1	=	0x00ab
                           0000AC   212 _ES	=	0x00ac
                           0000AF   213 _EA	=	0x00af
                           0000B0   214 _P3_0	=	0x00b0
                           0000B1   215 _P3_1	=	0x00b1
                           0000B2   216 _P3_2	=	0x00b2
                           0000B3   217 _P3_3	=	0x00b3
                           0000B4   218 _P3_4	=	0x00b4
                           0000B5   219 _P3_5	=	0x00b5
                           0000B6   220 _P3_6	=	0x00b6
                           0000B7   221 _P3_7	=	0x00b7
                           0000B0   222 _RXD	=	0x00b0
                           0000B1   223 _TXD	=	0x00b1
                           0000B2   224 _INT0	=	0x00b2
                           0000B3   225 _INT1	=	0x00b3
                           0000B4   226 _T0	=	0x00b4
                           0000B5   227 _T1	=	0x00b5
                           0000B6   228 _WR	=	0x00b6
                           0000B7   229 _RD	=	0x00b7
                           0000B8   230 _PX0	=	0x00b8
                           0000B9   231 _PT0	=	0x00b9
                           0000BA   232 _PX1	=	0x00ba
                           0000BB   233 _PT1	=	0x00bb
                           0000BC   234 _PS	=	0x00bc
                           0000D0   235 _P	=	0x00d0
                           0000D1   236 _F1	=	0x00d1
                           0000D2   237 _OV	=	0x00d2
                           0000D3   238 _RS0	=	0x00d3
                           0000D4   239 _RS1	=	0x00d4
                           0000D5   240 _F0	=	0x00d5
                           0000D6   241 _AC	=	0x00d6
                           0000D7   242 _CY	=	0x00d7
                           0000AD   243 _ET2	=	0x00ad
                           0000BD   244 _PT2	=	0x00bd
                           0000C8   245 _T2CON_0	=	0x00c8
                           0000C9   246 _T2CON_1	=	0x00c9
                           0000CA   247 _T2CON_2	=	0x00ca
                           0000CB   248 _T2CON_3	=	0x00cb
                           0000CC   249 _T2CON_4	=	0x00cc
                           0000CD   250 _T2CON_5	=	0x00cd
                           0000CE   251 _T2CON_6	=	0x00ce
                           0000CF   252 _T2CON_7	=	0x00cf
                           0000C8   253 _CP_RL2	=	0x00c8
                           0000C9   254 _C_T2	=	0x00c9
                           0000CA   255 _TR2	=	0x00ca
                           0000CB   256 _EXEN2	=	0x00cb
                           0000CC   257 _TCLK	=	0x00cc
                           0000CD   258 _RCLK	=	0x00cd
                           0000CE   259 _EXF2	=	0x00ce
                           0000CF   260 _TF2	=	0x00cf
                                    261 ;--------------------------------------------------------
                                    262 ; overlayable register banks
                                    263 ;--------------------------------------------------------
                                    264 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        265 	.ds 8
                                    266 ;--------------------------------------------------------
                                    267 ; internal ram data
                                    268 ;--------------------------------------------------------
                                    269 	.area DSEG    (DATA)
      000018                        270 _readButton_buttonBucket_65536_10:
      000018                        271 	.ds 5
                                    272 ;--------------------------------------------------------
                                    273 ; overlayable items in internal ram 
                                    274 ;--------------------------------------------------------
                                    275 	.area	OSEG    (OVR,DATA)
                                    276 ;--------------------------------------------------------
                                    277 ; indirectly addressable internal ram data
                                    278 ;--------------------------------------------------------
                                    279 	.area ISEG    (DATA)
                                    280 ;--------------------------------------------------------
                                    281 ; absolute internal ram data
                                    282 ;--------------------------------------------------------
                                    283 	.area IABS    (ABS,DATA)
                                    284 	.area IABS    (ABS,DATA)
                                    285 ;--------------------------------------------------------
                                    286 ; bit data
                                    287 ;--------------------------------------------------------
                                    288 	.area BSEG    (BIT)
                                    289 ;--------------------------------------------------------
                                    290 ; paged external ram data
                                    291 ;--------------------------------------------------------
                                    292 	.area PSEG    (PAG,XDATA)
                                    293 ;--------------------------------------------------------
                                    294 ; external ram data
                                    295 ;--------------------------------------------------------
                                    296 	.area XSEG    (XDATA)
                                    297 ;--------------------------------------------------------
                                    298 ; absolute external ram data
                                    299 ;--------------------------------------------------------
                                    300 	.area XABS    (ABS,XDATA)
                                    301 ;--------------------------------------------------------
                                    302 ; external initialized ram data
                                    303 ;--------------------------------------------------------
                                    304 	.area XISEG   (XDATA)
                                    305 	.area HOME    (CODE)
                                    306 	.area GSINIT0 (CODE)
                                    307 	.area GSINIT1 (CODE)
                                    308 	.area GSINIT2 (CODE)
                                    309 	.area GSINIT3 (CODE)
                                    310 	.area GSINIT4 (CODE)
                                    311 	.area GSINIT5 (CODE)
                                    312 	.area GSINIT  (CODE)
                                    313 	.area GSFINAL (CODE)
                                    314 	.area CSEG    (CODE)
                                    315 ;--------------------------------------------------------
                                    316 ; global & static initialisations
                                    317 ;--------------------------------------------------------
                                    318 	.area HOME    (CODE)
                                    319 	.area GSINIT  (CODE)
                                    320 	.area GSFINAL (CODE)
                                    321 	.area GSINIT  (CODE)
                                    322 ;--------------------------------------------------------
                                    323 ; Home
                                    324 ;--------------------------------------------------------
                                    325 	.area HOME    (CODE)
                                    326 	.area HOME    (CODE)
                                    327 ;--------------------------------------------------------
                                    328 ; code
                                    329 ;--------------------------------------------------------
                                    330 	.area CSEG    (CODE)
                                    331 ;------------------------------------------------------------
                                    332 ;Allocation info for local variables in function 'readButton_helper'
                                    333 ;------------------------------------------------------------
                                    334 ;button                    Allocated to registers r7 
                                    335 ;------------------------------------------------------------
                                    336 ;	buttonPress.c:4: unsigned char readButton_helper(){
                                    337 ;	-----------------------------------------
                                    338 ;	 function readButton_helper
                                    339 ;	-----------------------------------------
      000298                        340 _readButton_helper:
                           000007   341 	ar7 = 0x07
                           000006   342 	ar6 = 0x06
                           000005   343 	ar5 = 0x05
                           000004   344 	ar4 = 0x04
                           000003   345 	ar3 = 0x03
                           000002   346 	ar2 = 0x02
                           000001   347 	ar1 = 0x01
                           000000   348 	ar0 = 0x00
                                    349 ;	buttonPress.c:6: button = 0;
      000298 7F 00            [12]  350 	mov	r7,#0x00
                                    351 ;	buttonPress.c:7: if (P3_2 == 0){
      00029A 20 B2 04         [24]  352 	jb	_P3_2,00110$
                                    353 ;	buttonPress.c:8: button = 4;
      00029D 7F 04            [12]  354 	mov	r7,#0x04
      00029F 80 13            [24]  355 	sjmp	00111$
      0002A1                        356 00110$:
                                    357 ;	buttonPress.c:9: } else if (P3_3 == 0){
      0002A1 20 B3 04         [24]  358 	jb	_P3_3,00107$
                                    359 ;	buttonPress.c:10: button = 3;
      0002A4 7F 03            [12]  360 	mov	r7,#0x03
      0002A6 80 0C            [24]  361 	sjmp	00111$
      0002A8                        362 00107$:
                                    363 ;	buttonPress.c:11: } else if (P3_4 == 0){
      0002A8 20 B4 04         [24]  364 	jb	_P3_4,00104$
                                    365 ;	buttonPress.c:12: button = 2;
      0002AB 7F 02            [12]  366 	mov	r7,#0x02
      0002AD 80 05            [24]  367 	sjmp	00111$
      0002AF                        368 00104$:
                                    369 ;	buttonPress.c:13: } else if (P3_5 == 0){
      0002AF 20 B5 02         [24]  370 	jb	_P3_5,00111$
                                    371 ;	buttonPress.c:14: button = 1;
      0002B2 7F 01            [12]  372 	mov	r7,#0x01
      0002B4                        373 00111$:
                                    374 ;	buttonPress.c:16: return button;
      0002B4 8F 82            [24]  375 	mov	dpl,r7
                                    376 ;	buttonPress.c:17: }
      0002B6 22               [24]  377 	ret
                                    378 ;------------------------------------------------------------
                                    379 ;Allocation info for local variables in function 'readButton'
                                    380 ;------------------------------------------------------------
                                    381 ;valb                      Allocated to registers r6 
                                    382 ;buttonBucket              Allocated with name '_readButton_buttonBucket_65536_10'
                                    383 ;x                         Allocated to registers r7 
                                    384 ;store                     Allocated to registers r7 
                                    385 ;y                         Allocated to registers 
                                    386 ;------------------------------------------------------------
                                    387 ;	buttonPress.c:20: unsigned char readButton(){
                                    388 ;	-----------------------------------------
                                    389 ;	 function readButton
                                    390 ;	-----------------------------------------
      0002B7                        391 _readButton:
                                    392 ;	buttonPress.c:22: unsigned char buttonBucket[5] = {0};
      0002B7 75 18 00         [24]  393 	mov	_readButton_buttonBucket_65536_10,#0x00
      0002BA 75 19 00         [24]  394 	mov	(_readButton_buttonBucket_65536_10 + 0x0001),#0x00
      0002BD 75 1A 00         [24]  395 	mov	(_readButton_buttonBucket_65536_10 + 0x0002),#0x00
      0002C0 75 1B 00         [24]  396 	mov	(_readButton_buttonBucket_65536_10 + 0x0003),#0x00
      0002C3 75 1C 00         [24]  397 	mov	(_readButton_buttonBucket_65536_10 + 0x0004),#0x00
                                    398 ;	buttonPress.c:23: if(valb = readButton_helper()){
      0002C6 12 02 98         [24]  399 	lcall	_readButton_helper
      0002C9 E5 82            [12]  400 	mov	a,dpl
      0002CB FE               [12]  401 	mov	r6,a
      0002CC 60 47            [24]  402 	jz	00108$
                                    403 ;	buttonPress.c:24: buttonBucket[valb]++;
      0002CE EE               [12]  404 	mov	a,r6
      0002CF 24 18            [12]  405 	add	a,#_readButton_buttonBucket_65536_10
      0002D1 F9               [12]  406 	mov	r1,a
      0002D2 E7               [12]  407 	mov	a,@r1
      0002D3 04               [12]  408 	inc	a
      0002D4 F7               [12]  409 	mov	@r1,a
                                    410 ;	buttonPress.c:25: for (char x = 0; x < 100; x++){
      0002D5 7F 00            [12]  411 	mov	r7,#0x00
      0002D7                        412 00110$:
      0002D7 BF 64 00         [24]  413 	cjne	r7,#0x64,00155$
      0002DA                        414 00155$:
      0002DA 50 17            [24]  415 	jnc	00103$
                                    416 ;	buttonPress.c:26: valb = readButton_helper();
      0002DC C0 07            [24]  417 	push	ar7
      0002DE 12 02 98         [24]  418 	lcall	_readButton_helper
      0002E1 AE 82            [24]  419 	mov	r6,dpl
      0002E3 D0 07            [24]  420 	pop	ar7
                                    421 ;	buttonPress.c:27: if (valb){
      0002E5 EE               [12]  422 	mov	a,r6
      0002E6 60 08            [24]  423 	jz	00111$
                                    424 ;	buttonPress.c:28: buttonBucket[valb]++;
      0002E8 EE               [12]  425 	mov	a,r6
      0002E9 24 18            [12]  426 	add	a,#_readButton_buttonBucket_65536_10
      0002EB F9               [12]  427 	mov	r1,a
      0002EC E7               [12]  428 	mov	a,@r1
      0002ED FE               [12]  429 	mov	r6,a
      0002EE 04               [12]  430 	inc	a
      0002EF F7               [12]  431 	mov	@r1,a
      0002F0                        432 00111$:
                                    433 ;	buttonPress.c:25: for (char x = 0; x < 100; x++){
      0002F0 0F               [12]  434 	inc	r7
      0002F1 80 E4            [24]  435 	sjmp	00110$
      0002F3                        436 00103$:
                                    437 ;	buttonPress.c:31: char store = 0;
      0002F3 7F 00            [12]  438 	mov	r7,#0x00
                                    439 ;	buttonPress.c:32: for (char y = 1; y < 4; y++){
      0002F5 7E 01            [12]  440 	mov	r6,#0x01
      0002F7                        441 00113$:
      0002F7 BE 04 00         [24]  442 	cjne	r6,#0x04,00158$
      0002FA                        443 00158$:
      0002FA 50 16            [24]  444 	jnc	00106$
                                    445 ;	buttonPress.c:33: if (buttonBucket[y] > buttonBucket[store]){
      0002FC EE               [12]  446 	mov	a,r6
      0002FD 24 18            [12]  447 	add	a,#_readButton_buttonBucket_65536_10
      0002FF F9               [12]  448 	mov	r1,a
      000300 87 05            [24]  449 	mov	ar5,@r1
      000302 EF               [12]  450 	mov	a,r7
      000303 24 18            [12]  451 	add	a,#_readButton_buttonBucket_65536_10
      000305 F9               [12]  452 	mov	r1,a
      000306 87 04            [24]  453 	mov	ar4,@r1
      000308 C3               [12]  454 	clr	c
      000309 EC               [12]  455 	mov	a,r4
      00030A 9D               [12]  456 	subb	a,r5
      00030B 50 02            [24]  457 	jnc	00114$
                                    458 ;	buttonPress.c:34: store = y;
      00030D 8E 07            [24]  459 	mov	ar7,r6
      00030F                        460 00114$:
                                    461 ;	buttonPress.c:32: for (char y = 1; y < 4; y++){
      00030F 0E               [12]  462 	inc	r6
      000310 80 E5            [24]  463 	sjmp	00113$
      000312                        464 00106$:
                                    465 ;	buttonPress.c:37: return store;	
      000312 8F 82            [24]  466 	mov	dpl,r7
      000314 22               [24]  467 	ret
      000315                        468 00108$:
                                    469 ;	buttonPress.c:39: return 0;
      000315 75 82 00         [24]  470 	mov	dpl,#0x00
                                    471 ;	buttonPress.c:40: }
      000318 22               [24]  472 	ret
                                    473 	.area CSEG    (CODE)
                                    474 	.area CONST   (CODE)
                                    475 	.area XINIT   (CODE)
                                    476 	.area CABS    (ABS,CODE)
