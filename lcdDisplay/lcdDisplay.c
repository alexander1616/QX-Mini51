#include <8051.h>
#include "../include/typedefs.h"

// 0 bit means that segment is on
uchar table[] = { 0xc0, 0xf9, 0xa4, 0xb0, 0x99, 0x92, 0x82,
	0xf8, 0x80, 0x90
};

void delay(uchar i)
{
	uchar j, k;

	for (j = i; j > 0; j--)
		for (k = 125; k > 0; k--);
}

void display(void)
{
	P0 = 0xf9;
	P2_0 = 0;
	delay(5);
	P2_0 = 1;

	P0 = table[2];
	P2_1 = 0;
	delay(5);
	P2_1 = 1;

	P0 = table[3];
	P2_2 = 0;
	delay(5);
	P2_2 = 1;

	P0 = 0xF8;
	P2_3 = 0;
	delay(5);
	P2_3 = 1;

/*
	P0 = table[1];
	P2_1 = 0;
	delay(5);
	P2_1 = 1;

	P0 = table[2];
	P2_2 = 0;
	delay(5);
	P2_2 = 1;

	P0 = table[3];
	P2_3 = 0;
	delay(5);
	P2_3 = 1;
*/
}

void main(void)
{
	display();
}
