#include <8051.h>

#define	LED	P1

void Key_INT0(void) __interrupt(0) __using(1)
{
	LED = ~LED;		// flip LEDs
}

void Key_INT1(void) __interrupt(2) __using(1)
{
	LED ^= 0XF;		// flip LEDs
}

void Key_INT2(void) __interrupt(8) __using(1)
{
	LED ^= 0X3;		// flip LEDs
}

void Key_INT3(void) __interrupt(9) __using(1)
{
	LED ^= 0X1;		// flip LEDs
}

void main(void)
{
	LED = 0xff;		// all LEDs off
	EA = 1;			// enable global interrupts
	EX0 = 1;		// external interrupt 0 enabled
	IT0 = 0;		// level triggered
	EX1 = 1;
	IT1 = 0;
	ET0 = 1;
	TF0 = 0;
	ET1 = 1;
	TF1 = 0;

	while (1);		// other work can be done concurrently here
}
