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
                                     14 	.globl _addLcd
                                     15 	.globl _sumLcdVal
                                     16 	.globl _showLcd
                                     17 	.globl _showLcd3
                                     18 	.globl _showLcd2
                                     19 	.globl _lcdDelay
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
                                    116 	.globl _showLcd_PARM_2
                                    117 	.globl _lcdVal
                                    118 	.globl _numTable
                                    119 ;--------------------------------------------------------
                                    120 ; special function registers
                                    121 ;--------------------------------------------------------
                                    122 	.area RSEG    (ABS,DATA)
      000000                        123 	.org 0x0000
                           000080   124 _P0	=	0x0080
                           000081   125 _SP	=	0x0081
                           000082   126 _DPL	=	0x0082
                           000083   127 _DPH	=	0x0083
                           000087   128 _PCON	=	0x0087
                           000088   129 _TCON	=	0x0088
                           000089   130 _TMOD	=	0x0089
                           00008A   131 _TL0	=	0x008a
                           00008B   132 _TL1	=	0x008b
                           00008C   133 _TH0	=	0x008c
                           00008D   134 _TH1	=	0x008d
                           000090   135 _P1	=	0x0090
                           000098   136 _SCON	=	0x0098
                           000099   137 _SBUF	=	0x0099
                           0000A0   138 _P2	=	0x00a0
                           0000A8   139 _IE	=	0x00a8
                           0000B0   140 _P3	=	0x00b0
                           0000B8   141 _IP	=	0x00b8
                           0000D0   142 _PSW	=	0x00d0
                           0000E0   143 _ACC	=	0x00e0
                           0000F0   144 _B	=	0x00f0
                                    145 ;--------------------------------------------------------
                                    146 ; special function bits
                                    147 ;--------------------------------------------------------
                                    148 	.area RSEG    (ABS,DATA)
      000000                        149 	.org 0x0000
                           000080   150 _P0_0	=	0x0080
                           000081   151 _P0_1	=	0x0081
                           000082   152 _P0_2	=	0x0082
                           000083   153 _P0_3	=	0x0083
                           000084   154 _P0_4	=	0x0084
                           000085   155 _P0_5	=	0x0085
                           000086   156 _P0_6	=	0x0086
                           000087   157 _P0_7	=	0x0087
                           000088   158 _IT0	=	0x0088
                           000089   159 _IE0	=	0x0089
                           00008A   160 _IT1	=	0x008a
                           00008B   161 _IE1	=	0x008b
                           00008C   162 _TR0	=	0x008c
                           00008D   163 _TF0	=	0x008d
                           00008E   164 _TR1	=	0x008e
                           00008F   165 _TF1	=	0x008f
                           000090   166 _P1_0	=	0x0090
                           000091   167 _P1_1	=	0x0091
                           000092   168 _P1_2	=	0x0092
                           000093   169 _P1_3	=	0x0093
                           000094   170 _P1_4	=	0x0094
                           000095   171 _P1_5	=	0x0095
                           000096   172 _P1_6	=	0x0096
                           000097   173 _P1_7	=	0x0097
                           000098   174 _RI	=	0x0098
                           000099   175 _TI	=	0x0099
                           00009A   176 _RB8	=	0x009a
                           00009B   177 _TB8	=	0x009b
                           00009C   178 _REN	=	0x009c
                           00009D   179 _SM2	=	0x009d
                           00009E   180 _SM1	=	0x009e
                           00009F   181 _SM0	=	0x009f
                           0000A0   182 _P2_0	=	0x00a0
                           0000A1   183 _P2_1	=	0x00a1
                           0000A2   184 _P2_2	=	0x00a2
                           0000A3   185 _P2_3	=	0x00a3
                           0000A4   186 _P2_4	=	0x00a4
                           0000A5   187 _P2_5	=	0x00a5
                           0000A6   188 _P2_6	=	0x00a6
                           0000A7   189 _P2_7	=	0x00a7
                           0000A8   190 _EX0	=	0x00a8
                           0000A9   191 _ET0	=	0x00a9
                           0000AA   192 _EX1	=	0x00aa
                           0000AB   193 _ET1	=	0x00ab
                           0000AC   194 _ES	=	0x00ac
                           0000AF   195 _EA	=	0x00af
                           0000B0   196 _P3_0	=	0x00b0
                           0000B1   197 _P3_1	=	0x00b1
                           0000B2   198 _P3_2	=	0x00b2
                           0000B3   199 _P3_3	=	0x00b3
                           0000B4   200 _P3_4	=	0x00b4
                           0000B5   201 _P3_5	=	0x00b5
                           0000B6   202 _P3_6	=	0x00b6
                           0000B7   203 _P3_7	=	0x00b7
                           0000B0   204 _RXD	=	0x00b0
                           0000B1   205 _TXD	=	0x00b1
                           0000B2   206 _INT0	=	0x00b2
                           0000B3   207 _INT1	=	0x00b3
                           0000B4   208 _T0	=	0x00b4
                           0000B5   209 _T1	=	0x00b5
                           0000B6   210 _WR	=	0x00b6
                           0000B7   211 _RD	=	0x00b7
                           0000B8   212 _PX0	=	0x00b8
                           0000B9   213 _PT0	=	0x00b9
                           0000BA   214 _PX1	=	0x00ba
                           0000BB   215 _PT1	=	0x00bb
                           0000BC   216 _PS	=	0x00bc
                           0000D0   217 _P	=	0x00d0
                           0000D1   218 _F1	=	0x00d1
                           0000D2   219 _OV	=	0x00d2
                           0000D3   220 _RS0	=	0x00d3
                           0000D4   221 _RS1	=	0x00d4
                           0000D5   222 _F0	=	0x00d5
                           0000D6   223 _AC	=	0x00d6
                           0000D7   224 _CY	=	0x00d7
                                    225 ;--------------------------------------------------------
                                    226 ; overlayable register banks
                                    227 ;--------------------------------------------------------
                                    228 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        229 	.ds 8
                                    230 ;--------------------------------------------------------
                                    231 ; internal ram data
                                    232 ;--------------------------------------------------------
                                    233 	.area DSEG    (DATA)
      000009                        234 _numTable::
      000009                        235 	.ds 10
      000013                        236 _lcdVal::
      000013                        237 	.ds 4
      000017                        238 _showLcd_PARM_2:
      000017                        239 	.ds 1
                                    240 ;--------------------------------------------------------
                                    241 ; overlayable items in internal ram 
                                    242 ;--------------------------------------------------------
                                    243 	.area	OSEG    (OVR,DATA)
                                    244 	.area	OSEG    (OVR,DATA)
      00001D                        245 _setLcd_PARM_2:
      00001D                        246 	.ds 1
                                    247 ;--------------------------------------------------------
                                    248 ; indirectly addressable internal ram data
                                    249 ;--------------------------------------------------------
                                    250 	.area ISEG    (DATA)
                                    251 ;--------------------------------------------------------
                                    252 ; absolute internal ram data
                                    253 ;--------------------------------------------------------
                                    254 	.area IABS    (ABS,DATA)
                                    255 	.area IABS    (ABS,DATA)
                                    256 ;--------------------------------------------------------
                                    257 ; bit data
                                    258 ;--------------------------------------------------------
                                    259 	.area BSEG    (BIT)
                                    260 ;--------------------------------------------------------
                                    261 ; paged external ram data
                                    262 ;--------------------------------------------------------
                                    263 	.area PSEG    (PAG,XDATA)
                                    264 ;--------------------------------------------------------
                                    265 ; external ram data
                                    266 ;--------------------------------------------------------
                                    267 	.area XSEG    (XDATA)
                                    268 ;--------------------------------------------------------
                                    269 ; absolute external ram data
                                    270 ;--------------------------------------------------------
                                    271 	.area XABS    (ABS,XDATA)
                                    272 ;--------------------------------------------------------
                                    273 ; external initialized ram data
                                    274 ;--------------------------------------------------------
                                    275 	.area XISEG   (XDATA)
                                    276 	.area HOME    (CODE)
                                    277 	.area GSINIT0 (CODE)
                                    278 	.area GSINIT1 (CODE)
                                    279 	.area GSINIT2 (CODE)
                                    280 	.area GSINIT3 (CODE)
                                    281 	.area GSINIT4 (CODE)
                                    282 	.area GSINIT5 (CODE)
                                    283 	.area GSINIT  (CODE)
                                    284 	.area GSFINAL (CODE)
                                    285 	.area CSEG    (CODE)
                                    286 ;--------------------------------------------------------
                                    287 ; global & static initialisations
                                    288 ;--------------------------------------------------------
                                    289 	.area HOME    (CODE)
                                    290 	.area GSINIT  (CODE)
                                    291 	.area GSFINAL (CODE)
                                    292 	.area GSINIT  (CODE)
                                    293 ;	a_lcd.c:3: unsigned char numTable[] = { 0xC0, 0xF9, 0xA4, 0xB0, 0x99,   // 0, 1, 2, 3, 4
      000062 75 09 C0         [24]  294 	mov	_numTable,#0xc0
      000065 75 0A F9         [24]  295 	mov	(_numTable + 0x0001),#0xf9
      000068 75 0B A4         [24]  296 	mov	(_numTable + 0x0002),#0xa4
      00006B 75 0C B0         [24]  297 	mov	(_numTable + 0x0003),#0xb0
      00006E 75 0D 99         [24]  298 	mov	(_numTable + 0x0004),#0x99
      000071 75 0E 92         [24]  299 	mov	(_numTable + 0x0005),#0x92
      000074 75 0F 82         [24]  300 	mov	(_numTable + 0x0006),#0x82
      000077 75 10 F8         [24]  301 	mov	(_numTable + 0x0007),#0xf8
      00007A 75 11 80         [24]  302 	mov	(_numTable + 0x0008),#0x80
      00007D 75 12 90         [24]  303 	mov	(_numTable + 0x0009),#0x90
                                    304 ;	a_lcd.c:17: unsigned char lcdVal[4] = {0};
      000080 75 13 00         [24]  305 	mov	_lcdVal,#0x00
                                    306 ;--------------------------------------------------------
                                    307 ; Home
                                    308 ;--------------------------------------------------------
                                    309 	.area HOME    (CODE)
                                    310 	.area HOME    (CODE)
                                    311 ;--------------------------------------------------------
                                    312 ; code
                                    313 ;--------------------------------------------------------
                                    314 	.area CSEG    (CODE)
                                    315 ;------------------------------------------------------------
                                    316 ;Allocation info for local variables in function 'lcdDelay'
                                    317 ;------------------------------------------------------------
                                    318 ;i                         Allocated to registers 
                                    319 ;j                         Allocated to registers r6 
                                    320 ;------------------------------------------------------------
                                    321 ;	a_lcd.c:8: void lcdDelay(unsigned char i){
                                    322 ;	-----------------------------------------
                                    323 ;	 function lcdDelay
                                    324 ;	-----------------------------------------
      0000D7                        325 _lcdDelay:
                           000007   326 	ar7 = 0x07
                           000006   327 	ar6 = 0x06
                           000005   328 	ar5 = 0x05
                           000004   329 	ar4 = 0x04
                           000003   330 	ar3 = 0x03
                           000002   331 	ar2 = 0x02
                           000001   332 	ar1 = 0x01
                           000000   333 	ar0 = 0x00
      0000D7 AF 82            [24]  334 	mov	r7,dpl
      0000D9                        335 00106$:
                                    336 ;	a_lcd.c:10: for (; i > 0; i--){
      0000D9 EF               [12]  337 	mov	a,r7
      0000DA 60 0B            [24]  338 	jz	00108$
                                    339 ;	a_lcd.c:11: for (j = 125; j > 0; j--){
      0000DC 7E 7D            [12]  340 	mov	r6,#0x7d
      0000DE                        341 00104$:
      0000DE EE               [12]  342 	mov	a,r6
      0000DF 14               [12]  343 	dec	a
      0000E0 FD               [12]  344 	mov	r5,a
      0000E1 FE               [12]  345 	mov	r6,a
      0000E2 70 FA            [24]  346 	jnz	00104$
                                    347 ;	a_lcd.c:10: for (; i > 0; i--){
      0000E4 1F               [12]  348 	dec	r7
      0000E5 80 F2            [24]  349 	sjmp	00106$
      0000E7                        350 00108$:
                                    351 ;	a_lcd.c:15: }
      0000E7 22               [24]  352 	ret
                                    353 ;------------------------------------------------------------
                                    354 ;Allocation info for local variables in function 'showLcd2'
                                    355 ;------------------------------------------------------------
                                    356 ;	a_lcd.c:19: void showLcd2(){
                                    357 ;	-----------------------------------------
                                    358 ;	 function showLcd2
                                    359 ;	-----------------------------------------
      0000E8                        360 _showLcd2:
                                    361 ;	a_lcd.c:20: P0 = numTable[lcdVal[0]];
      0000E8 E5 13            [12]  362 	mov	a,_lcdVal
      0000EA 24 09            [12]  363 	add	a,#_numTable
      0000EC F9               [12]  364 	mov	r1,a
      0000ED 87 80            [24]  365 	mov	_P0,@r1
                                    366 ;	a_lcd.c:21: P2_0 = 0;
                                    367 ;	assignBit
      0000EF C2 A0            [12]  368 	clr	_P2_0
                                    369 ;	a_lcd.c:22: lcdDelay(5);
      0000F1 75 82 05         [24]  370 	mov	dpl,#0x05
      0000F4 12 00 D7         [24]  371 	lcall	_lcdDelay
                                    372 ;	a_lcd.c:23: P2_0 = 1;
                                    373 ;	assignBit
      0000F7 D2 A0            [12]  374 	setb	_P2_0
                                    375 ;	a_lcd.c:24: P0 = numTable[lcdVal[1]];
      0000F9 E5 14            [12]  376 	mov	a,(_lcdVal + 0x0001)
      0000FB 24 09            [12]  377 	add	a,#_numTable
      0000FD F9               [12]  378 	mov	r1,a
      0000FE 87 80            [24]  379 	mov	_P0,@r1
                                    380 ;	a_lcd.c:25: P2_1 = 0;
                                    381 ;	assignBit
      000100 C2 A1            [12]  382 	clr	_P2_1
                                    383 ;	a_lcd.c:26: lcdDelay(5);
      000102 75 82 05         [24]  384 	mov	dpl,#0x05
      000105 12 00 D7         [24]  385 	lcall	_lcdDelay
                                    386 ;	a_lcd.c:27: P2_1 = 1;
                                    387 ;	assignBit
      000108 D2 A1            [12]  388 	setb	_P2_1
                                    389 ;	a_lcd.c:28: P0 = numTable[lcdVal[2]];
      00010A E5 15            [12]  390 	mov	a,(_lcdVal + 0x0002)
      00010C 24 09            [12]  391 	add	a,#_numTable
      00010E F9               [12]  392 	mov	r1,a
      00010F 87 80            [24]  393 	mov	_P0,@r1
                                    394 ;	a_lcd.c:29: P2_2 = 0;
                                    395 ;	assignBit
      000111 C2 A2            [12]  396 	clr	_P2_2
                                    397 ;	a_lcd.c:30: lcdDelay(5);
      000113 75 82 05         [24]  398 	mov	dpl,#0x05
      000116 12 00 D7         [24]  399 	lcall	_lcdDelay
                                    400 ;	a_lcd.c:31: P2_2 = 1;
                                    401 ;	assignBit
      000119 D2 A2            [12]  402 	setb	_P2_2
                                    403 ;	a_lcd.c:32: P0 = numTable[lcdVal[3]];
      00011B E5 16            [12]  404 	mov	a,(_lcdVal + 0x0003)
      00011D 24 09            [12]  405 	add	a,#_numTable
      00011F F9               [12]  406 	mov	r1,a
      000120 87 80            [24]  407 	mov	_P0,@r1
                                    408 ;	a_lcd.c:33: P2_3 = 0;
                                    409 ;	assignBit
      000122 C2 A3            [12]  410 	clr	_P2_3
                                    411 ;	a_lcd.c:34: lcdDelay(5);
      000124 75 82 05         [24]  412 	mov	dpl,#0x05
      000127 12 00 D7         [24]  413 	lcall	_lcdDelay
                                    414 ;	a_lcd.c:35: P2_3 = 1;
                                    415 ;	assignBit
      00012A D2 A3            [12]  416 	setb	_P2_3
                                    417 ;	a_lcd.c:36: }
      00012C 22               [24]  418 	ret
                                    419 ;------------------------------------------------------------
                                    420 ;Allocation info for local variables in function 'showLcd3'
                                    421 ;------------------------------------------------------------
                                    422 ;pos                       Allocated to registers r7 
                                    423 ;------------------------------------------------------------
                                    424 ;	a_lcd.c:38: void showLcd3(unsigned char pos){
                                    425 ;	-----------------------------------------
                                    426 ;	 function showLcd3
                                    427 ;	-----------------------------------------
      00012D                        428 _showLcd3:
                                    429 ;	a_lcd.c:39: P0 = numTable[lcdVal[pos]];
      00012D E5 82            [12]  430 	mov	a,dpl
      00012F FF               [12]  431 	mov	r7,a
      000130 24 13            [12]  432 	add	a,#_lcdVal
      000132 F9               [12]  433 	mov	r1,a
      000133 E7               [12]  434 	mov	a,@r1
      000134 FE               [12]  435 	mov	r6,a
      000135 24 09            [12]  436 	add	a,#_numTable
      000137 F9               [12]  437 	mov	r1,a
      000138 87 80            [24]  438 	mov	_P0,@r1
                                    439 ;	a_lcd.c:40: switch (pos){
      00013A EF               [12]  440 	mov	a,r7
      00013B 24 FC            [12]  441 	add	a,#0xff - 0x03
      00013D 40 39            [24]  442 	jc	00105$
      00013F EF               [12]  443 	mov	a,r7
      000140 2F               [12]  444 	add	a,r7
                                    445 ;	a_lcd.c:41: case 0:
      000141 90 01 45         [24]  446 	mov	dptr,#00114$
      000144 73               [24]  447 	jmp	@a+dptr
      000145                        448 00114$:
      000145 80 06            [24]  449 	sjmp	00101$
      000147 80 0F            [24]  450 	sjmp	00102$
      000149 80 18            [24]  451 	sjmp	00103$
      00014B 80 21            [24]  452 	sjmp	00104$
      00014D                        453 00101$:
                                    454 ;	a_lcd.c:42: P2_0 = 0;
                                    455 ;	assignBit
      00014D C2 A0            [12]  456 	clr	_P2_0
                                    457 ;	a_lcd.c:43: lcdDelay(5);
      00014F 75 82 05         [24]  458 	mov	dpl,#0x05
      000152 12 00 D7         [24]  459 	lcall	_lcdDelay
                                    460 ;	a_lcd.c:44: P2_0 = 1;
                                    461 ;	assignBit
      000155 D2 A0            [12]  462 	setb	_P2_0
                                    463 ;	a_lcd.c:45: break;
                                    464 ;	a_lcd.c:46: case 1:
      000157 22               [24]  465 	ret
      000158                        466 00102$:
                                    467 ;	a_lcd.c:47: P2_1 = 0;
                                    468 ;	assignBit
      000158 C2 A1            [12]  469 	clr	_P2_1
                                    470 ;	a_lcd.c:48: lcdDelay(5);
      00015A 75 82 05         [24]  471 	mov	dpl,#0x05
      00015D 12 00 D7         [24]  472 	lcall	_lcdDelay
                                    473 ;	a_lcd.c:49: P2_1 = 1;
                                    474 ;	assignBit
      000160 D2 A1            [12]  475 	setb	_P2_1
                                    476 ;	a_lcd.c:50: break;
                                    477 ;	a_lcd.c:51: case 2:
      000162 22               [24]  478 	ret
      000163                        479 00103$:
                                    480 ;	a_lcd.c:52: P2_2 = 0;
                                    481 ;	assignBit
      000163 C2 A2            [12]  482 	clr	_P2_2
                                    483 ;	a_lcd.c:53: lcdDelay(5);
      000165 75 82 05         [24]  484 	mov	dpl,#0x05
      000168 12 00 D7         [24]  485 	lcall	_lcdDelay
                                    486 ;	a_lcd.c:54: P2_2 = 1;
                                    487 ;	assignBit
      00016B D2 A2            [12]  488 	setb	_P2_2
                                    489 ;	a_lcd.c:55: break;
                                    490 ;	a_lcd.c:56: case 3:
      00016D 22               [24]  491 	ret
      00016E                        492 00104$:
                                    493 ;	a_lcd.c:57: P2_3 = 0;
                                    494 ;	assignBit
      00016E C2 A3            [12]  495 	clr	_P2_3
                                    496 ;	a_lcd.c:58: lcdDelay(5);
      000170 75 82 05         [24]  497 	mov	dpl,#0x05
      000173 12 00 D7         [24]  498 	lcall	_lcdDelay
                                    499 ;	a_lcd.c:59: P2_3 = 1;
                                    500 ;	assignBit
      000176 D2 A3            [12]  501 	setb	_P2_3
                                    502 ;	a_lcd.c:60: break;
                                    503 ;	a_lcd.c:61: default:
                                    504 ;	a_lcd.c:62: return;
                                    505 ;	a_lcd.c:64: }
      000178                        506 00105$:
                                    507 ;	a_lcd.c:65: }
      000178 22               [24]  508 	ret
                                    509 ;------------------------------------------------------------
                                    510 ;Allocation info for local variables in function 'showLcd'
                                    511 ;------------------------------------------------------------
                                    512 ;val                       Allocated with name '_showLcd_PARM_2'
                                    513 ;pos                       Allocated to registers r7 
                                    514 ;------------------------------------------------------------
                                    515 ;	a_lcd.c:68: void showLcd(unsigned char pos, unsigned char val){
                                    516 ;	-----------------------------------------
                                    517 ;	 function showLcd
                                    518 ;	-----------------------------------------
      000179                        519 _showLcd:
      000179 AF 82            [24]  520 	mov	r7,dpl
                                    521 ;	a_lcd.c:69: P0 = numTable[val];
      00017B E5 17            [12]  522 	mov	a,_showLcd_PARM_2
      00017D 24 09            [12]  523 	add	a,#_numTable
      00017F F9               [12]  524 	mov	r1,a
      000180 87 80            [24]  525 	mov	_P0,@r1
                                    526 ;	a_lcd.c:70: switch (pos){
      000182 EF               [12]  527 	mov	a,r7
      000183 24 FC            [12]  528 	add	a,#0xff - 0x03
      000185 40 39            [24]  529 	jc	00105$
      000187 EF               [12]  530 	mov	a,r7
      000188 2F               [12]  531 	add	a,r7
                                    532 ;	a_lcd.c:71: case 0:
      000189 90 01 8D         [24]  533 	mov	dptr,#00114$
      00018C 73               [24]  534 	jmp	@a+dptr
      00018D                        535 00114$:
      00018D 80 06            [24]  536 	sjmp	00101$
      00018F 80 0F            [24]  537 	sjmp	00102$
      000191 80 18            [24]  538 	sjmp	00103$
      000193 80 21            [24]  539 	sjmp	00104$
      000195                        540 00101$:
                                    541 ;	a_lcd.c:72: P2_0 = 0;
                                    542 ;	assignBit
      000195 C2 A0            [12]  543 	clr	_P2_0
                                    544 ;	a_lcd.c:73: lcdDelay(5);
      000197 75 82 05         [24]  545 	mov	dpl,#0x05
      00019A 12 00 D7         [24]  546 	lcall	_lcdDelay
                                    547 ;	a_lcd.c:74: P2_0 = 1;
                                    548 ;	assignBit
      00019D D2 A0            [12]  549 	setb	_P2_0
                                    550 ;	a_lcd.c:75: break;
                                    551 ;	a_lcd.c:76: case 1:
      00019F 22               [24]  552 	ret
      0001A0                        553 00102$:
                                    554 ;	a_lcd.c:77: P2_1 = 0;
                                    555 ;	assignBit
      0001A0 C2 A1            [12]  556 	clr	_P2_1
                                    557 ;	a_lcd.c:78: lcdDelay(5);
      0001A2 75 82 05         [24]  558 	mov	dpl,#0x05
      0001A5 12 00 D7         [24]  559 	lcall	_lcdDelay
                                    560 ;	a_lcd.c:79: P2_1 = 1;
                                    561 ;	assignBit
      0001A8 D2 A1            [12]  562 	setb	_P2_1
                                    563 ;	a_lcd.c:80: break;
                                    564 ;	a_lcd.c:81: case 2:
      0001AA 22               [24]  565 	ret
      0001AB                        566 00103$:
                                    567 ;	a_lcd.c:82: P2_2 = 0;
                                    568 ;	assignBit
      0001AB C2 A2            [12]  569 	clr	_P2_2
                                    570 ;	a_lcd.c:83: lcdDelay(5);
      0001AD 75 82 05         [24]  571 	mov	dpl,#0x05
      0001B0 12 00 D7         [24]  572 	lcall	_lcdDelay
                                    573 ;	a_lcd.c:84: P2_2 = 1;
                                    574 ;	assignBit
      0001B3 D2 A2            [12]  575 	setb	_P2_2
                                    576 ;	a_lcd.c:85: break;
                                    577 ;	a_lcd.c:86: case 3:
      0001B5 22               [24]  578 	ret
      0001B6                        579 00104$:
                                    580 ;	a_lcd.c:87: P2_3 = 0;
                                    581 ;	assignBit
      0001B6 C2 A3            [12]  582 	clr	_P2_3
                                    583 ;	a_lcd.c:88: lcdDelay(5);
      0001B8 75 82 05         [24]  584 	mov	dpl,#0x05
      0001BB 12 00 D7         [24]  585 	lcall	_lcdDelay
                                    586 ;	a_lcd.c:89: P2_3 = 1;
                                    587 ;	assignBit
      0001BE D2 A3            [12]  588 	setb	_P2_3
                                    589 ;	a_lcd.c:90: break;
                                    590 ;	a_lcd.c:91: default:
                                    591 ;	a_lcd.c:92: return;
                                    592 ;	a_lcd.c:94: }
      0001C0                        593 00105$:
                                    594 ;	a_lcd.c:95: }
      0001C0 22               [24]  595 	ret
                                    596 ;------------------------------------------------------------
                                    597 ;Allocation info for local variables in function 'sumLcdVal'
                                    598 ;------------------------------------------------------------
                                    599 ;answer                    Allocated to registers 
                                    600 ;------------------------------------------------------------
                                    601 ;	a_lcd.c:97: int sumLcdVal(){
                                    602 ;	-----------------------------------------
                                    603 ;	 function sumLcdVal
                                    604 ;	-----------------------------------------
      0001C1                        605 _sumLcdVal:
                                    606 ;	a_lcd.c:99: answer = lcdVal[3] + lcdVal[2]*10 + lcdVal[1]*100 + lcdVal[0]*1000;
      0001C1 AE 16            [24]  607 	mov	r6,(_lcdVal + 0x0003)
      0001C3 7F 00            [12]  608 	mov	r7,#0x00
      0001C5 85 15 1D         [24]  609 	mov	__mulint_PARM_2,(_lcdVal + 0x0002)
                                    610 ;	1-genFromRTrack replaced	mov	(__mulint_PARM_2 + 1),#0x00
      0001C8 8F 1E            [24]  611 	mov	(__mulint_PARM_2 + 1),r7
      0001CA 90 00 0A         [24]  612 	mov	dptr,#0x000a
      0001CD C0 07            [24]  613 	push	ar7
      0001CF C0 06            [24]  614 	push	ar6
      0001D1 12 04 67         [24]  615 	lcall	__mulint
      0001D4 AC 82            [24]  616 	mov	r4,dpl
      0001D6 AD 83            [24]  617 	mov	r5,dph
      0001D8 D0 06            [24]  618 	pop	ar6
      0001DA D0 07            [24]  619 	pop	ar7
      0001DC EC               [12]  620 	mov	a,r4
      0001DD 2E               [12]  621 	add	a,r6
      0001DE FE               [12]  622 	mov	r6,a
      0001DF ED               [12]  623 	mov	a,r5
      0001E0 3F               [12]  624 	addc	a,r7
      0001E1 FF               [12]  625 	mov	r7,a
      0001E2 85 14 1D         [24]  626 	mov	__mulint_PARM_2,(_lcdVal + 0x0001)
      0001E5 75 1E 00         [24]  627 	mov	(__mulint_PARM_2 + 1),#0x00
      0001E8 90 00 64         [24]  628 	mov	dptr,#0x0064
      0001EB C0 07            [24]  629 	push	ar7
      0001ED C0 06            [24]  630 	push	ar6
      0001EF 12 04 67         [24]  631 	lcall	__mulint
      0001F2 AC 82            [24]  632 	mov	r4,dpl
      0001F4 AD 83            [24]  633 	mov	r5,dph
      0001F6 D0 06            [24]  634 	pop	ar6
      0001F8 D0 07            [24]  635 	pop	ar7
      0001FA EC               [12]  636 	mov	a,r4
      0001FB 2E               [12]  637 	add	a,r6
      0001FC FE               [12]  638 	mov	r6,a
      0001FD ED               [12]  639 	mov	a,r5
      0001FE 3F               [12]  640 	addc	a,r7
      0001FF FF               [12]  641 	mov	r7,a
      000200 85 13 1D         [24]  642 	mov	__mulint_PARM_2,_lcdVal
      000203 75 1E 00         [24]  643 	mov	(__mulint_PARM_2 + 1),#0x00
      000206 90 03 E8         [24]  644 	mov	dptr,#0x03e8
      000209 C0 07            [24]  645 	push	ar7
      00020B C0 06            [24]  646 	push	ar6
      00020D 12 04 67         [24]  647 	lcall	__mulint
      000210 AC 82            [24]  648 	mov	r4,dpl
      000212 AD 83            [24]  649 	mov	r5,dph
      000214 D0 06            [24]  650 	pop	ar6
      000216 D0 07            [24]  651 	pop	ar7
      000218 EC               [12]  652 	mov	a,r4
      000219 2E               [12]  653 	add	a,r6
      00021A F5 82            [12]  654 	mov	dpl,a
      00021C ED               [12]  655 	mov	a,r5
      00021D 3F               [12]  656 	addc	a,r7
      00021E F5 83            [12]  657 	mov	dph,a
                                    658 ;	a_lcd.c:100: return answer;
                                    659 ;	a_lcd.c:101: }
      000220 22               [24]  660 	ret
                                    661 ;------------------------------------------------------------
                                    662 ;Allocation info for local variables in function 'addLcd'
                                    663 ;------------------------------------------------------------
                                    664 ;ix                        Allocated to registers r7 
                                    665 ;i                         Allocated to registers r5 r6 
                                    666 ;------------------------------------------------------------
                                    667 ;	a_lcd.c:103: void addLcd(unsigned char ix){
                                    668 ;	-----------------------------------------
                                    669 ;	 function addLcd
                                    670 ;	-----------------------------------------
      000221                        671 _addLcd:
                                    672 ;	a_lcd.c:104: lcdVal[ix]++;
      000221 E5 82            [12]  673 	mov	a,dpl
      000223 FF               [12]  674 	mov	r7,a
      000224 24 13            [12]  675 	add	a,#_lcdVal
      000226 F9               [12]  676 	mov	r1,a
      000227 87 06            [24]  677 	mov	ar6,@r1
      000229 0E               [12]  678 	inc	r6
      00022A A7 06            [24]  679 	mov	@r1,ar6
                                    680 ;	a_lcd.c:105: if (lcdVal[ix]>9){
      00022C EE               [12]  681 	mov	a,r6
      00022D 24 F6            [12]  682 	add	a,#0xff - 0x09
      00022F 50 27            [24]  683 	jnc	00109$
                                    684 ;	a_lcd.c:106: lcdVal[ix] = 0;
      000231 77 00            [12]  685 	mov	@r1,#0x00
                                    686 ;	a_lcd.c:107: if (ix == 0){
      000233 EF               [12]  687 	mov	a,r7
                                    688 ;	a_lcd.c:108: for (int i = 0; i < 4; i++){
      000234 70 1B            [24]  689 	jnz	00103$
      000236 FD               [12]  690 	mov	r5,a
      000237 FE               [12]  691 	mov	r6,a
      000238                        692 00107$:
      000238 C3               [12]  693 	clr	c
      000239 ED               [12]  694 	mov	a,r5
      00023A 94 04            [12]  695 	subb	a,#0x04
      00023C EE               [12]  696 	mov	a,r6
      00023D 64 80            [12]  697 	xrl	a,#0x80
      00023F 94 80            [12]  698 	subb	a,#0x80
      000241 50 0D            [24]  699 	jnc	00101$
                                    700 ;	a_lcd.c:109: lcdVal[i] = 0;
      000243 ED               [12]  701 	mov	a,r5
      000244 24 13            [12]  702 	add	a,#_lcdVal
      000246 F8               [12]  703 	mov	r0,a
      000247 76 00            [12]  704 	mov	@r0,#0x00
                                    705 ;	a_lcd.c:108: for (int i = 0; i < 4; i++){
      000249 0D               [12]  706 	inc	r5
      00024A BD 00 EB         [24]  707 	cjne	r5,#0x00,00107$
      00024D 0E               [12]  708 	inc	r6
      00024E 80 E8            [24]  709 	sjmp	00107$
      000250                        710 00101$:
                                    711 ;	a_lcd.c:111: return;
      000250 22               [24]  712 	ret
      000251                        713 00103$:
                                    714 ;	a_lcd.c:113: addLcd(ix-1);
      000251 EF               [12]  715 	mov	a,r7
      000252 14               [12]  716 	dec	a
      000253 F5 82            [12]  717 	mov	dpl,a
                                    718 ;	a_lcd.c:115: }
      000255 02 02 21         [24]  719 	ljmp	_addLcd
      000258                        720 00109$:
      000258 22               [24]  721 	ret
                                    722 ;------------------------------------------------------------
                                    723 ;Allocation info for local variables in function 'minusLcd'
                                    724 ;------------------------------------------------------------
                                    725 ;ix                        Allocated to registers r7 
                                    726 ;i                         Allocated to registers r5 r6 
                                    727 ;------------------------------------------------------------
                                    728 ;	a_lcd.c:117: void minusLcd(unsigned char ix){
                                    729 ;	-----------------------------------------
                                    730 ;	 function minusLcd
                                    731 ;	-----------------------------------------
      000259                        732 _minusLcd:
                                    733 ;	a_lcd.c:118: if (lcdVal[ix]!=0){
      000259 E5 82            [12]  734 	mov	a,dpl
      00025B FF               [12]  735 	mov	r7,a
      00025C 24 13            [12]  736 	add	a,#_lcdVal
      00025E F9               [12]  737 	mov	r1,a
      00025F E7               [12]  738 	mov	a,@r1
      000260 FE               [12]  739 	mov	r6,a
      000261 60 04            [24]  740 	jz	00105$
                                    741 ;	a_lcd.c:119: lcdVal[ix]--;
      000263 EE               [12]  742 	mov	a,r6
      000264 14               [12]  743 	dec	a
      000265 F7               [12]  744 	mov	@r1,a
      000266 22               [24]  745 	ret
      000267                        746 00105$:
                                    747 ;	a_lcd.c:121: lcdVal[ix] = 9;
      000267 77 09            [12]  748 	mov	@r1,#0x09
                                    749 ;	a_lcd.c:122: if (ix == 3){
      000269 BF 03 1D         [24]  750 	cjne	r7,#0x03,00103$
                                    751 ;	a_lcd.c:123: for (int i = 0; i < 4; i++){
      00026C 7D 00            [12]  752 	mov	r5,#0x00
      00026E 7E 00            [12]  753 	mov	r6,#0x00
      000270                        754 00108$:
      000270 C3               [12]  755 	clr	c
      000271 ED               [12]  756 	mov	a,r5
      000272 94 04            [12]  757 	subb	a,#0x04
      000274 EE               [12]  758 	mov	a,r6
      000275 64 80            [12]  759 	xrl	a,#0x80
      000277 94 80            [12]  760 	subb	a,#0x80
      000279 50 0D            [24]  761 	jnc	00101$
                                    762 ;	a_lcd.c:124: lcdVal[i] = 9;
      00027B ED               [12]  763 	mov	a,r5
      00027C 24 13            [12]  764 	add	a,#_lcdVal
      00027E F8               [12]  765 	mov	r0,a
      00027F 76 09            [12]  766 	mov	@r0,#0x09
                                    767 ;	a_lcd.c:123: for (int i = 0; i < 4; i++){
      000281 0D               [12]  768 	inc	r5
      000282 BD 00 EB         [24]  769 	cjne	r5,#0x00,00108$
      000285 0E               [12]  770 	inc	r6
      000286 80 E8            [24]  771 	sjmp	00108$
      000288                        772 00101$:
                                    773 ;	a_lcd.c:126: return;
      000288 22               [24]  774 	ret
      000289                        775 00103$:
                                    776 ;	a_lcd.c:128: minusLcd(ix+1);
      000289 EF               [12]  777 	mov	a,r7
      00028A 04               [12]  778 	inc	a
      00028B F5 82            [12]  779 	mov	dpl,a
                                    780 ;	a_lcd.c:130: }
      00028D 02 02 59         [24]  781 	ljmp	_minusLcd
                                    782 ;------------------------------------------------------------
                                    783 ;Allocation info for local variables in function 'setLcd'
                                    784 ;------------------------------------------------------------
                                    785 ;val                       Allocated with name '_setLcd_PARM_2'
                                    786 ;pos                       Allocated to registers r7 
                                    787 ;------------------------------------------------------------
                                    788 ;	a_lcd.c:132: void setLcd(unsigned char pos, unsigned char val){
                                    789 ;	-----------------------------------------
                                    790 ;	 function setLcd
                                    791 ;	-----------------------------------------
      000290                        792 _setLcd:
                                    793 ;	a_lcd.c:133: lcdVal[pos] = val;
      000290 E5 82            [12]  794 	mov	a,dpl
      000292 24 13            [12]  795 	add	a,#_lcdVal
      000294 F8               [12]  796 	mov	r0,a
      000295 A6 1D            [24]  797 	mov	@r0,_setLcd_PARM_2
                                    798 ;	a_lcd.c:134: }
      000297 22               [24]  799 	ret
                                    800 	.area CSEG    (CODE)
                                    801 	.area CONST   (CODE)
                                    802 	.area XINIT   (CODE)
                                    803 	.area CABS    (ABS,CODE)
