#include <8052.h>
#include "../include/typedefs.h"

void delay(){
	int i, j;
	for (i = 0; i< 0xff; i++){
		for (j = 0; j<0xff; j++);
	}
}

void main(){
	//P1 = 0x00;
	//delay();
	//P1 = 0xff;
	//delay();
	//P1 = 0xEF;
	P1_3 = 0;
	
	P1_0 = 0;
	P1_1 = 0;
	P1_2 = 0;
	P1_4 = 1;
	P1_5 = 1;
	P1_6 = 0;
	P1_7 = 0;
//	P1_8 = 0;
}
