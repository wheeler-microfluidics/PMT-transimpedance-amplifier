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
Text GLabel 6150 4350 1    60   Input ~ 0
GND
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
$Comp
L H12056-PMT U4
U 1 1 5938541D
P 9100 4200
F 0 "U4" H 9150 3150 60  0000 C CNN
F 1 "H12056-PMT" H 9200 4050 60  0000 C CNN
F 2 "WheelerLab:H12056-PMT-1mm_Holes" H 8050 3500 60  0001 C CNN
F 3 "" H 8050 3500 60  0001 C CNN
	1    9100 4200
	1    0    0    -1  
$EndComp
Text GLabel 7750 4600 0    60   Input ~ 0
GND
Text GLabel 8300 4900 0    60   Input ~ 0
+5V(VUSB)
Text GLabel 10050 3300 2    60   Input ~ 0
SHUTTER
Text GLabel 10400 4600 2    60   Input ~ 0
+1.2V
$Comp
L MCP41050 U5
U 1 1 59385BF9
P 10400 5900
F 0 "U5" H 10150 6250 50  0000 L CNN
F 1 "MCP41010" H 10450 6250 50  0000 L CNN
F 2 "Housings_SOIC:SOIC-8_3.9x4.9mm_Pitch1.27mm" H 10400 5900 50  0001 C CNN
F 3 "" H 10400 5900 50  0001 C CNN
	1    10400 5900
	1    0    0    -1  
$EndComp
Text GLabel 10800 5800 2    60   Input ~ 0
+1.2V
Text GLabel 10900 4975 0    60   Input ~ 0
MONITOR
Text GLabel 10400 5325 1    60   Input ~ 0
+3.3V
Text GLabel 10800 6300 2    60   Input ~ 0
GND
Text GLabel 10000 5800 0    60   Input ~ 0
SCK
Text GLabel 10000 5900 0    60   Input ~ 0
DOUT
Text GLabel 10000 6000 0    60   Input ~ 0
CS_POT
$Comp
L C C5
U 1 1 593867BD
P 6150 5100
F 0 "C5" H 6175 5200 50  0000 L CNN
F 1 "0.1uF" H 5800 5100 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 6188 4950 50  0001 C CNN
F 3 "" H 6150 5100 50  0001 C CNN
	1    6150 5100
	-1   0    0    1   
$EndComp
Text GLabel 6150 5250 2    60   Input ~ 0
GND
Text GLabel 3800 7225 3    60   Input ~ 0
GND
Text GLabel 3025 6625 0    60   Input ~ 0
+3.3V
Text GLabel 5400 6625 2    60   Input ~ 0
VREF
Text GLabel 6400 4750 2    60   Input ~ 0
VREF
$Comp
L MCP1501-SOIC MCP1
U 1 1 594B4154
P 3650 6725
F 0 "MCP1" H 3675 7072 60  0000 C CNN
F 1 "MCP1501-SOIC" H 3675 6966 60  0000 C CNN
F 2 "Housings_SOIC:SOIC-8_3.9x4.9mm_Pitch1.27mm" H 3400 6825 60  0001 C CNN
F 3 "" H 3400 6825 60  0001 C CNN
	1    3650 6725
	1    0    0    -1  
$EndComp
$Comp
L MAX11200 ADC1
U 1 1 594B8405
P 7475 1375
F 0 "ADC1" H 7475 1822 60  0000 C CNN
F 1 "MAX11210" H 7475 1716 60  0000 C CNN
F 2 "Housings_SSOP:QSOP-16_3.9x4.9mm_Pitch0.635mm" H 7275 1575 60  0001 C CNN
F 3 "" H 7275 1575 60  0001 C CNN
	1    7475 1375
	1    0    0    -1  
$EndComp
Text GLabel 8025 1675 2    60   Input ~ 0
CS_ADC
Text GLabel 8025 1475 2    60   Input ~ 0
DOUT
Text GLabel 8025 1575 2    60   Input ~ 0
DIN
Text GLabel 8025 1375 2    60   Input ~ 0
SCK
Text GLabel 6200 1675 0    60   Input ~ 0
GND
Text GLabel 6725 1575 0    60   Input ~ 0
VREF
NoConn ~ 6925 1175
NoConn ~ 6925 1275
NoConn ~ 6925 1375
NoConn ~ 8025 1175
Text GLabel 5525 1975 0    60   Input ~ 0
ADC
Text GLabel 8275 1825 2    60   Input ~ 0
+3.3V
NoConn ~ 8025 1275
$Comp
L C C10
U 1 1 594BADDB
P 10250 5400
F 0 "C10" V 10325 5450 50  0000 L CNN
F 1 "0.1uF" V 10400 5325 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 10288 5250 50  0001 C CNN
F 3 "" H 10250 5400 50  0001 C CNN
	1    10250 5400
	0    -1   -1   0   
$EndComp
Text GLabel 10100 5400 0    60   Input ~ 0
GND
$Comp
L C C1
U 1 1 594BB637
P 3100 6475
F 0 "C1" H 3200 6400 50  0000 L CNN
F 1 "0.1uF" H 2850 6375 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 3138 6325 50  0001 C CNN
F 3 "" H 3100 6475 50  0001 C CNN
	1    3100 6475
	-1   0    0    1   
$EndComp
Text GLabel 3100 6325 1    60   Input ~ 0
GND
$Comp
L C C9
U 1 1 594BC287
P 8200 1975
F 0 "C9" H 8225 2075 50  0000 L CNN
F 1 "0.1uF" H 7850 1975 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 8238 1825 50  0001 C CNN
F 3 "" H 8200 1975 50  0001 C CNN
	1    8200 1975
	-1   0    0    1   
$EndComp
Text GLabel 8200 2125 2    60   Input ~ 0
GND
$Comp
L C C8
U 1 1 594BC5D9
P 5225 6775
F 0 "C8" H 5250 6875 50  0000 L CNN
F 1 "100pF" H 5000 6700 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 5263 6625 50  0001 C CNN
F 3 "" H 5225 6775 50  0001 C CNN
	1    5225 6775
	-1   0    0    1   
$EndComp
$Comp
L C C7
U 1 1 594BC8F0
P 4975 6775
F 0 "C7" H 5000 6875 50  0000 L CNN
F 1 "0.1uF" H 4750 6700 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 5013 6625 50  0001 C CNN
F 3 "" H 4975 6775 50  0001 C CNN
	1    4975 6775
	-1   0    0    1   
$EndComp
$Comp
L C C3
U 1 1 594BCA7C
P 4750 6775
F 0 "C3" H 4775 6875 50  0000 L CNN
F 1 "47uF" H 4550 6700 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 4788 6625 50  0001 C CNN
F 3 "" H 4750 6775 50  0001 C CNN
	1    4750 6775
	-1   0    0    1   
$EndComp
Text GLabel 6825 1475 0    60   Input ~ 0
GND
$Comp
L LMP7715MF U3
U 1 1 594BE8BA
P 6025 6250
F 0 "U3" H 6075 5975 60  0000 C CNN
F 1 "LMP7715MF" H 5550 5925 60  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-23-5" H 6025 6250 60  0001 C CNN
F 3 "" H 6025 6250 60  0000 C CNN
	1    6025 6250
	-1   0    0    1   
$EndComp
Text GLabel 6125 5950 1    60   Input ~ 0
GND
Text GLabel 6125 6550 2    60   Input ~ 0
+3.3V
$Comp
L C C6
U 1 1 594BED51
P 6125 6700
F 0 "C6" H 6150 6800 50  0000 L CNN
F 1 "0.1uF" H 5775 6700 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 6163 6550 50  0001 C CNN
F 3 "" H 6125 6700 50  0001 C CNN
	1    6125 6700
	-1   0    0    1   
$EndComp
Text GLabel 6125 6850 2    60   Input ~ 0
GND
Text GLabel 6375 6350 2    60   Input ~ 0
VREF
$Comp
L R R5
U 1 1 594BEEEC
P 5200 6250
F 0 "R5" V 5280 6250 50  0000 C CNN
F 1 "100" V 5200 6250 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 5130 6250 50  0001 C CNN
F 3 "" H 5200 6250 50  0001 C CNN
	1    5200 6250
	0    1    -1   0   
$EndComp
Text GLabel 4900 6250 0    60   Input ~ 0
SHIELD
Text GLabel 5675 5000 0    60   Input ~ 0
SHIELD
$Comp
L CONN_02X05 J5
U 1 1 594C1BE4
P 3800 3750
F 0 "J5" H 3800 4050 50  0000 C CNN
F 1 "CONN_02X05" H 3800 3450 50  0000 C CNN
F 2 "Connectors:he10-10d" H 3800 2550 50  0001 C CNN
F 3 "" H 3800 2550 50  0001 C CNN
	1    3800 3750
	1    0    0    -1  
$EndComp
Text GLabel 4050 3550 2    60   Input ~ 0
MONITOR
Text GLabel 4050 3650 2    60   Input ~ 0
+5V(VUSB)
Text GLabel 3550 3650 0    60   Input ~ 0
GND
Text GLabel 3550 3550 0    60   Input ~ 0
+3.3V
Text GLabel 3550 3750 0    60   Input ~ 0
CS_POT
Text GLabel 4050 3750 2    60   Input ~ 0
CS_ADC
Text GLabel 3550 3850 0    60   Input ~ 0
DOUT
Text GLabel 4050 3850 2    60   Input ~ 0
DIN
Text GLabel 4050 3950 2    60   Input ~ 0
SCK
Text GLabel 3550 3950 0    60   Input ~ 0
SHUTTER
Text GLabel 5400 4650 0    60   Input ~ 0
ADC
$Comp
L R R7
U 1 1 594C248C
P 6075 1975
F 0 "R7" V 6155 1975 50  0000 C CNN
F 1 "301" V 6075 1975 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 6005 1975 50  0001 C CNN
F 3 "" H 6075 1975 50  0001 C CNN
	1    6075 1975
	0    1    1    0   
$EndComp
$Comp
L C C12
U 1 1 594C2715
P 6650 1825
F 0 "C12" H 6675 1925 50  0000 L CNN
F 1 "0.1uF" H 6675 1725 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 6688 1675 50  0001 C CNN
F 3 "" H 6650 1825 50  0001 C CNN
	1    6650 1825
	1    0    0    -1  
$EndComp
$Comp
L C C11
U 1 1 594C28E3
P 6375 1825
F 0 "C11" H 6400 1925 50  0000 L CNN
F 1 "100pF" H 6150 1750 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 6413 1675 50  0001 C CNN
F 3 "" H 6375 1825 50  0001 C CNN
	1    6375 1825
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
Wire Wire Line
	6900 4550 7050 4550
Wire Wire Line
	6400 4550 6600 4550
Wire Wire Line
	5850 4750 5850 5450
Wire Wire Line
	5850 5450 6900 5450
Wire Wire Line
	6900 5450 6900 5150
Wire Wire Line
	5400 4650 5700 4650
Wire Wire Line
	8300 3700 7000 3700
Wire Wire Line
	7000 3700 7000 4550
Connection ~ 7000 4550
Wire Wire Line
	10050 4600 10400 4600
Wire Wire Line
	10800 5900 10900 5900
Wire Wire Line
	10900 5900 10900 4900
Wire Wire Line
	10900 4900 10050 4900
Wire Wire Line
	10400 5325 10400 5500
Wire Wire Line
	7750 4600 8300 4600
Wire Wire Line
	7200 4750 7200 5150
Wire Wire Line
	4200 6725 4325 6725
Wire Wire Line
	4325 6725 4325 6625
Connection ~ 4325 6625
Wire Wire Line
	4200 6825 4325 6825
Wire Wire Line
	4325 6825 4325 7225
Wire Wire Line
	4200 6925 5225 6925
Connection ~ 4325 6925
Wire Wire Line
	3050 6725 3050 7225
Wire Wire Line
	3050 6925 3150 6925
Wire Wire Line
	3150 6725 3050 6725
Connection ~ 3050 6925
Wire Wire Line
	3150 6625 3150 6825
Wire Wire Line
	3025 6625 3150 6625
Wire Wire Line
	8300 4000 7475 4000
Wire Wire Line
	7475 4000 7475 5150
Wire Wire Line
	7475 5150 6900 5150
Wire Wire Line
	10400 6300 10800 6300
Wire Wire Line
	10800 6300 10800 6000
Wire Wire Line
	6800 1775 6925 1775
Connection ~ 10400 5400
Connection ~ 3100 6625
Wire Wire Line
	8025 1775 8125 1775
Wire Wire Line
	8125 1775 8125 1875
Wire Wire Line
	8125 1875 8025 1875
Wire Wire Line
	8125 1825 8275 1825
Connection ~ 8125 1825
Connection ~ 8200 1825
Connection ~ 4750 6625
Connection ~ 4975 6625
Wire Wire Line
	6725 1575 6925 1575
Connection ~ 5225 6625
Connection ~ 6800 1675
Wire Wire Line
	6800 1675 6800 1775
Wire Wire Line
	6925 1475 6825 1475
Wire Wire Line
	4625 6625 5400 6625
Wire Wire Line
	6375 6150 6525 6150
Wire Wire Line
	6525 6150 6525 5825
Wire Wire Line
	6525 5825 5450 5825
Wire Wire Line
	5450 5825 5450 6250
Wire Wire Line
	5350 6250 5675 6250
Connection ~ 5450 6250
Wire Wire Line
	4900 6250 5050 6250
Wire Wire Line
	6225 1975 6925 1975
Wire Wire Line
	5925 1975 5525 1975
Wire Wire Line
	6925 1975 6925 1875
Connection ~ 6650 1975
Wire Wire Line
	6375 1975 6650 1975
Connection ~ 6375 1975
Wire Wire Line
	6200 1675 6925 1675
Connection ~ 6650 1675
Connection ~ 6375 1675
$Comp
L R R6
U 1 1 594C30B5
P 4475 6625
F 0 "R6" V 4555 6625 50  0000 C CNN
F 1 "49.9" V 4475 6625 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 4405 6625 50  0001 C CNN
F 3 "" H 4475 6625 50  0001 C CNN
	1    4475 6625
	0    1    1    0   
$EndComp
Wire Wire Line
	3050 7225 4325 7225
Wire Wire Line
	4325 6625 4200 6625
Connection ~ 4975 6925
Connection ~ 4750 6925
$EndSCHEMATC
