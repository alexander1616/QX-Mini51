;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.8.0 #10562 (Linux)
;--------------------------------------------------------
	.module a_lcd
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _setLcd_PARM_2
	.globl _setLcd
	.globl _minusLcd
	.globl _addLcd
	.globl _sumLcdVal
	.globl _showLcd
	.globl _showLcd3
	.globl _showLcd2
	.globl _lcdDelay
	.globl _CY
	.globl _AC
	.globl _F0
	.globl _RS1
	.globl _RS0
	.globl _OV
	.globl _F1
	.globl _P
	.globl _PS
	.globl _PT1
	.globl _PX1
	.globl _PT0
	.globl _PX0
	.globl _RD
	.globl _WR
	.globl _T1
	.globl _T0
	.globl _INT1
	.globl _INT0
	.globl _TXD
	.globl _RXD
	.globl _P3_7
	.globl _P3_6
	.globl _P3_5
	.globl _P3_4
	.globl _P3_3
	.globl _P3_2
	.globl _P3_1
	.globl _P3_0
	.globl _EA
	.globl _ES
	.globl _ET1
	.globl _EX1
	.globl _ET0
	.globl _EX0
	.globl _P2_7
	.globl _P2_6
	.globl _P2_5
	.globl _P2_4
	.globl _P2_3
	.globl _P2_2
	.globl _P2_1
	.globl _P2_0
	.globl _SM0
	.globl _SM1
	.globl _SM2
	.globl _REN
	.globl _TB8
	.globl _RB8
	.globl _TI
	.globl _RI
	.globl _P1_7
	.globl _P1_6
	.globl _P1_5
	.globl _P1_4
	.globl _P1_3
	.globl _P1_2
	.globl _P1_1
	.globl _P1_0
	.globl _TF1
	.globl _TR1
	.globl _TF0
	.globl _TR0
	.globl _IE1
	.globl _IT1
	.globl _IE0
	.globl _IT0
	.globl _P0_7
	.globl _P0_6
	.globl _P0_5
	.globl _P0_4
	.globl _P0_3
	.globl _P0_2
	.globl _P0_1
	.globl _P0_0
	.globl _B
	.globl _ACC
	.globl _PSW
	.globl _IP
	.globl _P3
	.globl _IE
	.globl _P2
	.globl _SBUF
	.globl _SCON
	.globl _P1
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _PCON
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _P0
	.globl _showLcd_PARM_2
	.globl _lcdVal
	.globl _numTable
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0	=	0x0080
_SP	=	0x0081
_DPL	=	0x0082
_DPH	=	0x0083
_PCON	=	0x0087
_TCON	=	0x0088
_TMOD	=	0x0089
_TL0	=	0x008a
_TL1	=	0x008b
_TH0	=	0x008c
_TH1	=	0x008d
_P1	=	0x0090
_SCON	=	0x0098
_SBUF	=	0x0099
_P2	=	0x00a0
_IE	=	0x00a8
_P3	=	0x00b0
_IP	=	0x00b8
_PSW	=	0x00d0
_ACC	=	0x00e0
_B	=	0x00f0
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0_0	=	0x0080
_P0_1	=	0x0081
_P0_2	=	0x0082
_P0_3	=	0x0083
_P0_4	=	0x0084
_P0_5	=	0x0085
_P0_6	=	0x0086
_P0_7	=	0x0087
_IT0	=	0x0088
_IE0	=	0x0089
_IT1	=	0x008a
_IE1	=	0x008b
_TR0	=	0x008c
_TF0	=	0x008d
_TR1	=	0x008e
_TF1	=	0x008f
_P1_0	=	0x0090
_P1_1	=	0x0091
_P1_2	=	0x0092
_P1_3	=	0x0093
_P1_4	=	0x0094
_P1_5	=	0x0095
_P1_6	=	0x0096
_P1_7	=	0x0097
_RI	=	0x0098
_TI	=	0x0099
_RB8	=	0x009a
_TB8	=	0x009b
_REN	=	0x009c
_SM2	=	0x009d
_SM1	=	0x009e
_SM0	=	0x009f
_P2_0	=	0x00a0
_P2_1	=	0x00a1
_P2_2	=	0x00a2
_P2_3	=	0x00a3
_P2_4	=	0x00a4
_P2_5	=	0x00a5
_P2_6	=	0x00a6
_P2_7	=	0x00a7
_EX0	=	0x00a8
_ET0	=	0x00a9
_EX1	=	0x00aa
_ET1	=	0x00ab
_ES	=	0x00ac
_EA	=	0x00af
_P3_0	=	0x00b0
_P3_1	=	0x00b1
_P3_2	=	0x00b2
_P3_3	=	0x00b3
_P3_4	=	0x00b4
_P3_5	=	0x00b5
_P3_6	=	0x00b6
_P3_7	=	0x00b7
_RXD	=	0x00b0
_TXD	=	0x00b1
_INT0	=	0x00b2
_INT1	=	0x00b3
_T0	=	0x00b4
_T1	=	0x00b5
_WR	=	0x00b6
_RD	=	0x00b7
_PX0	=	0x00b8
_PT0	=	0x00b9
_PX1	=	0x00ba
_PT1	=	0x00bb
_PS	=	0x00bc
_P	=	0x00d0
_F1	=	0x00d1
_OV	=	0x00d2
_RS0	=	0x00d3
_RS1	=	0x00d4
_F0	=	0x00d5
_AC	=	0x00d6
_CY	=	0x00d7
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_numTable::
	.ds 10
_lcdVal::
	.ds 4
_showLcd_PARM_2:
	.ds 1
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
_setLcd_PARM_2:
	.ds 1
;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
;	a_lcd.c:3: unsigned char numTable[] = { 0xC0, 0xF9, 0xA4, 0xB0, 0x99,   // 0, 1, 2, 3, 4
	mov	_numTable,#0xc0
	mov	(_numTable + 0x0001),#0xf9
	mov	(_numTable + 0x0002),#0xa4
	mov	(_numTable + 0x0003),#0xb0
	mov	(_numTable + 0x0004),#0x99
	mov	(_numTable + 0x0005),#0x92
	mov	(_numTable + 0x0006),#0x82
	mov	(_numTable + 0x0007),#0xf8
	mov	(_numTable + 0x0008),#0x80
	mov	(_numTable + 0x0009),#0x90
;	a_lcd.c:17: unsigned char lcdVal[4] = {0};
	mov	_lcdVal,#0x00
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'lcdDelay'
;------------------------------------------------------------
;i                         Allocated to registers 
;j                         Allocated to registers r6 
;------------------------------------------------------------
;	a_lcd.c:8: void lcdDelay(unsigned char i){
;	-----------------------------------------
;	 function lcdDelay
;	-----------------------------------------
_lcdDelay:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r7,dpl
00106$:
;	a_lcd.c:10: for (; i > 0; i--){
	mov	a,r7
	jz	00108$
;	a_lcd.c:11: for (j = 125; j > 0; j--){
	mov	r6,#0x7d
00104$:
	mov	a,r6
	dec	a
	mov	r5,a
	mov	r6,a
	jnz	00104$
;	a_lcd.c:10: for (; i > 0; i--){
	dec	r7
	sjmp	00106$
00108$:
;	a_lcd.c:15: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'showLcd2'
;------------------------------------------------------------
;	a_lcd.c:19: void showLcd2(){
;	-----------------------------------------
;	 function showLcd2
;	-----------------------------------------
_showLcd2:
;	a_lcd.c:20: P0 = numTable[lcdVal[0]];
	mov	a,_lcdVal
	add	a,#_numTable
	mov	r1,a
	mov	_P0,@r1
;	a_lcd.c:21: P2_0 = 0;
;	assignBit
	clr	_P2_0
;	a_lcd.c:22: lcdDelay(5);
	mov	dpl,#0x05
	lcall	_lcdDelay
;	a_lcd.c:23: P2_0 = 1;
;	assignBit
	setb	_P2_0
;	a_lcd.c:24: P0 = numTable[lcdVal[1]];
	mov	a,(_lcdVal + 0x0001)
	add	a,#_numTable
	mov	r1,a
	mov	_P0,@r1
;	a_lcd.c:25: P2_1 = 0;
;	assignBit
	clr	_P2_1
;	a_lcd.c:26: lcdDelay(5);
	mov	dpl,#0x05
	lcall	_lcdDelay
;	a_lcd.c:27: P2_1 = 1;
;	assignBit
	setb	_P2_1
;	a_lcd.c:28: P0 = numTable[lcdVal[2]];
	mov	a,(_lcdVal + 0x0002)
	add	a,#_numTable
	mov	r1,a
	mov	_P0,@r1
;	a_lcd.c:29: P2_2 = 0;
;	assignBit
	clr	_P2_2
;	a_lcd.c:30: lcdDelay(5);
	mov	dpl,#0x05
	lcall	_lcdDelay
;	a_lcd.c:31: P2_2 = 1;
;	assignBit
	setb	_P2_2
;	a_lcd.c:32: P0 = numTable[lcdVal[3]];
	mov	a,(_lcdVal + 0x0003)
	add	a,#_numTable
	mov	r1,a
	mov	_P0,@r1
;	a_lcd.c:33: P2_3 = 0;
;	assignBit
	clr	_P2_3
;	a_lcd.c:34: lcdDelay(5);
	mov	dpl,#0x05
	lcall	_lcdDelay
;	a_lcd.c:35: P2_3 = 1;
;	assignBit
	setb	_P2_3
;	a_lcd.c:36: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'showLcd3'
;------------------------------------------------------------
;pos                       Allocated to registers r7 
;------------------------------------------------------------
;	a_lcd.c:38: void showLcd3(unsigned char pos){
;	-----------------------------------------
;	 function showLcd3
;	-----------------------------------------
_showLcd3:
;	a_lcd.c:39: P0 = numTable[lcdVal[pos]];
	mov	a,dpl
	mov	r7,a
	add	a,#_lcdVal
	mov	r1,a
	mov	a,@r1
	mov	r6,a
	add	a,#_numTable
	mov	r1,a
	mov	_P0,@r1
;	a_lcd.c:40: switch (pos){
	mov	a,r7
	add	a,#0xff - 0x03
	jc	00105$
	mov	a,r7
	add	a,r7
;	a_lcd.c:41: case 0:
	mov	dptr,#00114$
	jmp	@a+dptr
00114$:
	sjmp	00101$
	sjmp	00102$
	sjmp	00103$
	sjmp	00104$
00101$:
;	a_lcd.c:42: P2_0 = 0;
;	assignBit
	clr	_P2_0
;	a_lcd.c:43: lcdDelay(5);
	mov	dpl,#0x05
	lcall	_lcdDelay
;	a_lcd.c:44: P2_0 = 1;
;	assignBit
	setb	_P2_0
;	a_lcd.c:45: break;
;	a_lcd.c:46: case 1:
	ret
00102$:
;	a_lcd.c:47: P2_1 = 0;
;	assignBit
	clr	_P2_1
;	a_lcd.c:48: lcdDelay(5);
	mov	dpl,#0x05
	lcall	_lcdDelay
;	a_lcd.c:49: P2_1 = 1;
;	assignBit
	setb	_P2_1
;	a_lcd.c:50: break;
;	a_lcd.c:51: case 2:
	ret
00103$:
;	a_lcd.c:52: P2_2 = 0;
;	assignBit
	clr	_P2_2
;	a_lcd.c:53: lcdDelay(5);
	mov	dpl,#0x05
	lcall	_lcdDelay
;	a_lcd.c:54: P2_2 = 1;
;	assignBit
	setb	_P2_2
;	a_lcd.c:55: break;
;	a_lcd.c:56: case 3:
	ret
00104$:
;	a_lcd.c:57: P2_3 = 0;
;	assignBit
	clr	_P2_3
;	a_lcd.c:58: lcdDelay(5);
	mov	dpl,#0x05
	lcall	_lcdDelay
;	a_lcd.c:59: P2_3 = 1;
;	assignBit
	setb	_P2_3
;	a_lcd.c:60: break;
;	a_lcd.c:61: default:
;	a_lcd.c:62: return;
;	a_lcd.c:64: }
00105$:
;	a_lcd.c:65: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'showLcd'
;------------------------------------------------------------
;val                       Allocated with name '_showLcd_PARM_2'
;pos                       Allocated to registers r7 
;------------------------------------------------------------
;	a_lcd.c:68: void showLcd(unsigned char pos, unsigned char val){
;	-----------------------------------------
;	 function showLcd
;	-----------------------------------------
_showLcd:
	mov	r7,dpl
;	a_lcd.c:69: P0 = numTable[val];
	mov	a,_showLcd_PARM_2
	add	a,#_numTable
	mov	r1,a
	mov	_P0,@r1
;	a_lcd.c:70: switch (pos){
	mov	a,r7
	add	a,#0xff - 0x03
	jc	00105$
	mov	a,r7
	add	a,r7
;	a_lcd.c:71: case 0:
	mov	dptr,#00114$
	jmp	@a+dptr
00114$:
	sjmp	00101$
	sjmp	00102$
	sjmp	00103$
	sjmp	00104$
00101$:
;	a_lcd.c:72: P2_0 = 0;
;	assignBit
	clr	_P2_0
;	a_lcd.c:73: lcdDelay(5);
	mov	dpl,#0x05
	lcall	_lcdDelay
;	a_lcd.c:74: P2_0 = 1;
;	assignBit
	setb	_P2_0
;	a_lcd.c:75: break;
;	a_lcd.c:76: case 1:
	ret
00102$:
;	a_lcd.c:77: P2_1 = 0;
;	assignBit
	clr	_P2_1
;	a_lcd.c:78: lcdDelay(5);
	mov	dpl,#0x05
	lcall	_lcdDelay
;	a_lcd.c:79: P2_1 = 1;
;	assignBit
	setb	_P2_1
;	a_lcd.c:80: break;
;	a_lcd.c:81: case 2:
	ret
00103$:
;	a_lcd.c:82: P2_2 = 0;
;	assignBit
	clr	_P2_2
;	a_lcd.c:83: lcdDelay(5);
	mov	dpl,#0x05
	lcall	_lcdDelay
;	a_lcd.c:84: P2_2 = 1;
;	assignBit
	setb	_P2_2
;	a_lcd.c:85: break;
;	a_lcd.c:86: case 3:
	ret
00104$:
;	a_lcd.c:87: P2_3 = 0;
;	assignBit
	clr	_P2_3
;	a_lcd.c:88: lcdDelay(5);
	mov	dpl,#0x05
	lcall	_lcdDelay
;	a_lcd.c:89: P2_3 = 1;
;	assignBit
	setb	_P2_3
;	a_lcd.c:90: break;
;	a_lcd.c:91: default:
;	a_lcd.c:92: return;
;	a_lcd.c:94: }
00105$:
;	a_lcd.c:95: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'sumLcdVal'
;------------------------------------------------------------
;answer                    Allocated to registers 
;------------------------------------------------------------
;	a_lcd.c:97: int sumLcdVal(){
;	-----------------------------------------
;	 function sumLcdVal
;	-----------------------------------------
_sumLcdVal:
;	a_lcd.c:99: answer = lcdVal[3] + lcdVal[2]*10 + lcdVal[1]*100 + lcdVal[0]*1000;
	mov	r6,(_lcdVal + 0x0003)
	mov	r7,#0x00
	mov	__mulint_PARM_2,(_lcdVal + 0x0002)
;	1-genFromRTrack replaced	mov	(__mulint_PARM_2 + 1),#0x00
	mov	(__mulint_PARM_2 + 1),r7
	mov	dptr,#0x000a
	push	ar7
	push	ar6
	lcall	__mulint
	mov	r4,dpl
	mov	r5,dph
	pop	ar6
	pop	ar7
	mov	a,r4
	add	a,r6
	mov	r6,a
	mov	a,r5
	addc	a,r7
	mov	r7,a
	mov	__mulint_PARM_2,(_lcdVal + 0x0001)
	mov	(__mulint_PARM_2 + 1),#0x00
	mov	dptr,#0x0064
	push	ar7
	push	ar6
	lcall	__mulint
	mov	r4,dpl
	mov	r5,dph
	pop	ar6
	pop	ar7
	mov	a,r4
	add	a,r6
	mov	r6,a
	mov	a,r5
	addc	a,r7
	mov	r7,a
	mov	__mulint_PARM_2,_lcdVal
	mov	(__mulint_PARM_2 + 1),#0x00
	mov	dptr,#0x03e8
	push	ar7
	push	ar6
	lcall	__mulint
	mov	r4,dpl
	mov	r5,dph
	pop	ar6
	pop	ar7
	mov	a,r4
	add	a,r6
	mov	dpl,a
	mov	a,r5
	addc	a,r7
	mov	dph,a
;	a_lcd.c:100: return answer;
;	a_lcd.c:101: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'addLcd'
;------------------------------------------------------------
;ix                        Allocated to registers r7 
;i                         Allocated to registers r5 r6 
;------------------------------------------------------------
;	a_lcd.c:103: void addLcd(unsigned char ix){
;	-----------------------------------------
;	 function addLcd
;	-----------------------------------------
_addLcd:
;	a_lcd.c:104: lcdVal[ix]++;
	mov	a,dpl
	mov	r7,a
	add	a,#_lcdVal
	mov	r1,a
	mov	ar6,@r1
	inc	r6
	mov	@r1,ar6
;	a_lcd.c:105: if (lcdVal[ix]>9){
	mov	a,r6
	add	a,#0xff - 0x09
	jnc	00109$
;	a_lcd.c:106: lcdVal[ix] = 0;
	mov	@r1,#0x00
;	a_lcd.c:107: if (ix == 0){
	mov	a,r7
;	a_lcd.c:108: for (int i = 0; i < 4; i++){
	jnz	00103$
	mov	r5,a
	mov	r6,a
00107$:
	clr	c
	mov	a,r5
	subb	a,#0x04
	mov	a,r6
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00101$
;	a_lcd.c:109: lcdVal[i] = 0;
	mov	a,r5
	add	a,#_lcdVal
	mov	r0,a
	mov	@r0,#0x00
;	a_lcd.c:108: for (int i = 0; i < 4; i++){
	inc	r5
	cjne	r5,#0x00,00107$
	inc	r6
	sjmp	00107$
00101$:
;	a_lcd.c:111: return;
	ret
00103$:
;	a_lcd.c:113: addLcd(ix-1);
	mov	a,r7
	dec	a
	mov	dpl,a
;	a_lcd.c:115: }
	ljmp	_addLcd
00109$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'minusLcd'
;------------------------------------------------------------
;ix                        Allocated to registers r7 
;i                         Allocated to registers r5 r6 
;------------------------------------------------------------
;	a_lcd.c:117: void minusLcd(unsigned char ix){
;	-----------------------------------------
;	 function minusLcd
;	-----------------------------------------
_minusLcd:
;	a_lcd.c:118: if (lcdVal[ix]!=0){
	mov	a,dpl
	mov	r7,a
	add	a,#_lcdVal
	mov	r1,a
	mov	a,@r1
	mov	r6,a
	jz	00105$
;	a_lcd.c:119: lcdVal[ix]--;
	mov	a,r6
	dec	a
	mov	@r1,a
	ret
00105$:
;	a_lcd.c:121: lcdVal[ix] = 9;
	mov	@r1,#0x09
;	a_lcd.c:122: if (ix == 3){
	cjne	r7,#0x03,00103$
;	a_lcd.c:123: for (int i = 0; i < 4; i++){
	mov	r5,#0x00
	mov	r6,#0x00
00108$:
	clr	c
	mov	a,r5
	subb	a,#0x04
	mov	a,r6
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00101$
;	a_lcd.c:124: lcdVal[i] = 9;
	mov	a,r5
	add	a,#_lcdVal
	mov	r0,a
	mov	@r0,#0x09
;	a_lcd.c:123: for (int i = 0; i < 4; i++){
	inc	r5
	cjne	r5,#0x00,00108$
	inc	r6
	sjmp	00108$
00101$:
;	a_lcd.c:126: return;
	ret
00103$:
;	a_lcd.c:128: minusLcd(ix+1);
	mov	a,r7
	inc	a
	mov	dpl,a
;	a_lcd.c:130: }
	ljmp	_minusLcd
;------------------------------------------------------------
;Allocation info for local variables in function 'setLcd'
;------------------------------------------------------------
;val                       Allocated with name '_setLcd_PARM_2'
;pos                       Allocated to registers r7 
;------------------------------------------------------------
;	a_lcd.c:132: void setLcd(unsigned char pos, unsigned char val){
;	-----------------------------------------
;	 function setLcd
;	-----------------------------------------
_setLcd:
;	a_lcd.c:133: lcdVal[pos] = val;
	mov	a,dpl
	add	a,#_lcdVal
	mov	r0,a
	mov	@r0,_setLcd_PARM_2
;	a_lcd.c:134: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
