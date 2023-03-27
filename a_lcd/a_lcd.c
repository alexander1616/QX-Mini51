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

void showLcd2(){
	    	P0 = numTable[lcdVal[0]];
	    	P2_0 = 0;
	    	lcdDelay(5);
	    	P2_0 = 1;
    		P0 = numTable[lcdVal[1]];
    		P2_1 = 0;
    		lcdDelay(5);
    		P2_1 = 1;
		    P0 = numTable[lcdVal[2]];
		    P2_2 = 0;
		    lcdDelay(5);
		    P2_2 = 1;
		    P0 = numTable[lcdVal[3]];
		    P2_3 = 0;
		    lcdDelay(5);
		    P2_3 = 1;
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

int sumLcdVal(){
    int answer;
    answer = lcdVal[3] + lcdVal[2]*10 + lcdVal[1]*100 + lcdVal[0]*1000;
    return answer;
}

void addLcd(unsigned char ix){
    lcdVal[ix]++;
    if (lcdVal[ix]>9){
        lcdVal[ix] = 0;
        if (ix == 0){
            for (int i = 0; i < 4; i++){
                lcdVal[i] = 0;
            }
            return;
        }
        addLcd(ix-1);
    }
}

void minusLcd2(unsigned char ix){
    if (lcdVal[ix]!=0){
        lcdVal[ix]--;
    } else {
        if (lcdVal[ix-1]!=0){
            lcdVal[ix] = 9;
            minusLcd2(ix-1);
        } else {
            if (lcdVal[ix-2]!=0){
                lcdVal[ix] = 9;
                lcdVal[ix-1] = 9;
                minusLcd2(ix-2);
            } else {
                if (lcdVal[ix-3]!=0){
                    lcdVal[ix] = 9;
                    lcdVal[ix-1] = 9;
                    lcdVal[ix-2] = 9;
                    minusLcd2(ix-3);
                } else {
                    for (int i = 0; i < 4; i++){
                        lcdVal[i] = 9;
                    }
                    return;
                }
            }
        }
    }
}

void minusLcd(){
    int tVal = sumLcdVal();
    if (tVal == 0){
        tVal = 9999;
    } else {
        tVal--;
    }
    if (tVal > 0){
        lcdVal[3] = tVal % 10;
        tVal /= 10;
    }
    if (tVal > 0){
        lcdVal[2] = tVal%10;
        tVal /= 10;
    } 
    if (tVal > 0){
        lcdVal[1] = tVal%10;
        tVal /= 10;
    } 
    if (tVal > 0){
        lcdVal[0] = tVal%10;
        tVal /=10;
    }
    return;
}

void setLcd(unsigned char pos, unsigned char val){
	lcdVal[pos] = val;
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

