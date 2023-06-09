#include <8052.h>
#include "../a_lcd/a_lcd.h"
#include "../buttonPress/buttonPress.h"

extern unsigned char mode;
extern unsigned char getMode();
extern unsigned char lcdVal[4];

static void delay(unsigned int t){
	unsigned char i;
	for ( ; t > 0; t--){
		//showLcd2();
	   /* if (getMode()){
		    return 1;
	    }
        */
		for (i = 200; i > 0; i--){
	    }
	}
	//return 0;
}

static void delay2(unsigned int t){
	unsigned char i;
	for ( ; t > 0; t--){
		for (i = 200; i > 0; i--){
		}
	}
	/*if (getMode()){
		return 1;
	}
	return 0;
    */
}

static void delay3(unsigned int t){
	unsigned char i;
	for ( ; t > 0; t--){
		showLcd2();
	   /* if (getMode()){
		    return 1;
	    }
        */
		for (i = 200; i > 0; i--){
	    }
	}
	//return 0;
}

void binaryCount(){
	unsigned char val, i;
	val = 0xFF;
	for (i = 0; i < 255; i++){
		P1 = val--;
        delay(50);
        if (getMode()){
            return;
        }
	}
}

unsigned char digitDisplay_helper(){
    unsigned char button;
    button = readButton();
    switch (button){
        case 1:
            mode++;
            return 1;
        case 2:
            //minusLcd2(3);
            break;
        case 3:
            addLcd(3);
            break;
        case 4:
            minusLcd2(3);
            break;
        default:
            break;
    }
    return 0;
}


void digitDisplay(){
    showLcd2();
    if (digitDisplay_helper()){
        return;
    }
}

void cylon(){
	unsigned char val, i;
	val = 0xFE;
	for (i = 0; i < 7; i++){
		P1 = val;
		val = val<<1;
		val = val | 0x01;
		/*if(delay2(50)){
			return;
		}*/
        delay2(50);
        if (getMode()){
            return;
        }
	}
	for (i = 0; i < 7; i++){
		P1 = val;
		val = val>>1;
		val = val | 0x80;
		/*if(delay2(50)){
			return;
		}*/
        delay2(50);
        if (getMode()){
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
		/*if(delay2(50)){
			return;
		}*/
        delay2(50);
        if (getMode()){
            return;
        }
	}
}
/*
void main(){
	//binaryCount();
	cylon();
	//dualCylon();
}
*/
