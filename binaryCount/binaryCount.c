#include <8052.h>
#include "../a_lcd/a_lcd.h"

extern unsigned char mode;
extern unsigned char getMode();

static unsigned char delay(unsigned int t){
	unsigned char i;
	for ( ; t > 0; t--){
		showLcd2();
		for (i = 200; i > 0; i--){
		    if (getMode()){
			    return 1;
		    }
		}
	}
	return 0;
}

static unsigned char delay2(unsigned int t){
	unsigned char i;
	for ( ; t > 0; t--){
		for (i = 200; i > 0; i--){
			if (getMode()){
				return 1;
			}
		}
	}
	return 0;
}

void binaryCount(){
	unsigned char val, i;
	val = 0xFF;
	//showLcd2();
	for (i = 0; i < 255; i++){
		P1 = val--;
		addLcd(3);
		if(delay(5)){
			return;
		}
	}
}

void cylon(){
	unsigned char val, i;
	val = 0xFE;
	for (i = 0; i < 7; i++){
		P1 = val;
		val = val<<1;
		val = val | 0x01;
		if(delay2(10)){
			return;
		}
	}
	for (i = 0; i < 7; i++){
		P1 = val;
		val = val>>1;
		val = val | 0x80;
		if(delay2(10)){
			return;
		}
	}
}

void dualCylon(){
	unsigned char val1, val2, i;
	val1 = 0xFE;
	val2 = 0x7F;
	for (i = 0; i < 6; i++){
		P1 = val1&val2;
		val1 = val1<<1;
		val1 = val1|0x01;

		val2 = val2>>1;
		val2 = val2|0x80;
		if(delay2(10)){
			return;
		};
	}
}
/*
void main(){
	//binaryCount();
	cylon();
	//dualCylon();
}
*/
