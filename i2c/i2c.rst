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
                                     11 	.globl _printMessage
                                     12 	.globl _lcd_Init
                                     13 	.globl _lcd_writeString
                                     14 	.globl _lcd_writeChar
                                     15 	.globl _lcd_send_bits
                                     16 	.globl _i2c_read_byte
                                     17 	.globl _i2c_write_byte
                                     18 	.globl _i2c_read
                                     19 	.globl _i2c_write
                                     20 	.globl _i2c_stop
                                     21 	.globl _i2c_start
                                     22 	.globl _delayMs
                                     23 	.globl _i2c_delay
                                     24 	.globl _getMode
                                     25 	.globl _CY
                                     26 	.globl _AC
                                     27 	.globl _F0
                                     28 	.globl _RS1
                                     29 	.globl _RS0
                                     30 	.globl _OV
                                     31 	.globl _F1
                                     32 	.globl _P
                                     33 	.globl _PS
                                     34 	.globl _PT1
                                     35 	.globl _PX1
                                     36 	.globl _PT0
                                     37 	.globl _PX0
                                     38 	.globl _RD
                                     39 	.globl _WR
                                     40 	.globl _T1
                                     41 	.globl _T0
                                     42 	.globl _INT1
                                     43 	.globl _INT0
                                     44 	.globl _TXD
                                     45 	.globl _RXD
                                     46 	.globl _P3_7
                                     47 	.globl _P3_6
                                     48 	.globl _P3_5
                                     49 	.globl _P3_4
                                     50 	.globl _P3_3
                                     51 	.globl _P3_2
                                     52 	.globl _P3_1
                                     53 	.globl _P3_0
                                     54 	.globl _EA
                                     55 	.globl _ES
                                     56 	.globl _ET1
                                     57 	.globl _EX1
                                     58 	.globl _ET0
                                     59 	.globl _EX0
                                     60 	.globl _P2_7
                                     61 	.globl _P2_6
                                     62 	.globl _P2_5
                                     63 	.globl _P2_4
                                     64 	.globl _P2_3
                                     65 	.globl _P2_2
                                     66 	.globl _P2_1
                                     67 	.globl _P2_0
                                     68 	.globl _SM0
                                     69 	.globl _SM1
                                     70 	.globl _SM2
                                     71 	.globl _REN
                                     72 	.globl _TB8
                                     73 	.globl _RB8
                                     74 	.globl _TI
                                     75 	.globl _RI
                                     76 	.globl _P1_7
                                     77 	.globl _P1_6
                                     78 	.globl _P1_5
                                     79 	.globl _P1_4
                                     80 	.globl _P1_3
                                     81 	.globl _P1_2
                                     82 	.globl _P1_1
                                     83 	.globl _P1_0
                                     84 	.globl _TF1
                                     85 	.globl _TR1
                                     86 	.globl _TF0
                                     87 	.globl _TR0
                                     88 	.globl _IE1
                                     89 	.globl _IT1
                                     90 	.globl _IE0
                                     91 	.globl _IT0
                                     92 	.globl _P0_7
                                     93 	.globl _P0_6
                                     94 	.globl _P0_5
                                     95 	.globl _P0_4
                                     96 	.globl _P0_3
                                     97 	.globl _P0_2
                                     98 	.globl _P0_1
                                     99 	.globl _P0_0
                                    100 	.globl _B
                                    101 	.globl _ACC
                                    102 	.globl _PSW
                                    103 	.globl _IP
                                    104 	.globl _P3
                                    105 	.globl _IE
                                    106 	.globl _P2
                                    107 	.globl _SBUF
                                    108 	.globl _SCON
                                    109 	.globl _P1
                                    110 	.globl _TH1
                                    111 	.globl _TH0
                                    112 	.globl _TL1
                                    113 	.globl _TL0
                                    114 	.globl _TMOD
                                    115 	.globl _TCON
                                    116 	.globl _PCON
                                    117 	.globl _DPH
                                    118 	.globl _DPL
                                    119 	.globl _SP
                                    120 	.globl _P0
                                    121 	.globl _lcd_writeChar_PARM_2
                                    122 	.globl _i2c_write_byte_PARM_2
                                    123 ;--------------------------------------------------------
                                    124 ; special function registers
                                    125 ;--------------------------------------------------------
                                    126 	.area RSEG    (ABS,DATA)
      000000                        127 	.org 0x0000
                           000080   128 _P0	=	0x0080
                           000081   129 _SP	=	0x0081
                           000082   130 _DPL	=	0x0082
                           000083   131 _DPH	=	0x0083
                           000087   132 _PCON	=	0x0087
                           000088   133 _TCON	=	0x0088
                           000089   134 _TMOD	=	0x0089
                           00008A   135 _TL0	=	0x008a
                           00008B   136 _TL1	=	0x008b
                           00008C   137 _TH0	=	0x008c
                           00008D   138 _TH1	=	0x008d
                           000090   139 _P1	=	0x0090
                           000098   140 _SCON	=	0x0098
                           000099   141 _SBUF	=	0x0099
                           0000A0   142 _P2	=	0x00a0
                           0000A8   143 _IE	=	0x00a8
                           0000B0   144 _P3	=	0x00b0
                           0000B8   145 _IP	=	0x00b8
                           0000D0   146 _PSW	=	0x00d0
                           0000E0   147 _ACC	=	0x00e0
                           0000F0   148 _B	=	0x00f0
                                    149 ;--------------------------------------------------------
                                    150 ; special function bits
                                    151 ;--------------------------------------------------------
                                    152 	.area RSEG    (ABS,DATA)
      000000                        153 	.org 0x0000
                           000080   154 _P0_0	=	0x0080
                           000081   155 _P0_1	=	0x0081
                           000082   156 _P0_2	=	0x0082
                           000083   157 _P0_3	=	0x0083
                           000084   158 _P0_4	=	0x0084
                           000085   159 _P0_5	=	0x0085
                           000086   160 _P0_6	=	0x0086
                           000087   161 _P0_7	=	0x0087
                           000088   162 _IT0	=	0x0088
                           000089   163 _IE0	=	0x0089
                           00008A   164 _IT1	=	0x008a
                           00008B   165 _IE1	=	0x008b
                           00008C   166 _TR0	=	0x008c
                           00008D   167 _TF0	=	0x008d
                           00008E   168 _TR1	=	0x008e
                           00008F   169 _TF1	=	0x008f
                           000090   170 _P1_0	=	0x0090
                           000091   171 _P1_1	=	0x0091
                           000092   172 _P1_2	=	0x0092
                           000093   173 _P1_3	=	0x0093
                           000094   174 _P1_4	=	0x0094
                           000095   175 _P1_5	=	0x0095
                           000096   176 _P1_6	=	0x0096
                           000097   177 _P1_7	=	0x0097
                           000098   178 _RI	=	0x0098
                           000099   179 _TI	=	0x0099
                           00009A   180 _RB8	=	0x009a
                           00009B   181 _TB8	=	0x009b
                           00009C   182 _REN	=	0x009c
                           00009D   183 _SM2	=	0x009d
                           00009E   184 _SM1	=	0x009e
                           00009F   185 _SM0	=	0x009f
                           0000A0   186 _P2_0	=	0x00a0
                           0000A1   187 _P2_1	=	0x00a1
                           0000A2   188 _P2_2	=	0x00a2
                           0000A3   189 _P2_3	=	0x00a3
                           0000A4   190 _P2_4	=	0x00a4
                           0000A5   191 _P2_5	=	0x00a5
                           0000A6   192 _P2_6	=	0x00a6
                           0000A7   193 _P2_7	=	0x00a7
                           0000A8   194 _EX0	=	0x00a8
                           0000A9   195 _ET0	=	0x00a9
                           0000AA   196 _EX1	=	0x00aa
                           0000AB   197 _ET1	=	0x00ab
                           0000AC   198 _ES	=	0x00ac
                           0000AF   199 _EA	=	0x00af
                           0000B0   200 _P3_0	=	0x00b0
                           0000B1   201 _P3_1	=	0x00b1
                           0000B2   202 _P3_2	=	0x00b2
                           0000B3   203 _P3_3	=	0x00b3
                           0000B4   204 _P3_4	=	0x00b4
                           0000B5   205 _P3_5	=	0x00b5
                           0000B6   206 _P3_6	=	0x00b6
                           0000B7   207 _P3_7	=	0x00b7
                           0000B0   208 _RXD	=	0x00b0
                           0000B1   209 _TXD	=	0x00b1
                           0000B2   210 _INT0	=	0x00b2
                           0000B3   211 _INT1	=	0x00b3
                           0000B4   212 _T0	=	0x00b4
                           0000B5   213 _T1	=	0x00b5
                           0000B6   214 _WR	=	0x00b6
                           0000B7   215 _RD	=	0x00b7
                           0000B8   216 _PX0	=	0x00b8
                           0000B9   217 _PT0	=	0x00b9
                           0000BA   218 _PX1	=	0x00ba
                           0000BB   219 _PT1	=	0x00bb
                           0000BC   220 _PS	=	0x00bc
                           0000D0   221 _P	=	0x00d0
                           0000D1   222 _F1	=	0x00d1
                           0000D2   223 _OV	=	0x00d2
                           0000D3   224 _RS0	=	0x00d3
                           0000D4   225 _RS1	=	0x00d4
                           0000D5   226 _F0	=	0x00d5
                           0000D6   227 _AC	=	0x00d6
                           0000D7   228 _CY	=	0x00d7
                                    229 ;--------------------------------------------------------
                                    230 ; overlayable register banks
                                    231 ;--------------------------------------------------------
                                    232 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        233 	.ds 8
                                    234 ;--------------------------------------------------------
                                    235 ; internal ram data
                                    236 ;--------------------------------------------------------
                                    237 	.area DSEG    (DATA)
      00001D                        238 _i2c_write_byte_PARM_2:
      00001D                        239 	.ds 1
      00001E                        240 _lcd_writeChar_PARM_2:
      00001E                        241 	.ds 1
                                    242 ;--------------------------------------------------------
                                    243 ; overlayable items in internal ram 
                                    244 ;--------------------------------------------------------
                                    245 	.area	OSEG    (OVR,DATA)
                                    246 	.area	OSEG    (OVR,DATA)
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
                                    293 ;--------------------------------------------------------
                                    294 ; Home
                                    295 ;--------------------------------------------------------
                                    296 	.area HOME    (CODE)
                                    297 	.area HOME    (CODE)
                                    298 ;--------------------------------------------------------
                                    299 ; code
                                    300 ;--------------------------------------------------------
                                    301 	.area CSEG    (CODE)
                                    302 ;------------------------------------------------------------
                                    303 ;Allocation info for local variables in function 'i2c_delay'
                                    304 ;------------------------------------------------------------
                                    305 ;cnt                       Allocated to registers 
                                    306 ;------------------------------------------------------------
                                    307 ;	i2c.c:13: void i2c_delay(unsigned cnt){
                                    308 ;	-----------------------------------------
                                    309 ;	 function i2c_delay
                                    310 ;	-----------------------------------------
      000597                        311 _i2c_delay:
                           000007   312 	ar7 = 0x07
                           000006   313 	ar6 = 0x06
                           000005   314 	ar5 = 0x05
                           000004   315 	ar4 = 0x04
                           000003   316 	ar3 = 0x03
                           000002   317 	ar2 = 0x02
                           000001   318 	ar1 = 0x01
                           000000   319 	ar0 = 0x00
      000597 AE 82            [24]  320 	mov	r6,dpl
      000599 AF 83            [24]  321 	mov	r7,dph
                                    322 ;	i2c.c:14: while(cnt--);
      00059B                        323 00101$:
      00059B 8E 04            [24]  324 	mov	ar4,r6
      00059D 8F 05            [24]  325 	mov	ar5,r7
      00059F 1E               [12]  326 	dec	r6
      0005A0 BE FF 01         [24]  327 	cjne	r6,#0xff,00111$
      0005A3 1F               [12]  328 	dec	r7
      0005A4                        329 00111$:
      0005A4 EC               [12]  330 	mov	a,r4
      0005A5 4D               [12]  331 	orl	a,r5
      0005A6 70 F3            [24]  332 	jnz	00101$
                                    333 ;	i2c.c:15: }
      0005A8 22               [24]  334 	ret
                                    335 ;------------------------------------------------------------
                                    336 ;Allocation info for local variables in function 'delayMs'
                                    337 ;------------------------------------------------------------
                                    338 ;i                         Allocated to registers 
                                    339 ;j                         Allocated to registers r5 
                                    340 ;------------------------------------------------------------
                                    341 ;	i2c.c:17: void delayMs(unsigned int i){
                                    342 ;	-----------------------------------------
                                    343 ;	 function delayMs
                                    344 ;	-----------------------------------------
      0005A9                        345 _delayMs:
      0005A9 AE 82            [24]  346 	mov	r6,dpl
      0005AB AF 83            [24]  347 	mov	r7,dph
      0005AD                        348 00107$:
                                    349 ;	i2c.c:18: for (; i> 0; i--)
      0005AD EE               [12]  350 	mov	a,r6
      0005AE 4F               [12]  351 	orl	a,r7
      0005AF 60 0F            [24]  352 	jz	00109$
                                    353 ;	i2c.c:19: for (unsigned char j = 155; j > 0; j--);
      0005B1 7D 9B            [12]  354 	mov	r5,#0x9b
      0005B3                        355 00104$:
      0005B3 ED               [12]  356 	mov	a,r5
      0005B4 60 03            [24]  357 	jz	00108$
      0005B6 1D               [12]  358 	dec	r5
      0005B7 80 FA            [24]  359 	sjmp	00104$
      0005B9                        360 00108$:
                                    361 ;	i2c.c:18: for (; i> 0; i--)
      0005B9 1E               [12]  362 	dec	r6
      0005BA BE FF 01         [24]  363 	cjne	r6,#0xff,00135$
      0005BD 1F               [12]  364 	dec	r7
      0005BE                        365 00135$:
      0005BE 80 ED            [24]  366 	sjmp	00107$
      0005C0                        367 00109$:
                                    368 ;	i2c.c:20: }
      0005C0 22               [24]  369 	ret
                                    370 ;------------------------------------------------------------
                                    371 ;Allocation info for local variables in function 'i2c_start'
                                    372 ;------------------------------------------------------------
                                    373 ;	i2c.c:22: void i2c_start(void){
                                    374 ;	-----------------------------------------
                                    375 ;	 function i2c_start
                                    376 ;	-----------------------------------------
      0005C1                        377 _i2c_start:
                                    378 ;	i2c.c:23: I2C_SDA = 1;
                                    379 ;	assignBit
      0005C1 D2 86            [12]  380 	setb	_P0_6
                                    381 ;	i2c.c:24: I2C_SCL = 1;
                                    382 ;	assignBit
      0005C3 D2 87            [12]  383 	setb	_P0_7
                                    384 ;	i2c.c:25: i2c_delay(10);
      0005C5 90 00 0A         [24]  385 	mov	dptr,#0x000a
      0005C8 12 05 97         [24]  386 	lcall	_i2c_delay
                                    387 ;	i2c.c:26: I2C_SDA = 0;
                                    388 ;	assignBit
      0005CB C2 86            [12]  389 	clr	_P0_6
                                    390 ;	i2c.c:27: i2c_delay(10);
      0005CD 90 00 0A         [24]  391 	mov	dptr,#0x000a
      0005D0 12 05 97         [24]  392 	lcall	_i2c_delay
                                    393 ;	i2c.c:28: I2C_SCL = 0;
                                    394 ;	assignBit
      0005D3 C2 87            [12]  395 	clr	_P0_7
                                    396 ;	i2c.c:29: }
      0005D5 22               [24]  397 	ret
                                    398 ;------------------------------------------------------------
                                    399 ;Allocation info for local variables in function 'i2c_stop'
                                    400 ;------------------------------------------------------------
                                    401 ;	i2c.c:31: void i2c_stop(void){
                                    402 ;	-----------------------------------------
                                    403 ;	 function i2c_stop
                                    404 ;	-----------------------------------------
      0005D6                        405 _i2c_stop:
                                    406 ;	i2c.c:32: i2c_delay(10);
      0005D6 90 00 0A         [24]  407 	mov	dptr,#0x000a
      0005D9 12 05 97         [24]  408 	lcall	_i2c_delay
                                    409 ;	i2c.c:33: I2C_SDA = 0;
                                    410 ;	assignBit
      0005DC C2 86            [12]  411 	clr	_P0_6
                                    412 ;	i2c.c:34: i2c_delay(10);
      0005DE 90 00 0A         [24]  413 	mov	dptr,#0x000a
      0005E1 12 05 97         [24]  414 	lcall	_i2c_delay
                                    415 ;	i2c.c:35: I2C_SCL = 1;
                                    416 ;	assignBit
      0005E4 D2 87            [12]  417 	setb	_P0_7
                                    418 ;	i2c.c:36: i2c_delay(10);
      0005E6 90 00 0A         [24]  419 	mov	dptr,#0x000a
      0005E9 12 05 97         [24]  420 	lcall	_i2c_delay
                                    421 ;	i2c.c:37: I2C_SDA = 1;
                                    422 ;	assignBit
      0005EC D2 86            [12]  423 	setb	_P0_6
                                    424 ;	i2c.c:38: }
      0005EE 22               [24]  425 	ret
                                    426 ;------------------------------------------------------------
                                    427 ;Allocation info for local variables in function 'i2c_write'
                                    428 ;------------------------------------------------------------
                                    429 ;val                       Allocated to registers r7 
                                    430 ;i                         Allocated to registers r6 
                                    431 ;ack                       Allocated to registers r7 
                                    432 ;------------------------------------------------------------
                                    433 ;	i2c.c:40: unsigned char i2c_write(unsigned char val){
                                    434 ;	-----------------------------------------
                                    435 ;	 function i2c_write
                                    436 ;	-----------------------------------------
      0005EF                        437 _i2c_write:
      0005EF AF 82            [24]  438 	mov	r7,dpl
                                    439 ;	i2c.c:41: unsigned char i=9, ack=0;
      0005F1 7E 09            [12]  440 	mov	r6,#0x09
                                    441 ;	i2c.c:43: while(--i){
      0005F3                        442 00101$:
      0005F3 EE               [12]  443 	mov	a,r6
      0005F4 14               [12]  444 	dec	a
      0005F5 FE               [12]  445 	mov	r6,a
      0005F6 60 35            [24]  446 	jz	00103$
                                    447 ;	i2c.c:44: i2c_delay(10);
      0005F8 90 00 0A         [24]  448 	mov	dptr,#0x000a
      0005FB C0 07            [24]  449 	push	ar7
      0005FD C0 06            [24]  450 	push	ar6
      0005FF 12 05 97         [24]  451 	lcall	_i2c_delay
      000602 D0 06            [24]  452 	pop	ar6
      000604 D0 07            [24]  453 	pop	ar7
                                    454 ;	i2c.c:45: I2C_SDA = (val & 0x80) ? 1 : 0;
      000606 EF               [12]  455 	mov	a,r7
      000607 23               [12]  456 	rl	a
      000608 54 01            [12]  457 	anl	a,#0x01
      00060A 24 FF            [12]  458 	add	a,#0xff
      00060C 92 86            [24]  459 	mov	_P0_6,c
                                    460 ;	i2c.c:46: i2c_delay(10);
      00060E 90 00 0A         [24]  461 	mov	dptr,#0x000a
      000611 C0 07            [24]  462 	push	ar7
      000613 C0 06            [24]  463 	push	ar6
      000615 12 05 97         [24]  464 	lcall	_i2c_delay
                                    465 ;	i2c.c:47: I2C_SCL = 1;
                                    466 ;	assignBit
      000618 D2 87            [12]  467 	setb	_P0_7
                                    468 ;	i2c.c:48: i2c_delay(10);
      00061A 90 00 0A         [24]  469 	mov	dptr,#0x000a
      00061D 12 05 97         [24]  470 	lcall	_i2c_delay
      000620 D0 06            [24]  471 	pop	ar6
      000622 D0 07            [24]  472 	pop	ar7
                                    473 ;	i2c.c:49: val<<= 1;
      000624 8F 05            [24]  474 	mov	ar5,r7
      000626 ED               [12]  475 	mov	a,r5
      000627 2D               [12]  476 	add	a,r5
      000628 FF               [12]  477 	mov	r7,a
                                    478 ;	i2c.c:50: I2C_SCL = 0;
                                    479 ;	assignBit
      000629 C2 87            [12]  480 	clr	_P0_7
      00062B 80 C6            [24]  481 	sjmp	00101$
      00062D                        482 00103$:
                                    483 ;	i2c.c:52: i2c_delay(10);
      00062D 90 00 0A         [24]  484 	mov	dptr,#0x000a
      000630 12 05 97         [24]  485 	lcall	_i2c_delay
                                    486 ;	i2c.c:53: I2C_SDA = 1;
                                    487 ;	assignBit
      000633 D2 86            [12]  488 	setb	_P0_6
                                    489 ;	i2c.c:54: i2c_delay(10);
      000635 90 00 0A         [24]  490 	mov	dptr,#0x000a
      000638 12 05 97         [24]  491 	lcall	_i2c_delay
                                    492 ;	i2c.c:55: I2C_SCL = 1;
                                    493 ;	assignBit
      00063B D2 87            [12]  494 	setb	_P0_7
                                    495 ;	i2c.c:56: i2c_delay(10);
      00063D 90 00 0A         [24]  496 	mov	dptr,#0x000a
      000640 12 05 97         [24]  497 	lcall	_i2c_delay
                                    498 ;	i2c.c:57: ack = I2C_SDA;
      000643 A2 86            [12]  499 	mov	c,_P0_6
      000645 E4               [12]  500 	clr	a
      000646 33               [12]  501 	rlc	a
      000647 FF               [12]  502 	mov	r7,a
                                    503 ;	i2c.c:58: i2c_delay(10);
      000648 90 00 0A         [24]  504 	mov	dptr,#0x000a
      00064B C0 07            [24]  505 	push	ar7
      00064D 12 05 97         [24]  506 	lcall	_i2c_delay
      000650 D0 07            [24]  507 	pop	ar7
                                    508 ;	i2c.c:59: I2C_SCL = 0;
                                    509 ;	assignBit
      000652 C2 87            [12]  510 	clr	_P0_7
                                    511 ;	i2c.c:60: return ack;
      000654 8F 82            [24]  512 	mov	dpl,r7
                                    513 ;	i2c.c:61: }
      000656 22               [24]  514 	ret
                                    515 ;------------------------------------------------------------
                                    516 ;Allocation info for local variables in function 'i2c_read'
                                    517 ;------------------------------------------------------------
                                    518 ;i                         Allocated to registers r7 
                                    519 ;val                       Allocated to registers r5 
                                    520 ;------------------------------------------------------------
                                    521 ;	i2c.c:63: unsigned char i2c_read(void){
                                    522 ;	-----------------------------------------
                                    523 ;	 function i2c_read
                                    524 ;	-----------------------------------------
      000657                        525 _i2c_read:
                                    526 ;	i2c.c:64: unsigned char i=9, val=0;
      000657 7F 09            [12]  527 	mov	r7,#0x09
      000659 7E 00            [12]  528 	mov	r6,#0x00
                                    529 ;	i2c.c:66: while(--i){
      00065B                        530 00101$:
      00065B EF               [12]  531 	mov	a,r7
      00065C 14               [12]  532 	dec	a
      00065D FF               [12]  533 	mov	r7,a
      00065E 60 2F            [24]  534 	jz	00103$
                                    535 ;	i2c.c:67: val<<= 1;
      000660 8E 05            [24]  536 	mov	ar5,r6
      000662 ED               [12]  537 	mov	a,r5
      000663 2D               [12]  538 	add	a,r5
      000664 FD               [12]  539 	mov	r5,a
                                    540 ;	i2c.c:68: i2c_delay(10);
      000665 90 00 0A         [24]  541 	mov	dptr,#0x000a
      000668 C0 07            [24]  542 	push	ar7
      00066A C0 05            [24]  543 	push	ar5
      00066C 12 05 97         [24]  544 	lcall	_i2c_delay
                                    545 ;	i2c.c:69: I2C_SCL = 1;
                                    546 ;	assignBit
      00066F D2 87            [12]  547 	setb	_P0_7
                                    548 ;	i2c.c:70: i2c_delay(10);
      000671 90 00 0A         [24]  549 	mov	dptr,#0x000a
      000674 12 05 97         [24]  550 	lcall	_i2c_delay
      000677 D0 05            [24]  551 	pop	ar5
                                    552 ;	i2c.c:71: val|= I2C_SDA;
      000679 A2 86            [12]  553 	mov	c,_P0_6
      00067B E4               [12]  554 	clr	a
      00067C 33               [12]  555 	rlc	a
      00067D 4D               [12]  556 	orl	a,r5
      00067E FE               [12]  557 	mov	r6,a
                                    558 ;	i2c.c:72: i2c_delay(10);
      00067F 90 00 0A         [24]  559 	mov	dptr,#0x000a
      000682 C0 06            [24]  560 	push	ar6
      000684 12 05 97         [24]  561 	lcall	_i2c_delay
      000687 D0 06            [24]  562 	pop	ar6
      000689 D0 07            [24]  563 	pop	ar7
                                    564 ;	i2c.c:73: I2C_SCL = 0;
                                    565 ;	assignBit
      00068B C2 87            [12]  566 	clr	_P0_7
      00068D 80 CC            [24]  567 	sjmp	00101$
      00068F                        568 00103$:
                                    569 ;	i2c.c:81: return val;
      00068F 8E 82            [24]  570 	mov	dpl,r6
                                    571 ;	i2c.c:82: }
      000691 22               [24]  572 	ret
                                    573 ;------------------------------------------------------------
                                    574 ;Allocation info for local variables in function 'i2c_write_byte'
                                    575 ;------------------------------------------------------------
                                    576 ;val                       Allocated with name '_i2c_write_byte_PARM_2'
                                    577 ;addr                      Allocated to registers r7 
                                    578 ;------------------------------------------------------------
                                    579 ;	i2c.c:84: void i2c_write_byte(unsigned char addr, unsigned char val){
                                    580 ;	-----------------------------------------
                                    581 ;	 function i2c_write_byte
                                    582 ;	-----------------------------------------
      000692                        583 _i2c_write_byte:
                                    584 ;	i2c.c:85: addr<<=1;
      000692 E5 82            [12]  585 	mov	a,dpl
      000694 25 82            [12]  586 	add	a,dpl
      000696 FF               [12]  587 	mov	r7,a
                                    588 ;	i2c.c:86: i2c_start();
      000697 C0 07            [24]  589 	push	ar7
      000699 12 05 C1         [24]  590 	lcall	_i2c_start
      00069C D0 07            [24]  591 	pop	ar7
                                    592 ;	i2c.c:87: i2c_write(addr);
      00069E 8F 82            [24]  593 	mov	dpl,r7
      0006A0 12 05 EF         [24]  594 	lcall	_i2c_write
                                    595 ;	i2c.c:88: i2c_write(val);
      0006A3 85 1D 82         [24]  596 	mov	dpl,_i2c_write_byte_PARM_2
      0006A6 12 05 EF         [24]  597 	lcall	_i2c_write
                                    598 ;	i2c.c:89: i2c_stop();
                                    599 ;	i2c.c:90: }
      0006A9 02 05 D6         [24]  600 	ljmp	_i2c_stop
                                    601 ;------------------------------------------------------------
                                    602 ;Allocation info for local variables in function 'i2c_read_byte'
                                    603 ;------------------------------------------------------------
                                    604 ;addr                      Allocated to registers r7 
                                    605 ;value                     Allocated to registers r6 
                                    606 ;------------------------------------------------------------
                                    607 ;	i2c.c:92: unsigned char i2c_read_byte(unsigned char addr){
                                    608 ;	-----------------------------------------
                                    609 ;	 function i2c_read_byte
                                    610 ;	-----------------------------------------
      0006AC                        611 _i2c_read_byte:
      0006AC AF 82            [24]  612 	mov	r7,dpl
                                    613 ;	i2c.c:94: unsigned char value = 0;
      0006AE 7E 00            [12]  614 	mov	r6,#0x00
                                    615 ;	i2c.c:95: addr <<=1;
      0006B0 EF               [12]  616 	mov	a,r7
      0006B1 2F               [12]  617 	add	a,r7
      0006B2 FF               [12]  618 	mov	r7,a
                                    619 ;	i2c.c:96: addr |= 1;
      0006B3 43 07 01         [24]  620 	orl	ar7,#0x01
                                    621 ;	i2c.c:97: i2c_start();
      0006B6 C0 07            [24]  622 	push	ar7
      0006B8 C0 06            [24]  623 	push	ar6
      0006BA 12 05 C1         [24]  624 	lcall	_i2c_start
      0006BD D0 06            [24]  625 	pop	ar6
      0006BF D0 07            [24]  626 	pop	ar7
                                    627 ;	i2c.c:98: if(!i2c_write(addr)){
      0006C1 8F 82            [24]  628 	mov	dpl,r7
      0006C3 C0 06            [24]  629 	push	ar6
      0006C5 12 05 EF         [24]  630 	lcall	_i2c_write
      0006C8 E5 82            [12]  631 	mov	a,dpl
      0006CA D0 06            [24]  632 	pop	ar6
      0006CC 70 05            [24]  633 	jnz	00102$
                                    634 ;	i2c.c:99: value = i2c_read();
      0006CE 12 06 57         [24]  635 	lcall	_i2c_read
      0006D1 AE 82            [24]  636 	mov	r6,dpl
      0006D3                        637 00102$:
                                    638 ;	i2c.c:101: i2c_stop();
      0006D3 C0 06            [24]  639 	push	ar6
      0006D5 12 05 D6         [24]  640 	lcall	_i2c_stop
      0006D8 D0 06            [24]  641 	pop	ar6
                                    642 ;	i2c.c:103: return value;
      0006DA 8E 82            [24]  643 	mov	dpl,r6
                                    644 ;	i2c.c:104: }
      0006DC 22               [24]  645 	ret
                                    646 ;------------------------------------------------------------
                                    647 ;Allocation info for local variables in function 'lcd_send_bits'
                                    648 ;------------------------------------------------------------
                                    649 ;data                      Allocated to registers r7 
                                    650 ;------------------------------------------------------------
                                    651 ;	i2c.c:106: void lcd_send_bits(unsigned char data){
                                    652 ;	-----------------------------------------
                                    653 ;	 function lcd_send_bits
                                    654 ;	-----------------------------------------
      0006DD                        655 _lcd_send_bits:
      0006DD AF 82            [24]  656 	mov	r7,dpl
                                    657 ;	i2c.c:107: i2c_write_byte(LCD_I2C_ADDR, data);
      0006DF 8F 1D            [24]  658 	mov	_i2c_write_byte_PARM_2,r7
      0006E1 75 82 27         [24]  659 	mov	dpl,#0x27
      0006E4 C0 07            [24]  660 	push	ar7
      0006E6 12 06 92         [24]  661 	lcall	_i2c_write_byte
      0006E9 D0 07            [24]  662 	pop	ar7
                                    663 ;	i2c.c:108: i2c_write_byte(LCD_I2C_ADDR, data|0x04);
      0006EB 8F 05            [24]  664 	mov	ar5,r7
      0006ED 43 05 04         [24]  665 	orl	ar5,#0x04
      0006F0 8D 1D            [24]  666 	mov	_i2c_write_byte_PARM_2,r5
      0006F2 75 82 27         [24]  667 	mov	dpl,#0x27
      0006F5 C0 07            [24]  668 	push	ar7
      0006F7 12 06 92         [24]  669 	lcall	_i2c_write_byte
                                    670 ;	i2c.c:109: i2c_delay(50);
      0006FA 90 00 32         [24]  671 	mov	dptr,#0x0032
      0006FD 12 05 97         [24]  672 	lcall	_i2c_delay
      000700 D0 07            [24]  673 	pop	ar7
                                    674 ;	i2c.c:110: i2c_write_byte(LCD_I2C_ADDR, data*~0x04);
      000702 EF               [12]  675 	mov	a,r7
      000703 75 F0 FB         [24]  676 	mov	b,#0xfb
      000706 A4               [48]  677 	mul	ab
      000707 F5 1D            [12]  678 	mov	_i2c_write_byte_PARM_2,a
      000709 75 82 27         [24]  679 	mov	dpl,#0x27
      00070C 12 06 92         [24]  680 	lcall	_i2c_write_byte
                                    681 ;	i2c.c:111: delayMs(1);
      00070F 90 00 01         [24]  682 	mov	dptr,#0x0001
                                    683 ;	i2c.c:112: }
      000712 02 05 A9         [24]  684 	ljmp	_delayMs
                                    685 ;------------------------------------------------------------
                                    686 ;Allocation info for local variables in function 'lcd_writeChar'
                                    687 ;------------------------------------------------------------
                                    688 ;data                      Allocated with name '_lcd_writeChar_PARM_2'
                                    689 ;mode                      Allocated to registers r7 
                                    690 ;hnib                      Allocated to registers r5 
                                    691 ;lnib                      Allocated to registers r6 
                                    692 ;------------------------------------------------------------
                                    693 ;	i2c.c:114: void lcd_writeChar(unsigned char mode, unsigned char data){
                                    694 ;	-----------------------------------------
                                    695 ;	 function lcd_writeChar
                                    696 ;	-----------------------------------------
      000715                        697 _lcd_writeChar:
      000715 AF 82            [24]  698 	mov	r7,dpl
                                    699 ;	i2c.c:115: unsigned char hnib = data & 0xF0;
      000717 AE 1E            [24]  700 	mov	r6,_lcd_writeChar_PARM_2
      000719 74 F0            [12]  701 	mov	a,#0xf0
      00071B 5E               [12]  702 	anl	a,r6
      00071C FD               [12]  703 	mov	r5,a
                                    704 ;	i2c.c:116: unsigned char lnib = (data << 4) & 0xF0;
      00071D EE               [12]  705 	mov	a,r6
      00071E C4               [12]  706 	swap	a
      00071F 54 F0            [12]  707 	anl	a,#0xf0
      000721 FE               [12]  708 	mov	r6,a
      000722 53 06 F0         [24]  709 	anl	ar6,#0xf0
                                    710 ;	i2c.c:117: lcd_send_bits(hnib | mode);
      000725 EF               [12]  711 	mov	a,r7
      000726 4D               [12]  712 	orl	a,r5
      000727 F5 82            [12]  713 	mov	dpl,a
      000729 C0 07            [24]  714 	push	ar7
      00072B C0 06            [24]  715 	push	ar6
      00072D 12 06 DD         [24]  716 	lcall	_lcd_send_bits
      000730 D0 06            [24]  717 	pop	ar6
      000732 D0 07            [24]  718 	pop	ar7
                                    719 ;	i2c.c:118: lcd_send_bits(lnib | mode);
      000734 EF               [12]  720 	mov	a,r7
      000735 4E               [12]  721 	orl	a,r6
      000736 F5 82            [12]  722 	mov	dpl,a
                                    723 ;	i2c.c:119: }
      000738 02 06 DD         [24]  724 	ljmp	_lcd_send_bits
                                    725 ;------------------------------------------------------------
                                    726 ;Allocation info for local variables in function 'lcd_writeString'
                                    727 ;------------------------------------------------------------
                                    728 ;text                      Allocated to registers r5 r6 r7 
                                    729 ;i                         Allocated to registers r4 
                                    730 ;------------------------------------------------------------
                                    731 ;	i2c.c:121: void lcd_writeString(unsigned char text[]){
                                    732 ;	-----------------------------------------
                                    733 ;	 function lcd_writeString
                                    734 ;	-----------------------------------------
      00073B                        735 _lcd_writeString:
      00073B AD 82            [24]  736 	mov	r5,dpl
      00073D AE 83            [24]  737 	mov	r6,dph
      00073F AF F0            [24]  738 	mov	r7,b
                                    739 ;	i2c.c:123: while (text[i] != '\0'){
      000741 7C 00            [12]  740 	mov	r4,#0x00
      000743                        741 00101$:
      000743 EC               [12]  742 	mov	a,r4
      000744 2D               [12]  743 	add	a,r5
      000745 F9               [12]  744 	mov	r1,a
      000746 E4               [12]  745 	clr	a
      000747 3E               [12]  746 	addc	a,r6
      000748 FA               [12]  747 	mov	r2,a
      000749 8F 03            [24]  748 	mov	ar3,r7
      00074B 89 82            [24]  749 	mov	dpl,r1
      00074D 8A 83            [24]  750 	mov	dph,r2
      00074F 8B F0            [24]  751 	mov	b,r3
      000751 12 08 7D         [24]  752 	lcall	__gptrget
      000754 FB               [12]  753 	mov	r3,a
      000755 60 1B            [24]  754 	jz	00104$
                                    755 ;	i2c.c:124: lcd_writeChar(1, text[i]);
      000757 8B 1E            [24]  756 	mov	_lcd_writeChar_PARM_2,r3
      000759 75 82 01         [24]  757 	mov	dpl,#0x01
      00075C C0 07            [24]  758 	push	ar7
      00075E C0 06            [24]  759 	push	ar6
      000760 C0 05            [24]  760 	push	ar5
      000762 C0 04            [24]  761 	push	ar4
      000764 12 07 15         [24]  762 	lcall	_lcd_writeChar
      000767 D0 04            [24]  763 	pop	ar4
      000769 D0 05            [24]  764 	pop	ar5
      00076B D0 06            [24]  765 	pop	ar6
      00076D D0 07            [24]  766 	pop	ar7
                                    767 ;	i2c.c:125: i++;
      00076F 0C               [12]  768 	inc	r4
      000770 80 D1            [24]  769 	sjmp	00101$
      000772                        770 00104$:
                                    771 ;	i2c.c:127: }
      000772 22               [24]  772 	ret
                                    773 ;------------------------------------------------------------
                                    774 ;Allocation info for local variables in function 'lcd_Init'
                                    775 ;------------------------------------------------------------
                                    776 ;	i2c.c:129: void lcd_Init(){
                                    777 ;	-----------------------------------------
                                    778 ;	 function lcd_Init
                                    779 ;	-----------------------------------------
      000773                        780 _lcd_Init:
                                    781 ;	i2c.c:130: lcd_writeChar(0, 0x33);
      000773 75 1E 33         [24]  782 	mov	_lcd_writeChar_PARM_2,#0x33
      000776 75 82 00         [24]  783 	mov	dpl,#0x00
      000779 12 07 15         [24]  784 	lcall	_lcd_writeChar
                                    785 ;	i2c.c:131: delayMs(2);
      00077C 90 00 02         [24]  786 	mov	dptr,#0x0002
      00077F 12 05 A9         [24]  787 	lcall	_delayMs
                                    788 ;	i2c.c:132: lcd_writeChar(0, 0x32);
      000782 75 1E 32         [24]  789 	mov	_lcd_writeChar_PARM_2,#0x32
      000785 75 82 00         [24]  790 	mov	dpl,#0x00
      000788 12 07 15         [24]  791 	lcall	_lcd_writeChar
                                    792 ;	i2c.c:133: delayMs(2);
      00078B 90 00 02         [24]  793 	mov	dptr,#0x0002
      00078E 12 05 A9         [24]  794 	lcall	_delayMs
                                    795 ;	i2c.c:134: lcd_writeChar(0, 0x28);
      000791 75 1E 28         [24]  796 	mov	_lcd_writeChar_PARM_2,#0x28
      000794 75 82 00         [24]  797 	mov	dpl,#0x00
      000797 12 07 15         [24]  798 	lcall	_lcd_writeChar
                                    799 ;	i2c.c:135: delayMs(2);
      00079A 90 00 02         [24]  800 	mov	dptr,#0x0002
      00079D 12 05 A9         [24]  801 	lcall	_delayMs
                                    802 ;	i2c.c:136: lcd_writeChar(0, 0x0C);
      0007A0 75 1E 0C         [24]  803 	mov	_lcd_writeChar_PARM_2,#0x0c
      0007A3 75 82 00         [24]  804 	mov	dpl,#0x00
      0007A6 12 07 15         [24]  805 	lcall	_lcd_writeChar
                                    806 ;	i2c.c:137: lcd_writeChar(0, 0x01);
      0007A9 75 1E 01         [24]  807 	mov	_lcd_writeChar_PARM_2,#0x01
      0007AC 75 82 00         [24]  808 	mov	dpl,#0x00
      0007AF 12 07 15         [24]  809 	lcall	_lcd_writeChar
                                    810 ;	i2c.c:138: delayMs(2);
      0007B2 90 00 02         [24]  811 	mov	dptr,#0x0002
      0007B5 12 05 A9         [24]  812 	lcall	_delayMs
                                    813 ;	i2c.c:139: lcd_writeChar(0, 0x06);
      0007B8 75 1E 06         [24]  814 	mov	_lcd_writeChar_PARM_2,#0x06
      0007BB 75 82 00         [24]  815 	mov	dpl,#0x00
                                    816 ;	i2c.c:140: }
      0007BE 02 07 15         [24]  817 	ljmp	_lcd_writeChar
                                    818 ;------------------------------------------------------------
                                    819 ;Allocation info for local variables in function 'printMessage'
                                    820 ;------------------------------------------------------------
                                    821 ;	i2c.c:142: void printMessage(){
                                    822 ;	-----------------------------------------
                                    823 ;	 function printMessage
                                    824 ;	-----------------------------------------
      0007C1                        825 _printMessage:
                                    826 ;	i2c.c:143: lcd_writeString("Hello World");
      0007C1 90 09 0B         [24]  827 	mov	dptr,#___str_0
      0007C4 75 F0 80         [24]  828 	mov	b,#0x80
      0007C7 12 07 3B         [24]  829 	lcall	_lcd_writeString
                                    830 ;	i2c.c:144: lcd_writeChar(0, 0xC0);
      0007CA 75 1E C0         [24]  831 	mov	_lcd_writeChar_PARM_2,#0xc0
      0007CD 75 82 00         [24]  832 	mov	dpl,#0x00
      0007D0 12 07 15         [24]  833 	lcall	_lcd_writeChar
                                    834 ;	i2c.c:145: lcd_writeString("   Bob is Great!");
      0007D3 90 09 17         [24]  835 	mov	dptr,#___str_1
      0007D6 75 F0 80         [24]  836 	mov	b,#0x80
      0007D9 12 07 3B         [24]  837 	lcall	_lcd_writeString
                                    838 ;	i2c.c:146: delayMs(10000);
      0007DC 90 27 10         [24]  839 	mov	dptr,#0x2710
      0007DF 12 05 A9         [24]  840 	lcall	_delayMs
                                    841 ;	i2c.c:147: if (getMode()){
      0007E2 12 00 86         [24]  842 	lcall	_getMode
      0007E5 E5 82            [12]  843 	mov	a,dpl
      0007E7 60 00            [24]  844 	jz	00103$
                                    845 ;	i2c.c:148: return;
      0007E9                        846 00103$:
                                    847 ;	i2c.c:150: }
      0007E9 22               [24]  848 	ret
                                    849 	.area CSEG    (CODE)
                                    850 	.area CONST   (CODE)
      00090B                        851 ___str_0:
      00090B 48 65 6C 6C 6F 20 57   852 	.ascii "Hello World"
             6F 72 6C 64
      000916 00                     853 	.db 0x00
      000917                        854 ___str_1:
      000917 20 20 20 42 6F 62 20   855 	.ascii "   Bob is Great!"
             69 73 20 47 72 65 61
             74 21
      000927 00                     856 	.db 0x00
                                    857 	.area XINIT   (CODE)
                                    858 	.area CABS    (ABS,CODE)
