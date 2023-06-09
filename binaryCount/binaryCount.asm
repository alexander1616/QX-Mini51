;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.8.0 #10562 (Linux)
;--------------------------------------------------------
	.module binaryCount
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _dualCylon
	.globl _cylon
	.globl _digitDisplay
	.globl _digitDisplay_helper
	.globl _binaryCount
	.globl _getMode
	.globl _readButton
	.globl _showLcd2
	.globl _minusLcd2
	.globl _addLcd
	.globl _TF2
	.globl _EXF2
	.globl _RCLK
	.globl _TCLK
	.globl _EXEN2
	.globl _TR2
	.globl _C_T2
	.globl _CP_RL2
	.globl _T2CON_7
	.globl _T2CON_6
	.globl _T2CON_5
	.globl _T2CON_4
	.globl _T2CON_3
	.globl _T2CON_2
	.globl _T2CON_1
	.globl _T2CON_0
	.globl _PT2
	.globl _ET2
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
	.globl _TH2
	.globl _TL2
	.globl _RCAP2H
	.globl _RCAP2L
	.globl _T2CON
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
_T2CON	=	0x00c8
_RCAP2L	=	0x00ca
_RCAP2H	=	0x00cb
_TL2	=	0x00cc
_TH2	=	0x00cd
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
_ET2	=	0x00ad
_PT2	=	0x00bd
_T2CON_0	=	0x00c8
_T2CON_1	=	0x00c9
_T2CON_2	=	0x00ca
_T2CON_3	=	0x00cb
_T2CON_4	=	0x00cc
_T2CON_5	=	0x00cd
_T2CON_6	=	0x00ce
_T2CON_7	=	0x00cf
_CP_RL2	=	0x00c8
_C_T2	=	0x00c9
_TR2	=	0x00ca
_EXEN2	=	0x00cb
_TCLK	=	0x00cc
_RCLK	=	0x00cd
_EXF2	=	0x00ce
_TF2	=	0x00cf
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
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
;Allocation info for local variables in function 'delay'
;------------------------------------------------------------
;t                         Allocated to registers 
;i                         Allocated to registers r5 
;------------------------------------------------------------
;	binaryCount.c:9: static void delay(unsigned int t){
;	-----------------------------------------
;	 function delay
;	-----------------------------------------
_delay:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r6,dpl
	mov	r7,dph
00106$:
;	binaryCount.c:11: for ( ; t > 0; t--){
	mov	a,r6
	orl	a,r7
	jz	00108$
;	binaryCount.c:17: for (i = 200; i > 0; i--){
	mov	r5,#0xc8
00104$:
	mov	a,r5
	dec	a
	mov	r4,a
	mov	r5,a
	jnz	00104$
;	binaryCount.c:11: for ( ; t > 0; t--){
	dec	r6
	cjne	r6,#0xff,00133$
	dec	r7
00133$:
	sjmp	00106$
00108$:
;	binaryCount.c:21: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'delay2'
;------------------------------------------------------------
;t                         Allocated to registers 
;i                         Allocated to registers r5 
;------------------------------------------------------------
;	binaryCount.c:23: static void delay2(unsigned int t){
;	-----------------------------------------
;	 function delay2
;	-----------------------------------------
_delay2:
	mov	r6,dpl
	mov	r7,dph
00106$:
;	binaryCount.c:25: for ( ; t > 0; t--){
	mov	a,r6
	orl	a,r7
	jz	00108$
;	binaryCount.c:26: for (i = 200; i > 0; i--){
	mov	r5,#0xc8
00104$:
	mov	a,r5
	dec	a
	mov	r4,a
	mov	r5,a
	jnz	00104$
;	binaryCount.c:25: for ( ; t > 0; t--){
	dec	r6
	cjne	r6,#0xff,00133$
	dec	r7
00133$:
	sjmp	00106$
00108$:
;	binaryCount.c:34: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'delay3'
;------------------------------------------------------------
;t                         Allocated to registers 
;i                         Allocated to registers r5 
;------------------------------------------------------------
;	binaryCount.c:36: static void delay3(unsigned int t){
;	-----------------------------------------
;	 function delay3
;	-----------------------------------------
_delay3:
	mov	r6,dpl
	mov	r7,dph
00106$:
;	binaryCount.c:38: for ( ; t > 0; t--){
	mov	a,r6
	orl	a,r7
	jz	00108$
;	binaryCount.c:39: showLcd2();
	push	ar7
	push	ar6
	lcall	_showLcd2
	pop	ar6
	pop	ar7
;	binaryCount.c:44: for (i = 200; i > 0; i--){
	mov	r5,#0xc8
00104$:
	mov	a,r5
	dec	a
	mov	r4,a
	mov	r5,a
	jnz	00104$
;	binaryCount.c:38: for ( ; t > 0; t--){
	dec	r6
	cjne	r6,#0xff,00133$
	dec	r7
00133$:
	sjmp	00106$
00108$:
;	binaryCount.c:48: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'binaryCount'
;------------------------------------------------------------
;val                       Allocated to registers r6 
;i                         Allocated to registers r7 
;------------------------------------------------------------
;	binaryCount.c:50: void binaryCount(){
;	-----------------------------------------
;	 function binaryCount
;	-----------------------------------------
_binaryCount:
;	binaryCount.c:53: for (i = 0; i < 255; i++){
	mov	r7,#0x00
	mov	r6,#0xff
00104$:
;	binaryCount.c:54: P1 = val--;
	mov	_P1,r6
	dec	r6
;	binaryCount.c:55: delay(50);
	mov	dptr,#0x0032
	push	ar7
	push	ar6
	lcall	_delay
;	binaryCount.c:56: if (getMode()){
	lcall	_getMode
	mov	a,dpl
	pop	ar6
	pop	ar7
	jz	00105$
;	binaryCount.c:57: return;
	ret
00105$:
;	binaryCount.c:53: for (i = 0; i < 255; i++){
	inc	r7
	cjne	r7,#0xff,00117$
00117$:
	jc	00104$
;	binaryCount.c:60: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'digitDisplay_helper'
;------------------------------------------------------------
;button                    Allocated to registers r7 
;------------------------------------------------------------
;	binaryCount.c:62: unsigned char digitDisplay_helper(){
;	-----------------------------------------
;	 function digitDisplay_helper
;	-----------------------------------------
_digitDisplay_helper:
;	binaryCount.c:64: button = readButton();
	lcall	_readButton
	mov	r7,dpl
;	binaryCount.c:65: switch (button){
	cjne	r7,#0x01,00125$
	sjmp	00101$
00125$:
	cjne	r7,#0x02,00126$
	sjmp	00106$
00126$:
	cjne	r7,#0x03,00127$
	sjmp	00103$
00127$:
;	binaryCount.c:66: case 1:
	cjne	r7,#0x04,00106$
	sjmp	00104$
00101$:
;	binaryCount.c:67: mode++;
	inc	_mode
;	binaryCount.c:68: return 1;
	mov	dpl,#0x01
;	binaryCount.c:72: case 3:
	ret
00103$:
;	binaryCount.c:73: addLcd(3);
	mov	dpl,#0x03
	lcall	_addLcd
;	binaryCount.c:74: break;
;	binaryCount.c:75: case 4:
	sjmp	00106$
00104$:
;	binaryCount.c:76: minusLcd2(3);
	mov	dpl,#0x03
	lcall	_minusLcd2
;	binaryCount.c:80: }
00106$:
;	binaryCount.c:81: return 0;
	mov	dpl,#0x00
;	binaryCount.c:82: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'digitDisplay'
;------------------------------------------------------------
;	binaryCount.c:85: void digitDisplay(){
;	-----------------------------------------
;	 function digitDisplay
;	-----------------------------------------
_digitDisplay:
;	binaryCount.c:86: showLcd2();
	lcall	_showLcd2
;	binaryCount.c:87: if (digitDisplay_helper()){
	lcall	_digitDisplay_helper
	mov	a,dpl
	jz	00103$
;	binaryCount.c:88: return;
00103$:
;	binaryCount.c:90: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'cylon'
;------------------------------------------------------------
;val                       Allocated to registers r5 
;i                         Allocated to registers r6 
;------------------------------------------------------------
;	binaryCount.c:92: void cylon(){
;	-----------------------------------------
;	 function cylon
;	-----------------------------------------
_cylon:
;	binaryCount.c:94: val = 0xFE;
	mov	r7,#0xfe
;	binaryCount.c:95: for (i = 0; i < 7; i++){
	mov	r6,#0x00
00107$:
;	binaryCount.c:96: P1 = val;
	mov	_P1,r7
;	binaryCount.c:97: val = val<<1;
	mov	ar5,r7
	mov	a,r5
	add	a,r5
	mov	r5,a
;	binaryCount.c:98: val = val | 0x01;
	orl	ar5,#0x01
	mov	ar7,r5
;	binaryCount.c:102: delay2(50);
	mov	dptr,#0x0032
	push	ar7
	push	ar6
	lcall	_delay2
;	binaryCount.c:103: if (getMode()){
	lcall	_getMode
	mov	a,dpl
	pop	ar6
	pop	ar7
	jz	00108$
;	binaryCount.c:104: return;
	ret
00108$:
;	binaryCount.c:95: for (i = 0; i < 7; i++){
	inc	r6
	cjne	r6,#0x07,00139$
00139$:
	jc	00107$
;	binaryCount.c:107: for (i = 0; i < 7; i++){
	mov	r6,#0x00
00109$:
;	binaryCount.c:108: P1 = val;
;	binaryCount.c:109: val = val>>1;
	mov	a,r7
	mov	_P1,a
	clr	c
	rrc	a
	mov	r5,a
;	binaryCount.c:110: val = val | 0x80;
	orl	ar5,#0x80
	mov	ar7,r5
;	binaryCount.c:114: delay2(50);
	mov	dptr,#0x0032
	push	ar7
	push	ar6
	lcall	_delay2
;	binaryCount.c:115: if (getMode()){
	lcall	_getMode
	mov	a,dpl
	pop	ar6
	pop	ar7
	jz	00110$
;	binaryCount.c:116: return;
	ret
00110$:
;	binaryCount.c:107: for (i = 0; i < 7; i++){
	inc	r6
	cjne	r6,#0x07,00142$
00142$:
	jc	00109$
;	binaryCount.c:119: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'dualCylon'
;------------------------------------------------------------
;val1                      Allocated to registers r4 
;val2                      Allocated to registers r4 
;i                         Allocated to registers r5 
;------------------------------------------------------------
;	binaryCount.c:121: void dualCylon(){
;	-----------------------------------------
;	 function dualCylon
;	-----------------------------------------
_dualCylon:
;	binaryCount.c:123: val1 = 0xFE;
	mov	r7,#0xfe
;	binaryCount.c:124: val2 = 0x7F;
	mov	r6,#0x7f
;	binaryCount.c:125: for (i = 0; i < 6; i++){
	mov	r5,#0x00
00104$:
;	binaryCount.c:126: P1 = val1&val2;
	mov	a,r6
	anl	a,r7
	mov	_P1,a
;	binaryCount.c:127: val1 = val1<<1;
	mov	ar4,r7
	mov	a,r4
	add	a,r4
	mov	r4,a
;	binaryCount.c:128: val1 = val1|0x01;
	orl	ar4,#0x01
	mov	ar7,r4
;	binaryCount.c:130: val2 = val2>>1;
	mov	a,r6
	clr	c
	rrc	a
	mov	r4,a
;	binaryCount.c:131: val2 = val2|0x80;
	orl	ar4,#0x80
	mov	ar6,r4
;	binaryCount.c:135: delay2(50);
	mov	dptr,#0x0032
	push	ar7
	push	ar6
	push	ar5
	lcall	_delay2
;	binaryCount.c:136: if (getMode()){
	lcall	_getMode
	mov	a,dpl
	pop	ar5
	pop	ar6
	pop	ar7
	jz	00105$
;	binaryCount.c:137: return;
	ret
00105$:
;	binaryCount.c:125: for (i = 0; i < 6; i++){
	inc	r5
	cjne	r5,#0x06,00119$
00119$:
	jc	00104$
;	binaryCount.c:140: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
