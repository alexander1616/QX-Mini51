#include <8052.h>
#include "../a_lcd/a_lcd.h"
#include "../buttonPress/buttonPress.h"
#include "../binaryCount/binaryCount.h"
#include "../i2c/i2c.h"

unsigned char mode = 0;
extern void delayMs(unsigned int);

unsigned char getMode(){
    unsigned char switchMode;
    switchMode = readButton();
    if (switchMode == 1){
        mode++;
        /*if (mode > 3){
            mode = 0;
        }*/
        return 1;
    }
    return 0;
}

void main(){
    lcd_Init();
    delayMs(1000);
    printMessage();
    while(1){
       unsigned char button;
        button = readButton();
        if (button == 1){
            mode++;
        }
	    switch (mode){
	   	    case 0:
                dualCylon();
			    break;
		    case 1:
                cylon();
			    break;
		    case 2:
                binaryCount();
			    break;
		    case 3:
                digitDisplay();
			    break;
            default:
                mode = 0;
                break;
        }
    }
}
