#include <8051.h>

unsigned char numTable[] = { 0xC0, 0xF9, 0xA4, 0xB0, 0x99,   // 0, 1, 2, 3, 4
			     0x92, 0x82, 0xF8, 0x80, 0x90 }; // 5, 6, 7, 8, 9

//unsigned char *lcdPos[] = { &P2_0, &P2_1, &P2_2, &P2_3 };

void lcdDelay(unsigned char i){
	unsigned char j;
	for (; i > 0; i--){
		for (j = 125; j > 0; j--){
			;
		}
}
}

unsigned char lcdVal[4] = {0};
//unsigned char lcdCurVal[4] = {0};

void showLcd2(){
 //  if(lcdCurVal[0] != lcdVal[0]){
	    	P0 = numTable[lcdVal[0]];
	    	P2_0 = 0;
	    	lcdDelay(5);
	    	P2_0 = 1;
//            lcdCurVal[0] = lcdVal[0];
//    }
//    if(lcdCurVal[1] != lcdVal[1]){
    		P0 = numTable[lcdVal[1]];
    		P2_1 = 0;
    		lcdDelay(5);
    		P2_1 = 1;
//            lcdCurVal[1] = lcdVal[1];
//    }	
//    if(lcdCurVal[2] != lcdVal[2]){
		    P0 = numTable[lcdVal[2]];
		    P2_2 = 0;
		    lcdDelay(5);
		    P2_2 = 1;
//            lcdCurVal[2] = lcdVal[2];
//    }
//    if(lcdCurVal[3] != lcdVal[3]){
		    P0 = numTable[lcdVal[3]];
		    P2_3 = 0;
		    lcdDelay(5);
		    P2_3 = 1;
//            lcdCurVal[3] = lcdVal[3];
//    }
}

void showLcd3(unsigned char pos){
	P0 = numTable[lcdVal[pos]];
	switch (pos){
	case 0:
		P2_0 = 0;
		lcdDelay(5);
		P2_0 = 1;
		break;
	case 1:
		P2_1 = 0;
		lcdDelay(5);
		P2_1 = 1;
		break;
	case 2:
		P2_2 = 0;
		lcdDelay(5);
		P2_2 = 1;
		break;
	case 3:
		P2_3 = 0;
		lcdDelay(5);
		P2_3 = 1;
		break;
	default:
		return;
		break;
	}
}


void showLcd(unsigned char pos, unsigned char val){
	P0 = numTable[val];
	switch (pos){
	case 0:
		P2_0 = 0;
		lcdDelay(5);
		P2_0 = 1;
		break;
	case 1:
		P2_1 = 0;
		lcdDelay(5);
		P2_1 = 1;
		break;
	case 2:
		P2_2 = 0;
		lcdDelay(5);
		P2_2 = 1;
		break;
	case 3:
		P2_3 = 0;
		lcdDelay(5);
		P2_3 = 1;
		break;
	default:
		return;
		break;
	}
}

void addLcd(unsigned char ix){
    lcdVal[ix]++;
    if (lcdVal[ix]>9){
        lcdVal[ix] = 0;
        if (ix == 0){
            for (int i = 0; i < 4; i++){
                lcdVal[i] = 0;
            }
      //      showLcd2();
            return;
        }
        addLcd(ix-1);
    }
    //showLcd2();
}

void setLcd(unsigned char pos, unsigned char val){
	lcdVal[pos] = val;
    //showLcd(pos, val);
}

/*
void main(){
	unsigned char a, i;
	
	while (1) {
		for (a = 100; a > 0; a--) {
			if (a == 1){
				i++;
			}
			if (i > 9){
				i = 0;
			}
			showLcd(0, 1);
			showLcd(1, 3);
			showLcd(2, 5);
			showLcd(3, i);
		}

	}
	P0 = numTable[3];
	P2_3 = 0;
	lcdDelay(5);
	P2_3 = 1;
for (unsigned int a = 10000; a > 0; a--){
    setLcd(0, 6);
    setLcd(1, 9);
    setLcd(2, 8);
    setLcd(3, 1);
    showLcd2();
}
}
*/

