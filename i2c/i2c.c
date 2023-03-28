#include <8051.h>
#define I2C_SDA P0_6
#define I2C_SCL P0_7
#define LED_I2C_ADDR 0x20
#define LCD_I2C_ADDR 0x27

// __sbit __at (0x86) SDA ;
// __sbit __at (0x87) SCL ;

void i2c_delay(unsigned cnt){
  while(cnt--);
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
    P0_1 = 1;
    unsigned char value;
    addr <<=1;
    addr |= 1;
    i2c_start();
    if(!i2c_write(addr)){
      value = i2c_read();
    }
    i2c_stop();
    P0_1 = 0;
    return value;
}