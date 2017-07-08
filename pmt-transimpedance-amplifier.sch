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
L R R6
U 1 1 5935DD93
P 5175 2975
F 0 "R6" V 5255 2975 50  0000 C CNN
F 1 "30k" V 5175 2975 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 5105 2975 50  0001 C CNN
F 3 "" H 5175 2975 50  0001 C CNN
	1    5175 2975
	0    -1   1    0   
$EndComp
$Comp
L C C4
U 1 1 5935889B
P 5175 2725
F 0 "C4" V 5250 2575 50  0000 L CNN
F 1 "200pF" V 5025 2650 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 5213 2575 50  0001 C CNN
F 3 "" H 5175 2725 50  0001 C CNN
	1    5175 2725
	0    -1   1    0   
$EndComp
Text GLabel 5325 3375 1    60   Input ~ 0
GND
$Comp
L LMP7721 U2
U 1 1 5935AD73
P 5225 3675
F 0 "U2" H 5225 3975 60  0000 L CNN
F 1 "LMP7721" H 5225 3375 60  0000 L CNN
F 2 "Housings_SOIC:SOIC-8_3.9x4.9mm_Pitch1.27mm" H 5225 3675 60  0001 C CNN
F 3 "" H 5225 3675 60  0000 C CNN
	1    5225 3675
	-1   0    0    1   
$EndComp
Text GLabel 5325 3975 2    60   Input ~ 0
+3.3V
$Comp
L CONN_COAXIAL J2
U 1 1 5935B2D9
P 6375 3575
F 0 "J2" H 6385 3695 50  0000 C CNN
F 1 "CONN_COAXIAL" H 6725 3575 50  0000 C CNN
F 2 "WheelerLab:JACK_SMA" H 6375 3575 50  0001 C CNN
F 3 "" H 6375 3575 50  0001 C CNN
	1    6375 3575
	1    0    0    -1  
$EndComp
$Comp
L R R8
U 1 1 59359FE5
P 5925 3575
F 0 "R8" V 5718 3575 50  0000 C CNN
F 1 "10k" V 5809 3575 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 5855 3575 50  0001 C CNN
F 3 "" H 5925 3575 50  0001 C CNN
	1    5925 3575
	0    1    1    0   
$EndComp
$Comp
L H12056-PMT PMT1
U 1 1 5938541D
P 9425 3775
F 0 "PMT1" H 9475 2725 60  0000 C CNN
F 1 "H12056-PMT" H 9525 3625 60  0000 C CNN
F 2 "WheelerLab:H12056-PMT-1mm_Holes" H 8375 3075 60  0001 C CNN
F 3 "" H 8375 3075 60  0001 C CNN
	1    9425 3775
	1    0    0    -1  
$EndComp
Text GLabel 8625 4175 0    60   Input ~ 0
GND
Text GLabel 10375 2875 2    60   Input ~ 0
SHUTTER
Text GLabel 10375 4175 2    60   Input ~ 0
+1.2V
$Comp
L MCP41050 DIGIPOT1
U 1 1 59385BF9
P 5225 5775
F 0 "DIGIPOT1" H 4800 6125 50  0000 L CNN
F 1 "MCP41010" H 5275 6125 50  0000 L CNN
F 2 "Housings_SOIC:SOIC-8_3.9x4.9mm_Pitch1.27mm" H 5225 5775 50  0001 C CNN
F 3 "" H 5225 5775 50  0001 C CNN
	1    5225 5775
	1    0    0    -1  
$EndComp
Text GLabel 5625 5675 2    60   Input ~ 0
+1.2V
Text GLabel 5975 5925 2    60   Input ~ 0
MONITOR
Text GLabel 5225 5200 1    60   Input ~ 0
+3.3V
Text GLabel 5625 6175 2    60   Input ~ 0
GND
Text GLabel 4825 5675 0    60   Input ~ 0
SCK
Text GLabel 4825 5775 0    60   Input ~ 0
DOUT
Text GLabel 4825 5875 0    60   Input ~ 0
CS_POT
$Comp
L C C6
U 1 1 593867BD
P 5325 4125
F 0 "C6" H 5350 4225 50  0000 L CNN
F 1 "0.1uF" H 4975 4125 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 5363 3975 50  0001 C CNN
F 3 "" H 5325 4125 50  0001 C CNN
	1    5325 4125
	-1   0    0    1   
$EndComp
Text GLabel 5325 4275 2    60   Input ~ 0
GND
Text GLabel 1925 5600 3    60   Input ~ 0
GND
Text GLabel 1150 5000 0    60   Input ~ 0
+3.3V
Text GLabel 3525 5000 2    60   Input ~ 0
VREF
Text GLabel 5575 3775 2    60   Input ~ 0
VREF
$Comp
L MCP1501-SOIC VREF1
U 1 1 594B4154
P 1775 5100
F 0 "VREF1" H 1800 5447 60  0000 C CNN
F 1 "MCP1501-SOIC" H 1800 5341 60  0000 C CNN
F 2 "Housings_SOIC:SOIC-8_3.9x4.9mm_Pitch1.27mm" H 1525 5200 60  0001 C CNN
F 3 "" H 1525 5200 60  0001 C CNN
	1    1775 5100
	1    0    0    -1  
$EndComp
$Comp
L MAX11200 ADC1
U 1 1 594B8405
P 6575 1375
F 0 "ADC1" H 6575 1822 60  0000 C CNN
F 1 "MAX11210" H 6575 1716 60  0000 C CNN
F 2 "Housings_SSOP:QSOP-16_3.9x4.9mm_Pitch0.635mm" H 6375 1575 60  0001 C CNN
F 3 "" H 6375 1575 60  0001 C CNN
	1    6575 1375
	1    0    0    -1  
$EndComp
Text GLabel 7125 1675 2    60   Input ~ 0
CS_ADC
Text GLabel 7125 1575 2    60   Input ~ 0
DOUT
Text GLabel 7125 1475 2    60   Input ~ 0
DIN
Text GLabel 7125 1375 2    60   Input ~ 0
SCK
Text GLabel 5300 1675 0    60   Input ~ 0
GND
Text GLabel 5825 1575 0    60   Input ~ 0
VREF
NoConn ~ 6025 1175
NoConn ~ 6025 1275
NoConn ~ 6025 1375
NoConn ~ 7125 1175
Text GLabel 4625 1975 0    60   Input ~ 0
ADC
Text GLabel 7375 1825 2    60   Input ~ 0
+3.3V
NoConn ~ 7125 1275
$Comp
L C C13
U 1 1 594BADDB
P 5075 5275
F 0 "C13" V 5150 5325 50  0000 L CNN
F 1 "0.1uF" V 5225 5200 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 5113 5125 50  0001 C CNN
F 3 "" H 5075 5275 50  0001 C CNN
	1    5075 5275
	0    -1   -1   0   
$EndComp
Text GLabel 4925 5275 0    60   Input ~ 0
GND
$Comp
L C C9
U 1 1 594BB637
P 1225 4850
F 0 "C9" H 1325 4775 50  0000 L CNN
F 1 "0.1uF" H 975 4750 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 1263 4700 50  0001 C CNN
F 3 "" H 1225 4850 50  0001 C CNN
	1    1225 4850
	-1   0    0    1   
$EndComp
Text GLabel 1225 4700 1    60   Input ~ 0
GND
$Comp
L C C3
U 1 1 594BC287
P 7300 1975
F 0 "C3" H 7325 2075 50  0000 L CNN
F 1 "0.1uF" H 6950 1975 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 7338 1825 50  0001 C CNN
F 3 "" H 7300 1975 50  0001 C CNN
	1    7300 1975
	-1   0    0    1   
$EndComp
Text GLabel 7300 2125 2    60   Input ~ 0
GND
$Comp
L C C12
U 1 1 594BC5D9
P 3350 5150
F 0 "C12" H 3375 5250 50  0000 L CNN
F 1 "100pF" H 3125 5075 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 3388 5000 50  0001 C CNN
F 3 "" H 3350 5150 50  0001 C CNN
	1    3350 5150
	-1   0    0    1   
$EndComp
$Comp
L C C11
U 1 1 594BC8F0
P 3100 5150
F 0 "C11" H 3125 5250 50  0000 L CNN
F 1 "0.1uF" H 2875 5075 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 3138 5000 50  0001 C CNN
F 3 "" H 3100 5150 50  0001 C CNN
	1    3100 5150
	-1   0    0    1   
$EndComp
$Comp
L C C10
U 1 1 594BCA7C
P 2875 5150
F 0 "C10" H 2900 5250 50  0000 L CNN
F 1 "47uF" H 2675 5075 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 2913 5000 50  0001 C CNN
F 3 "" H 2875 5150 50  0001 C CNN
	1    2875 5150
	-1   0    0    1   
$EndComp
Text GLabel 5925 1475 0    60   Input ~ 0
GND
$Comp
L LMP7715MF U1
U 1 1 594BE8BA
P 3125 3200
F 0 "U1" H 3175 2925 60  0000 C CNN
F 1 "LMP7715MF" H 3375 3375 60  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-23-5" H 3125 3200 60  0001 C CNN
F 3 "" H 3125 3200 60  0000 C CNN
	1    3125 3200
	-1   0    0    1   
$EndComp
Text GLabel 3225 2900 2    60   Input ~ 0
GND
Text GLabel 3225 3500 2    60   Input ~ 0
+3.3V
$Comp
L C C5
U 1 1 594BED51
P 3225 3650
F 0 "C5" H 3250 3750 50  0000 L CNN
F 1 "0.1uF" H 2875 3650 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 3263 3500 50  0001 C CNN
F 3 "" H 3225 3650 50  0001 C CNN
	1    3225 3650
	-1   0    0    1   
$EndComp
Text GLabel 3225 3800 2    60   Input ~ 0
GND
Text GLabel 3475 3300 2    60   Input ~ 0
VREF
$Comp
L R R7
U 1 1 594BEEEC
P 2300 3200
F 0 "R7" V 2380 3200 50  0000 C CNN
F 1 "100" V 2300 3200 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 2230 3200 50  0001 C CNN
F 3 "" H 2300 3200 50  0001 C CNN
	1    2300 3200
	0    1    -1   0   
$EndComp
Text GLabel 2000 3200 0    60   Input ~ 0
SHIELD
Text GLabel 4850 4025 0    60   Input ~ 0
SHIELD
$Comp
L CONN_02X05 J1
U 1 1 594C1BE4
P 3000 1550
F 0 "J1" H 3000 1850 50  0000 C CNN
F 1 "CONN_02X05" H 3000 1250 50  0000 C CNN
F 2 "Connect:he10-10d" H 3000 350 50  0001 C CNN
F 3 "" H 3000 350 50  0001 C CNN
	1    3000 1550
	1    0    0    -1  
$EndComp
Text GLabel 3250 1350 2    60   Input ~ 0
MONITOR
Text GLabel 3250 1450 2    60   Input ~ 0
+5V(VUSB)
Text GLabel 2750 1450 0    60   Input ~ 0
GND
Text GLabel 2750 1350 0    60   Input ~ 0
+3.3V
Text GLabel 2750 1550 0    60   Input ~ 0
CS_POT
Text GLabel 3550 1550 2    60   Input ~ 0
CS_ADC
Text GLabel 2450 1650 0    60   Input ~ 0
DOUT
Text GLabel 3550 1650 2    60   Input ~ 0
DIN
Text GLabel 3550 1750 2    60   Input ~ 0
SCK
Text GLabel 2750 1750 0    60   Input ~ 0
SHUTTER
Text GLabel 4575 3675 0    60   Input ~ 0
ADC
$Comp
L R R5
U 1 1 594C248C
P 5175 1975
F 0 "R5" V 5255 1975 50  0000 C CNN
F 1 "301" V 5175 1975 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 5105 1975 50  0001 C CNN
F 3 "" H 5175 1975 50  0001 C CNN
	1    5175 1975
	0    1    1    0   
$EndComp
$Comp
L C C2
U 1 1 594C2715
P 5750 1825
F 0 "C2" H 5775 1925 50  0000 L CNN
F 1 "100pF" H 5775 1725 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 5788 1675 50  0001 C CNN
F 3 "" H 5750 1825 50  0001 C CNN
	1    5750 1825
	1    0    0    -1  
$EndComp
$Comp
L C C1
U 1 1 594C28E3
P 5475 1825
F 0 "C1" H 5500 1925 50  0000 L CNN
F 1 "0.1uF" H 5250 1750 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 5513 1675 50  0001 C CNN
F 3 "" H 5475 1825 50  0001 C CNN
	1    5475 1825
	-1   0    0    1   
$EndComp
$Comp
L R R9
U 1 1 594C30B5
P 2600 5000
F 0 "R9" V 2680 5000 50  0000 C CNN
F 1 "49.9" V 2600 5000 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 2530 5000 50  0001 C CNN
F 3 "" H 2600 5000 50  0001 C CNN
	1    2600 5000
	0    1    1    0   
$EndComp
Text GLabel 8225 4475 0    60   Input ~ 0
+5V(VUSB)
$Comp
L C C8
U 1 1 59567C10
P 8525 4625
F 0 "C8" H 8400 4725 50  0000 L CNN
F 1 "0.1uF" H 8225 4625 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 8563 4475 50  0001 C CNN
F 3 "" H 8525 4625 50  0001 C CNN
	1    8525 4625
	-1   0    0    1   
$EndComp
$Comp
L C C7
U 1 1 595682A0
P 8325 4625
F 0 "C7" H 8225 4725 50  0000 L CNN
F 1 "2.2uF" H 8450 4625 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 8363 4475 50  0001 C CNN
F 3 "" H 8325 4625 50  0001 C CNN
	1    8325 4625
	-1   0    0    1   
$EndComp
Text GLabel 8425 4775 3    60   Input ~ 0
GND
Text Label 4175 800  0    60   ~ 0
ADC
Text Label 2225 800  0    60   ~ 0
Teensy_3.2
Text Label 1525 2550 0    60   ~ 0
Signal_Shield
Text Label 775  4275 0    60   ~ 0
3V_Reference
Text GLabel 8625 3575 0    60   Input ~ 0
SIGNAL_GND
Text GLabel 6225 4175 2    60   Input ~ 0
SIGNAL_GND
Text GLabel 8625 3275 0    60   Input ~ 0
SIGNAL_OUTPUT
Text Label 4175 2525 0    60   ~ 0
IVC_OpAmp
Text GLabel 6225 3025 2    60   Input ~ 0
SIGNAL_OUTPUT
Wire Bus Line
	4175 4575 4175 2525
Wire Bus Line
	7350 4575 4175 4575
Wire Bus Line
	7350 2525 7350 4575
Wire Bus Line
	4175 2525 7350 2525
Wire Bus Line
	3925 4275 3925 6025
Wire Bus Line
	1525 2550 3900 2550
Wire Bus Line
	1525 4000 1525 2550
Wire Bus Line
	3900 4000 1525 4000
Wire Bus Line
	3900 2550 3900 4000
Wire Bus Line
	2225 800  3875 800 
Wire Bus Line
	2225 2275 2225 800 
Wire Bus Line
	3875 2275 2225 2275
Wire Bus Line
	3875 800  3875 2275
Wire Bus Line
	4175 2325 4175 800 
Wire Bus Line
	8075 2325 4175 2325
Wire Bus Line
	8075 800  8075 2325
Wire Bus Line
	4175 800  8075 800 
Wire Wire Line
	8225 4475 8625 4475
Wire Wire Line
	8325 4775 8525 4775
Connection ~ 8325 4475
Connection ~ 8525 4475
Connection ~ 2875 5300
Connection ~ 3100 5300
Wire Wire Line
	2450 5000 2325 5000
Wire Wire Line
	1175 5600 2450 5600
Connection ~ 5475 1675
Connection ~ 5750 1675
Wire Wire Line
	5300 1675 6025 1675
Connection ~ 5475 1975
Wire Wire Line
	5475 1975 5750 1975
Connection ~ 5750 1975
Wire Wire Line
	6025 1975 6025 1875
Wire Wire Line
	5025 1975 4625 1975
Wire Wire Line
	5325 1975 6025 1975
Wire Wire Line
	2000 3200 2150 3200
Connection ~ 2550 3200
Wire Wire Line
	2450 3200 2775 3200
Wire Wire Line
	2550 2775 2550 3200
Wire Wire Line
	3625 2775 2550 2775
Wire Wire Line
	3625 3100 3625 2775
Wire Wire Line
	3475 3100 3625 3100
Wire Wire Line
	2750 5000 3525 5000
Wire Wire Line
	6025 1475 5925 1475
Wire Wire Line
	5900 1675 5900 1775
Connection ~ 5900 1675
Connection ~ 3350 5000
Wire Wire Line
	5825 1575 6025 1575
Connection ~ 3100 5000
Connection ~ 2875 5000
Connection ~ 7300 1825
Connection ~ 7225 1825
Wire Wire Line
	7225 1825 7375 1825
Wire Wire Line
	7225 1875 7125 1875
Wire Wire Line
	7225 1775 7225 1875
Wire Wire Line
	7125 1775 7225 1775
Connection ~ 1225 5000
Connection ~ 5225 5275
Wire Wire Line
	5900 1775 6025 1775
Wire Wire Line
	5625 6175 5625 5875
Wire Wire Line
	5225 6175 5625 6175
Wire Wire Line
	1150 5000 1275 5000
Wire Wire Line
	1275 5000 1275 5200
Connection ~ 1175 5300
Wire Wire Line
	1275 5100 1175 5100
Wire Wire Line
	1175 5300 1275 5300
Wire Wire Line
	1175 5100 1175 5600
Connection ~ 2450 5300
Wire Wire Line
	2325 5300 3350 5300
Wire Wire Line
	2450 5600 2450 5200
Wire Wire Line
	2450 5200 2325 5200
Connection ~ 2450 5000
Wire Wire Line
	2450 5100 2450 5000
Wire Wire Line
	2325 5100 2450 5100
Wire Wire Line
	5225 5200 5225 5375
Wire Wire Line
	4575 3675 4875 3675
Wire Wire Line
	6075 4475 6075 4175
Wire Wire Line
	5025 4475 6075 4475
Wire Wire Line
	5025 3775 5025 4475
Wire Wire Line
	5575 3575 5775 3575
Wire Wire Line
	6075 3575 6225 3575
Connection ~ 5025 4025
Wire Wire Line
	4850 4025 5025 4025
Wire Wire Line
	4850 3500 4850 4025
Wire Wire Line
	5025 3500 4850 3500
Wire Wire Line
	5025 3575 5025 3500
Connection ~ 4675 3675
Connection ~ 4675 2975
Wire Wire Line
	5025 2725 4675 2725
Connection ~ 5575 2975
Wire Wire Line
	5575 2725 5325 2725
Wire Wire Line
	4675 2975 5025 2975
Wire Wire Line
	4675 2725 4675 3675
Wire Wire Line
	5575 2975 5325 2975
Wire Wire Line
	5575 2725 5575 3575
Wire Wire Line
	6225 3575 6225 3025
Wire Wire Line
	6375 3775 6225 3775
Wire Wire Line
	6225 3775 6225 4175
Wire Wire Line
	6225 4175 6075 4175
Text GLabel 10375 4475 2    60   Input ~ 0
Vcont_INPUT
Text GLabel 5950 5775 2    60   Input ~ 0
Vcont_INPUT
Wire Wire Line
	5625 5775 5950 5775
Wire Wire Line
	5975 5925 5825 5925
Wire Wire Line
	5825 5925 5825 5775
Connection ~ 5825 5775
Wire Bus Line
	6675 4800 4175 4800
Wire Bus Line
	4175 4800 4175 6350
Wire Bus Line
	4175 6350 6675 6350
Wire Bus Line
	6675 6350 6675 4800
Text Label 4175 4800 0    60   ~ 0
Input_Voltage_Control
Wire Bus Line
	11075 2525 11075 5200
Wire Bus Line
	7600 5200 7600 2525
Text Label 7600 2525 0    60   ~ 0
PMT_Module
Wire Bus Line
	11075 5200 7600 5200
Wire Bus Line
	7600 2525 11075 2525
Wire Bus Line
	3925 6025 775  6025
Wire Bus Line
	775  6025 775  4275
Wire Bus Line
	775  4275 3925 4275
$Comp
L R R1
U 1 1 595E3827
P 3400 1750
F 0 "R1" V 3375 1900 50  0000 C CNN
F 1 "50" V 3400 1750 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 3330 1750 50  0001 C CNN
F 3 "" H 3400 1750 50  0001 C CNN
	1    3400 1750
	0    1    1    0   
$EndComp
$Comp
L R R2
U 1 1 595E3D48
P 3400 1650
F 0 "R2" V 3425 1800 50  0000 C CNN
F 1 "50" V 3400 1650 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 3330 1650 50  0001 C CNN
F 3 "" H 3400 1650 50  0001 C CNN
	1    3400 1650
	0    -1   -1   0   
$EndComp
$Comp
L R R3
U 1 1 595E3EAB
P 2600 1650
F 0 "R3" V 2625 1500 50  0000 C CNN
F 1 "50" V 2600 1650 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 2530 1650 50  0001 C CNN
F 3 "" H 2600 1650 50  0001 C CNN
	1    2600 1650
	0    -1   -1   0   
$EndComp
$Comp
L R R4
U 1 1 595E3EB1
P 3400 1550
F 0 "R4" V 3375 1400 50  0000 C CNN
F 1 "50" V 3400 1550 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 3330 1550 50  0001 C CNN
F 3 "" H 3400 1550 50  0001 C CNN
	1    3400 1550
	0    1    1    0   
$EndComp
$EndSCHEMATC
