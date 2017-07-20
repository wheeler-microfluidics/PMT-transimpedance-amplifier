#include "max11210.h"

//SPI Setting
SPISettings SPI_set(3000000, MSBFIRST, SPI_MODE0); //SPI CLK set to 4MHz, ADC max 5MHz


void MAX11210_begin(void){
  SPI.begin();
  MAX11210_setDefault();
  MAX11210_setLineFreq("60Hz");
  //MAX11210_setLineFreq("50Hz");
  MAX11210_setInputRange("Unipolar");
  //MAX11210_setInputRange("Bipolar");
  MAX11210_setClockSource("Internal");
  //MAX11210_setClockSource("External");
  MAX11210_setEnableRefBuf(true);
  MAX11210_setEnableSigBuf(true);
  MAX11210_setFormat("Offset");
  //MAX11210_setFormat(2Complement");
  MAX11210_setConvMode("Continuous");
  //MAX11210_setConvMode("Single");
  MAX11210_selfCal();
  MAX11210_sysOffsetCal();
  MAX11210_sysGainCal();

}

void MAX11210_end(void){
  MAX11210_send_command(POWER_DOWN);
  delay(100);
  SPI.end();
}

void MAX11210_selfCal(void){
  //Reset Calibration Values
  MAX11210_setSysGainCal(0x00);
  MAX11210_setSysOffsetCal(0x00);  
  MAX11210_setSelfCalGain(0x00);  
  MAX11210_setSelfCalOffset(0x00);
  //Enable Self Calibration Registers
  MAX11210_setDisableSelfCalGain(false);
  MAX11210_setDisableSelfCalOffset(false);
  //Start Self Calibration
  MAX11210_send_command(SELF_CALIB);
  delay(300); // A self-calibration requires 200 ms to complete
}

void MAX11210_sysOffsetCal(void){
  //Enable Offset Calibration Register
  MAX11210_setDisableSysOffset(false);
  //Start Offset Calibration (Zero Scale)
  MAX11210_send_command(SYS_OFFSET_CALIB);
  delay(300); // A zero-scale calibration requires 100 ms to complete
}

void MAX11210_sysGainCal(void){
  //Enable Gain Calibration Register
  MAX11210_setDisableSysGain(false);
  //Start Gain Calibration (Full Scale)
  MAX11210_send_command(SYS_GAIN_CALIB);
  delay(300); // A full-scale calibration requires 100 ms to complete
}

void MAX11210_setRate(uint8_t rate){
  if (rate == 1){rate = MEASURE_1_SPS;}
  else if ((rate == 2) | (rate == 3)){rate = MEASURE_2p5_SPS;}
  else if (rate == 5){rate = MEASURE_5_SPS;}
  else if (rate == 10){rate = MEASURE_10_SPS;}
  else if (rate == 15){rate = MEASURE_15_SPS;}
  else if (rate == 30){rate = MEASURE_30_SPS;}
  else if (rate == 60){rate = MEASURE_60_SPS;}
  else if (rate == 120){rate = MEASURE_120_SPS;}
  else {rate = MEASURE_120_SPS;}
  MAX11210_send_command(rate);
  delay(150); // A full-scale calibration requires 100 ms to complete
}

//Read 8 bit for STAT1, CTRL1, CTRL2, CTRL3
uint8_t  MAX11210_readReg8(uint8_t reg){
  uint8_t read_command = START | reg | READ; 
  uint8_t register_value = 0x00;
  
  SPI.beginTransaction(SPI_set);
  digitalWrite(ADC_CS_PIN, LOW);

  SPI.transfer(read_command);
  register_value = SPI.transfer(0);
  
  digitalWrite(ADC_CS_PIN, HIGH);
  SPI.endTransaction();
  return register_value;
}
//Read 24 bit for DATA, SOC, SGC, SCOC, SCGC
uint32_t  MAX11210_readReg24(uint8_t reg){
  uint8_t read_command = START | reg | READ;
//  uint32_t register_value = 0x00;

  union {
    uint8_t uint8[4];
    uint32_t uint32;
  } register_value;
  
  register_value.uint32 = 0x00;
  SPI.beginTransaction(SPI_set);
  digitalWrite(ADC_CS_PIN, LOW);
  
  SPI.transfer(read_command);
  register_value.uint8[2] = SPI.transfer(0);
  register_value.uint8[1] = SPI.transfer(0);
  register_value.uint8[0] = SPI.transfer(0);
//  register_value = ((reg_val1 << 16) |(reg_val2 << 8)| reg_val3);
  
  digitalWrite(ADC_CS_PIN, HIGH);
  SPI.endTransaction();
  return register_value.uint32;
}

//Write 8 bit for CTRL1, CTRL2, CTRL3
void  MAX11210_writeReg8(uint8_t reg, uint8_t data){
  uint8_t write_command = START | reg; 
  SPI.beginTransaction(SPI_set);
  digitalWrite(ADC_CS_PIN, LOW);
  
  SPI.transfer(write_command);
  SPI.transfer(data);
  
  digitalWrite(ADC_CS_PIN, HIGH);
  SPI.endTransaction();
}
//Write 24 bit for SOC, SGC, SCOC, SCGC
void  MAX11210_writeReg24(uint8_t reg, uint32_t data){
  uint8_t write_command = START | reg; 
  SPI.beginTransaction(SPI_set);
  digitalWrite(ADC_CS_PIN, LOW);
  
  SPI.transfer(write_command);
  SPI.transfer((data >> 16));
  SPI.transfer((data >> 8));
  SPI.transfer(data);
  
  digitalWrite(ADC_CS_PIN, HIGH);
  SPI.endTransaction();
}
//Send a single command
void MAX11210_send_command(uint8_t cmd){
  SPI.beginTransaction(SPI_set);
  digitalWrite(ADC_CS_PIN, LOW);
    
  SPI.transfer(cmd);
  
  digitalWrite(ADC_CS_PIN, HIGH);
  SPI.endTransaction();
}
//Read Data from ADC
uint32_t MAX11210_getData(void){
  SPI.beginTransaction(SPI_set);
  digitalWrite(ADC_CS_PIN, LOW);

  SPI.transfer(START | STAT1 | READ);
  while ((SPI.transfer(0)& RDY) != 1){
    //delay(0.5);
    SPI.transfer(START | STAT1 | READ);
    //delay(0.5);
  }
  
  digitalWrite(ADC_CS_PIN, HIGH);
  SPI.endTransaction();
  //SPI.transfer(START | STAT1 | READ);
  //register_value = SPI.transfer(0);
  //while (digitalRead(MISO_PIN) == LOW);{delay(1);} //wait until the read RDY/DOUT pin outputs 0
  //while ((MAX11210_readReg8(STAT1)& RDY) != 1){delay(1);}
  uint32_t adc_out = MAX11210_readReg24(DATA_);
  
  //digitalWrite(ADC_CS_PIN, HIGH);
  //SPI.endTransaction();
  return adc_out;
}

//Read STAT1 Registry
String MAX11210_getSTAT1(void){
  uint8_t adc_status = MAX11210_readReg8(STAT1);
  Serial.print("-------- STAT1: ");
  Serial.print(adc_status, BIN);  
  Serial.println(" --------");
  String gor, rate, mor, ur, mstat, rdy;
  if ((adc_status & SYSOR) > 0x00){gor = "True\n";}
  else{gor = "False\n";}
  uint8_t srate = ((adc_status & 0b01110000)>>4 | 0b10000000);
  if (srate == MEASURE_1_SPS){rate = "1 Sample/sec\n";}
  else if (srate == MEASURE_2p5_SPS){rate = "2.5 Samples/sec\n";}
  else if (srate == MEASURE_5_SPS){rate = "5 Samples/sec\n";}
  else if (srate == MEASURE_10_SPS){rate = "10 Samples/sec\n";}
  else if (srate == MEASURE_15_SPS){rate = "15 Samples/sec\n";}
  else if (srate == MEASURE_30_SPS){rate = "30 Samples/sec\n";}
  else if (srate == MEASURE_60_SPS){rate = "60 Samples/sec\n";}
  else if (srate == MEASURE_120_SPS){rate = "120 Samples/sec\n";}
  if ((adc_status & OR_) > 0x00){mor = "True\n";}
  else{mor = "False\n";}
  if ((adc_status & UR) > 0x00){ur = "True\n";}
  else{ur = "False\n";}
  if ((adc_status & MSTAT) > 0x00){mstat = "Busy\n";}
  else{mstat = "Idle\n";}
  if ((adc_status & RDY) > 0x00){rdy = "Ready\n";}
  else{rdy = "In Progress\n";}
  String CTRL1_status = "Gain Over Range: "+gor+"Sampling Rate: "+rate+"Input Signal Over Max: "+mor+"Input Signal Under Min: "+ur+"Modulator Status: "+mstat+"ADC Status: "+rdy; 
  return CTRL1_status;
}
//Read CTRL1 Registry
String MAX11210_getCTRL1(void){
  uint8_t adc_status = MAX11210_readReg8(CTRL1);
  Serial.print("-------- CTRL1: ");
  Serial.print(adc_status, BIN);  
  Serial.println(" --------");
  String lfreq, inprange, clk, rbuf, sbuf, format, scycle;
  if ((adc_status & LINEF) > 0x00){lfreq = "50Hz\n";}
  else{lfreq = "60Hz\n";}
  if ((adc_status & U_B) > 0x00){inprange = "Unipolar (Positive Only)\n";}
  else{inprange = "Bipolar (+/-)\n";}
  if ((adc_status & EXTCLK) > 0x00){clk = "External\n";}
  else{clk = "Internal\n";}
  if ((adc_status & REFBUF) > 0x00){rbuf = "On\n";}
  else{rbuf = "Off\n";} 
  if ((adc_status & SIGBUF) > 0x00){sbuf = "On\n";}
  else{sbuf = "Off\n";}  
  if ((adc_status & FORMAT) > 0x00){format = "Offset\n";}
  else{format = "2Complement\n";}
  if ((adc_status & SCYCLE) > 0x00){scycle = "Single\n";}
  else{scycle = "Continuous\n";}
  String CTRL1_status = "Line frequency: "+lfreq +"Input Range: "+inprange+"Clock: "+clk+"Refference Buffer: "+rbuf+"Signal Buffer: "+sbuf+"Format: "+format+"Cycle: "+scycle;
  return CTRL1_status;
}
//Read CTRL2 Registry
String MAX11210_getCTRL2(void){
  uint8_t adc_status = MAX11210_readReg8(CTRL2);
  Serial.print("-------- CTRL2: ");
  Serial.print(adc_status, BIN);  
  Serial.println(" --------");
  String dir4, dir3, dir2, dir1, dio4, dio3, dio2, dio1;
  if ((adc_status & DIR4) > 0x00){dir4 = "Output,";}
  else{dir4 = "Input,";}
  if ((adc_status & DIR3) > 0x00){dir3 = "Output,";}
  else{dir3 = "Input,";}
  if ((adc_status & DIR2) > 0x00){dir2 = "Output,";}
  else{dir2 = "Input,";}
  if ((adc_status & DIR1) > 0x00){dir1 = "Output,";}
  else{dir1 = "Input,";}
  if ((adc_status & DIO4) > 0x00){dio4 = "ON\n";}
  else{dio4 = "OFF\n";}
  if ((adc_status & DIO3) > 0x00){dio3 = "ON\n";}
  else{dio3 = "OFF\n";}
  if ((adc_status & DIO2) > 0x00){dio2 = "ON\n";}
  else{dio2 = "OFF\n";}
  if ((adc_status & DIO1) > 0x00){dio1 = "ON\n";}
  else{dio1 = "OFF\n";}
  String CTRL2_status = "GPIO 1: "+dir1+dio1+"GPIO 2: "+dir2+dio2+"GPIO 3: "+dir3+dio3+"GPIO 4: "+dir4+dio4;
  return CTRL2_status;
}
//Read CTRL3 Registry
String MAX11210_getCTRL3(void){
  uint8_t adc_status = MAX11210_readReg8(CTRL3);
  Serial.print("-------- CTRL3: ");
  Serial.print(adc_status, BIN);  
  Serial.println(" --------");
  String dgain,nosysg,nosyso,noscg,nosco;
  if ((adc_status & GAIN_2) > 0x00){dgain = "X2\n";}
  else if ((adc_status & GAIN_4) > 0x00){dgain = "X4\n";}
  else if ((adc_status & GAIN_8) > 0x00){dgain = "X8\n";}
  else if ((adc_status & GAIN_16) > 0x00){dgain = "X16\n";}
  else{dgain = "X1\n";}
  if ((adc_status & NOSYSG) > 0x00){nosysg = "Disabled\n";}
  else{nosysg = "Enabled\n";}
  if ((adc_status & NOSYSO) > 0x00){nosyso = "Disabled\n";}
  else{nosyso = "Enabled\n";}
  if ((adc_status & NOSCG) > 0x00){noscg = "Disabled\n";}
  else{noscg = "Enabled\n";}
  if ((adc_status & NOSCO) > 0x00){nosco = "Disabled\n";}
  else{nosco = "Enabled\n";}
  String CTRL3_status = "Digital Gain: "+dgain+"System Gain: "+nosysg+"System Offset: "+nosyso+"Self-calibration Gain: "+noscg+"Self-calibration Offset: "+nosco;
  return CTRL3_status;
}
//Set CTRL1, CTRL2 & CTRL3 Registries to default values
void MAX11210_setDefault(void){
  MAX11210_writeReg8(CTRL1, CTRL1_DEFAULT);
  MAX11210_writeReg8(CTRL2, CTRL2_DEFAULT);
  MAX11210_writeReg8(CTRL3, CTRL3_DEFAULT);
}
//CTRL1 Commands
void MAX11210_setLineFreq(String value){
  uint8_t reg = MAX11210_readReg8(CTRL1);
  uint8_t data = 0x00;
  if (value == "50Hz"){data = reg | LINEF;}
  else if (value == "60Hz"){data = reg & ~ LINEF;}
  MAX11210_writeReg8(CTRL1, data);
}
void MAX11210_setInputRange(String value){
  uint8_t reg = MAX11210_readReg8(CTRL1);
  uint8_t data = 0x00;
  if (value == "Unipolar"){data = reg | U_B;}
  else if (value == "Bipolar"){data = reg & ~ U_B;}
  MAX11210_writeReg8(CTRL1, data);
}
void MAX11210_setClockSource(String value){
  uint8_t reg = MAX11210_readReg8(CTRL1);
  uint8_t data = 0x00;
  if (value == "External"){data = reg | EXTCLK;}
  else if (value == "Internal"){data = reg & ~ EXTCLK;}
  MAX11210_writeReg8(CTRL1, data);
}
void MAX11210_setEnableRefBuf(bool state){
  uint8_t reg = MAX11210_readReg8(CTRL1);
  uint8_t data = 0x00;
  if (state){data = reg | REFBUF;}
  else{data = reg & ~ REFBUF;}
  MAX11210_writeReg8(CTRL1, data);
}
void MAX11210_setEnableSigBuf(bool state){
  uint8_t reg = MAX11210_readReg8(CTRL1);
  uint8_t data = 0x00;
  if (state){data = reg | SIGBUF;}
  else{data = reg & ~ SIGBUF;}
  MAX11210_writeReg8(CTRL1, data);
}
void MAX11210_setFormat(String value){
  uint8_t reg = MAX11210_readReg8(CTRL1);
  uint8_t data = 0x00;
  if (value == "Offset"){data = reg | FORMAT;}
  else if (value == "2Complement"){data = reg & ~ FORMAT;}
  MAX11210_writeReg8(CTRL1, data);
}
void MAX11210_setConvMode(String value){
  uint8_t reg = MAX11210_readReg8(CTRL1);
  uint8_t data = 0x00;
  if (value == "Single"){data = reg | SCYCLE;}
  else if (value == "Continuous"){data = reg & ~ SCYCLE;}
  MAX11210_writeReg8(CTRL1, data);
}
//CTRL2 Commands (GPIO)
void MAX11210_pinModeGpio(int pin, uint8_t mode){
  if (pin < 1 || pin > 4) return;
  uint8_t reg = MAX11210_readReg8(CTRL2);
  uint8_t data = 0x00;
  if (mode == OUTPUT){data = reg | (DIR1 << (pin-1));}
  else if (mode == INPUT){data = reg & ~ (DIR1 << (pin-1));}
  MAX11210_writeReg8(CTRL2, data);
}
void MAX11210_digitalWriteGpio(int pin, bool value){
  if (pin < 1 || pin > 4) return;
  uint8_t reg = MAX11210_readReg8(CTRL2);
  uint8_t data = 0x00;
  if (value){data = reg | (DIO1 << (pin-1));}
  else{data = reg & ~ (DIO1 << (pin-1));}
  MAX11210_writeReg8(CTRL2, data);
}
bool MAX11210_digitalReadGpio(int pin){
  if (pin < 1 || pin > 4) return false;
  uint8_t reg = MAX11210_readReg8(CTRL2);
  uint8_t stat = reg & (DIO1 << (pin-1));
  return (stat > 0x00);
}
//CTRL3 Commands
void MAX11210_setGain(int value){
  uint8_t reg = MAX11210_readReg8(CTRL3) & 0b00011111; //Reset the first 3 bits (gain bits)
  uint8_t data = 0x00;
  if (value == 1){data = reg | GAIN_1;}
  else if (value == 2){data = reg | GAIN_2;}
  else if (value == 4){data = reg | GAIN_4;}
  else if (value == 8){data = reg | GAIN_8;}
  else if (value >= 16){data = reg | GAIN_16;}
  MAX11210_writeReg8(CTRL3, data);
}
void MAX11210_setDisableSysGain(bool state){
  uint8_t reg = MAX11210_readReg8(CTRL3);
  uint8_t data = 0x00;
  if (state){data = (reg | NOSYSG);}
  else{data = (reg & ~NOSYSG);}
  MAX11210_writeReg8(CTRL3, data);
}
void MAX11210_setDisableSysOffset(bool state){
  uint8_t reg = MAX11210_readReg8(CTRL3);
  uint8_t data = 0x00;
  if (state){data = (reg | NOSYSO);}
  else{data = (reg & ~NOSYSO);}
  MAX11210_writeReg8(CTRL3, data);
}
void MAX11210_setDisableSelfCalGain(bool state){
  uint8_t reg = MAX11210_readReg8(CTRL3);
  uint8_t data = 0x00;
  if (state){data = (reg | NOSCG);}
  else{data = (reg & ~NOSCG);}
  MAX11210_writeReg8(CTRL3, data);
}
void MAX11210_setDisableSelfCalOffset(bool state){
  uint8_t reg = MAX11210_readReg8(CTRL3);
  uint8_t data = 0x00;
  if (state){data = (reg | NOSCO);}
  else{data = (reg & ~NOSCO);}
  MAX11210_writeReg8(CTRL3, data);
}
//Read from 24bit Registries (SGC, SOC, SCGC, SCOC)
uint32_t MAX11210_getSysGainCal(void) {return MAX11210_readReg24(SGC);}
uint32_t MAX11210_getSysOffsetCal(void) {return MAX11210_readReg24(SOC);}  
uint32_t MAX11210_getSelfCalGain(void) {return MAX11210_readReg24(SCGC);}  
uint32_t MAX11210_getSelfCalOffset(void) {return MAX11210_readReg24(SCOC);}
//24 bit Commands (SGC, SOC, SCGC, SCOC)
void MAX11210_setSysGainCal(uint32_t value) {MAX11210_writeReg24(SGC, value);}
void MAX11210_setSysOffsetCal(uint32_t value) {MAX11210_writeReg24(SOC, value);}  
void MAX11210_setSelfCalGain(uint32_t value) {MAX11210_writeReg24(SCGC, value);}  
void MAX11210_setSelfCalOffset(uint32_t value) {MAX11210_writeReg24(SCOC, value);}
