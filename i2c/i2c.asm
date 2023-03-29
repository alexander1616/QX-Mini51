;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.8.0 #10562 (Linux)
;--------------------------------------------------------
	.module i2c
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _printMessage
	.globl _lcd_Init
	.globl _lcd_writeString
	.globl _lcd_writeChar
	.globl _lcd_send_bits
	.globl _i2c_read_byte
	.globl _i2c_write_byte
	.globl _i2c_read
	.globl _i2c_write
	.globl _i2c_stop
	.globl _i2c_start
	.globl _delayMs
	.globl _i2c_delay
	.globl _getMode
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
	.globl _lcd_writeChar_PARM_2
	.globl _i2c_write_byte_PARM_2
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
_i2c_write_byte_PARM_2:
	.ds 1
_lcd_writeChar_PARM_2:
	.ds 1
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
;Allocation info for local variables in function 'i2c_delay'
;------------------------------------------------------------
;cnt                       Allocated to registers 
;------------------------------------------------------------
;	i2c.c:13: void i2c_delay(unsigned cnt){
;	-----------------------------------------
;	 function i2c_delay
;	-----------------------------------------
_i2c_delay:
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
;	i2c.c:14: while(cnt--);
00101$:
	mov	ar4,r6
	mov	ar5,r7
	dec	r6
	cjne	r6,#0xff,00111$
	dec	r7
00111$:
	mov	a,r4
	orl	a,r5
	jnz	00101$
;	i2c.c:15: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'delayMs'
;------------------------------------------------------------
;i                         Allocated to registers 
;j                         Allocated to registers r5 
;------------------------------------------------------------
;	i2c.c:17: void delayMs(unsigned int i){
;	-----------------------------------------
;	 function delayMs
;	-----------------------------------------
_delayMs:
	mov	r6,dpl
	mov	r7,dph
00107$:
;	i2c.c:18: for (; i> 0; i--)
	mov	a,r6
	orl	a,r7
	jz	00109$
;	i2c.c:19: for (unsigned char j = 155; j > 0; j--);
	mov	r5,#0x9b
00104$:
	mov	a,r5
	jz	00108$
	dec	r5
	sjmp	00104$
00108$:
;	i2c.c:18: for (; i> 0; i--)
	dec	r6
	cjne	r6,#0xff,00135$
	dec	r7
00135$:
	sjmp	00107$
00109$:
;	i2c.c:20: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'i2c_start'
;------------------------------------------------------------
;	i2c.c:22: void i2c_start(void){
;	-----------------------------------------
;	 function i2c_start
;	-----------------------------------------
_i2c_start:
;	i2c.c:23: I2C_SDA = 1;
;	assignBit
	setb	_P0_6
;	i2c.c:24: I2C_SCL = 1;
;	assignBit
	setb	_P0_7
;	i2c.c:25: i2c_delay(10);
	mov	dptr,#0x000a
	lcall	_i2c_delay
;	i2c.c:26: I2C_SDA = 0;
;	assignBit
	clr	_P0_6
;	i2c.c:27: i2c_delay(10);
	mov	dptr,#0x000a
	lcall	_i2c_delay
;	i2c.c:28: I2C_SCL = 0;
;	assignBit
	clr	_P0_7
;	i2c.c:29: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'i2c_stop'
;------------------------------------------------------------
;	i2c.c:31: void i2c_stop(void){
;	-----------------------------------------
;	 function i2c_stop
;	-----------------------------------------
_i2c_stop:
;	i2c.c:32: i2c_delay(10);
	mov	dptr,#0x000a
	lcall	_i2c_delay
;	i2c.c:33: I2C_SDA = 0;
;	assignBit
	clr	_P0_6
;	i2c.c:34: i2c_delay(10);
	mov	dptr,#0x000a
	lcall	_i2c_delay
;	i2c.c:35: I2C_SCL = 1;
;	assignBit
	setb	_P0_7
;	i2c.c:36: i2c_delay(10);
	mov	dptr,#0x000a
	lcall	_i2c_delay
;	i2c.c:37: I2C_SDA = 1;
;	assignBit
	setb	_P0_6
;	i2c.c:38: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'i2c_write'
;------------------------------------------------------------
;val                       Allocated to registers r7 
;i                         Allocated to registers r6 
;ack                       Allocated to registers r7 
;------------------------------------------------------------
;	i2c.c:40: unsigned char i2c_write(unsigned char val){
;	-----------------------------------------
;	 function i2c_write
;	-----------------------------------------
_i2c_write:
	mov	r7,dpl
;	i2c.c:41: unsigned char i=9, ack=0;
	mov	r6,#0x09
;	i2c.c:43: while(--i){
00101$:
	mov	a,r6
	dec	a
	mov	r6,a
	jz	00103$
;	i2c.c:44: i2c_delay(10);
	mov	dptr,#0x000a
	push	ar7
	push	ar6
	lcall	_i2c_delay
	pop	ar6
	pop	ar7
;	i2c.c:45: I2C_SDA = (val & 0x80) ? 1 : 0;
	mov	a,r7
	rl	a
	anl	a,#0x01
	add	a,#0xff
	mov	_P0_6,c
;	i2c.c:46: i2c_delay(10);
	mov	dptr,#0x000a
	push	ar7
	push	ar6
	lcall	_i2c_delay
;	i2c.c:47: I2C_SCL = 1;
;	assignBit
	setb	_P0_7
;	i2c.c:48: i2c_delay(10);
	mov	dptr,#0x000a
	lcall	_i2c_delay
	pop	ar6
	pop	ar7
;	i2c.c:49: val<<= 1;
	mov	ar5,r7
	mov	a,r5
	add	a,r5
	mov	r7,a
;	i2c.c:50: I2C_SCL = 0;
;	assignBit
	clr	_P0_7
	sjmp	00101$
00103$:
;	i2c.c:52: i2c_delay(10);
	mov	dptr,#0x000a
	lcall	_i2c_delay
;	i2c.c:53: I2C_SDA = 1;
;	assignBit
	setb	_P0_6
;	i2c.c:54: i2c_delay(10);
	mov	dptr,#0x000a
	lcall	_i2c_delay
;	i2c.c:55: I2C_SCL = 1;
;	assignBit
	setb	_P0_7
;	i2c.c:56: i2c_delay(10);
	mov	dptr,#0x000a
	lcall	_i2c_delay
;	i2c.c:57: ack = I2C_SDA;
	mov	c,_P0_6
	clr	a
	rlc	a
	mov	r7,a
;	i2c.c:58: i2c_delay(10);
	mov	dptr,#0x000a
	push	ar7
	lcall	_i2c_delay
	pop	ar7
;	i2c.c:59: I2C_SCL = 0;
;	assignBit
	clr	_P0_7
;	i2c.c:60: return ack;
	mov	dpl,r7
;	i2c.c:61: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'i2c_read'
;------------------------------------------------------------
;i                         Allocated to registers r7 
;val                       Allocated to registers r5 
;------------------------------------------------------------
;	i2c.c:63: unsigned char i2c_read(void){
;	-----------------------------------------
;	 function i2c_read
;	-----------------------------------------
_i2c_read:
;	i2c.c:64: unsigned char i=9, val=0;
	mov	r7,#0x09
	mov	r6,#0x00
;	i2c.c:66: while(--i){
00101$:
	mov	a,r7
	dec	a
	mov	r7,a
	jz	00103$
;	i2c.c:67: val<<= 1;
	mov	ar5,r6
	mov	a,r5
	add	a,r5
	mov	r5,a
;	i2c.c:68: i2c_delay(10);
	mov	dptr,#0x000a
	push	ar7
	push	ar5
	lcall	_i2c_delay
;	i2c.c:69: I2C_SCL = 1;
;	assignBit
	setb	_P0_7
;	i2c.c:70: i2c_delay(10);
	mov	dptr,#0x000a
	lcall	_i2c_delay
	pop	ar5
;	i2c.c:71: val|= I2C_SDA;
	mov	c,_P0_6
	clr	a
	rlc	a
	orl	a,r5
	mov	r6,a
;	i2c.c:72: i2c_delay(10);
	mov	dptr,#0x000a
	push	ar6
	lcall	_i2c_delay
	pop	ar6
	pop	ar7
;	i2c.c:73: I2C_SCL = 0;
;	assignBit
	clr	_P0_7
	sjmp	00101$
00103$:
;	i2c.c:81: return val;
	mov	dpl,r6
;	i2c.c:82: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'i2c_write_byte'
;------------------------------------------------------------
;val                       Allocated with name '_i2c_write_byte_PARM_2'
;addr                      Allocated to registers r7 
;------------------------------------------------------------
;	i2c.c:84: void i2c_write_byte(unsigned char addr, unsigned char val){
;	-----------------------------------------
;	 function i2c_write_byte
;	-----------------------------------------
_i2c_write_byte:
;	i2c.c:85: addr<<=1;
	mov	a,dpl
	add	a,dpl
	mov	r7,a
;	i2c.c:86: i2c_start();
	push	ar7
	lcall	_i2c_start
	pop	ar7
;	i2c.c:87: i2c_write(addr);
	mov	dpl,r7
	lcall	_i2c_write
;	i2c.c:88: i2c_write(val);
	mov	dpl,_i2c_write_byte_PARM_2
	lcall	_i2c_write
;	i2c.c:89: i2c_stop();
;	i2c.c:90: }
	ljmp	_i2c_stop
;------------------------------------------------------------
;Allocation info for local variables in function 'i2c_read_byte'
;------------------------------------------------------------
;addr                      Allocated to registers r7 
;value                     Allocated to registers r6 
;------------------------------------------------------------
;	i2c.c:92: unsigned char i2c_read_byte(unsigned char addr){
;	-----------------------------------------
;	 function i2c_read_byte
;	-----------------------------------------
_i2c_read_byte:
	mov	r7,dpl
;	i2c.c:94: unsigned char value = 0;
	mov	r6,#0x00
;	i2c.c:95: addr <<=1;
	mov	a,r7
	add	a,r7
	mov	r7,a
;	i2c.c:96: addr |= 1;
	orl	ar7,#0x01
;	i2c.c:97: i2c_start();
	push	ar7
	push	ar6
	lcall	_i2c_start
	pop	ar6
	pop	ar7
;	i2c.c:98: if(!i2c_write(addr)){
	mov	dpl,r7
	push	ar6
	lcall	_i2c_write
	mov	a,dpl
	pop	ar6
	jnz	00102$
;	i2c.c:99: value = i2c_read();
	lcall	_i2c_read
	mov	r6,dpl
00102$:
;	i2c.c:101: i2c_stop();
	push	ar6
	lcall	_i2c_stop
	pop	ar6
;	i2c.c:103: return value;
	mov	dpl,r6
;	i2c.c:104: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'lcd_send_bits'
;------------------------------------------------------------
;data                      Allocated to registers r7 
;------------------------------------------------------------
;	i2c.c:106: void lcd_send_bits(unsigned char data){
;	-----------------------------------------
;	 function lcd_send_bits
;	-----------------------------------------
_lcd_send_bits:
	mov	r7,dpl
;	i2c.c:107: i2c_write_byte(LCD_I2C_ADDR, data);
	mov	_i2c_write_byte_PARM_2,r7
	mov	dpl,#0x27
	push	ar7
	lcall	_i2c_write_byte
	pop	ar7
;	i2c.c:108: i2c_write_byte(LCD_I2C_ADDR, data|0x04);
	mov	ar5,r7
	orl	ar5,#0x04
	mov	_i2c_write_byte_PARM_2,r5
	mov	dpl,#0x27
	push	ar7
	lcall	_i2c_write_byte
;	i2c.c:109: i2c_delay(50);
	mov	dptr,#0x0032
	lcall	_i2c_delay
	pop	ar7
;	i2c.c:110: i2c_write_byte(LCD_I2C_ADDR, data*~0x04);
	mov	a,r7
	mov	b,#0xfb
	mul	ab
	mov	_i2c_write_byte_PARM_2,a
	mov	dpl,#0x27
	lcall	_i2c_write_byte
;	i2c.c:111: delayMs(1);
	mov	dptr,#0x0001
;	i2c.c:112: }
	ljmp	_delayMs
;------------------------------------------------------------
;Allocation info for local variables in function 'lcd_writeChar'
;------------------------------------------------------------
;data                      Allocated with name '_lcd_writeChar_PARM_2'
;mode                      Allocated to registers r7 
;hnib                      Allocated to registers r5 
;lnib                      Allocated to registers r6 
;------------------------------------------------------------
;	i2c.c:114: void lcd_writeChar(unsigned char mode, unsigned char data){
;	-----------------------------------------
;	 function lcd_writeChar
;	-----------------------------------------
_lcd_writeChar:
	mov	r7,dpl
;	i2c.c:115: unsigned char hnib = data & 0xF0;
	mov	r6,_lcd_writeChar_PARM_2
	mov	a,#0xf0
	anl	a,r6
	mov	r5,a
;	i2c.c:116: unsigned char lnib = (data << 4) & 0xF0;
	mov	a,r6
	swap	a
	anl	a,#0xf0
	mov	r6,a
	anl	ar6,#0xf0
;	i2c.c:117: lcd_send_bits(hnib | mode);
	mov	a,r7
	orl	a,r5
	mov	dpl,a
	push	ar7
	push	ar6
	lcall	_lcd_send_bits
	pop	ar6
	pop	ar7
;	i2c.c:118: lcd_send_bits(lnib | mode);
	mov	a,r7
	orl	a,r6
	mov	dpl,a
;	i2c.c:119: }
	ljmp	_lcd_send_bits
;------------------------------------------------------------
;Allocation info for local variables in function 'lcd_writeString'
;------------------------------------------------------------
;text                      Allocated to registers r5 r6 r7 
;i                         Allocated to registers r4 
;------------------------------------------------------------
;	i2c.c:121: void lcd_writeString(unsigned char text[]){
;	-----------------------------------------
;	 function lcd_writeString
;	-----------------------------------------
_lcd_writeString:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	i2c.c:123: while (text[i] != '\0'){
	mov	r4,#0x00
00101$:
	mov	a,r4
	add	a,r5
	mov	r1,a
	clr	a
	addc	a,r6
	mov	r2,a
	mov	ar3,r7
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	lcall	__gptrget
	mov	r3,a
	jz	00104$
;	i2c.c:124: lcd_writeChar(1, text[i]);
	mov	_lcd_writeChar_PARM_2,r3
	mov	dpl,#0x01
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_lcd_writeChar
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	i2c.c:125: i++;
	inc	r4
	sjmp	00101$
00104$:
;	i2c.c:127: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'lcd_Init'
;------------------------------------------------------------
;	i2c.c:129: void lcd_Init(){
;	-----------------------------------------
;	 function lcd_Init
;	-----------------------------------------
_lcd_Init:
;	i2c.c:130: lcd_writeChar(0, 0x33);
	mov	_lcd_writeChar_PARM_2,#0x33
	mov	dpl,#0x00
	lcall	_lcd_writeChar
;	i2c.c:131: delayMs(2);
	mov	dptr,#0x0002
	lcall	_delayMs
;	i2c.c:132: lcd_writeChar(0, 0x32);
	mov	_lcd_writeChar_PARM_2,#0x32
	mov	dpl,#0x00
	lcall	_lcd_writeChar
;	i2c.c:133: delayMs(2);
	mov	dptr,#0x0002
	lcall	_delayMs
;	i2c.c:134: lcd_writeChar(0, 0x28);
	mov	_lcd_writeChar_PARM_2,#0x28
	mov	dpl,#0x00
	lcall	_lcd_writeChar
;	i2c.c:135: delayMs(2);
	mov	dptr,#0x0002
	lcall	_delayMs
;	i2c.c:136: lcd_writeChar(0, 0x0C);
	mov	_lcd_writeChar_PARM_2,#0x0c
	mov	dpl,#0x00
	lcall	_lcd_writeChar
;	i2c.c:137: lcd_writeChar(0, 0x01);
	mov	_lcd_writeChar_PARM_2,#0x01
	mov	dpl,#0x00
	lcall	_lcd_writeChar
;	i2c.c:138: delayMs(2);
	mov	dptr,#0x0002
	lcall	_delayMs
;	i2c.c:139: lcd_writeChar(0, 0x06);
	mov	_lcd_writeChar_PARM_2,#0x06
	mov	dpl,#0x00
;	i2c.c:140: }
	ljmp	_lcd_writeChar
;------------------------------------------------------------
;Allocation info for local variables in function 'printMessage'
;------------------------------------------------------------
;	i2c.c:142: void printMessage(){
;	-----------------------------------------
;	 function printMessage
;	-----------------------------------------
_printMessage:
;	i2c.c:143: lcd_writeString("Hello World");
	mov	dptr,#___str_0
	mov	b,#0x80
	lcall	_lcd_writeString
;	i2c.c:144: lcd_writeChar(0, 0xC0);
	mov	_lcd_writeChar_PARM_2,#0xc0
	mov	dpl,#0x00
	lcall	_lcd_writeChar
;	i2c.c:145: lcd_writeString("   Bob is Great!");
	mov	dptr,#___str_1
	mov	b,#0x80
	lcall	_lcd_writeString
;	i2c.c:146: delayMs(10000);
	mov	dptr,#0x2710
	lcall	_delayMs
;	i2c.c:147: if (getMode()){
	lcall	_getMode
	mov	a,dpl
	jz	00103$
;	i2c.c:148: return;
00103$:
;	i2c.c:150: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_0:
	.ascii "Hello World"
	.db 0x00
___str_1:
	.ascii "   Bob is Great!"
	.db 0x00
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
