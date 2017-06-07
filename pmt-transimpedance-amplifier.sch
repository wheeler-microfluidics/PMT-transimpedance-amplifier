EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:wheelerlab
LIBS:dstat
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Teensy_3.2 U1
U 1 1 5935DD01
P 3650 3600
F 0 "U1" H 3650 3600 60  0000 C CNN
F 1 "Teensy_3.2" H 3650 5050 60  0000 C CNN
F 2 "WheelerLab:Teensy-3.2" H 3750 3050 60  0001 C CNN
F 3 "" H 3750 3050 60  0000 C CNN
	1    3650 3600
	1    0    0    -1  
$EndComp
$Comp
L R R3
U 1 1 5935DD93
P 6000 3950
F 0 "R3" V 6080 3950 50  0000 C CNN
F 1 "30k" V 6000 3950 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 5930 3950 50  0001 C CNN
F 3 "" H 6000 3950 50  0001 C CNN
	1    6000 3950
	0    -1   1    0   
$EndComp
$Comp
L C C4
U 1 1 5935889B
P 6000 3700
F 0 "C4" V 6075 3550 50  0000 L CNN
F 1 "200p" V 5850 3625 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 6038 3550 50  0001 C CNN
F 3 "" H 6000 3700 50  0001 C CNN
	1    6000 3700
	0    -1   1    0   
$EndComp
Text GLabel 2650 2850 0    60   Input ~ 0
GND
NoConn ~ 3400 5350
NoConn ~ 3550 5350
NoConn ~ 3700 5350
NoConn ~ 3850 5350
Text GLabel 6150 4350 1    60   Input ~ 0
GND
Text GLabel 4650 3150 2    60   Input ~ 0
+3.3V
$Comp
L LMP7721 U2
U 1 1 5935AD73
P 6050 4650
F 0 "U2" H 6050 4950 60  0000 L CNN
F 1 "LMP7721" H 6050 4350 60  0000 L CNN
F 2 "Housings_SOIC:SOIC-8_3.9x4.9mm_Pitch1.27mm" H 6050 4650 60  0001 C CNN
F 3 "" H 6050 4650 60  0000 C CNN
	1    6050 4650
	-1   0    0    1   
$EndComp
Wire Wire Line
	6400 3700 6400 4550
Wire Wire Line
	6400 3950 6150 3950
Wire Wire Line
	5500 3700 5500 4650
Wire Wire Line
	5500 3950 5850 3950
Wire Wire Line
	6400 3700 6150 3700
Connection ~ 6400 3950
Wire Wire Line
	5850 3700 5500 3700
Connection ~ 5500 3950
Connection ~ 5500 4650
Text GLabel 6150 4950 2    60   Input ~ 0
+3.3V
$Comp
L CONN_COAXIAL J1
U 1 1 5935B2D9
P 7200 4550
F 0 "J1" H 7210 4670 50  0000 C CNN
F 1 "CONN_COAXIAL" V 7315 4550 50  0000 C CNN
F 2 "WheelerLab:JACK_SMA" H 7200 4550 50  0001 C CNN
F 3 "" H 7200 4550 50  0001 C CNN
	1    7200 4550
	1    0    0    -1  
$EndComp
Connection ~ 7200 5150
Wire Wire Line
	5850 4550 5850 4475
Wire Wire Line
	5850 4475 5675 4475
Wire Wire Line
	5675 4475 5675 5000
Wire Wire Line
	5675 5000 5850 5000
Connection ~ 5850 5000
$Comp
L R R4
U 1 1 59359FE5
P 6750 4550
F 0 "R4" V 6543 4550 50  0000 C CNN
F 1 "10k" V 6634 4550 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 6680 4550 50  0001 C CNN
F 3 "" H 6750 4550 50  0001 C CNN
	1    6750 4550
	0    1    1    0   
$EndComp
Wire Wire Line
	6900 4550 7050 4550
Wire Wire Line
	6400 4550 6600 4550
Text GLabel 7050 3075 0    60   Input ~ 0
GND
Text GLabel 7050 3250 0    60   Input ~ 0
+5V(VUSB)
Wire Wire Line
	5850 4750 5850 5450
Wire Wire Line
	5850 5450 6900 5450
Wire Wire Line
	6900 5450 6900 5150
Wire Wire Line
	6900 5150 7600 5150
$Comp
L CONN_01X01 J2
U 1 1 5936EB31
P 7250 2850
F 0 "J2" H 7328 2891 50  0000 L CNN
F 1 "CONN_01X01" H 7328 2800 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01_Pitch2.54mm" H 7250 2850 50  0001 C CNN
F 3 "" H 7250 2850 50  0001 C CNN
	1    7250 2850
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X01 J3
U 1 1 5936EB95
P 7250 3075
F 0 "J3" H 7328 3116 50  0000 L CNN
F 1 "CONN_01X01" H 7328 3025 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01_Pitch2.54mm" H 7250 3075 50  0001 C CNN
F 3 "" H 7250 3075 50  0001 C CNN
	1    7250 3075
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X01 J4
U 1 1 5936EBBD
P 7250 3250
F 0 "J4" H 7328 3291 50  0000 L CNN
F 1 "CONN_01X01" H 7328 3200 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01_Pitch2.54mm" H 7250 3250 50  0001 C CNN
F 3 "" H 7250 3250 50  0001 C CNN
	1    7250 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 4650 5700 4650
Wire Wire Line
	5400 4650 5400 2400
Wire Wire Line
	5400 2400 4650 2400
$Comp
L LTC2460-ADC U3
U 1 1 59385094
P 6950 1950
F 0 "U3" H 6950 1550 60  0000 C CNN
F 1 "LTC2460-ADC" H 6950 2400 60  0000 C CNN
F 2 "Housings_SSOP:MSOP-12_3x4mm_Pitch0.65mm" H 6600 2350 60  0001 C CNN
F 3 "" H 6600 2350 60  0001 C CNN
	1    6950 1950
	1    0    0    -1  
$EndComp
Text GLabel 5400 2400 2    60   Input ~ 0
ADC
Text GLabel 7450 1950 2    60   Input ~ 0
ADC
NoConn ~ 4000 5350
$Comp
L H12056-PMT U4
U 1 1 5938541D
P 9100 4200
F 0 "U4" H 9150 3150 60  0000 C CNN
F 1 "H12056-PMT" H 9200 4050 60  0000 C CNN
F 2 "WheelerLab:H12056-PMT" H 8050 3500 60  0001 C CNN
F 3 "" H 8050 3500 60  0001 C CNN
	1    9100 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	8300 3700 7000 3700
Wire Wire Line
	7000 3700 7000 4550
Connection ~ 7000 4550
Wire Wire Line
	7600 4000 8300 4000
Wire Wire Line
	7600 5150 7600 4000
Text GLabel 7750 4600 3    60   Input ~ 0
GND
Text GLabel 8300 4900 0    60   Input ~ 0
+5V(VUSB)
Text GLabel 2650 3300 0    60   Input ~ 0
SHUTTER
Text GLabel 10050 3300 2    60   Input ~ 0
SHUTTER
Text GLabel 10400 4600 2    60   Input ~ 0
+1.2V
$Comp
L MCP41050 U5
U 1 1 59385BF9
P 10400 5900
F 0 "U5" H 10150 6250 50  0000 L CNN
F 1 "MCP41050" H 10450 6250 50  0000 L CNN
F 2 "Housings_SOIC:SOIC-8_3.9x4.9mm_Pitch1.27mm" H 10400 5900 50  0001 C CNN
F 3 "" H 10400 5900 50  0001 C CNN
	1    10400 5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	10050 4600 10400 4600
Text GLabel 10800 5800 2    60   Input ~ 0
+1.2V
Text GLabel 10800 6000 2    60   Input ~ 0
GND
Wire Wire Line
	10800 5900 10900 5900
Wire Wire Line
	10900 5900 10900 4900
Wire Wire Line
	10900 4900 10050 4900
Text GLabel 10900 5150 0    60   Input ~ 0
MONITOR
Text GLabel 4650 4650 2    60   Input ~ 0
MONITOR
Text GLabel 10400 5450 2    60   Input ~ 0
+3.3V
Wire Wire Line
	10400 5500 10400 5450
Text GLabel 10400 6300 2    60   Input ~ 0
GND
Text GLabel 10000 5800 0    60   Input ~ 0
SCK
Text GLabel 10000 5900 0    60   Input ~ 0
DOUT
Text GLabel 10000 6000 0    60   Input ~ 0
CS_POT
Text GLabel 2650 3750 0    60   Input ~ 0
CS_POT
Text GLabel 2650 4650 0    60   Input ~ 0
DOUT
Text GLabel 4650 4800 2    60   Input ~ 0
SCK
Text GLabel 7050 2850 0    60   Input ~ 0
+1.2V
$Comp
L C C6
U 1 1 59386748
P 7750 4150
F 0 "C6" H 7775 4250 50  0000 L CNN
F 1 "0.1uF" H 7775 4050 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 7788 4000 50  0001 C CNN
F 3 "" H 7750 4150 50  0001 C CNN
	1    7750 4150
	1    0    0    -1  
$EndComp
$Comp
L C C5
U 1 1 593867BD
P 6150 5100
F 0 "C5" H 6175 5200 50  0000 L CNN
F 1 "0.1uF" H 6175 5000 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 6188 4950 50  0001 C CNN
F 3 "" H 6150 5100 50  0001 C CNN
	1    6150 5100
	-1   0    0    1   
$EndComp
$Comp
L Ferrite_Bead L1
U 1 1 593869F9
P 8000 4150
F 0 "L1" V 7850 4175 50  0000 C CNN
F 1 "Ferrite_Bead" V 8150 4150 50  0000 C CNN
F 2 "Inductors_SMD:L_0805" V 7930 4150 50  0001 C CNN
F 3 "" H 8000 4150 50  0001 C CNN
	1    8000 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	7750 4300 7750 4600
Wire Wire Line
	7750 4600 8300 4600
Wire Wire Line
	8000 4300 8000 4600
Connection ~ 8000 4600
Connection ~ 7750 4000
Connection ~ 8000 4000
Text GLabel 2650 4800 0    60   Input ~ 0
DIN
Text GLabel 6500 1950 0    60   Input ~ 0
DOUT
Text GLabel 2650 3900 0    60   Input ~ 0
CS_ADC
Text GLabel 6500 1850 0    60   Input ~ 0
CS_ADC
Text GLabel 6500 2050 0    60   Input ~ 0
SCK
Text GLabel 6500 2150 0    60   Input ~ 0
DIN
Text GLabel 7450 1650 2    60   Input ~ 0
+3.3V
Text GLabel 7450 1750 2    60   Input ~ 0
GND
Wire Wire Line
	7450 1750 7450 1850
Text GLabel 7450 2150 2    60   Input ~ 0
GND
Wire Wire Line
	7450 2050 7450 2150
Text GLabel 6150 5250 2    60   Input ~ 0
GND
$Comp
L C C2
U 1 1 59387D05
P 5600 1800
F 0 "C2" H 5625 1900 50  0000 L CNN
F 1 "0.1uF" H 5625 1700 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 5638 1650 50  0001 C CNN
F 3 "" H 5600 1800 50  0001 C CNN
	1    5600 1800
	-1   0    0    1   
$EndComp
$Comp
L C C3
U 1 1 59387EA5
P 5950 1900
F 0 "C3" H 5975 2000 50  0000 L CNN
F 1 "0.1uF" H 5975 1800 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 5988 1750 50  0001 C CNN
F 3 "" H 5950 1900 50  0001 C CNN
	1    5950 1900
	-1   0    0    1   
$EndComp
Wire Wire Line
	5600 1650 6500 1650
Wire Wire Line
	6500 1750 5950 1750
Wire Wire Line
	5600 1950 5600 2050
Wire Wire Line
	5600 2050 5950 2050
Text GLabel 5600 2050 0    60   Input ~ 0
GND
Wire Wire Line
	7200 4750 7200 5150
$Comp
L R R1
U 1 1 59388A77
P 5150 5600
F 0 "R1" V 5230 5600 50  0000 C CNN
F 1 "10k" V 5150 5600 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 5080 5600 50  0001 C CNN
F 3 "" H 5150 5600 50  0001 C CNN
	1    5150 5600
	1    0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 59388AC8
P 5150 5900
F 0 "R2" V 5230 5900 50  0000 C CNN
F 1 "3.3k" V 5150 5900 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 5080 5900 50  0001 C CNN
F 3 "" H 5150 5900 50  0001 C CNN
	1    5150 5900
	1    0    0    -1  
$EndComp
Text GLabel 5150 6050 2    60   Input ~ 0
GND
$Comp
L C C1
U 1 1 59388B2F
P 4850 5900
F 0 "C1" H 4875 6000 50  0000 L CNN
F 1 "0.1uF" H 4875 5800 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 4888 5750 50  0001 C CNN
F 3 "" H 4850 5900 50  0001 C CNN
	1    4850 5900
	-1   0    0    1   
$EndComp
Wire Wire Line
	4850 5750 5300 5750
Wire Wire Line
	4850 6050 5150 6050
Text GLabel 5150 5450 0    60   Input ~ 0
+3.3V
Text GLabel 5300 5750 2    60   Input ~ 0
VREF
Connection ~ 5150 5750
Text GLabel 6400 4750 2    60   Input ~ 0
VREF
Text GLabel 4650 2550 2    60   Input ~ 0
VREF
$EndSCHEMATC
