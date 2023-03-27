                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.8.0 #10562 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module a_lcd
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _setLcd_PARM_2
                                     12 	.globl _setLcd
                                     13 	.globl _minusLcd
                                     14 	.globl _minusLcd2
                                     15 	.globl _addLcd
                                     16 	.globl _sumLcdVal
                                     17 	.globl _showLcd
                                     18 	.globl _showLcd3
                                     19 	.globl _showLcd2
                                     20 	.globl _lcdDelay
                                     21 	.globl _CY
                                     22 	.globl _AC
                                     23 	.globl _F0
                                     24 	.globl _RS1
                                     25 	.globl _RS0
                                     26 	.globl _OV
                                     27 	.globl _F1
                                     28 	.globl _P
                                     29 	.globl _PS
                                     30 	.globl _PT1
                                     31 	.globl _PX1
                                     32 	.globl _PT0
                                     33 	.globl _PX0
                                     34 	.globl _RD
                                     35 	.globl _WR
                                     36 	.globl _T1
                                     37 	.globl _T0
                                     38 	.globl _INT1
                                     39 	.globl _INT0
                                     40 	.globl _TXD
                                     41 	.globl _RXD
                                     42 	.globl _P3_7
                                     43 	.globl _P3_6
                                     44 	.globl _P3_5
                                     45 	.globl _P3_4
                                     46 	.globl _P3_3
                                     47 	.globl _P3_2
                                     48 	.globl _P3_1
                                     49 	.globl _P3_0
                                     50 	.globl _EA
                                     51 	.globl _ES
                                     52 	.globl _ET1
                                     53 	.globl _EX1
                                     54 	.globl _ET0
                                     55 	.globl _EX0
                                     56 	.globl _P2_7
                                     57 	.globl _P2_6
                                     58 	.globl _P2_5
                                     59 	.globl _P2_4
                                     60 	.globl _P2_3
                                     61 	.globl _P2_2
                                     62 	.globl _P2_1
                                     63 	.globl _P2_0
                                     64 	.globl _SM0
                                     65 	.globl _SM1
                                     66 	.globl _SM2
                                     67 	.globl _REN
                                     68 	.globl _TB8
                                     69 	.globl _RB8
                                     70 	.globl _TI
                                     71 	.globl _RI
                                     72 	.globl _P1_7
                                     73 	.globl _P1_6
                                     74 	.globl _P1_5
                                     75 	.globl _P1_4
                                     76 	.globl _P1_3
                                     77 	.globl _P1_2
                                     78 	.globl _P1_1
                                     79 	.globl _P1_0
                                     80 	.globl _TF1
                                     81 	.globl _TR1
                                     82 	.globl _TF0
                                     83 	.globl _TR0
                                     84 	.globl _IE1
                                     85 	.globl _IT1
                                     86 	.globl _IE0
                                     87 	.globl _IT0
                                     88 	.globl _P0_7
                                     89 	.globl _P0_6
                                     90 	.globl _P0_5
                                     91 	.globl _P0_4
                                     92 	.globl _P0_3
                                     93 	.globl _P0_2
                                     94 	.globl _P0_1
                                     95 	.globl _P0_0
                                     96 	.globl _B
                                     97 	.globl _ACC
                                     98 	.globl _PSW
                                     99 	.globl _IP
                                    100 	.globl _P3
                                    101 	.globl _IE
                                    102 	.globl _P2
                                    103 	.globl _SBUF
                                    104 	.globl _SCON
                                    105 	.globl _P1
                                    106 	.globl _TH1
                                    107 	.globl _TH0
                                    108 	.globl _TL1
                                    109 	.globl _TL0
                                    110 	.globl _TMOD
                                    111 	.globl _TCON
                                    112 	.globl _PCON
                                    113 	.globl _DPH
                                    114 	.globl _DPL
                                    115 	.globl _SP
                                    116 	.globl _P0
                                    117 	.globl _showLcd_PARM_2
                                    118 	.globl _lcdVal
                                    119 	.globl _numTable
                                    120 ;--------------------------------------------------------
                                    121 ; special function registers
                                    122 ;--------------------------------------------------------
                                    123 	.area RSEG    (ABS,DATA)
      000000                        124 	.org 0x0000
                           000080   125 _P0	=	0x0080
                           000081   126 _SP	=	0x0081
                           000082   127 _DPL	=	0x0082
                           000083   128 _DPH	=	0x0083
                           000087   129 _PCON	=	0x0087
                           000088   130 _TCON	=	0x0088
                           000089   131 _TMOD	=	0x0089
                           00008A   132 _TL0	=	0x008a
                           00008B   133 _TL1	=	0x008b
                           00008C   134 _TH0	=	0x008c
                           00008D   135 _TH1	=	0x008d
                           000090   136 _P1	=	0x0090
                           000098   137 _SCON	=	0x0098
                           000099   138 _SBUF	=	0x0099
                           0000A0   139 _P2	=	0x00a0
                           0000A8   140 _IE	=	0x00a8
                           0000B0   141 _P3	=	0x00b0
                           0000B8   142 _IP	=	0x00b8
                           0000D0   143 _PSW	=	0x00d0
                           0000E0   144 _ACC	=	0x00e0
                           0000F0   145 _B	=	0x00f0
                                    146 ;--------------------------------------------------------
                                    147 ; special function bits
                                    148 ;--------------------------------------------------------
                                    149 	.area RSEG    (ABS,DATA)
      000000                        150 	.org 0x0000
                           000080   151 _P0_0	=	0x0080
                           000081   152 _P0_1	=	0x0081
                           000082   153 _P0_2	=	0x0082
                           000083   154 _P0_3	=	0x0083
                           000084   155 _P0_4	=	0x0084
                           000085   156 _P0_5	=	0x0085
                           000086   157 _P0_6	=	0x0086
                           000087   158 _P0_7	=	0x0087
                           000088   159 _IT0	=	0x0088
                           000089   160 _IE0	=	0x0089
                           00008A   161 _IT1	=	0x008a
                           00008B   162 _IE1	=	0x008b
                           00008C   163 _TR0	=	0x008c
                           00008D   164 _TF0	=	0x008d
                           00008E   165 _TR1	=	0x008e
                           00008F   166 _TF1	=	0x008f
                           000090   167 _P1_0	=	0x0090
                           000091   168 _P1_1	=	0x0091
                           000092   169 _P1_2	=	0x0092
                           000093   170 _P1_3	=	0x0093
                           000094   171 _P1_4	=	0x0094
                           000095   172 _P1_5	=	0x0095
                           000096   173 _P1_6	=	0x0096
                           000097   174 _P1_7	=	0x0097
                           000098   175 _RI	=	0x0098
                           000099   176 _TI	=	0x0099
                           00009A   177 _RB8	=	0x009a
                           00009B   178 _TB8	=	0x009b
                           00009C   179 _REN	=	0x009c
                           00009D   180 _SM2	=	0x009d
                           00009E   181 _SM1	=	0x009e
                           00009F   182 _SM0	=	0x009f
                           0000A0   183 _P2_0	=	0x00a0
                           0000A1   184 _P2_1	=	0x00a1
                           0000A2   185 _P2_2	=	0x00a2
                           0000A3   186 _P2_3	=	0x00a3
                           0000A4   187 _P2_4	=	0x00a4
                           0000A5   188 _P2_5	=	0x00a5
                           0000A6   189 _P2_6	=	0x00a6
                           0000A7   190 _P2_7	=	0x00a7
                           0000A8   191 _EX0	=	0x00a8
                           0000A9   192 _ET0	=	0x00a9
                           0000AA   193 _EX1	=	0x00aa
                           0000AB   194 _ET1	=	0x00ab
                           0000AC   195 _ES	=	0x00ac
                           0000AF   196 _EA	=	0x00af
                           0000B0   197 _P3_0	=	0x00b0
                           0000B1   198 _P3_1	=	0x00b1
                           0000B2   199 _P3_2	=	0x00b2
                           0000B3   200 _P3_3	=	0x00b3
                           0000B4   201 _P3_4	=	0x00b4
                           0000B5   202 _P3_5	=	0x00b5
                           0000B6   203 _P3_6	=	0x00b6
                           0000B7   204 _P3_7	=	0x00b7
                           0000B0   205 _RXD	=	0x00b0
                           0000B1   206 _TXD	=	0x00b1
                           0000B2   207 _INT0	=	0x00b2
                           0000B3   208 _INT1	=	0x00b3
                           0000B4   209 _T0	=	0x00b4
                           0000B5   210 _T1	=	0x00b5
                           0000B6   211 _WR	=	0x00b6
                           0000B7   212 _RD	=	0x00b7
                           0000B8   213 _PX0	=	0x00b8
                           0000B9   214 _PT0	=	0x00b9
                           0000BA   215 _PX1	=	0x00ba
                           0000BB   216 _PT1	=	0x00bb
                           0000BC   217 _PS	=	0x00bc
                           0000D0   218 _P	=	0x00d0
                           0000D1   219 _F1	=	0x00d1
                           0000D2   220 _OV	=	0x00d2
                           0000D3   221 _RS0	=	0x00d3
                           0000D4   222 _RS1	=	0x00d4
                           0000D5   223 _F0	=	0x00d5
                           0000D6   224 _AC	=	0x00d6
                           0000D7   225 _CY	=	0x00d7
                                    226 ;--------------------------------------------------------
                                    227 ; overlayable register banks
                                    228 ;--------------------------------------------------------
                                    229 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        230 	.ds 8
                                    231 ;--------------------------------------------------------
                                    232 ; internal ram data
                                    233 ;--------------------------------------------------------
                                    234 	.area DSEG    (DATA)
      000009                        235 _numTable::
      000009                        236 	.ds 10
      000013                        237 _lcdVal::
      000013                        238 	.ds 4
      000017                        239 _showLcd_PARM_2:
      000017                        240 	.ds 1
                                    241 ;--------------------------------------------------------
                                    242 ; overlayable items in internal ram 
                                    243 ;--------------------------------------------------------
                                    244 	.area	OSEG    (OVR,DATA)
                                    245 	.area	OSEG    (OVR,DATA)
      00001D                        246 _setLcd_PARM_2:
      00001D                        247 	.ds 1
                                    248 ;--------------------------------------------------------
                                    249 ; indirectly addressable internal ram data
                                    250 ;--------------------------------------------------------
                                    251 	.area ISEG    (DATA)
                                    252 ;--------------------------------------------------------
                                    253 ; absolute internal ram data
                                    254 ;--------------------------------------------------------
                                    255 	.area IABS    (ABS,DATA)
                                    256 	.area IABS    (ABS,DATA)
                                    257 ;--------------------------------------------------------
                                    258 ; bit data
                                    259 ;--------------------------------------------------------
                                    260 	.area BSEG    (BIT)
                                    261 ;--------------------------------------------------------
                                    262 ; paged external ram data
                                    263 ;--------------------------------------------------------
                                    264 	.area PSEG    (PAG,XDATA)
                                    265 ;--------------------------------------------------------
                                    266 ; external ram data
                                    267 ;--------------------------------------------------------
                                    268 	.area XSEG    (XDATA)
                                    269 ;--------------------------------------------------------
                                    270 ; absolute external ram data
                                    271 ;--------------------------------------------------------
                                    272 	.area XABS    (ABS,XDATA)
                                    273 ;--------------------------------------------------------
                                    274 ; external initialized ram data
                                    275 ;--------------------------------------------------------
                                    276 	.area XISEG   (XDATA)
                                    277 	.area HOME    (CODE)
                                    278 	.area GSINIT0 (CODE)
                                    279 	.area GSINIT1 (CODE)
                                    280 	.area GSINIT2 (CODE)
                                    281 	.area GSINIT3 (CODE)
                                    282 	.area GSINIT4 (CODE)
                                    283 	.area GSINIT5 (CODE)
                                    284 	.area GSINIT  (CODE)
                                    285 	.area GSFINAL (CODE)
                                    286 	.area CSEG    (CODE)
                                    287 ;--------------------------------------------------------
                                    288 ; global & static initialisations
                                    289 ;--------------------------------------------------------
                                    290 	.area HOME    (CODE)
                                    291 	.area GSINIT  (CODE)
                                    292 	.area GSFINAL (CODE)
                                    293 	.area GSINIT  (CODE)
                                    294 ;	a_lcd.c:3: unsigned char numTable[] = { 0xC0, 0xF9, 0xA4, 0xB0, 0x99,   // 0, 1, 2, 3, 4
      000062 75 09 C0         [24]  295 	mov	_numTable,#0xc0
      000065 75 0A F9         [24]  296 	mov	(_numTable + 0x0001),#0xf9
      000068 75 0B A4         [24]  297 	mov	(_numTable + 0x0002),#0xa4
      00006B 75 0C B0         [24]  298 	mov	(_numTable + 0x0003),#0xb0
      00006E 75 0D 99         [24]  299 	mov	(_numTable + 0x0004),#0x99
      000071 75 0E 92         [24]  300 	mov	(_numTable + 0x0005),#0x92
      000074 75 0F 82         [24]  301 	mov	(_numTable + 0x0006),#0x82
      000077 75 10 F8         [24]  302 	mov	(_numTable + 0x0007),#0xf8
      00007A 75 11 80         [24]  303 	mov	(_numTable + 0x0008),#0x80
      00007D 75 12 90         [24]  304 	mov	(_numTable + 0x0009),#0x90
                                    305 ;	a_lcd.c:17: unsigned char lcdVal[4] = {0};
      000080 75 13 00         [24]  306 	mov	_lcdVal,#0x00
                                    307 ;--------------------------------------------------------
                                    308 ; Home
                                    309 ;--------------------------------------------------------
                                    310 	.area HOME    (CODE)
                                    311 	.area HOME    (CODE)
                                    312 ;--------------------------------------------------------
                                    313 ; code
                                    314 ;--------------------------------------------------------
                                    315 	.area CSEG    (CODE)
                                    316 ;------------------------------------------------------------
                                    317 ;Allocation info for local variables in function 'lcdDelay'
                                    318 ;------------------------------------------------------------
                                    319 ;i                         Allocated to registers 
                                    320 ;j                         Allocated to registers r6 
                                    321 ;------------------------------------------------------------
                                    322 ;	a_lcd.c:8: void lcdDelay(unsigned char i){
                                    323 ;	-----------------------------------------
                                    324 ;	 function lcdDelay
                                    325 ;	-----------------------------------------
      0000D7                        326 _lcdDelay:
                           000007   327 	ar7 = 0x07
                           000006   328 	ar6 = 0x06
                           000005   329 	ar5 = 0x05
                           000004   330 	ar4 = 0x04
                           000003   331 	ar3 = 0x03
                           000002   332 	ar2 = 0x02
                           000001   333 	ar1 = 0x01
                           000000   334 	ar0 = 0x00
      0000D7 AF 82            [24]  335 	mov	r7,dpl
      0000D9                        336 00106$:
                                    337 ;	a_lcd.c:10: for (; i > 0; i--){
      0000D9 EF               [12]  338 	mov	a,r7
      0000DA 60 0B            [24]  339 	jz	00108$
                                    340 ;	a_lcd.c:11: for (j = 125; j > 0; j--){
      0000DC 7E 7D            [12]  341 	mov	r6,#0x7d
      0000DE                        342 00104$:
      0000DE EE               [12]  343 	mov	a,r6
      0000DF 14               [12]  344 	dec	a
      0000E0 FD               [12]  345 	mov	r5,a
      0000E1 FE               [12]  346 	mov	r6,a
      0000E2 70 FA            [24]  347 	jnz	00104$
                                    348 ;	a_lcd.c:10: for (; i > 0; i--){
      0000E4 1F               [12]  349 	dec	r7
      0000E5 80 F2            [24]  350 	sjmp	00106$
      0000E7                        351 00108$:
                                    352 ;	a_lcd.c:15: }
      0000E7 22               [24]  353 	ret
                                    354 ;------------------------------------------------------------
                                    355 ;Allocation info for local variables in function 'showLcd2'
                                    356 ;------------------------------------------------------------
                                    357 ;	a_lcd.c:19: void showLcd2(){
                                    358 ;	-----------------------------------------
                                    359 ;	 function showLcd2
                                    360 ;	-----------------------------------------
      0000E8                        361 _showLcd2:
                                    362 ;	a_lcd.c:20: P0 = numTable[lcdVal[0]];
      0000E8 E5 13            [12]  363 	mov	a,_lcdVal
      0000EA 24 09            [12]  364 	add	a,#_numTable
      0000EC F9               [12]  365 	mov	r1,a
      0000ED 87 80            [24]  366 	mov	_P0,@r1
                                    367 ;	a_lcd.c:21: P2_0 = 0;
                                    368 ;	assignBit
      0000EF C2 A0            [12]  369 	clr	_P2_0
                                    370 ;	a_lcd.c:22: lcdDelay(5);
      0000F1 75 82 05         [24]  371 	mov	dpl,#0x05
      0000F4 12 00 D7         [24]  372 	lcall	_lcdDelay
                                    373 ;	a_lcd.c:23: P2_0 = 1;
                                    374 ;	assignBit
      0000F7 D2 A0            [12]  375 	setb	_P2_0
                                    376 ;	a_lcd.c:24: P0 = numTable[lcdVal[1]];
      0000F9 E5 14            [12]  377 	mov	a,(_lcdVal + 0x0001)
      0000FB 24 09            [12]  378 	add	a,#_numTable
      0000FD F9               [12]  379 	mov	r1,a
      0000FE 87 80            [24]  380 	mov	_P0,@r1
                                    381 ;	a_lcd.c:25: P2_1 = 0;
                                    382 ;	assignBit
      000100 C2 A1            [12]  383 	clr	_P2_1
                                    384 ;	a_lcd.c:26: lcdDelay(5);
      000102 75 82 05         [24]  385 	mov	dpl,#0x05
      000105 12 00 D7         [24]  386 	lcall	_lcdDelay
                                    387 ;	a_lcd.c:27: P2_1 = 1;
                                    388 ;	assignBit
      000108 D2 A1            [12]  389 	setb	_P2_1
                                    390 ;	a_lcd.c:28: P0 = numTable[lcdVal[2]];
      00010A E5 15            [12]  391 	mov	a,(_lcdVal + 0x0002)
      00010C 24 09            [12]  392 	add	a,#_numTable
      00010E F9               [12]  393 	mov	r1,a
      00010F 87 80            [24]  394 	mov	_P0,@r1
                                    395 ;	a_lcd.c:29: P2_2 = 0;
                                    396 ;	assignBit
      000111 C2 A2            [12]  397 	clr	_P2_2
                                    398 ;	a_lcd.c:30: lcdDelay(5);
      000113 75 82 05         [24]  399 	mov	dpl,#0x05
      000116 12 00 D7         [24]  400 	lcall	_lcdDelay
                                    401 ;	a_lcd.c:31: P2_2 = 1;
                                    402 ;	assignBit
      000119 D2 A2            [12]  403 	setb	_P2_2
                                    404 ;	a_lcd.c:32: P0 = numTable[lcdVal[3]];
      00011B E5 16            [12]  405 	mov	a,(_lcdVal + 0x0003)
      00011D 24 09            [12]  406 	add	a,#_numTable
      00011F F9               [12]  407 	mov	r1,a
      000120 87 80            [24]  408 	mov	_P0,@r1
                                    409 ;	a_lcd.c:33: P2_3 = 0;
                                    410 ;	assignBit
      000122 C2 A3            [12]  411 	clr	_P2_3
                                    412 ;	a_lcd.c:34: lcdDelay(5);
      000124 75 82 05         [24]  413 	mov	dpl,#0x05
      000127 12 00 D7         [24]  414 	lcall	_lcdDelay
                                    415 ;	a_lcd.c:35: P2_3 = 1;
                                    416 ;	assignBit
      00012A D2 A3            [12]  417 	setb	_P2_3
                                    418 ;	a_lcd.c:36: }
      00012C 22               [24]  419 	ret
                                    420 ;------------------------------------------------------------
                                    421 ;Allocation info for local variables in function 'showLcd3'
                                    422 ;------------------------------------------------------------
                                    423 ;pos                       Allocated to registers r7 
                                    424 ;------------------------------------------------------------
                                    425 ;	a_lcd.c:38: void showLcd3(unsigned char pos){
                                    426 ;	-----------------------------------------
                                    427 ;	 function showLcd3
                                    428 ;	-----------------------------------------
      00012D                        429 _showLcd3:
                                    430 ;	a_lcd.c:39: P0 = numTable[lcdVal[pos]];
      00012D E5 82            [12]  431 	mov	a,dpl
      00012F FF               [12]  432 	mov	r7,a
      000130 24 13            [12]  433 	add	a,#_lcdVal
      000132 F9               [12]  434 	mov	r1,a
      000133 E7               [12]  435 	mov	a,@r1
      000134 FE               [12]  436 	mov	r6,a
      000135 24 09            [12]  437 	add	a,#_numTable
      000137 F9               [12]  438 	mov	r1,a
      000138 87 80            [24]  439 	mov	_P0,@r1
                                    440 ;	a_lcd.c:40: switch (pos){
      00013A EF               [12]  441 	mov	a,r7
      00013B 24 FC            [12]  442 	add	a,#0xff - 0x03
      00013D 40 39            [24]  443 	jc	00105$
      00013F EF               [12]  444 	mov	a,r7
      000140 2F               [12]  445 	add	a,r7
                                    446 ;	a_lcd.c:41: case 0:
      000141 90 01 45         [24]  447 	mov	dptr,#00114$
      000144 73               [24]  448 	jmp	@a+dptr
      000145                        449 00114$:
      000145 80 06            [24]  450 	sjmp	00101$
      000147 80 0F            [24]  451 	sjmp	00102$
      000149 80 18            [24]  452 	sjmp	00103$
      00014B 80 21            [24]  453 	sjmp	00104$
      00014D                        454 00101$:
                                    455 ;	a_lcd.c:42: P2_0 = 0;
                                    456 ;	assignBit
      00014D C2 A0            [12]  457 	clr	_P2_0
                                    458 ;	a_lcd.c:43: lcdDelay(5);
      00014F 75 82 05         [24]  459 	mov	dpl,#0x05
      000152 12 00 D7         [24]  460 	lcall	_lcdDelay
                                    461 ;	a_lcd.c:44: P2_0 = 1;
                                    462 ;	assignBit
      000155 D2 A0            [12]  463 	setb	_P2_0
                                    464 ;	a_lcd.c:45: break;
                                    465 ;	a_lcd.c:46: case 1:
      000157 22               [24]  466 	ret
      000158                        467 00102$:
                                    468 ;	a_lcd.c:47: P2_1 = 0;
                                    469 ;	assignBit
      000158 C2 A1            [12]  470 	clr	_P2_1
                                    471 ;	a_lcd.c:48: lcdDelay(5);
      00015A 75 82 05         [24]  472 	mov	dpl,#0x05
      00015D 12 00 D7         [24]  473 	lcall	_lcdDelay
                                    474 ;	a_lcd.c:49: P2_1 = 1;
                                    475 ;	assignBit
      000160 D2 A1            [12]  476 	setb	_P2_1
                                    477 ;	a_lcd.c:50: break;
                                    478 ;	a_lcd.c:51: case 2:
      000162 22               [24]  479 	ret
      000163                        480 00103$:
                                    481 ;	a_lcd.c:52: P2_2 = 0;
                                    482 ;	assignBit
      000163 C2 A2            [12]  483 	clr	_P2_2
                                    484 ;	a_lcd.c:53: lcdDelay(5);
      000165 75 82 05         [24]  485 	mov	dpl,#0x05
      000168 12 00 D7         [24]  486 	lcall	_lcdDelay
                                    487 ;	a_lcd.c:54: P2_2 = 1;
                                    488 ;	assignBit
      00016B D2 A2            [12]  489 	setb	_P2_2
                                    490 ;	a_lcd.c:55: break;
                                    491 ;	a_lcd.c:56: case 3:
      00016D 22               [24]  492 	ret
      00016E                        493 00104$:
                                    494 ;	a_lcd.c:57: P2_3 = 0;
                                    495 ;	assignBit
      00016E C2 A3            [12]  496 	clr	_P2_3
                                    497 ;	a_lcd.c:58: lcdDelay(5);
      000170 75 82 05         [24]  498 	mov	dpl,#0x05
      000173 12 00 D7         [24]  499 	lcall	_lcdDelay
                                    500 ;	a_lcd.c:59: P2_3 = 1;
                                    501 ;	assignBit
      000176 D2 A3            [12]  502 	setb	_P2_3
                                    503 ;	a_lcd.c:60: break;
                                    504 ;	a_lcd.c:61: default:
                                    505 ;	a_lcd.c:62: return;
                                    506 ;	a_lcd.c:64: }
      000178                        507 00105$:
                                    508 ;	a_lcd.c:65: }
      000178 22               [24]  509 	ret
                                    510 ;------------------------------------------------------------
                                    511 ;Allocation info for local variables in function 'showLcd'
                                    512 ;------------------------------------------------------------
                                    513 ;val                       Allocated with name '_showLcd_PARM_2'
                                    514 ;pos                       Allocated to registers r7 
                                    515 ;------------------------------------------------------------
                                    516 ;	a_lcd.c:68: void showLcd(unsigned char pos, unsigned char val){
                                    517 ;	-----------------------------------------
                                    518 ;	 function showLcd
                                    519 ;	-----------------------------------------
      000179                        520 _showLcd:
      000179 AF 82            [24]  521 	mov	r7,dpl
                                    522 ;	a_lcd.c:69: P0 = numTable[val];
      00017B E5 17            [12]  523 	mov	a,_showLcd_PARM_2
      00017D 24 09            [12]  524 	add	a,#_numTable
      00017F F9               [12]  525 	mov	r1,a
      000180 87 80            [24]  526 	mov	_P0,@r1
                                    527 ;	a_lcd.c:70: switch (pos){
      000182 EF               [12]  528 	mov	a,r7
      000183 24 FC            [12]  529 	add	a,#0xff - 0x03
      000185 40 39            [24]  530 	jc	00105$
      000187 EF               [12]  531 	mov	a,r7
      000188 2F               [12]  532 	add	a,r7
                                    533 ;	a_lcd.c:71: case 0:
      000189 90 01 8D         [24]  534 	mov	dptr,#00114$
      00018C 73               [24]  535 	jmp	@a+dptr
      00018D                        536 00114$:
      00018D 80 06            [24]  537 	sjmp	00101$
      00018F 80 0F            [24]  538 	sjmp	00102$
      000191 80 18            [24]  539 	sjmp	00103$
      000193 80 21            [24]  540 	sjmp	00104$
      000195                        541 00101$:
                                    542 ;	a_lcd.c:72: P2_0 = 0;
                                    543 ;	assignBit
      000195 C2 A0            [12]  544 	clr	_P2_0
                                    545 ;	a_lcd.c:73: lcdDelay(5);
      000197 75 82 05         [24]  546 	mov	dpl,#0x05
      00019A 12 00 D7         [24]  547 	lcall	_lcdDelay
                                    548 ;	a_lcd.c:74: P2_0 = 1;
                                    549 ;	assignBit
      00019D D2 A0            [12]  550 	setb	_P2_0
                                    551 ;	a_lcd.c:75: break;
                                    552 ;	a_lcd.c:76: case 1:
      00019F 22               [24]  553 	ret
      0001A0                        554 00102$:
                                    555 ;	a_lcd.c:77: P2_1 = 0;
                                    556 ;	assignBit
      0001A0 C2 A1            [12]  557 	clr	_P2_1
                                    558 ;	a_lcd.c:78: lcdDelay(5);
      0001A2 75 82 05         [24]  559 	mov	dpl,#0x05
      0001A5 12 00 D7         [24]  560 	lcall	_lcdDelay
                                    561 ;	a_lcd.c:79: P2_1 = 1;
                                    562 ;	assignBit
      0001A8 D2 A1            [12]  563 	setb	_P2_1
                                    564 ;	a_lcd.c:80: break;
                                    565 ;	a_lcd.c:81: case 2:
      0001AA 22               [24]  566 	ret
      0001AB                        567 00103$:
                                    568 ;	a_lcd.c:82: P2_2 = 0;
                                    569 ;	assignBit
      0001AB C2 A2            [12]  570 	clr	_P2_2
                                    571 ;	a_lcd.c:83: lcdDelay(5);
      0001AD 75 82 05         [24]  572 	mov	dpl,#0x05
      0001B0 12 00 D7         [24]  573 	lcall	_lcdDelay
                                    574 ;	a_lcd.c:84: P2_2 = 1;
                                    575 ;	assignBit
      0001B3 D2 A2            [12]  576 	setb	_P2_2
                                    577 ;	a_lcd.c:85: break;
                                    578 ;	a_lcd.c:86: case 3:
      0001B5 22               [24]  579 	ret
      0001B6                        580 00104$:
                                    581 ;	a_lcd.c:87: P2_3 = 0;
                                    582 ;	assignBit
      0001B6 C2 A3            [12]  583 	clr	_P2_3
                                    584 ;	a_lcd.c:88: lcdDelay(5);
      0001B8 75 82 05         [24]  585 	mov	dpl,#0x05
      0001BB 12 00 D7         [24]  586 	lcall	_lcdDelay
                                    587 ;	a_lcd.c:89: P2_3 = 1;
                                    588 ;	assignBit
      0001BE D2 A3            [12]  589 	setb	_P2_3
                                    590 ;	a_lcd.c:90: break;
                                    591 ;	a_lcd.c:91: default:
                                    592 ;	a_lcd.c:92: return;
                                    593 ;	a_lcd.c:94: }
      0001C0                        594 00105$:
                                    595 ;	a_lcd.c:95: }
      0001C0 22               [24]  596 	ret
                                    597 ;------------------------------------------------------------
                                    598 ;Allocation info for local variables in function 'sumLcdVal'
                                    599 ;------------------------------------------------------------
                                    600 ;answer                    Allocated to registers 
                                    601 ;------------------------------------------------------------
                                    602 ;	a_lcd.c:97: int sumLcdVal(){
                                    603 ;	-----------------------------------------
                                    604 ;	 function sumLcdVal
                                    605 ;	-----------------------------------------
      0001C1                        606 _sumLcdVal:
                                    607 ;	a_lcd.c:99: answer = lcdVal[3] + lcdVal[2]*10 + lcdVal[1]*100 + lcdVal[0]*1000;
      0001C1 AE 16            [24]  608 	mov	r6,(_lcdVal + 0x0003)
      0001C3 7F 00            [12]  609 	mov	r7,#0x00
      0001C5 85 15 1D         [24]  610 	mov	__mulint_PARM_2,(_lcdVal + 0x0002)
                                    611 ;	1-genFromRTrack replaced	mov	(__mulint_PARM_2 + 1),#0x00
      0001C8 8F 1E            [24]  612 	mov	(__mulint_PARM_2 + 1),r7
      0001CA 90 00 0A         [24]  613 	mov	dptr,#0x000a
      0001CD C0 07            [24]  614 	push	ar7
      0001CF C0 06            [24]  615 	push	ar6
      0001D1 12 05 93         [24]  616 	lcall	__mulint
      0001D4 AC 82            [24]  617 	mov	r4,dpl
      0001D6 AD 83            [24]  618 	mov	r5,dph
      0001D8 D0 06            [24]  619 	pop	ar6
      0001DA D0 07            [24]  620 	pop	ar7
      0001DC EC               [12]  621 	mov	a,r4
      0001DD 2E               [12]  622 	add	a,r6
      0001DE FE               [12]  623 	mov	r6,a
      0001DF ED               [12]  624 	mov	a,r5
      0001E0 3F               [12]  625 	addc	a,r7
      0001E1 FF               [12]  626 	mov	r7,a
      0001E2 85 14 1D         [24]  627 	mov	__mulint_PARM_2,(_lcdVal + 0x0001)
      0001E5 75 1E 00         [24]  628 	mov	(__mulint_PARM_2 + 1),#0x00
      0001E8 90 00 64         [24]  629 	mov	dptr,#0x0064
      0001EB C0 07            [24]  630 	push	ar7
      0001ED C0 06            [24]  631 	push	ar6
      0001EF 12 05 93         [24]  632 	lcall	__mulint
      0001F2 AC 82            [24]  633 	mov	r4,dpl
      0001F4 AD 83            [24]  634 	mov	r5,dph
      0001F6 D0 06            [24]  635 	pop	ar6
      0001F8 D0 07            [24]  636 	pop	ar7
      0001FA EC               [12]  637 	mov	a,r4
      0001FB 2E               [12]  638 	add	a,r6
      0001FC FE               [12]  639 	mov	r6,a
      0001FD ED               [12]  640 	mov	a,r5
      0001FE 3F               [12]  641 	addc	a,r7
      0001FF FF               [12]  642 	mov	r7,a
      000200 85 13 1D         [24]  643 	mov	__mulint_PARM_2,_lcdVal
      000203 75 1E 00         [24]  644 	mov	(__mulint_PARM_2 + 1),#0x00
      000206 90 03 E8         [24]  645 	mov	dptr,#0x03e8
      000209 C0 07            [24]  646 	push	ar7
      00020B C0 06            [24]  647 	push	ar6
      00020D 12 05 93         [24]  648 	lcall	__mulint
      000210 AC 82            [24]  649 	mov	r4,dpl
      000212 AD 83            [24]  650 	mov	r5,dph
      000214 D0 06            [24]  651 	pop	ar6
      000216 D0 07            [24]  652 	pop	ar7
      000218 EC               [12]  653 	mov	a,r4
      000219 2E               [12]  654 	add	a,r6
      00021A F5 82            [12]  655 	mov	dpl,a
      00021C ED               [12]  656 	mov	a,r5
      00021D 3F               [12]  657 	addc	a,r7
      00021E F5 83            [12]  658 	mov	dph,a
                                    659 ;	a_lcd.c:100: return answer;
                                    660 ;	a_lcd.c:101: }
      000220 22               [24]  661 	ret
                                    662 ;------------------------------------------------------------
                                    663 ;Allocation info for local variables in function 'addLcd'
                                    664 ;------------------------------------------------------------
                                    665 ;ix                        Allocated to registers r7 
                                    666 ;i                         Allocated to registers r5 r6 
                                    667 ;------------------------------------------------------------
                                    668 ;	a_lcd.c:103: void addLcd(unsigned char ix){
                                    669 ;	-----------------------------------------
                                    670 ;	 function addLcd
                                    671 ;	-----------------------------------------
      000221                        672 _addLcd:
                                    673 ;	a_lcd.c:104: lcdVal[ix]++;
      000221 E5 82            [12]  674 	mov	a,dpl
      000223 FF               [12]  675 	mov	r7,a
      000224 24 13            [12]  676 	add	a,#_lcdVal
      000226 F9               [12]  677 	mov	r1,a
      000227 87 06            [24]  678 	mov	ar6,@r1
      000229 0E               [12]  679 	inc	r6
      00022A A7 06            [24]  680 	mov	@r1,ar6
                                    681 ;	a_lcd.c:105: if (lcdVal[ix]>9){
      00022C EE               [12]  682 	mov	a,r6
      00022D 24 F6            [12]  683 	add	a,#0xff - 0x09
      00022F 50 27            [24]  684 	jnc	00109$
                                    685 ;	a_lcd.c:106: lcdVal[ix] = 0;
      000231 77 00            [12]  686 	mov	@r1,#0x00
                                    687 ;	a_lcd.c:107: if (ix == 0){
      000233 EF               [12]  688 	mov	a,r7
                                    689 ;	a_lcd.c:108: for (int i = 0; i < 4; i++){
      000234 70 1B            [24]  690 	jnz	00103$
      000236 FD               [12]  691 	mov	r5,a
      000237 FE               [12]  692 	mov	r6,a
      000238                        693 00107$:
      000238 C3               [12]  694 	clr	c
      000239 ED               [12]  695 	mov	a,r5
      00023A 94 04            [12]  696 	subb	a,#0x04
      00023C EE               [12]  697 	mov	a,r6
      00023D 64 80            [12]  698 	xrl	a,#0x80
      00023F 94 80            [12]  699 	subb	a,#0x80
      000241 50 0D            [24]  700 	jnc	00101$
                                    701 ;	a_lcd.c:109: lcdVal[i] = 0;
      000243 ED               [12]  702 	mov	a,r5
      000244 24 13            [12]  703 	add	a,#_lcdVal
      000246 F8               [12]  704 	mov	r0,a
      000247 76 00            [12]  705 	mov	@r0,#0x00
                                    706 ;	a_lcd.c:108: for (int i = 0; i < 4; i++){
      000249 0D               [12]  707 	inc	r5
      00024A BD 00 EB         [24]  708 	cjne	r5,#0x00,00107$
      00024D 0E               [12]  709 	inc	r6
      00024E 80 E8            [24]  710 	sjmp	00107$
      000250                        711 00101$:
                                    712 ;	a_lcd.c:111: return;
      000250 22               [24]  713 	ret
      000251                        714 00103$:
                                    715 ;	a_lcd.c:113: addLcd(ix-1);
      000251 EF               [12]  716 	mov	a,r7
      000252 14               [12]  717 	dec	a
      000253 F5 82            [12]  718 	mov	dpl,a
                                    719 ;	a_lcd.c:115: }
      000255 02 02 21         [24]  720 	ljmp	_addLcd
      000258                        721 00109$:
      000258 22               [24]  722 	ret
                                    723 ;------------------------------------------------------------
                                    724 ;Allocation info for local variables in function 'minusLcd2'
                                    725 ;------------------------------------------------------------
                                    726 ;ix                        Allocated to registers r7 
                                    727 ;i                         Allocated to registers r6 r7 
                                    728 ;------------------------------------------------------------
                                    729 ;	a_lcd.c:117: void minusLcd2(unsigned char ix){
                                    730 ;	-----------------------------------------
                                    731 ;	 function minusLcd2
                                    732 ;	-----------------------------------------
      000259                        733 _minusLcd2:
                                    734 ;	a_lcd.c:118: if (lcdVal[ix]!=0){
      000259 E5 82            [12]  735 	mov	a,dpl
      00025B FF               [12]  736 	mov	r7,a
      00025C 24 13            [12]  737 	add	a,#_lcdVal
      00025E F9               [12]  738 	mov	r1,a
      00025F E7               [12]  739 	mov	a,@r1
      000260 FE               [12]  740 	mov	r6,a
      000261 60 04            [24]  741 	jz	00112$
                                    742 ;	a_lcd.c:119: lcdVal[ix]--;
      000263 EE               [12]  743 	mov	a,r6
      000264 14               [12]  744 	dec	a
      000265 F7               [12]  745 	mov	@r1,a
      000266 22               [24]  746 	ret
      000267                        747 00112$:
                                    748 ;	a_lcd.c:121: if (lcdVal[ix-1]!=0){
      000267 EF               [12]  749 	mov	a,r7
      000268 14               [12]  750 	dec	a
      000269 24 13            [12]  751 	add	a,#_lcdVal
      00026B F8               [12]  752 	mov	r0,a
      00026C E6               [12]  753 	mov	a,@r0
      00026D 60 09            [24]  754 	jz	00109$
                                    755 ;	a_lcd.c:122: lcdVal[ix] = 9;
      00026F 77 09            [12]  756 	mov	@r1,#0x09
                                    757 ;	a_lcd.c:123: minusLcd2(ix-1);
      000271 EF               [12]  758 	mov	a,r7
      000272 14               [12]  759 	dec	a
      000273 F5 82            [12]  760 	mov	dpl,a
      000275 02 02 59         [24]  761 	ljmp	_minusLcd2
      000278                        762 00109$:
                                    763 ;	a_lcd.c:125: if (lcdVal[ix-2]!=0){
      000278 EF               [12]  764 	mov	a,r7
      000279 24 FE            [12]  765 	add	a,#0xfe
      00027B 24 13            [12]  766 	add	a,#_lcdVal
      00027D F8               [12]  767 	mov	r0,a
      00027E E6               [12]  768 	mov	a,@r0
      00027F 60 11            [24]  769 	jz	00106$
                                    770 ;	a_lcd.c:126: lcdVal[ix] = 9;
      000281 77 09            [12]  771 	mov	@r1,#0x09
                                    772 ;	a_lcd.c:127: lcdVal[ix-1] = 9;
      000283 EF               [12]  773 	mov	a,r7
      000284 14               [12]  774 	dec	a
      000285 24 13            [12]  775 	add	a,#_lcdVal
      000287 F8               [12]  776 	mov	r0,a
      000288 76 09            [12]  777 	mov	@r0,#0x09
                                    778 ;	a_lcd.c:128: minusLcd2(ix-2);
      00028A EF               [12]  779 	mov	a,r7
      00028B 24 FE            [12]  780 	add	a,#0xfe
      00028D F5 82            [12]  781 	mov	dpl,a
      00028F 02 02 59         [24]  782 	ljmp	_minusLcd2
      000292                        783 00106$:
                                    784 ;	a_lcd.c:130: if (lcdVal[ix-3]!=0){
      000292 EF               [12]  785 	mov	a,r7
      000293 24 FD            [12]  786 	add	a,#0xfd
      000295 24 13            [12]  787 	add	a,#_lcdVal
      000297 F8               [12]  788 	mov	r0,a
      000298 E6               [12]  789 	mov	a,@r0
      000299 60 19            [24]  790 	jz	00124$
                                    791 ;	a_lcd.c:131: lcdVal[ix] = 9;
      00029B 77 09            [12]  792 	mov	@r1,#0x09
                                    793 ;	a_lcd.c:132: lcdVal[ix-1] = 9;
      00029D EF               [12]  794 	mov	a,r7
      00029E 14               [12]  795 	dec	a
      00029F 24 13            [12]  796 	add	a,#_lcdVal
      0002A1 F8               [12]  797 	mov	r0,a
      0002A2 76 09            [12]  798 	mov	@r0,#0x09
                                    799 ;	a_lcd.c:133: lcdVal[ix-2] = 9;
      0002A4 EF               [12]  800 	mov	a,r7
      0002A5 24 FE            [12]  801 	add	a,#0xfe
      0002A7 24 13            [12]  802 	add	a,#_lcdVal
      0002A9 F8               [12]  803 	mov	r0,a
      0002AA 76 09            [12]  804 	mov	@r0,#0x09
                                    805 ;	a_lcd.c:134: minusLcd2(ix-3);
      0002AC EF               [12]  806 	mov	a,r7
      0002AD 24 FD            [12]  807 	add	a,#0xfd
      0002AF F5 82            [12]  808 	mov	dpl,a
                                    809 ;	a_lcd.c:136: for (int i = 0; i < 4; i++){
      0002B1 02 02 59         [24]  810 	ljmp	_minusLcd2
      0002B4                        811 00124$:
      0002B4 7E 00            [12]  812 	mov	r6,#0x00
      0002B6 7F 00            [12]  813 	mov	r7,#0x00
      0002B8                        814 00115$:
      0002B8 C3               [12]  815 	clr	c
      0002B9 EE               [12]  816 	mov	a,r6
      0002BA 94 04            [12]  817 	subb	a,#0x04
      0002BC EF               [12]  818 	mov	a,r7
      0002BD 64 80            [12]  819 	xrl	a,#0x80
      0002BF 94 80            [12]  820 	subb	a,#0x80
      0002C1 50 0D            [24]  821 	jnc	00101$
                                    822 ;	a_lcd.c:137: lcdVal[i] = 9;
      0002C3 EE               [12]  823 	mov	a,r6
      0002C4 24 13            [12]  824 	add	a,#_lcdVal
      0002C6 F8               [12]  825 	mov	r0,a
      0002C7 76 09            [12]  826 	mov	@r0,#0x09
                                    827 ;	a_lcd.c:136: for (int i = 0; i < 4; i++){
      0002C9 0E               [12]  828 	inc	r6
      0002CA BE 00 EB         [24]  829 	cjne	r6,#0x00,00115$
      0002CD 0F               [12]  830 	inc	r7
      0002CE 80 E8            [24]  831 	sjmp	00115$
      0002D0                        832 00101$:
                                    833 ;	a_lcd.c:139: return;
                                    834 ;	a_lcd.c:144: }
      0002D0 22               [24]  835 	ret
                                    836 ;------------------------------------------------------------
                                    837 ;Allocation info for local variables in function 'minusLcd'
                                    838 ;------------------------------------------------------------
                                    839 ;tVal                      Allocated to registers r6 r7 
                                    840 ;------------------------------------------------------------
                                    841 ;	a_lcd.c:146: void minusLcd(){
                                    842 ;	-----------------------------------------
                                    843 ;	 function minusLcd
                                    844 ;	-----------------------------------------
      0002D1                        845 _minusLcd:
                                    846 ;	a_lcd.c:147: int tVal = sumLcdVal();
      0002D1 12 01 C1         [24]  847 	lcall	_sumLcdVal
      0002D4 AE 82            [24]  848 	mov	r6,dpl
      0002D6 AF 83            [24]  849 	mov	r7,dph
                                    850 ;	a_lcd.c:148: if (tVal == 0){
      0002D8 EE               [12]  851 	mov	a,r6
      0002D9 4F               [12]  852 	orl	a,r7
      0002DA 70 06            [24]  853 	jnz	00102$
                                    854 ;	a_lcd.c:149: tVal = 9999;
      0002DC 7E 0F            [12]  855 	mov	r6,#0x0f
      0002DE 7F 27            [12]  856 	mov	r7,#0x27
      0002E0 80 05            [24]  857 	sjmp	00103$
      0002E2                        858 00102$:
                                    859 ;	a_lcd.c:151: tVal--;
      0002E2 1E               [12]  860 	dec	r6
      0002E3 BE FF 01         [24]  861 	cjne	r6,#0xff,00135$
      0002E6 1F               [12]  862 	dec	r7
      0002E7                        863 00135$:
      0002E7                        864 00103$:
                                    865 ;	a_lcd.c:153: if (tVal > 0){
      0002E7 C3               [12]  866 	clr	c
      0002E8 E4               [12]  867 	clr	a
      0002E9 9E               [12]  868 	subb	a,r6
      0002EA 74 80            [12]  869 	mov	a,#(0x00 ^ 0x80)
      0002EC 8F F0            [24]  870 	mov	b,r7
      0002EE 63 F0 80         [24]  871 	xrl	b,#0x80
      0002F1 95 F0            [12]  872 	subb	a,b
      0002F3 50 2A            [24]  873 	jnc	00105$
                                    874 ;	a_lcd.c:154: lcdVal[3] = tVal % 10;
      0002F5 75 1D 0A         [24]  875 	mov	__modsint_PARM_2,#0x0a
      0002F8 75 1E 00         [24]  876 	mov	(__modsint_PARM_2 + 1),#0x00
      0002FB 8E 82            [24]  877 	mov	dpl,r6
      0002FD 8F 83            [24]  878 	mov	dph,r7
      0002FF C0 07            [24]  879 	push	ar7
      000301 C0 06            [24]  880 	push	ar6
      000303 12 06 26         [24]  881 	lcall	__modsint
      000306 AC 82            [24]  882 	mov	r4,dpl
      000308 D0 06            [24]  883 	pop	ar6
      00030A D0 07            [24]  884 	pop	ar7
      00030C 8C 16            [24]  885 	mov	(_lcdVal + 0x0003),r4
                                    886 ;	a_lcd.c:155: tVal /= 10;
      00030E 75 1D 0A         [24]  887 	mov	__divsint_PARM_2,#0x0a
      000311 75 1E 00         [24]  888 	mov	(__divsint_PARM_2 + 1),#0x00
      000314 8E 82            [24]  889 	mov	dpl,r6
      000316 8F 83            [24]  890 	mov	dph,r7
      000318 12 06 5C         [24]  891 	lcall	__divsint
      00031B AE 82            [24]  892 	mov	r6,dpl
      00031D AF 83            [24]  893 	mov	r7,dph
      00031F                        894 00105$:
                                    895 ;	a_lcd.c:157: if (tVal > 0){
      00031F C3               [12]  896 	clr	c
      000320 E4               [12]  897 	clr	a
      000321 9E               [12]  898 	subb	a,r6
      000322 74 80            [12]  899 	mov	a,#(0x00 ^ 0x80)
      000324 8F F0            [24]  900 	mov	b,r7
      000326 63 F0 80         [24]  901 	xrl	b,#0x80
      000329 95 F0            [12]  902 	subb	a,b
      00032B 50 2A            [24]  903 	jnc	00107$
                                    904 ;	a_lcd.c:158: lcdVal[2] = tVal%10;
      00032D 75 1D 0A         [24]  905 	mov	__modsint_PARM_2,#0x0a
      000330 75 1E 00         [24]  906 	mov	(__modsint_PARM_2 + 1),#0x00
      000333 8E 82            [24]  907 	mov	dpl,r6
      000335 8F 83            [24]  908 	mov	dph,r7
      000337 C0 07            [24]  909 	push	ar7
      000339 C0 06            [24]  910 	push	ar6
      00033B 12 06 26         [24]  911 	lcall	__modsint
      00033E AC 82            [24]  912 	mov	r4,dpl
      000340 D0 06            [24]  913 	pop	ar6
      000342 D0 07            [24]  914 	pop	ar7
      000344 8C 15            [24]  915 	mov	(_lcdVal + 0x0002),r4
                                    916 ;	a_lcd.c:159: tVal /= 10;
      000346 75 1D 0A         [24]  917 	mov	__divsint_PARM_2,#0x0a
      000349 75 1E 00         [24]  918 	mov	(__divsint_PARM_2 + 1),#0x00
      00034C 8E 82            [24]  919 	mov	dpl,r6
      00034E 8F 83            [24]  920 	mov	dph,r7
      000350 12 06 5C         [24]  921 	lcall	__divsint
      000353 AE 82            [24]  922 	mov	r6,dpl
      000355 AF 83            [24]  923 	mov	r7,dph
      000357                        924 00107$:
                                    925 ;	a_lcd.c:161: if (tVal > 0){
      000357 C3               [12]  926 	clr	c
      000358 E4               [12]  927 	clr	a
      000359 9E               [12]  928 	subb	a,r6
      00035A 74 80            [12]  929 	mov	a,#(0x00 ^ 0x80)
      00035C 8F F0            [24]  930 	mov	b,r7
      00035E 63 F0 80         [24]  931 	xrl	b,#0x80
      000361 95 F0            [12]  932 	subb	a,b
      000363 50 2A            [24]  933 	jnc	00109$
                                    934 ;	a_lcd.c:162: lcdVal[1] = tVal%10;
      000365 75 1D 0A         [24]  935 	mov	__modsint_PARM_2,#0x0a
      000368 75 1E 00         [24]  936 	mov	(__modsint_PARM_2 + 1),#0x00
      00036B 8E 82            [24]  937 	mov	dpl,r6
      00036D 8F 83            [24]  938 	mov	dph,r7
      00036F C0 07            [24]  939 	push	ar7
      000371 C0 06            [24]  940 	push	ar6
      000373 12 06 26         [24]  941 	lcall	__modsint
      000376 AC 82            [24]  942 	mov	r4,dpl
      000378 D0 06            [24]  943 	pop	ar6
      00037A D0 07            [24]  944 	pop	ar7
      00037C 8C 14            [24]  945 	mov	(_lcdVal + 0x0001),r4
                                    946 ;	a_lcd.c:163: tVal /= 10;
      00037E 75 1D 0A         [24]  947 	mov	__divsint_PARM_2,#0x0a
      000381 75 1E 00         [24]  948 	mov	(__divsint_PARM_2 + 1),#0x00
      000384 8E 82            [24]  949 	mov	dpl,r6
      000386 8F 83            [24]  950 	mov	dph,r7
      000388 12 06 5C         [24]  951 	lcall	__divsint
      00038B AE 82            [24]  952 	mov	r6,dpl
      00038D AF 83            [24]  953 	mov	r7,dph
      00038F                        954 00109$:
                                    955 ;	a_lcd.c:165: if (tVal > 0){
      00038F C3               [12]  956 	clr	c
      000390 E4               [12]  957 	clr	a
      000391 9E               [12]  958 	subb	a,r6
      000392 74 80            [12]  959 	mov	a,#(0x00 ^ 0x80)
      000394 8F F0            [24]  960 	mov	b,r7
      000396 63 F0 80         [24]  961 	xrl	b,#0x80
      000399 95 F0            [12]  962 	subb	a,b
      00039B 50 13            [24]  963 	jnc	00111$
                                    964 ;	a_lcd.c:166: lcdVal[0] = tVal%10;
      00039D 75 1D 0A         [24]  965 	mov	__modsint_PARM_2,#0x0a
      0003A0 75 1E 00         [24]  966 	mov	(__modsint_PARM_2 + 1),#0x00
      0003A3 8E 82            [24]  967 	mov	dpl,r6
      0003A5 8F 83            [24]  968 	mov	dph,r7
      0003A7 12 06 26         [24]  969 	lcall	__modsint
      0003AA AE 82            [24]  970 	mov	r6,dpl
      0003AC AF 83            [24]  971 	mov	r7,dph
      0003AE 8E 13            [24]  972 	mov	_lcdVal,r6
                                    973 ;	a_lcd.c:167: tVal /=10;
      0003B0                        974 00111$:
                                    975 ;	a_lcd.c:169: return;
                                    976 ;	a_lcd.c:170: }
      0003B0 22               [24]  977 	ret
                                    978 ;------------------------------------------------------------
                                    979 ;Allocation info for local variables in function 'setLcd'
                                    980 ;------------------------------------------------------------
                                    981 ;val                       Allocated with name '_setLcd_PARM_2'
                                    982 ;pos                       Allocated to registers r7 
                                    983 ;------------------------------------------------------------
                                    984 ;	a_lcd.c:172: void setLcd(unsigned char pos, unsigned char val){
                                    985 ;	-----------------------------------------
                                    986 ;	 function setLcd
                                    987 ;	-----------------------------------------
      0003B1                        988 _setLcd:
                                    989 ;	a_lcd.c:173: lcdVal[pos] = val;
      0003B1 E5 82            [12]  990 	mov	a,dpl
      0003B3 24 13            [12]  991 	add	a,#_lcdVal
      0003B5 F8               [12]  992 	mov	r0,a
      0003B6 A6 1D            [24]  993 	mov	@r0,_setLcd_PARM_2
                                    994 ;	a_lcd.c:174: }
      0003B8 22               [24]  995 	ret
                                    996 	.area CSEG    (CODE)
                                    997 	.area CONST   (CODE)
                                    998 	.area XINIT   (CODE)
                                    999 	.area CABS    (ABS,CODE)
