/*
  ArduCAM.cpp - Arduino library support for CMOS Image Sensor
  Copyright (C)2011-2015 ArduCAM.com. All right reserved

  Basic functionality of this library are based on the demo-code provided by
  ArduCAM.com. You can find the latest version of the library at
  http://www.ArduCAM.com

  If you make any modifications or improvements to the code, I would appreciate
  that you share the code with me so that I might include it in the next release.
  I can be contacted through http://www.ArduCAM.com

  This library is free software; you can redistribute it and/or
  modify it under the terms of the GNU Lesser General Public
  License as published by the Free Software Foundation; either
  version 2.1 of the License, or (at your option) any later version.

  This library is distributed in the hope that it will be useful,
  but WITHOUT ANY WARRANTY; without even the implied warranty of
  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
  Lesser General Public License for more details.

  You should have received a copy of the GNU Lesser General Public
  License along with this library; if not, write to the Free Software
  Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA
*/

#include "memorysaver.h"
	#include "Arduino.h"
	#include "ArduCAM.h"
	#include <Wire.h>
	#include <SPI.h>
	#include "HardwareSerial.h"
	#if defined(__SAM3X8E__)
		#define Wire  Wire1
#endif

#ifndef OV2640_MINI_2MP_PLUS
#define OV2640_MINI_2MP_PLUS
#endif

ArduCAM::ArduCAM() // default sensor: OV7670
{
  sensor_model = OV7670;
  sensor_addr = 0x42;
}
ArduCAM::ArduCAM(byte model ,int CS)
{
	  pinMode(CS, OUTPUT);
      sbi(P_CS, B_CS);
	sensor_model = model;
	switch (sensor_model)
	{
    case OV2640:
    case OV9650:
    case OV9655:
      	sensor_addr = 0x60; // OV2640: 0x60
    break;
		default:
		 		sensor_addr = 0x42;
		break;
	}	

}

void ArduCAM::InitCAM()
{
 
  switch (sensor_model)
  {
    case OV2640:
      {
#if (defined(OV2640_CAM) || defined(OV2640_MINI_2MP) || defined(OV2640_MINI_2MP_PLUS))
        wrSensorReg8_8(0xff, 0x01);
        wrSensorReg8_8(0x12, 0x80);
        delay(100);
        if (m_fmt == JPEG)
        {
          wrSensorRegs8_8(OV2640_JPEG_INIT);
          wrSensorRegs8_8(OV2640_YUV422);
          wrSensorRegs8_8(OV2640_JPEG);
          wrSensorReg8_8(0xff, 0x01);
          wrSensorReg8_8(0x15, 0x00);
          wrSensorRegs8_8(OV2640_320x240_JPEG);
          //wrSensorReg8_8(0xff, 0x00);
          //wrSensorReg8_8(0x44, 0x32);
        }
        else
        {
          wrSensorRegs8_8(OV2640_QVGA);
        }
#endif
        break;
      }

    default:
	break;
  }
}

void ArduCAM::flush_fifo(void)
{
	write_reg(ARDUCHIP_FIFO, FIFO_CLEAR_MASK);
}

void ArduCAM::start_capture(void)
{
	write_reg(ARDUCHIP_FIFO, FIFO_START_MASK);
}

void ArduCAM::clear_fifo_flag(void )
{
	write_reg(ARDUCHIP_FIFO, FIFO_CLEAR_MASK);
}

uint32_t ArduCAM::read_fifo_length(void)
{
	uint32_t len1,len2,len3,length=0;
	len1 = read_reg(FIFO_SIZE1);
  len2 = read_reg(FIFO_SIZE2);
  len3 = read_reg(FIFO_SIZE3) & 0x7f;
  length = ((len3 << 16) | (len2 << 8) | len1) & 0x07fffff;
	return length;	
}

void ArduCAM::set_fifo_burst()
{
	#if defined (RASPBERRY_PI)
	transfer(BURST_FIFO_READ);
	#else
    SPI.transfer(BURST_FIFO_READ);
   #endif
		
}

void ArduCAM::CS_HIGH(void)
{
	 sbi(P_CS, B_CS);	
}
void ArduCAM::CS_LOW(void)
{
	 cbi(P_CS, B_CS);	
}

uint8_t ArduCAM::read_fifo(void)
{
	uint8_t data;
	data = bus_read(SINGLE_FIFO_READ);
	return data;
}

uint8_t ArduCAM::read_reg(uint8_t addr)
{
	uint8_t data;
	#if defined (RASPBERRY_PI)
		data = bus_read(addr);	
	#else
		data = bus_read(addr & 0x7F);
	#endif
	return data;
}

void ArduCAM::write_reg(uint8_t addr, uint8_t data)
{
	#if defined (RASPBERRY_PI)
		bus_write(addr , data);
	#else
	 bus_write(addr | 0x80, data);
  #endif  
}

//Set corresponding bit  
void ArduCAM::set_bit(uint8_t addr, uint8_t bit)
{
	uint8_t temp;
	temp = read_reg(addr);
	write_reg(addr, temp | bit);
}
//Clear corresponding bit 
void ArduCAM::clear_bit(uint8_t addr, uint8_t bit)
{
	uint8_t temp;
	temp = read_reg(addr);
	write_reg(addr, temp & (~bit));
}

//Get corresponding bit status
uint8_t ArduCAM::get_bit(uint8_t addr, uint8_t bit)
{
  uint8_t temp;
  temp = read_reg(addr);
  temp = temp & bit;
  return temp;
}

//Set ArduCAM working mode
//MCU2LCD_MODE: MCU writes the LCD screen GRAM
//CAM2LCD_MODE: Camera takes control of the LCD screen
//LCD2MCU_MODE: MCU read the LCD screen GRAM
void ArduCAM::set_mode(uint8_t mode)
{
  switch (mode)
  {
    case MCU2LCD_MODE:
      write_reg(ARDUCHIP_MODE, MCU2LCD_MODE);
      break;
    case CAM2LCD_MODE:
      write_reg(ARDUCHIP_MODE, CAM2LCD_MODE);
      break;
    case LCD2MCU_MODE:
      write_reg(ARDUCHIP_MODE, LCD2MCU_MODE);
      break;
    default:
      write_reg(ARDUCHIP_MODE, MCU2LCD_MODE);
      break;
  }
}

uint8_t ArduCAM::bus_write(int address,int value)
{	
	cbi(P_CS, B_CS);
		SPI.transfer(address);
		SPI.transfer(value);
	sbi(P_CS, B_CS);
	return 1;
}

uint8_t ArduCAM:: bus_read(int address)
{
	uint8_t value;
	cbi(P_CS, B_CS);
		#if (defined(ESP8266) || defined(__arm__) ||defined(TEENSYDUINO))
		  SPI.transfer(address);
		  value = SPI.transfer(0x00);
		  // take the SS pin high to de-select the chip:
		  sbi(P_CS, B_CS);
		  return value;
		#else
		  SPI.transfer(address);
		  value = SPI.transfer(0x00);
		  // take the SS pin high to de-select the chip:
		  sbi(P_CS, B_CS);
		  return value;
		#endif
}

void ArduCAM::OV2640_set_JPEG_size(uint8_t size)
{
 #if (defined (OV2640_CAM)||defined (OV2640_MINI_2MP)||defined (OV2640_MINI_2MP_PLUS))
	switch(size)
	{
		case OV2640_160x120:
			wrSensorRegs8_8(OV2640_160x120_JPEG);
			break;
		case OV2640_176x144:
			wrSensorRegs8_8(OV2640_176x144_JPEG);
			break;
		case OV2640_320x240:
			wrSensorRegs8_8(OV2640_320x240_JPEG);
			break;
		case OV2640_352x288:
	  	wrSensorRegs8_8(OV2640_352x288_JPEG);
			break;
		case OV2640_640x480:
			wrSensorRegs8_8(OV2640_640x480_JPEG);
			break;
		case OV2640_800x600:
			wrSensorRegs8_8(OV2640_800x600_JPEG);
			break;
		case OV2640_1024x768:
			wrSensorRegs8_8(OV2640_1024x768_JPEG);
			break;
		case OV2640_1280x1024:
			wrSensorRegs8_8(OV2640_1280x1024_JPEG);
			break;
		case OV2640_1600x1200:
			wrSensorRegs8_8(OV2640_1600x1200_JPEG);
			break;
		default:
			wrSensorRegs8_8(OV2640_320x240_JPEG);
			break;
	}
#endif
}

void ArduCAM::set_format(byte fmt) // BMP, RAW, JPEG
{
  if (fmt == BMP)
    m_fmt = BMP;
  else if(fmt == RAW)
    m_fmt = RAW;
  else
    m_fmt = JPEG;
}

	void ArduCAM::OV2640_set_Light_Mode(uint8_t Light_Mode)
	{
 #if (defined (OV2640_CAM)||defined (OV2640_MINI_2MP)||defined (OV2640_MINI_2MP_PLUS))
		 switch(Light_Mode)
		 {
			
			  case Auto:
				wrSensorReg8_8(0xff, 0x00);
				wrSensorReg8_8(0xc7, 0x00); //AWB on
			  break;
			  case Sunny:
				wrSensorReg8_8(0xff, 0x00);
				wrSensorReg8_8(0xc7, 0x40); //AWB off
			  wrSensorReg8_8(0xcc, 0x5e);
				wrSensorReg8_8(0xcd, 0x41);
				wrSensorReg8_8(0xce, 0x54);
			  break;
			  case Cloudy:
				wrSensorReg8_8(0xff, 0x00);
				wrSensorReg8_8(0xc7, 0x40); //AWB off
				wrSensorReg8_8(0xcc, 0x65);
				wrSensorReg8_8(0xcd, 0x41);
				wrSensorReg8_8(0xce, 0x4f);  
			  break;
			  case Office:
			  wrSensorReg8_8(0xff, 0x00);
			  wrSensorReg8_8(0xc7, 0x40); //AWB off
			  wrSensorReg8_8(0xcc, 0x52);
			  wrSensorReg8_8(0xcd, 0x41);
			  wrSensorReg8_8(0xce, 0x66);
			  break;
			  case Home:
			  wrSensorReg8_8(0xff, 0x00);
			  wrSensorReg8_8(0xc7, 0x40); //AWB off
			  wrSensorReg8_8(0xcc, 0x42);
			  wrSensorReg8_8(0xcd, 0x3f);
			  wrSensorReg8_8(0xce, 0x71);
			  break;
			  default :
				wrSensorReg8_8(0xff, 0x00);
				wrSensorReg8_8(0xc7, 0x00); //AWB on
			  break; 
		 }	
#endif
	}
	
	void ArduCAM::OV2640_set_Color_Saturation(uint8_t Color_Saturation)
	{
	#if (defined (OV2640_CAM)||defined (OV2640_MINI_2MP)||defined (OV2640_MINI_2MP_PLUS))
		switch(Color_Saturation)
		{
			case Saturation2:
			
				wrSensorReg8_8(0xff, 0x00);
				wrSensorReg8_8(0x7c, 0x00);
				wrSensorReg8_8(0x7d, 0x02);
				wrSensorReg8_8(0x7c, 0x03);
				wrSensorReg8_8(0x7d, 0x68);
				wrSensorReg8_8(0x7d, 0x68);
			break;
			case Saturation1:
				wrSensorReg8_8(0xff, 0x00);
				wrSensorReg8_8(0x7c, 0x00);
				wrSensorReg8_8(0x7d, 0x02);
				wrSensorReg8_8(0x7c, 0x03);
				wrSensorReg8_8(0x7d, 0x58);
				wrSensorReg8_8(0x7d, 0x58);
			break;
			case Saturation0:
				wrSensorReg8_8(0xff, 0x00);
				wrSensorReg8_8(0x7c, 0x00);
				wrSensorReg8_8(0x7d, 0x02);
				wrSensorReg8_8(0x7c, 0x03);
				wrSensorReg8_8(0x7d, 0x48);
				wrSensorReg8_8(0x7d, 0x48);
			break;
			case Saturation_1:
				wrSensorReg8_8(0xff, 0x00);
				wrSensorReg8_8(0x7c, 0x00);
				wrSensorReg8_8(0x7d, 0x02);
				wrSensorReg8_8(0x7c, 0x03);
				wrSensorReg8_8(0x7d, 0x38);
				wrSensorReg8_8(0x7d, 0x38);
			break;
			case Saturation_2:
				wrSensorReg8_8(0xff, 0x00);
				wrSensorReg8_8(0x7c, 0x00);
				wrSensorReg8_8(0x7d, 0x02);
				wrSensorReg8_8(0x7c, 0x03);
				wrSensorReg8_8(0x7d, 0x28);
				wrSensorReg8_8(0x7d, 0x28);
			break;	
		}
#endif	
	}
	
	void ArduCAM::OV2640_set_Contrast(uint8_t Contrast)
	{
 #if (defined (OV2640_CAM)||defined (OV2640_MINI_2MP)||defined (OV2640_MINI_2MP_PLUS))	
		switch(Contrast)
		{
			case Contrast2:
		
			wrSensorReg8_8(0xff, 0x00);
				wrSensorReg8_8(0x7c, 0x00);
				wrSensorReg8_8(0x7d, 0x04);
				wrSensorReg8_8(0x7c, 0x07);
				wrSensorReg8_8(0x7d, 0x20);
				wrSensorReg8_8(0x7d, 0x28);
				wrSensorReg8_8(0x7d, 0x0c);
				wrSensorReg8_8(0x7d, 0x06);
			break;
			case Contrast1:
				wrSensorReg8_8(0xff, 0x00);
				wrSensorReg8_8(0x7c, 0x00);
				wrSensorReg8_8(0x7d, 0x04);
				wrSensorReg8_8(0x7c, 0x07);
				wrSensorReg8_8(0x7d, 0x20);
				wrSensorReg8_8(0x7d, 0x24);
				wrSensorReg8_8(0x7d, 0x16);
				wrSensorReg8_8(0x7d, 0x06); 
			break;
			case Contrast0:
				wrSensorReg8_8(0xff, 0x00);
				wrSensorReg8_8(0x7c, 0x00);
				wrSensorReg8_8(0x7d, 0x04);
				wrSensorReg8_8(0x7c, 0x07);
				wrSensorReg8_8(0x7d, 0x20);
				wrSensorReg8_8(0x7d, 0x20);
				wrSensorReg8_8(0x7d, 0x20);
				wrSensorReg8_8(0x7d, 0x06); 
			break;
			case Contrast_1:
				wrSensorReg8_8(0xff, 0x00);
				wrSensorReg8_8(0x7c, 0x00);
				wrSensorReg8_8(0x7d, 0x04);
				wrSensorReg8_8(0x7c, 0x07);
				wrSensorReg8_8(0x7d, 0x20);
				wrSensorReg8_8(0x7d, 0x20);
				wrSensorReg8_8(0x7d, 0x2a);
		  wrSensorReg8_8(0x7d, 0x06);	
			break;
			case Contrast_2:
				wrSensorReg8_8(0xff, 0x00);
				wrSensorReg8_8(0x7c, 0x00);
				wrSensorReg8_8(0x7d, 0x04);
				wrSensorReg8_8(0x7c, 0x07);
				wrSensorReg8_8(0x7d, 0x20);
				wrSensorReg8_8(0x7d, 0x18);
				wrSensorReg8_8(0x7d, 0x34);
				wrSensorReg8_8(0x7d, 0x06);
			break;
		}
#endif		
	}
	
	void ArduCAM::OV2640_set_Special_effects(uint8_t Special_effect)
	{
#if (defined (OV2640_CAM)||defined (OV2640_MINI_2MP)||defined (OV2640_MINI_2MP_PLUS))	
		switch(Special_effect)
		{
			case Antique:
	
				wrSensorReg8_8(0xff, 0x00);
				wrSensorReg8_8(0x7c, 0x00);
				wrSensorReg8_8(0x7d, 0x18);
				wrSensorReg8_8(0x7c, 0x05);
				wrSensorReg8_8(0x7d, 0x40);
				wrSensorReg8_8(0x7d, 0xa6);
			break;
			case Bluish:
				wrSensorReg8_8(0xff, 0x00);
				wrSensorReg8_8(0x7c, 0x00);
				wrSensorReg8_8(0x7d, 0x18);
				wrSensorReg8_8(0x7c, 0x05);
				wrSensorReg8_8(0x7d, 0xa0);
				wrSensorReg8_8(0x7d, 0x40);
			break;
			case Greenish:
				wrSensorReg8_8(0xff, 0x00);
				wrSensorReg8_8(0x7c, 0x00);
				wrSensorReg8_8(0x7d, 0x18);
				wrSensorReg8_8(0x7c, 0x05);
				wrSensorReg8_8(0x7d, 0x40);
				wrSensorReg8_8(0x7d, 0x40);
			break;
			case Reddish:
				wrSensorReg8_8(0xff, 0x00);
				wrSensorReg8_8(0x7c, 0x00);
				wrSensorReg8_8(0x7d, 0x18);
				wrSensorReg8_8(0x7c, 0x05);
				wrSensorReg8_8(0x7d, 0x40);
				wrSensorReg8_8(0x7d, 0xc0);
			break;
			case BW:
				wrSensorReg8_8(0xff, 0x00);
				wrSensorReg8_8(0x7c, 0x00);
				wrSensorReg8_8(0x7d, 0x18);
				wrSensorReg8_8(0x7c, 0x05);
				wrSensorReg8_8(0x7d, 0x80);
				wrSensorReg8_8(0x7d, 0x80);
			break;
			case Negative:
				wrSensorReg8_8(0xff, 0x00);
				wrSensorReg8_8(0x7c, 0x00);
				wrSensorReg8_8(0x7d, 0x40);
				wrSensorReg8_8(0x7c, 0x05);
				wrSensorReg8_8(0x7d, 0x80);
				wrSensorReg8_8(0x7d, 0x80);
			break;
			case BWnegative:
				wrSensorReg8_8(0xff, 0x00);
				wrSensorReg8_8(0x7c, 0x00);
				wrSensorReg8_8(0x7d, 0x58);
				wrSensorReg8_8(0x7c, 0x05);
				wrSensorReg8_8(0x7d, 0x80);
			  wrSensorReg8_8(0x7d, 0x80);
	
			break;
			case Normal:
		
				wrSensorReg8_8(0xff, 0x00);
				wrSensorReg8_8(0x7c, 0x00);
				wrSensorReg8_8(0x7d, 0x00);
				wrSensorReg8_8(0x7c, 0x05);
				wrSensorReg8_8(0x7d, 0x80);
				wrSensorReg8_8(0x7d, 0x80);
			
			break;
					
		}
	#endif
	}

	// Write 8 bit values to 8 bit register address
int ArduCAM::wrSensorRegs8_8(const struct sensor_reg reglist[])
{
	#if defined (RASPBERRY_PI)
		arducam_i2c_write_regs(reglist);
	#else
		int err = 0;
	  uint16_t reg_addr = 0;
	  uint16_t reg_val = 0;
	  const struct sensor_reg *next = reglist;
	  while ((reg_addr != 0xff) | (reg_val != 0xff))
	  {
	    reg_addr = pgm_read_word(&next->reg);
	    reg_val = pgm_read_word(&next->val);
	    err = wrSensorReg8_8(reg_addr, reg_val);
	    next++;
		#if (defined(ESP8266)||defined(ESP32)||defined(TEENSYDUINO))
		    yield();
		#endif
	  }
 #endif  
	return 1;
}

	// Write 16 bit values to 8 bit register address
int ArduCAM::wrSensorRegs8_16(const struct sensor_reg reglist[])
{
	#if defined (RASPBERRY_PI)
		arducam_i2c_write_regs16(reglist);
	#else
		int err = 0;
	  unsigned int reg_addr, reg_val;
	  const struct sensor_reg *next = reglist;
	
	  while ((reg_addr != 0xff) | (reg_val != 0xffff))
	  {
	  	#if defined (RASPBERRY_PI)
		   reg_addr =next->reg;
       reg_val = next->val;
	   #else
	     reg_addr = pgm_read_word(&next->reg);
	     reg_val = pgm_read_word(&next->val);
	    #endif
	    err = wrSensorReg8_16(reg_addr, reg_val);
	    //  if (!err)
	    //return err;
	    next++;
		#if (defined(ESP8266)||defined(ESP32)||defined(TEENSYDUINO))
			yield();
		#endif
	  }
  #endif
	return 1;
}

// Write 8 bit values to 16 bit register address
int ArduCAM::wrSensorRegs16_8(const struct sensor_reg reglist[])
{
	#if defined (RASPBERRY_PI)
		arducam_i2c_write_word_regs(reglist);
	#else
		int err = 0;
	  unsigned int reg_addr;
	  unsigned char reg_val;
	  const struct sensor_reg *next = reglist;
	
	  while ((reg_addr != 0xffff) | (reg_val != 0xff))
	  {
	  	
	   #if defined (RASPBERRY_PI)
		   reg_addr =next->reg;
       reg_val = next->val;
	   #else
	     reg_addr = pgm_read_word(&next->reg);
	     reg_val = pgm_read_word(&next->val);
	    #endif
	    err = wrSensorReg16_8(reg_addr, reg_val);
	    //if (!err)
	    //return err;
	    next++;
		#if (defined(ESP8266)||defined(ESP32)||defined(TEENSYDUINO))
			yield();
		#endif
	  }
	#endif
	return 1;
}

//I2C Array Write 16bit address, 16bit data
int ArduCAM::wrSensorRegs16_16(const struct sensor_reg reglist[])
{
	#if defined (RASPBERRY_PI)
	#else
	  int err = 0;
	  unsigned int reg_addr, reg_val;
	  const struct sensor_reg *next = reglist;
	  reg_addr = pgm_read_word(&next->reg);
	  reg_val = pgm_read_word(&next->val);
	  while ((reg_addr != 0xffff) | (reg_val != 0xffff))
	  {
	    err = wrSensorReg16_16(reg_addr, reg_val);
	    //if (!err)
	    //   return err;
	    next++;
	    reg_addr = pgm_read_word(&next->reg);
	    reg_val = pgm_read_word(&next->val);
			#if (defined(ESP8266)||defined(ESP32)||defined(TEENSYDUINO))
			    yield();
			#endif
	  }
	#endif
  return 1;
}

// Read/write 8 bit value to/from 8 bit register address	
byte ArduCAM::wrSensorReg8_8(int regID, int regDat)
{
	#if defined (RASPBERRY_PI)
		arducam_i2c_write( regID , regDat );
	#else
		Wire.beginTransmission(sensor_addr >> 1);
	  Wire.write(regID & 0x00FF);
	  Wire.write(regDat & 0x00FF);
	  if (Wire.endTransmission())
	  {
	    return 0;
	  }
	  delay(1);
	#endif
	return 1;
	
}
byte ArduCAM::rdSensorReg8_8(uint8_t regID, uint8_t* regDat)
{	
	#if defined (RASPBERRY_PI) 
		arducam_i2c_read(regID,regDat);
	#else
		Wire.beginTransmission(sensor_addr >> 1);
	  Wire.write(regID & 0x00FF);
	  Wire.endTransmission();
	
	  Wire.requestFrom((sensor_addr >> 1), 1);
	  if (Wire.available())
	    *regDat = Wire.read();
	  delay(1);
	#endif
	return 1;
	
}
// Read/write 16 bit value to/from 8 bit register address
byte ArduCAM::wrSensorReg8_16(int regID, int regDat)
{
	#if defined (RASPBERRY_PI) 
		arducam_i2c_write16(regID, regDat );
	#else
		Wire.beginTransmission(sensor_addr >> 1);
	  Wire.write(regID & 0x00FF);
	
	  Wire.write(regDat >> 8);            // sends data byte, MSB first
	  Wire.write(regDat & 0x00FF);
	  if (Wire.endTransmission())
	  {
	    return 0;
	  }	
	  delay(1);
	#endif
	return 1;
}
byte ArduCAM::rdSensorReg8_16(uint8_t regID, uint16_t* regDat)
{
	#if defined (RASPBERRY_PI) 
  	arducam_i2c_read16(regID, regDat);
  #else
  	uint8_t temp;
	  Wire.beginTransmission(sensor_addr >> 1);
	  Wire.write(regID);
	  Wire.endTransmission();
	
	  Wire.requestFrom((sensor_addr >> 1), 2);
	  if (Wire.available())
	  {
	    temp = Wire.read();
	    *regDat = (temp << 8) | Wire.read();
	  }
	  delay(1);
	#endif
  	return 1;
}

// Read/write 8 bit value to/from 16 bit register address
byte ArduCAM::wrSensorReg16_8(int regID, int regDat)
{
	#if defined (RASPBERRY_PI) 
		arducam_i2c_word_write(regID, regDat);
		arducam_delay_ms(1);
	#else
		Wire.beginTransmission(sensor_addr >> 1);
	  Wire.write(regID >> 8);            // sends instruction byte, MSB first
	  Wire.write(regID & 0x00FF);
	  Wire.write(regDat & 0x00FF);
	  if (Wire.endTransmission())
	  {
	    return 0;
	  }
	  delay(1);
	#endif
	return 1;
}
byte ArduCAM::rdSensorReg16_8(uint16_t regID, uint8_t* regDat)
{
	#if defined (RASPBERRY_PI) 
		arducam_i2c_word_read(regID, regDat );
	#else
		Wire.beginTransmission(sensor_addr >> 1);
	  Wire.write(regID >> 8);
	  Wire.write(regID & 0x00FF);
	  Wire.endTransmission();
	  Wire.requestFrom((sensor_addr >> 1), 1);
	  if (Wire.available())
	  {
	    *regDat = Wire.read();
	  }
	  delay(1);
	#endif  
	return 1;
}

//I2C Write 16bit address, 16bit data
byte ArduCAM::wrSensorReg16_16(int regID, int regDat)
{
	#if defined (RASPBERRY_PI)
	#else
	  Wire.beginTransmission(sensor_addr >> 1);
	  Wire.write(regID >> 8);            // sends instruction byte, MSB first
	  Wire.write(regID & 0x00FF);
	  Wire.write(regDat >> 8);            // sends data byte, MSB first
	  Wire.write(regDat & 0x00FF);
	  if (Wire.endTransmission())
	  {
	    return 0;
	  }
	  delay(1);
  #endif
  return (1);
}

//I2C Read 16bit address, 16bit data
byte ArduCAM::rdSensorReg16_16(uint16_t regID, uint16_t* regDat)
{
	#if defined (RASPBERRY_PI)
	#else
	  uint16_t temp;
	  Wire.beginTransmission(sensor_addr >> 1);
	  Wire.write(regID >> 8);
	  Wire.write(regID & 0x00FF);
	  Wire.endTransmission();
	  Wire.requestFrom((sensor_addr >> 1), 2);
	  if (Wire.available())
	  {
	    temp = Wire.read();
	    *regDat = (temp << 8) | Wire.read();
	  }
	  delay(1);
	#endif 
  return (1);
}

