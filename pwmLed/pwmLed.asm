;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.8.0 #10562 (Linux)
;--------------------------------------------------------
	.module pwmLed
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _Beep
	.globl _delayms
	.globl _delay
	.globl _timer1
	.globl _timer0
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
	.globl _PWM
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
_PWM::
	.ds 1
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
;--------------------------------------------------------
; Stack segment in internal ram 
;--------------------------------------------------------
	.area	SSEG
__start__stack:
	.ds	1

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
; interrupt vector 
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
	reti
	.ds	7
	ljmp	_timer0
	.ds	5
	reti
	.ds	7
	ljmp	_timer1
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	.globl __sdcc_gsinit_startup
	.globl __sdcc_program_startup
	.globl __start__stack
	.globl __mcs51_genXINIT
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genRAMCLEAR
;	pwmLed.c:5: unsigned char PWM = 0x7f;
	mov	_PWM,#0x7f
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
__sdcc_program_startup:
	ljmp	_main
;	return from main will return to caller
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'timer0'
;------------------------------------------------------------
;	pwmLed.c:7: void timer0(void) __interrupt(1)
;	-----------------------------------------
;	 function timer0
;	-----------------------------------------
_timer0:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	pwmLed.c:9: TR1 = 0;
;	assignBit
	clr	_TR1
;	pwmLed.c:10: TH0 = 0xfc;
	mov	_TH0,#0xfc
;	pwmLed.c:11: TL0 = 0x66;
	mov	_TL0,#0x66
;	pwmLed.c:12: TH1 = PWM;
	mov	_TH1,_PWM
;	pwmLed.c:13: TR1 = 1;
;	assignBit
	setb	_TR1
;	pwmLed.c:14: P1 = 0x00;
	mov	_P1,#0x00
;	pwmLed.c:15: }
	reti
;	eliminated unneeded mov psw,# (no regs used in bank)
;	eliminated unneeded push/pop psw
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;	eliminated unneeded push/pop acc
;------------------------------------------------------------
;Allocation info for local variables in function 'timer1'
;------------------------------------------------------------
;	pwmLed.c:17: void timer1(void) __interrupt(3)
;	-----------------------------------------
;	 function timer1
;	-----------------------------------------
_timer1:
;	pwmLed.c:19: TR1 = 0;
;	assignBit
	clr	_TR1
;	pwmLed.c:20: P1 = 0xff;
	mov	_P1,#0xff
;	pwmLed.c:21: }
	reti
;	eliminated unneeded mov psw,# (no regs used in bank)
;	eliminated unneeded push/pop psw
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;	eliminated unneeded push/pop acc
;------------------------------------------------------------
;Allocation info for local variables in function 'delay'
;------------------------------------------------------------
;t                         Allocated to registers 
;------------------------------------------------------------
;	pwmLed.c:23: void delay(unsigned char t)
;	-----------------------------------------
;	 function delay
;	-----------------------------------------
_delay:
	mov	r7,dpl
;	pwmLed.c:25: while (t--);
00101$:
	mov	ar6,r7
	dec	r7
	mov	a,r6
	jnz	00101$
;	pwmLed.c:26: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'delayms'
;------------------------------------------------------------
;ms                        Allocated to registers 
;i                         Allocated to registers r6 
;------------------------------------------------------------
;	pwmLed.c:28: void delayms(unsigned char ms)
;	-----------------------------------------
;	 function delayms
;	-----------------------------------------
_delayms:
	mov	r7,dpl
;	pwmLed.c:32: while (ms--) {
00102$:
	mov	ar6,r7
	dec	r7
	mov	a,r6
	jz	00108$
;	pwmLed.c:33: for (i = 0; i < 120; i++);
	mov	r6,#0x78
00107$:
	mov	a,r6
	dec	a
	mov	r5,a
	mov	r6,a
	jnz	00107$
	sjmp	00102$
00108$:
;	pwmLed.c:35: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Beep'
;------------------------------------------------------------
;i                         Allocated to registers r7 
;------------------------------------------------------------
;	pwmLed.c:37: void Beep(void)
;	-----------------------------------------
;	 function Beep
;	-----------------------------------------
_Beep:
;	pwmLed.c:41: for (i = 0; i < 100; i++) {
	mov	r7,#0x00
00102$:
;	pwmLed.c:42: delay(100);
	mov	dpl,#0x64
	push	ar7
	lcall	_delay
	pop	ar7
;	pwmLed.c:43: BEEP ^= 1;
	cpl	_P3_6
;	pwmLed.c:41: for (i = 0; i < 100; i++) {
	inc	r7
	cjne	r7,#0x64,00115$
00115$:
	jc	00102$
;	pwmLed.c:45: BEEP = 1;
;	assignBit
	setb	_P3_6
;	pwmLed.c:46: delayms(100);
	mov	dpl,#0x64
;	pwmLed.c:47: }
	ljmp	_delayms
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;	pwmLed.c:49: void main(void)
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	pwmLed.c:51: P1 = 0xff;
	mov	_P1,#0xff
;	pwmLed.c:52: TMOD = 0x21;
	mov	_TMOD,#0x21
;	pwmLed.c:53: TH0 = 0xfc;
	mov	_TH0,#0xfc
;	pwmLed.c:54: TL0 = 0x66;
	mov	_TL0,#0x66
;	pwmLed.c:56: TH1 = PWM;
	mov	_TH1,_PWM
;	pwmLed.c:57: TL1 = 0;
	mov	_TL1,#0x00
;	pwmLed.c:59: EA = 1;
;	assignBit
	setb	_EA
;	pwmLed.c:60: ET0 = 1;
;	assignBit
	setb	_ET0
;	pwmLed.c:61: ET1 = 1;
;	assignBit
	setb	_ET1
;	pwmLed.c:63: TR0 = 1;
;	assignBit
	setb	_TR0
;	pwmLed.c:66: do {
00104$:
;	pwmLed.c:67: if (PWM != 0xff) {
	mov	a,#0xff
	cjne	a,_PWM,00138$
	sjmp	00102$
00138$:
;	pwmLed.c:68: PWM++;
	inc	_PWM
;	pwmLed.c:69: delayms(10);
	mov	dpl,#0x0a
	lcall	_delayms
	sjmp	00105$
00102$:
;	pwmLed.c:71: Beep();
	lcall	_Beep
00105$:
	jnb	_P3_4,00104$
;	pwmLed.c:73: do {
00110$:
;	pwmLed.c:74: if (PWM != 0x02) {
	mov	a,#0x02
	cjne	a,_PWM,00140$
	sjmp	00108$
00140$:
;	pwmLed.c:75: PWM--;
	dec	_PWM
;	pwmLed.c:76: delayms(10);
	mov	dpl,#0x0a
	lcall	_delayms
	sjmp	00111$
00108$:
;	pwmLed.c:78: Beep();
	lcall	_Beep
00111$:
	jnb	_P3_5,00110$
;	pwmLed.c:81: }
	sjmp	00104$
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
