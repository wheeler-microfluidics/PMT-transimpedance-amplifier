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
L Teensy_3.2 U?
U 1 1 5935DD01
P 3650 3600
F 0 "U?" H 3650 3600 60  0000 C CNN
F 1 "Teensy_3.2" H 3650 5050 60  0000 C CNN
F 2 "" H 3750 3050 60  0000 C CNN
F 3 "" H 3750 3050 60  0000 C CNN
	1    3650 3600
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 5935DD93
P 6000 3950
F 0 "R?" V 6080 3950 50  0000 C CNN
F 1 "30k" V 6000 3950 50  0000 C CNN
F 2 "" V 5930 3950 50  0001 C CNN
F 3 "" H 6000 3950 50  0001 C CNN
	1    6000 3950
	0    -1   1    0   
$EndComp
$Comp
L C C?
U 1 1 5935889B
P 6000 3700
F 0 "C?" V 6075 3550 50  0000 L CNN
F 1 "200p" V 5850 3625 50  0000 L CNN
F 2 "" H 6038 3550 50  0001 C CNN
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
L LMP7721 U?
U 1 1 5935AD73
P 6050 4650
F 0 "U?" H 6050 4950 60  0000 L CNN
F 1 "LMP7721" H 6050 4350 60  0000 L CNN
F 2 "" H 6050 4650 60  0000 C CNN
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
Text GLabel 6400 4750 2    60   Input ~ 0
GND
Connection ~ 5500 4650
Text GLabel 6150 4950 3    60   Input ~ 0
+3.3V
$Comp
L CONN_COAXIAL J?
U 1 1 5935B2D9
P 7200 4550
F 0 "J?" H 7210 4670 50  0000 C CNN
F 1 "CONN_COAXIAL" V 7315 4550 50  0000 C CNN
F 2 "" H 7200 4550 50  0001 C CNN
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
L R R?
U 1 1 59359FE5
P 6750 4550
F 0 "R?" V 6543 4550 50  0000 C CNN
F 1 "10k" V 6634 4550 50  0000 C CNN
F 2 "" V 6680 4550 50  0001 C CNN
F 3 "" H 6750 4550 50  0001 C CNN
	1    6750 4550
	0    1    1    0   
$EndComp
Wire Wire Line
	6900 4550 7050 4550
Wire Wire Line
	6400 4550 6600 4550
Text Label 4000 5350 3    60   ~ 0
VControl(+0.5-+1.1V)
Text Label 7050 2850 2    60   ~ 0
VControl(+0.5-+1.1V)
Text GLabel 7050 3075 0    60   Input ~ 0
GND
Text GLabel 7050 3250 0    60   Input ~ 0
+5V(VUSB)
Wire Wire Line
	5850 4750 5850 5350
Wire Wire Line
	5850 5350 6900 5350
Wire Wire Line
	6900 5350 6900 5150
Wire Wire Line
	6900 5150 7200 5150
$Comp
L CONN_01X01 J?
U 1 1 5936EB31
P 7250 2850
F 0 "J?" H 7328 2891 50  0000 L CNN
F 1 "CONN_01X01" H 7328 2800 50  0000 L CNN
F 2 "" H 7250 2850 50  0001 C CNN
F 3 "" H 7250 2850 50  0001 C CNN
	1    7250 2850
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X01 J?
U 1 1 5936EB95
P 7250 3075
F 0 "J?" H 7328 3116 50  0000 L CNN
F 1 "CONN_01X01" H 7328 3025 50  0000 L CNN
F 2 "" H 7250 3075 50  0001 C CNN
F 3 "" H 7250 3075 50  0001 C CNN
	1    7250 3075
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X01 J?
U 1 1 5936EBBD
P 7250 3250
F 0 "J?" H 7328 3291 50  0000 L CNN
F 1 "CONN_01X01" H 7328 3200 50  0000 L CNN
F 2 "" H 7250 3250 50  0001 C CNN
F 3 "" H 7250 3250 50  0001 C CNN
	1    7250 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5150 2550 4650 2550
Wire Wire Line
	5400 4650 5700 4650
Wire Wire Line
	5400 4650 5400 2400
Wire Wire Line
	5400 2400 4650 2400
Wire Wire Line
	7200 4750 7200 5500
Wire Wire Line
	5150 2550 5150 5500
Wire Wire Line
	5150 5500 7200 5500
Text GLabel 4650 2250 2    60   Input ~ 0
+3.3V
$EndSCHEMATC
