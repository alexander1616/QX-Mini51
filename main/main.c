#include <8052.h>
#include "../a_lcd/a_lcd.h"
#include "../buttonPress/buttonPress.h"
#include "../binaryCount/binaryCount.h"

unsigned char mode = 0;

unsigned char getMode(){
    unsigned char switchMode;
    switchMode = readButton();
    if (switchMode == 1){
        mode++;
        if (mode > 2){
            mode = 0;
        }
        return 1;
    }
    return 0;
}

void main(){
    while(1){
        unsigned char button;
        button = readButton();
        if (button == 1){
            mode++;
            if (mode > 2){
                mode = 0;
            }
        }
	    switch (mode){
	   	    case 0:
                //binaryCount();
                showLcd(0, 1);
			    break;
		    case 1:
                cylon();
                showLcd(1, 2);
			    break;
		    case 2:
                //dualCylon();
                showLcd(2, 3);
			    break;
		    case 3:
                showLcd(3, 4);
			    break;
            default:
                break;
        }
    }
}
