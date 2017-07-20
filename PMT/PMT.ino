#include <SPI.h>
#include "max11210.h"
#include "pins.h"

uint8_t prev_val = 0;
long serialData = 0;
bool Connection = false;
String serialStr = " ";
bool adc_on = false;

//Command byte for the digipot
byte address=0x11;
//Reference Voltage variable
float ref_voltage;

void setup() {
  pinMode(MCP41050_CS_PIN, OUTPUT);
  pinMode(ADC_CS_PIN, OUTPUT);
  pinMode(MOSI_PIN, OUTPUT);
  pinMode(SHUTTER_PIN, OUTPUT);
  digitalWrite(SHUTTER_PIN, HIGH);
  pinMode(MISO_PIN, INPUT);
  Serial.begin (115200);
  SPI.begin();
  set_pot(0x00);
  //delay(10000); 
}

void loop() {
  if(Serial.available()){ 
    serialStr = Serial.readString();
  if (Connection == false){
    if (serialStr == "c"){  // Connect
      Serial.println("Connected");
      Connection = true;}
    else{Connection = false;}
     }
  else if (Connection == true){
    if (serialStr == "d"){  // Disconnect
      if (adc_on == true){
        MAX11210_end();}
        adc_on = false;
      Connection = false;
      Serial.println("Disconnected");
      }
    else if(serialStr == "b"){ //Begin ADC
        Serial.println("ADC --> On");
        MAX11210_begin();
        adc_on = true;
        delay(100);
        //Print Self Calibration Values
        Serial.print("Self-calibration Gain: ");
        Serial.println(MAX11210_getSelfCalGain());
        Serial.print("Self-calibration Offset: ");
        Serial.println(MAX11210_getSelfCalOffset());
        Serial.print("Zero Scale Offset: ");
        Serial.println(MAX11210_getSysOffsetCal());
        Serial.print("Full Scale Gain: ");
        Serial.println(MAX11210_getSysGainCal());
        }
     else if(serialStr == "e"){ //Power Down ADC (Stop ADC)
        Serial.println("ADC --> Off");
        if (adc_on == true){
        MAX11210_end();}
        adc_on = false;
        SPI.begin();
        set_pot(0x00);
        delay(10);
        Serial.print("PMT Control Voltage: ");
        Serial.println(ref_voltage,4);
        delay(100);
        SPI.end();
        }
    else if(serialStr == "s"){ // Get the Status of the ADC
      Serial.print(MAX11210_getSTAT1());
      Serial.print(MAX11210_getCTRL1());
      Serial.print(MAX11210_getCTRL2());
      Serial.print(MAX11210_getCTRL3());
        }
     else if(serialStr == "m"){ // Start measurement ADC
      MAX11210_setConvMode("Continuous");
      digitalWrite(SHUTTER_PIN, LOW);
      Serial.println("Measuring");
      while(Serial.available() == 0);
      serialData = Serial.read(); //Get the rate 1,2,5,10,15,30,60,120  
      set_adc_rate(serialData);
      while(Serial.available() == 0);
      serialData = Serial.parseInt(); //Get measurement time
      get_adc_value(serialData);
      digitalWrite(SHUTTER_PIN, HIGH);
        }
     else if(serialStr == "o"){ // Start measurement ADC on single mode
      MAX11210_setConvMode("Single");
      digitalWrite(SHUTTER_PIN, LOW);
      Serial.println("Measuring");
      while(Serial.available() == 0);
      long sampling_rate = Serial.read(); //Get the rate 1,2,5,10,15,30,60,120  
      while(Serial.available() == 0);
      uint32_t sampling_time = Serial.parseInt(); //Get measurement time
      get_adc_value_single(sampling_rate , sampling_time);
      digitalWrite(SHUTTER_PIN, HIGH);
        }
     else if(serialStr == "f"){
      while(Serial.available() == 0);
      serialData = Serial.parseInt(); //Get the rate
      if (serialData == 1){MAX11210_setLineFreq("50Hz");}
      else if (serialData == 2){MAX11210_setLineFreq("60Hz");}
     }
     else if(serialStr == "v"){setConVoltage();}
}}}

void set_adc_rate(long rate){
  switch (rate){
  case 1:
    Serial.println("Sampling Rate: 1");
    MAX11210_setRate(1); //1 SPS
    break;
   case 2:
    Serial.println("Sampling Rate: 2.5");
    MAX11210_setRate(2); //2.5 SPS
    break;
   case 5:
     Serial.println("Sampling Rate: 5");
     MAX11210_setRate(5); //5 SPS
     break;
   case 10:
      Serial.println("Sampling Rate: 10");
      MAX11210_setRate(10); //10 SPS
      break;
   case 15:
      Serial.println("Sampling Rate: 15");
      MAX11210_setRate(15); //15 SPS
      break;
    case 30:
      Serial.println("Sampling Rate: 30");
      MAX11210_setRate(30); //30 SPS
      break;
    case 60:
      Serial.println("Sampling Rate: 60");
      MAX11210_setRate(60); //60 SPS
      break;
    case 120:
      Serial.println("Sampling Rate: 120");
      MAX11210_setRate(120); //120 SPS
      break;
    default:
      Serial.println("Wrong Rate");
      break;
    }
}

void get_adc_value(uint32_t mes_time){
  bool start_mes = false;
  elapsedMillis timeElapsed;
  
  Serial.print("Measurement Time: ");
  Serial.print(mes_time);
  Serial.println(" s");
  mes_time = mes_time*1000; //sec to msec
  do{
  uint32_t  adc_value = MAX11210_getData();
  if (start_mes == false){
    start_mes = true;
    timeElapsed = 0;
  }
  Serial.print(timeElapsed);
  Serial.print(" : ");
  Serial.println(adc_value);
  }while (timeElapsed < mes_time);
  Serial.print("Done");
}
void get_adc_value_single(long rate , uint32_t mes_time){
  bool start_mes = false;
  elapsedMillis timeElapsed;
  
  Serial.print("Measurement Time: ");
  Serial.print(mes_time);
  Serial.println(" s");
  mes_time = mes_time*1000; //sec to msec
  uint32_t  adc_value = 0;
  do{
    set_adc_rate(rate);
    adc_value = MAX11210_getData();
  if (start_mes == false){
    start_mes = true;
    timeElapsed = 0;
    }
  Serial.print(timeElapsed);
  Serial.print(" : ");
  Serial.println(adc_value);
    }while (timeElapsed < mes_time);
  Serial.print("Done");
}
//Digipot Control
void set_pot(uint8_t value) {
  // take the SS pin low to select the chip:
  digitalWrite(MCP41050_CS_PIN, LOW);
  // send Command to write value and enable the pot:
  SPI.transfer(address);
  // send in the value:
  SPI.transfer(value);
  // take the SS pin high to de-select the chip:
  digitalWrite(MCP41050_CS_PIN, HIGH);

  // read the adc value 
  int sensorValue = analogRead(14);
  // convert the adc value
  ref_voltage = sensorValue * (3.3/1023.0);
  //print the voltage
  //Serial.print("PMT Control Voltage: ");
  //Serial.println(ref_voltage,4);
}

//Set Control Voltage to 1V
void setConVoltage(void){
for (uint8_t i = 230; i < 255; i++) {
    set_pot(i);
    if (ref_voltage>1.0){
      Serial.print("Set @ i: ");
      Serial.print(i);
      Serial.print(" --> ");
      Serial.print("PMT Control Voltage: ");
      Serial.println(ref_voltage,4);
      delay(1000);
      break;
    }}
}
