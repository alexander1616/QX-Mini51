#include <8052.h>
#include "../a_lcd/a_lcd.h"

unsigned char readButton(){
	unsigned char button;
	button = 0;
	if (P3_2 == 0){
		button = 4;
	} else if (P3_3 == 0){
		button = 3;
	} else if (P3_4 == 0){
		button = 2;
	} else if (P3_5 == 0){
		button = 1;
	}
	return button;
}
/*
void main (){
	while (1) {
		unsigned char button;
		button = readButton();
	        switch (button){
        	case 1:
            		showLcd(0, 1);
            		break;
        	case 2:
            		showLcd(1, 2);
            		break;
        	case 3:
            		showLcd(2, 3);
            		break;
        	case 4:
            		showLcd(3, 4);
            		break;
        	default:
            		break;
        	}
	}
}
*/
