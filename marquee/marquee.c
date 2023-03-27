#include <8051.h>

#include "../include/typedefs.h"

void delay(uint z)
{
	uchar j;

	for (; z > 0; z--)
		for (j = 200; j > 0; j--);
}

void main(void)
{
	uchar num, dat1, dat2;

	delay(500);
	P0 = 0;
	while (1) {
		dat1 = 0xfe;
		dat2 = 0x7f;
		for (num = 0; num < 7; num++) {
			P1 = dat1;
			dat1 <<= 1;
			delay(500);
		}
		for (num = 0; num < 7; num++) {
			P1 = dat2;
			dat2 >>= 1;
			delay(500);
		}
	}
}
