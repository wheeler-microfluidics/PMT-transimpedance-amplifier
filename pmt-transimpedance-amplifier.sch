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
LIBS:pmt-transimpedance-amplifier-cache
EELAYER 26 0
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
F 1 "200pF" V 5850 3625 50  0000 L CNN
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
F 1 "CONN_COAXIAL" V 7325 4650 50  0000 C CNN
F 2 "WheelerLab:JACK_SMA" H 7200 4550 50  0001 C CNN
F 3 "" H 7200 4550 50  0001 C CNN
	1    7200 4550
	1    0    0    -1  
$EndComp
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
Text GLabel 7950 4300 0    60   Input ~ 0
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
Text GLabel 8175 1650 2    60   Input ~ 0
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
$Comp
L R R1
U 1 1 59388A77
P 4050 6250
F 0 "R1" V 4130 6250 50  0000 C CNN
F 1 "10k" V 4050 6250 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 3980 6250 50  0001 C CNN
F 3 "" H 4050 6250 50  0001 C CNN
	1    4050 6250
	1    0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 59388AC8
P 4050 6550
F 0 "R2" V 4130 6550 50  0000 C CNN
F 1 "3.3k" V 4050 6550 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 3980 6550 50  0001 C CNN
F 3 "" H 4050 6550 50  0001 C CNN
	1    4050 6550
	1    0    0    -1  
$EndComp
Text GLabel 4050 6700 2    60   Input ~ 0
GND
$Comp
L C C1
U 1 1 59388B2F
P 3750 6550
F 0 "C1" H 3775 6650 50  0000 L CNN
F 1 "0.1uF" H 3775 6450 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 3788 6400 50  0001 C CNN
F 3 "" H 3750 6550 50  0001 C CNN
	1    3750 6550
	-1   0    0    1   
$EndComp
Wire Wire Line
	3750 6400 4200 6400
Wire Wire Line
	3750 6700 4050 6700
Text GLabel 4050 6100 0    60   Input ~ 0
+3.3V
Text GLabel 4200 6400 2    60   Input ~ 0
VREF
Connection ~ 4050 6400
Text GLabel 6400 4750 2    60   Input ~ 0
VREF
Text GLabel 4650 2550 2    60   Input ~ 0
VREF
$Comp
L C C8
U 1 1 5938AB88
P 8000 1800
F 0 "C8" H 8025 1900 50  0000 L CNN
F 1 "0.1uF" H 8025 1700 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 8038 1650 50  0001 C CNN
F 3 "" H 8000 1800 50  0001 C CNN
	1    8000 1800
	-1   0    0    1   
$EndComp
Text GLabel 8000 1950 2    60   Input ~ 0
GND
Wire Wire Line
	7450 1650 8175 1650
Connection ~ 8000 1650
$Comp
L LMP7715MF U6
U 1 1 5938D47C
P 6350 6075
F 0 "U6" H 6050 5700 60  0000 C CNN
F 1 "LMP7715MF" H 5875 5800 60  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-23-5" H 6350 6075 60  0001 C CNN
F 3 "" H 6350 6075 60  0000 C CNN
	1    6350 6075
	-1   0    0    1   
$EndComp
Wire Wire Line
	5850 4550 5700 4550
Wire Wire Line
	5700 4750 5850 4750
Connection ~ 5700 4750
Text GLabel 6450 5775 1    60   Input ~ 0
GND
Text GLabel 6450 6375 2    60   Input ~ 0
+3.3V
$Comp
L C C7
U 1 1 5938D871
P 6450 6525
F 0 "C7" H 6475 6625 50  0000 L CNN
F 1 "0.1uF" H 6475 6425 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 6488 6375 50  0001 C CNN
F 3 "" H 6450 6525 50  0001 C CNN
	1    6450 6525
	-1   0    0    1   
$EndComp
Text GLabel 6450 6675 2    60   Input ~ 0
GND
$Comp
L R R5
U 1 1 5938DB75
P 5850 6075
F 0 "R5" V 5643 6075 50  0000 C CNN
F 1 "100" V 5734 6075 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 5780 6075 50  0001 C CNN
F 3 "" H 5850 6075 50  0001 C CNN
	1    5850 6075
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6700 5975 6875 5975
Wire Wire Line
	6875 5975 6875 5475
Wire Wire Line
	6875 5475 6000 5475
Wire Wire Line
	6000 5475 6000 6075
Wire Wire Line
	5700 4550 5700 6075
Text GLabel 6700 6175 2    60   Input ~ 0
VREF
Text GLabel 5700 4750 0    60   Input ~ 0
Shield
Wire Wire Line
	7950 4600 8300 4600
Wire Wire Line
	7950 4000 7950 4600
Connection ~ 7950 4000
Wire Wire Line
	7200 4750 7600 4750
Wire Wire Line
	7600 4750 7600 4000
$Comp
L C C6
U 1 1 59393EC9
P 10400 5300
F 0 "C6" H 10200 5325 50  0000 L CNN
F 1 "0.1uF" H 10075 5225 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 10438 5150 50  0001 C CNN
F 3 "" H 10400 5300 50  0001 C CNN
	1    10400 5300
	1    0    0    -1  
$EndComp
Text GLabel 10400 5150 1    60   Input ~ 0
GND
$EndSCHEMATC
