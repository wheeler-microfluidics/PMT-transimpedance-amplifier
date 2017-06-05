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
F 1 "R" V 6000 3950 50  0000 C CNN
F 2 "" V 5930 3950 50  0001 C CNN
F 3 "" H 6000 3950 50  0001 C CNN
	1    6000 3950
	0    -1   1    0   
$EndComp
$Comp
L C C?
U 1 1 5935889B
P 6000 3700
F 0 "C?" H 6025 3800 50  0000 L CNN
F 1 "C" H 6025 3600 50  0000 L CNN
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
NoConn ~ 4000 5350
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
	4650 4650 5700 4650
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
NoConn ~ 5850 4550
NoConn ~ 5850 4750
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
Wire Wire Line
	6400 4550 7050 4550
Text GLabel 7200 4750 3    60   Input ~ 0
GND
$EndSCHEMATC
