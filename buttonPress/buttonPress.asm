;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.8.0 #10562 (Linux)
;--------------------------------------------------------
	.module buttonPress
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _readButton
	.globl _readButton_helper
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
_readButton_buttonBucket_65536_10:
	.ds 5
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
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
;Allocation info for local variables in function 'readButton_helper'
;------------------------------------------------------------
;button                    Allocated to registers r7 
;------------------------------------------------------------
;	buttonPress.c:4: unsigned char readButton_helper(){
;	-----------------------------------------
;	 function readButton_helper
;	-----------------------------------------
_readButton_helper:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	buttonPress.c:6: button = 0;
	mov	r7,#0x00
;	buttonPress.c:7: if (P3_2 == 0){
	jb	_P3_2,00110$
;	buttonPress.c:8: button = 4;
	mov	r7,#0x04
	sjmp	00111$
00110$:
;	buttonPress.c:9: } else if (P3_3 == 0){
	jb	_P3_3,00107$
;	buttonPress.c:10: button = 3;
	mov	r7,#0x03
	sjmp	00111$
00107$:
;	buttonPress.c:11: } else if (P3_4 == 0){
	jb	_P3_4,00104$
;	buttonPress.c:12: button = 2;
	mov	r7,#0x02
	sjmp	00111$
00104$:
;	buttonPress.c:13: } else if (P3_5 == 0){
	jb	_P3_5,00111$
;	buttonPress.c:14: button = 1;
	mov	r7,#0x01
00111$:
;	buttonPress.c:16: return button;
	mov	dpl,r7
;	buttonPress.c:17: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'readButton'
;------------------------------------------------------------
;valb                      Allocated to registers r5 
;buttonBucket              Allocated with name '_readButton_buttonBucket_65536_10'
;x                         Allocated to registers r6 
;z                         Allocated to registers r7 
;store                     Allocated to registers r7 
;y                         Allocated to registers 
;------------------------------------------------------------
;	buttonPress.c:20: unsigned char readButton(){
;	-----------------------------------------
;	 function readButton
;	-----------------------------------------
_readButton:
;	buttonPress.c:22: unsigned char buttonBucket[5] = {0};
	mov	_readButton_buttonBucket_65536_10,#0x00
	mov	(_readButton_buttonBucket_65536_10 + 0x0001),#0x00
	mov	(_readButton_buttonBucket_65536_10 + 0x0002),#0x00
	mov	(_readButton_buttonBucket_65536_10 + 0x0003),#0x00
	mov	(_readButton_buttonBucket_65536_10 + 0x0004),#0x00
;	buttonPress.c:23: if(valb = readButton_helper()){
	lcall	_readButton_helper
	mov	a,dpl
	mov	r6,a
	jz	00109$
;	buttonPress.c:24: buttonBucket[valb]++;
	mov	a,r6
	add	a,#_readButton_buttonBucket_65536_10
	mov	r1,a
	mov	a,@r1
	inc	a
	mov	@r1,a
;	buttonPress.c:26: z = 5;
	mov	r7,#0x05
00113$:
;	buttonPress.c:27: for (; z > 0; z--){
	mov	a,r7
	jz	00104$
;	buttonPress.c:28: for (x = 200; x > 0; x--){
	mov	r6,#0xc8
00110$:
;	buttonPress.c:29: valb = readButton_helper();
	push	ar7
	push	ar6
	lcall	_readButton_helper
	mov	r5,dpl
	pop	ar6
	pop	ar7
;	buttonPress.c:30: if (valb){
	mov	a,r5
	jz	00111$
;	buttonPress.c:31: buttonBucket[valb]++;
	mov	a,r5
	add	a,#_readButton_buttonBucket_65536_10
	mov	r1,a
	mov	a,@r1
	mov	r5,a
	inc	a
	mov	@r1,a
00111$:
;	buttonPress.c:28: for (x = 200; x > 0; x--){
	mov	a,r6
	dec	a
	mov	r5,a
	mov	r6,a
	jnz	00110$
;	buttonPress.c:27: for (; z > 0; z--){
	dec	r7
	sjmp	00113$
00104$:
;	buttonPress.c:35: char store = 0;
	mov	r7,#0x00
;	buttonPress.c:36: for (char y = 1; y < 4; y++){
	mov	r6,#0x01
00116$:
	cjne	r6,#0x04,00175$
00175$:
	jnc	00107$
;	buttonPress.c:37: if (buttonBucket[y] > buttonBucket[store]){
	mov	a,r6
	add	a,#_readButton_buttonBucket_65536_10
	mov	r1,a
	mov	ar5,@r1
	mov	a,r7
	add	a,#_readButton_buttonBucket_65536_10
	mov	r1,a
	mov	ar4,@r1
	clr	c
	mov	a,r4
	subb	a,r5
	jnc	00117$
;	buttonPress.c:38: store = y;
	mov	ar7,r6
00117$:
;	buttonPress.c:36: for (char y = 1; y < 4; y++){
	inc	r6
	sjmp	00116$
00107$:
;	buttonPress.c:41: return store;	
	mov	dpl,r7
	ret
00109$:
;	buttonPress.c:43: return 0;
	mov	dpl,#0x00
;	buttonPress.c:44: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
