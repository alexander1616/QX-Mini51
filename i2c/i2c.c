#include <8051.h>
#define I2C_SDA P0_6
#define I2C_SCL P0_7
#define LED_I2C_ADDR 0x20
#define LCD_I2C_ADDR 0x27

// __sbit __at (0x86) SDA ;
// __sbit __at (0x87) SCL ;

extern unsigned char mode;
extern unsigned char getMode();

void i2c_delay(unsigned cnt){
  while(cnt--);
}

void delayMs(unsigned int i){
    for (; i> 0; i--)
        for (unsigned char j = 155; j > 0; j--);
}

void i2c_start(void){
  I2C_SDA = 1;
  I2C_SCL = 1;
  i2c_delay(10);
  I2C_SDA = 0;
  i2c_delay(10);
  I2C_SCL = 0;
}
 
void i2c_stop(void){
  i2c_delay(10);
  I2C_SDA = 0;
  i2c_delay(10);
  I2C_SCL = 1;
  i2c_delay(10);
  I2C_SDA = 1;
}
 
unsigned char i2c_write(unsigned char val){
  unsigned char i=9, ack=0;
 
  while(--i){
    i2c_delay(10);
    I2C_SDA = (val & 0x80) ? 1 : 0;
    i2c_delay(10);
    I2C_SCL = 1;
    i2c_delay(10);
    val<<= 1;
    I2C_SCL = 0;
  }
  i2c_delay(10);
  I2C_SDA = 1;
  i2c_delay(10);
  I2C_SCL = 1;
  i2c_delay(10);
  ack = I2C_SDA;
  i2c_delay(10);
  I2C_SCL = 0;
  return ack;
}
 
unsigned char i2c_read(void){
  unsigned char i=9, val=0;
 
  while(--i){
    val<<= 1;
    i2c_delay(10);
    I2C_SCL = 1;
    i2c_delay(10);
    val|= I2C_SDA;
    i2c_delay(10);
    I2C_SCL = 0;
  }
//   i2c_delay(10);
//   I2C_SDA = ack;
//   i2c_delay(10);
//   I2C_SCL = 1;
//   i2c_delay(10);
//   I2C_SCL = 0;
  return val;
}
 
void i2c_write_byte(unsigned char addr, unsigned char val){
    addr<<=1;
    i2c_start();
    i2c_write(addr);
    i2c_write(val);
    i2c_stop();
}
 
unsigned char i2c_read_byte(unsigned char addr){
    //P0_1 = 1;
    unsigned char value = 0;
    addr <<=1;
    addr |= 1;
    i2c_start();
    if(!i2c_write(addr)){
      value = i2c_read();
    }
    i2c_stop();
    //P0_1 = 0;
    return value;
}

void lcd_send_bits(unsigned char data){
    i2c_write_byte(LCD_I2C_ADDR, data);
    i2c_write_byte(LCD_I2C_ADDR, data|0x04);
    i2c_delay(50);
    i2c_write_byte(LCD_I2C_ADDR, data*~0x04);
    delayMs(1);
}

void lcd_writeChar(unsigned char mode, unsigned char data){
    unsigned char hnib = data & 0xF0;
    unsigned char lnib = (data << 4) & 0xF0;
    lcd_send_bits(hnib | mode);
    lcd_send_bits(lnib | mode);
}

void lcd_writeString(unsigned char text[]){
    unsigned char i = 0;
    while (text[i] != '\0'){
        lcd_writeChar(1, text[i]);
        i++;
    }
}

void lcd_Init(){
    lcd_writeChar(0, 0x33);
    delayMs(2);
    lcd_writeChar(0, 0x32);
    delayMs(2);
    lcd_writeChar(0, 0x28);
    delayMs(2);
    lcd_writeChar(0, 0x0C);
    lcd_writeChar(0, 0x01);
    delayMs(2);
    lcd_writeChar(0, 0x06);
}

void printMessage(){
    lcd_writeString("Hello World");
    lcd_writeChar(0, 0xC0);
    lcd_writeString("   Bob is Great!");
    delayMs(10000);
    if (getMode()){
        return;
    }
}

/*
void main(void){
    // unsigned char readVal = 0;
    // unsigned char data = 0;
    // readVal = i2c_read_byte(LED_I2C_ADDR);
    // P1 = readVal;
    // if(readVal & 0x80){
    //     data |= 0x01;
    // } 
    // if (readVal & 0x40){
    //     data |= 0x02;
    // } 
    // if (readVal & 0x20){
    //     data |= 0x04;
    // } 
    // if (readVal & 0x10){
    //     data |= 0x08;
    // } 
    // i2c_write_byte(LED_I2C_ADDR, data);
    while (1){
        lcd_Init();
        delayMs(1000);
        lcd_writeString("Hello World");
        lcd_writeChar(0, 0xC0);
        lcd_writeString("   Bob is Great!");
        delayMs(10000);
    }
}
*/