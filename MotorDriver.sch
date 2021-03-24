EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Motor Driver"
Date "2019-11-20"
Rev "1.12"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 "Bidirectional DC motor driver, compatible with Arduino."
$EndDescr
$Comp
L power:GND #PWR0120
U 1 1 5DB95431
P 8200 2700
F 0 "#PWR0120" H 8200 2450 50  0001 C CNN
F 1 "GND" H 8205 2527 50  0000 C CNN
F 2 "" H 8200 2700 50  0001 C CNN
F 3 "" H 8200 2700 50  0001 C CNN
	1    8200 2700
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0121
U 1 1 5DB956C4
P 8200 1800
F 0 "#PWR0121" H 8200 1650 50  0001 C CNN
F 1 "+5V" H 8215 1973 50  0000 C CNN
F 2 "" H 8200 1800 50  0001 C CNN
F 3 "" H 8200 1800 50  0001 C CNN
	1    8200 1800
	1    0    0    -1  
$EndComp
Text GLabel 7450 2250 0    50   Output ~ 0
TEMP
Wire Wire Line
	8200 2600 8200 2700
$Comp
L Device:Thermistor_NTC TH1
U 1 1 5DBC0945
P 8200 2050
F 0 "TH1" H 8297 2096 50  0000 L CNN
F 1 "100k" H 8297 2005 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 8200 2100 50  0001 C CNN
F 3 "~" H 8200 2100 50  0001 C CNN
	1    8200 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	8200 1800 8200 1900
Wire Wire Line
	8200 2200 8200 2250
Connection ~ 8200 2250
Wire Wire Line
	8200 2250 8200 2300
Wire Wire Line
	7450 2250 8200 2250
$Comp
L Device:R R7
U 1 1 5DB9FD88
P 8200 2450
F 0 "R7" H 8250 2500 50  0000 L CNN
F 1 "10k" H 8250 2400 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 8130 2450 50  0001 C CNN
F 3 "~" H 8200 2450 50  0001 C CNN
	1    8200 2450
	1    0    0    -1  
$EndComp
Wire Notes Line
	6950 3300 10900 3300
Wire Notes Line
	10900 1200 6950 1200
Text Notes 7000 1350 0    79   ~ 16
Sensors
Wire Notes Line
	10900 3300 10900 1200
Wire Notes Line
	6950 1200 6950 3300
Text Notes 7000 3250 0    50   ~ 0
Thermistor mounted on the heatsink, halfway between Q3 and Q4.
Text GLabel 10250 5000 0    50   Input ~ 0
M+
Text GLabel 10250 5100 0    50   Input ~ 0
M-
Wire Wire Line
	8650 5000 8800 5000
Wire Wire Line
	8000 5000 8150 5000
Text GLabel 8150 5000 2    50   Output ~ 0
M+
Text GLabel 8650 5000 0    50   Output ~ 0
M-
Wire Wire Line
	8000 4800 8000 5000
Wire Wire Line
	9050 5000 9050 5200
$Comp
L Connector_Generic:Conn_01x02 J3
U 1 1 5DB7D146
P 10450 5000
F 0 "J3" H 10530 4992 50  0000 L CNN
F 1 "Motor" H 10530 4901 50  0000 L CNN
F 2 "TerminalBlock:TerminalBlock_Altech_AK300-2_P5.00mm" H 10450 5000 50  0001 C CNN
F 3 "~" H 10450 5000 50  0001 C CNN
	1    10450 5000
	1    0    0    -1  
$EndComp
Wire Notes Line
	10900 6300 10900 3550
Wire Notes Line
	6950 3550 6950 6300
$Comp
L power:-BATT #PWR0124
U 1 1 5DF5E627
P 8400 5800
F 0 "#PWR0124" H 8400 5650 50  0001 C CNN
F 1 "-BATT" H 8415 5973 50  0000 C CNN
F 2 "" H 8400 5800 50  0001 C CNN
F 3 "" H 8400 5800 50  0001 C CNN
	1    8400 5800
	-1   0    0    1   
$EndComp
Wire Wire Line
	8000 5000 8000 5200
Wire Wire Line
	9600 5400 9350 5400
Wire Wire Line
	9350 4600 9600 4600
Wire Wire Line
	7200 5400 7450 5400
Wire Wire Line
	7200 4600 7450 4600
Text Label 7200 4600 0    50   ~ 0
Q1G
Text Label 7200 5400 0    50   ~ 0
Q3G
Text Label 9600 4600 2    50   ~ 0
Q2G
Text Label 9600 5400 2    50   ~ 0
Q4G
Wire Notes Line
	6950 6300 10900 6300
Wire Notes Line
	6950 3550 10900 3550
Text Notes 7000 3700 0    79   ~ 16
H-Bridge
Wire Wire Line
	8800 5000 8800 5200
Connection ~ 9050 5000
Connection ~ 8800 5000
Wire Wire Line
	7750 4800 7750 5000
Connection ~ 8000 5000
Wire Wire Line
	7750 5000 7750 5200
Connection ~ 7750 5000
Wire Wire Line
	9050 4800 9050 5000
Wire Wire Line
	8800 4800 8800 5000
Wire Wire Line
	8800 5700 9050 5700
Connection ~ 8800 5700
Wire Wire Line
	8800 5500 8800 5700
Wire Wire Line
	8800 4300 9050 4300
Connection ~ 8800 4300
Wire Wire Line
	8800 4500 8800 4300
Wire Wire Line
	8000 5700 8400 5700
Connection ~ 8000 5700
Wire Wire Line
	8000 5500 8000 5700
Wire Wire Line
	8000 4300 8400 4300
Connection ~ 8000 4300
Wire Wire Line
	8000 4500 8000 4300
Wire Wire Line
	8400 5700 8800 5700
Connection ~ 8400 5700
Wire Wire Line
	8400 5800 8400 5700
Wire Wire Line
	8400 4300 8800 4300
Connection ~ 8400 4300
Wire Wire Line
	8400 4300 8400 4200
Wire Wire Line
	9050 4300 9050 4400
Wire Wire Line
	7750 4300 8000 4300
Wire Wire Line
	7750 5700 8000 5700
Wire Wire Line
	7750 4300 7750 4400
$Comp
L power:+BATT #PWR0102
U 1 1 5DBB0412
P 8400 4200
F 0 "#PWR0102" H 8400 4050 50  0001 C CNN
F 1 "+BATT" H 8415 4373 50  0000 C CNN
F 2 "" H 8400 4200 50  0001 C CNN
F 3 "" H 8400 4200 50  0001 C CNN
	1    8400 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	9050 5000 8800 5000
Wire Wire Line
	7750 5000 8000 5000
Wire Wire Line
	7750 5600 7750 5700
Wire Wire Line
	9050 5600 9050 5700
Wire Wire Line
	2300 2900 2350 2900
Wire Wire Line
	2350 2900 2350 2800
Wire Wire Line
	2350 2800 2400 2800
Wire Wire Line
	2400 2600 1600 2600
Wire Wire Line
	1700 2900 1700 2800
Connection ~ 1700 2900
Wire Wire Line
	1700 2900 1600 2900
Wire Wire Line
	1700 3000 1700 2900
Text GLabel 1600 2600 0    50   Input ~ 0
FWD
Text GLabel 1600 2900 0    50   Input ~ 0
REV
Wire Wire Line
	3000 2700 3300 2700
Wire Wire Line
	2900 5000 5300 5000
$Comp
L Device:R R6
U 1 1 5DC37441
P 5450 5000
F 0 "R6" V 5243 5000 50  0000 C CNN
F 1 "10k" V 5334 5000 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 5380 5000 50  0001 C CNN
F 3 "~" H 5450 5000 50  0001 C CNN
	1    5450 5000
	0    1    1    0   
$EndComp
Text GLabel 2900 5000 0    50   Input ~ 0
FWD
Wire Wire Line
	5600 5000 5700 5000
Wire Notes Line
	3450 5900 6650 5900
Wire Notes Line
	800  5900 3150 5900
Wire Notes Line
	800  800  3150 800 
Wire Notes Line
	6650 800  3450 800 
Wire Wire Line
	2900 4000 3750 4000
Text Notes 3500 950  0    79   ~ 16
Gate Drivers
Wire Wire Line
	3300 3050 5200 3050
Wire Wire Line
	3300 2700 3300 3050
Wire Notes Line
	3450 800  3450 5900
Wire Notes Line
	3150 800  3150 5900
Wire Wire Line
	2450 6850 2450 7050
Wire Wire Line
	2450 6550 2450 6750
Wire Wire Line
	1550 4650 1550 4750
Wire Wire Line
	1550 4150 1550 4250
Wire Wire Line
	5700 2800 5700 3150
Connection ~ 5700 2800
Wire Wire Line
	4550 1850 4550 2200
Connection ~ 4550 1850
Wire Wire Line
	5500 2800 5500 2850
Wire Wire Line
	4350 1850 4350 1900
Wire Wire Line
	2250 6850 2450 6850
Wire Wire Line
	2250 6750 2450 6750
$Comp
L power:-BATT #PWR0123
U 1 1 5DF5E1FE
P 3300 7050
F 0 "#PWR0123" H 3300 6900 50  0001 C CNN
F 1 "-BATT" H 3315 7223 50  0000 C CNN
F 2 "" H 3300 7050 50  0001 C CNN
F 3 "" H 3300 7050 50  0001 C CNN
	1    3300 7050
	-1   0    0    1   
$EndComp
$Comp
L power:+BATT #PWR0122
U 1 1 5DF5DE97
P 3300 6550
F 0 "#PWR0122" H 3300 6400 50  0001 C CNN
F 1 "+BATT" H 3315 6723 50  0000 C CNN
F 2 "" H 3300 6550 50  0001 C CNN
F 3 "" H 3300 6550 50  0001 C CNN
	1    3300 6550
	1    0    0    -1  
$EndComp
$Comp
L power:-BATT #PWR0118
U 1 1 5DF5DA11
P 2450 7050
F 0 "#PWR0118" H 2450 6900 50  0001 C CNN
F 1 "-BATT" H 2465 7223 50  0000 C CNN
F 2 "" H 2450 7050 50  0001 C CNN
F 3 "" H 2450 7050 50  0001 C CNN
	1    2450 7050
	-1   0    0    1   
$EndComp
Wire Notes Line
	1700 7500 6650 7500
Wire Notes Line
	1700 6150 6650 6150
Wire Wire Line
	4500 6950 4500 7050
Wire Wire Line
	4500 6550 4500 6650
$Comp
L power:GND #PWR0116
U 1 1 5DF2A4BB
P 4500 7050
F 0 "#PWR0116" H 4500 6800 50  0001 C CNN
F 1 "GND" H 4505 6877 50  0000 C CNN
F 2 "" H 4500 7050 50  0001 C CNN
F 3 "" H 4500 7050 50  0001 C CNN
	1    4500 7050
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0111
U 1 1 5DF2A293
P 4500 6550
F 0 "#PWR0111" H 4500 6400 50  0001 C CNN
F 1 "+5V" H 4515 6723 50  0000 C CNN
F 2 "" H 4500 6550 50  0001 C CNN
F 3 "" H 4500 6550 50  0001 C CNN
	1    4500 6550
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C3
U 1 1 5DF29AFC
P 4500 6800
F 0 "C3" H 4300 6850 50  0000 L CNN
F 1 "47μF" H 4400 6750 50  0000 R CNN
F 2 "Capacitor_THT:CP_Radial_D6.3mm_P2.50mm" H 4538 6650 50  0001 C CNN
F 3 "~" H 4500 6800 50  0001 C CNN
	1    4500 6800
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 5DBC94E6
P 5150 6800
F 0 "C4" H 5050 6850 50  0000 R CNN
F 1 "100nF" H 5050 6750 50  0000 R CNN
F 2 "Capacitor_THT:C_Rect_L7.0mm_W2.0mm_P5.00mm" H 5188 6650 50  0001 C CNN
F 3 "~" H 5150 6800 50  0001 C CNN
	1    5150 6800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5150 6950 5150 7050
Wire Wire Line
	5150 6550 5150 6650
$Comp
L power:+5V #PWR0113
U 1 1 5DBCA274
P 5150 6550
F 0 "#PWR0113" H 5150 6400 50  0001 C CNN
F 1 "+5V" H 5165 6723 50  0000 C CNN
F 2 "" H 5150 6550 50  0001 C CNN
F 3 "" H 5150 6550 50  0001 C CNN
	1    5150 6550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0112
U 1 1 5DBC9C48
P 5150 7050
F 0 "#PWR0112" H 5150 6800 50  0001 C CNN
F 1 "GND" H 5155 6877 50  0000 C CNN
F 2 "" H 5150 7050 50  0001 C CNN
F 3 "" H 5150 7050 50  0001 C CNN
	1    5150 7050
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C1
U 1 1 5DC03B0F
P 3150 6800
F 0 "C1" H 2950 6850 50  0000 L CNN
F 1 "1000μF" H 3050 6750 50  0000 R CNN
F 2 "Capacitor_THT:CP_Radial_D16.0mm_P7.50mm" H 3188 6650 50  0001 C CNN
F 3 "~" H 3150 6800 50  0001 C CNN
	1    3150 6800
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0110
U 1 1 5DF06E5F
P 6000 4450
F 0 "#PWR0110" H 6000 4300 50  0001 C CNN
F 1 "+5V" H 6015 4623 50  0000 C CNN
F 2 "" H 6000 4450 50  0001 C CNN
F 3 "" H 6000 4450 50  0001 C CNN
	1    6000 4450
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0107
U 1 1 5DF06A6D
P 4450 3450
F 0 "#PWR0107" H 4450 3300 50  0001 C CNN
F 1 "+5V" H 4465 3623 50  0000 C CNN
F 2 "" H 4450 3450 50  0001 C CNN
F 3 "" H 4450 3450 50  0001 C CNN
	1    4450 3450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 5DF00BED
P 1550 4750
F 0 "#PWR0106" H 1550 4500 50  0001 C CNN
F 1 "GND" H 1555 4577 50  0000 C CNN
F 2 "" H 1550 4750 50  0001 C CNN
F 3 "" H 1550 4750 50  0001 C CNN
	1    1550 4750
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x05 J2
U 1 1 5DF002EE
P 1150 4450
F 0 "J2" H 1068 4867 50  0000 C CNN
F 1 "Arduino" H 1068 4776 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x05_P2.54mm_Horizontal" H 1150 4450 50  0001 C CNN
F 3 "~" H 1150 4450 50  0001 C CNN
	1    1150 4450
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1350 4650 1550 4650
$Comp
L Device:R R4
U 1 1 5DEDF282
P 5700 2450
F 0 "R4" H 5650 2500 50  0000 R CNN
F 1 "3.3k" H 5650 2400 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 5630 2450 50  0001 C CNN
F 3 "~" H 5700 2450 50  0001 C CNN
	1    5700 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 3250 5500 3400
Wire Wire Line
	6000 3350 6000 3400
Wire Wire Line
	5750 3400 6000 3400
Connection ~ 5750 3400
Wire Wire Line
	5750 3450 5750 3400
Wire Wire Line
	5500 3400 5750 3400
Wire Wire Line
	5500 2800 5700 2800
Wire Wire Line
	5850 2250 6000 2250
Connection ~ 5850 2250
Wire Wire Line
	5850 2200 5850 2250
Wire Wire Line
	5700 2250 5850 2250
Text Label 6400 2900 2    50   ~ 0
Q2G
$Comp
L power:GND #PWR0105
U 1 1 5DEBEB18
P 5750 3450
F 0 "#PWR0105" H 5750 3200 50  0001 C CNN
F 1 "GND" H 5755 3277 50  0000 C CNN
F 2 "" H 5750 3450 50  0001 C CNN
F 3 "" H 5750 3450 50  0001 C CNN
	1    5750 3450
	1    0    0    -1  
$EndComp
$Comp
L power:+BATT #PWR0101
U 1 1 5DEBEB12
P 5850 2200
F 0 "#PWR0101" H 5850 2050 50  0001 C CNN
F 1 "+BATT" H 5865 2373 50  0000 C CNN
F 2 "" H 5850 2200 50  0001 C CNN
F 3 "" H 5850 2200 50  0001 C CNN
	1    5850 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6000 2450 6000 2250
Wire Wire Line
	6000 2900 6000 2850
Connection ~ 6000 2900
Wire Wire Line
	6000 2900 6400 2900
Wire Wire Line
	6000 2950 6000 2900
Wire Wire Line
	4350 2300 4350 2450
Wire Wire Line
	4850 2400 4850 2450
Text Notes 1750 7450 0    50   ~ 0
+BATT max. 20V, (limited by max. Vgs of Q1&Q2, and Vceo of BJTs)
Wire Wire Line
	4600 2450 4850 2450
Connection ~ 4600 2450
Wire Wire Line
	4600 2500 4600 2450
Wire Wire Line
	4350 2450 4600 2450
Wire Wire Line
	4350 1850 4550 1850
Wire Wire Line
	4700 1300 4850 1300
Connection ~ 4700 1300
Wire Wire Line
	4700 1250 4700 1300
Wire Wire Line
	4550 1300 4700 1300
$Comp
L Device:R R2
U 1 1 5DE20776
P 4550 1500
F 0 "R2" H 4500 1550 50  0000 R CNN
F 1 "3.3k" H 4500 1450 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 4480 1500 50  0001 C CNN
F 3 "~" H 4550 1500 50  0001 C CNN
	1    4550 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 4000 4450 4050
Connection ~ 4450 4000
Wire Wire Line
	4450 4000 4850 4000
Wire Wire Line
	6000 5000 6000 5050
Connection ~ 6000 5000
Wire Wire Line
	6400 5000 6000 5000
Text Label 6400 5000 2    50   ~ 0
Q4G
Text Label 4850 4000 2    50   ~ 0
Q3G
Wire Wire Line
	6000 4950 6000 5000
Wire Wire Line
	4450 3950 4450 4000
Text Label 5250 1950 2    50   ~ 0
Q1G
Text GLabel 1450 4350 2    50   Output ~ 0
FWD
Text GLabel 1450 4450 2    50   Output ~ 0
REV
Text GLabel 1450 4550 2    50   Input ~ 0
TEMP
$Comp
L power:+5V #PWR0108
U 1 1 5DBB0440
P 1550 4150
F 0 "#PWR0108" H 1550 4000 50  0001 C CNN
F 1 "+5V" H 1565 4323 50  0000 C CNN
F 2 "" H 1550 4150 50  0001 C CNN
F 3 "" H 1550 4150 50  0001 C CNN
	1    1550 4150
	1    0    0    -1  
$EndComp
Text GLabel 2900 4000 0    50   Input ~ 0
REV
Text GLabel 1600 1900 0    50   Input ~ 0
FWD
Text GLabel 1600 2200 0    50   Input ~ 0
REV
Wire Notes Line
	1700 7500 1700 6150
Wire Notes Line
	6650 6150 6650 7500
Wire Notes Line
	6650 5900 6650 800 
Wire Notes Line
	800  800  800  5900
Text Notes 850  950  0    79   ~ 16
Input Logic
Text Notes 1750 6300 0    79   ~ 16
Power
Wire Wire Line
	1350 4550 1450 4550
Wire Notes Line
	2200 5750 2200 5350
Wire Notes Line
	950  5750 2200 5750
Wire Notes Line
	950  5350 950  5750
Wire Notes Line
	2200 5350 950  5350
Text Notes 950  5750 0    50   ~ 0
FWD REV|Q1 Q2 Q3 Q4|Action\n  0   0 | 0  0   0  0|Coast\n  1   0 | 1  0   0  1|Forward\n  0   1 | 0  1   1  0|Reverse\n  1   1 | 0  0   1  1|Break
Wire Wire Line
	2350 2000 2400 2000
Wire Wire Line
	2350 1900 2350 2000
Wire Wire Line
	2300 1900 2350 1900
Wire Wire Line
	1600 2200 2400 2200
Wire Wire Line
	1700 1900 1700 2000
Connection ~ 1700 1900
Wire Wire Line
	1700 1800 1700 1900
Wire Wire Line
	5700 5000 5700 5250
Connection ~ 5700 5000
Wire Wire Line
	5700 4750 5700 5000
$Comp
L power:GND #PWR0119
U 1 1 5DC3743B
P 6000 5550
F 0 "#PWR0119" H 6000 5300 50  0001 C CNN
F 1 "GND" H 6005 5377 50  0000 C CNN
F 2 "" H 6000 5550 50  0001 C CNN
F 3 "" H 6000 5550 50  0001 C CNN
	1    6000 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6000 4550 6000 4450
Wire Wire Line
	6000 5450 6000 5550
Wire Wire Line
	4050 2100 3000 2100
Wire Wire Line
	4150 4000 4150 4250
Connection ~ 4150 4000
Wire Wire Line
	4050 4000 4150 4000
Wire Wire Line
	4150 3750 4150 4000
$Comp
L Device:R R5
U 1 1 5DC32E2E
P 3900 4000
F 0 "R5" V 3693 4000 50  0000 C CNN
F 1 "10k" V 3784 4000 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 3830 4000 50  0001 C CNN
F 3 "~" H 3900 4000 50  0001 C CNN
	1    3900 4000
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0117
U 1 1 5DC32E28
P 4450 4550
F 0 "#PWR0117" H 4450 4300 50  0001 C CNN
F 1 "GND" H 4455 4377 50  0000 C CNN
F 2 "" H 4450 4550 50  0001 C CNN
F 3 "" H 4450 4550 50  0001 C CNN
	1    4450 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 3550 4450 3450
Wire Wire Line
	4450 4450 4450 4550
Wire Wire Line
	1600 1900 1700 1900
Wire Wire Line
	5450 6550 5450 6800
Wire Wire Line
	6450 6800 6450 7050
$Comp
L power:GND #PWR0115
U 1 1 5DBEF9C2
P 6450 7050
F 0 "#PWR0115" H 6450 6800 50  0001 C CNN
F 1 "GND" H 6455 6877 50  0000 C CNN
F 2 "" H 6450 7050 50  0001 C CNN
F 3 "" H 6450 7050 50  0001 C CNN
	1    6450 7050
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0114
U 1 1 5DBEF2AE
P 5450 6550
F 0 "#PWR0114" H 5450 6400 50  0001 C CNN
F 1 "+5V" H 5465 6723 50  0000 C CNN
F 2 "" H 5450 6550 50  0001 C CNN
F 3 "" H 5450 6550 50  0001 C CNN
	1    5450 6550
	1    0    0    -1  
$EndComp
$Comp
L power:+BATT #PWR0109
U 1 1 5DBB36EC
P 2450 6550
F 0 "#PWR0109" H 2450 6400 50  0001 C CNN
F 1 "+BATT" H 2465 6723 50  0000 C CNN
F 2 "" H 2450 6550 50  0001 C CNN
F 3 "" H 2450 6550 50  0001 C CNN
	1    2450 6550
	1    0    0    -1  
$EndComp
Wire Wire Line
	1350 4250 1550 4250
Wire Wire Line
	1450 4450 1350 4450
Wire Wire Line
	1350 4350 1450 4350
$Comp
L Connector_Generic:Conn_01x02 J1
U 1 1 5DBA1E43
P 2050 6750
F 0 "J1" H 1968 6967 50  0000 C CNN
F 1 "PowerIn" H 1968 6876 50  0000 C CNN
F 2 "TerminalBlock:TerminalBlock_Altech_AK300-2_P5.00mm" H 2050 6750 50  0001 C CNN
F 3 "~" H 2050 6750 50  0001 C CNN
	1    2050 6750
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3300 7000 3450 7000
Connection ~ 3300 7000
Wire Wire Line
	3300 7050 3300 7000
Wire Wire Line
	3450 7000 3450 6950
Wire Wire Line
	3150 7000 3300 7000
Wire Wire Line
	3150 6950 3150 7000
Wire Wire Line
	3300 6600 3450 6600
Connection ~ 3300 6600
Wire Wire Line
	3300 6550 3300 6600
Wire Wire Line
	3450 6600 3450 6650
Wire Wire Line
	3150 6600 3300 6600
Wire Wire Line
	3150 6650 3150 6600
$Comp
L Device:C C2
U 1 1 5DC046E5
P 3450 6800
F 0 "C2" H 3550 6850 50  0000 L CNN
F 1 "1μF" H 3550 6750 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L11.0mm_W5.3mm_P10.00mm_MKT" H 3488 6650 50  0001 C CNN
F 3 "~" H 3450 6800 50  0001 C CNN
	1    3450 6800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 5DBD8496
P 4600 2500
F 0 "#PWR0104" H 4600 2250 50  0001 C CNN
F 1 "GND" H 4605 2327 50  0000 C CNN
F 2 "" H 4600 2500 50  0001 C CNN
F 3 "" H 4600 2500 50  0001 C CNN
	1    4600 2500
	1    0    0    -1  
$EndComp
$Comp
L power:+BATT #PWR0103
U 1 1 5DBD7EB5
P 4700 1250
F 0 "#PWR0103" H 4700 1100 50  0001 C CNN
F 1 "+BATT" H 4715 1423 50  0000 C CNN
F 2 "" H 4700 1250 50  0001 C CNN
F 3 "" H 4700 1250 50  0001 C CNN
	1    4700 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 1500 4850 1300
Wire Wire Line
	4850 1950 4850 1900
Connection ~ 4850 1950
Wire Wire Line
	4850 1950 5250 1950
Wire Wire Line
	4850 2000 4850 1950
Wire Wire Line
	4550 1300 4550 1350
Wire Wire Line
	5700 2250 5700 2300
$Comp
L 74xx:74LS02 U1
U 1 1 5DBF4D5B
P 2000 1900
F 0 "U1" H 2000 2100 50  0000 C CNN
F 1 "74LS02" H 2000 2134 50  0001 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket_LongPads" H 2000 1900 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74ls02" H 2000 1900 50  0001 C CNN
	1    2000 1900
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS02 U1
U 2 1 5DBFEEE8
P 2000 2900
F 0 "U1" H 2000 2700 50  0000 C CNN
F 1 "74LS02" H 2000 3134 50  0001 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket_LongPads" H 2000 2900 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74ls02" H 2000 2900 50  0001 C CNN
	2    2000 2900
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS02 U1
U 3 1 5DC03F99
P 2700 2100
F 0 "U1" H 2700 1900 50  0000 C CNN
F 1 "74LS02" H 2700 2334 50  0001 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket_LongPads" H 2700 2100 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74ls02" H 2700 2100 50  0001 C CNN
	3    2700 2100
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS02 U1
U 4 1 5DC0658B
P 2700 2700
F 0 "U1" H 2700 2500 50  0000 C CNN
F 1 "74LS02" H 2700 2900 50  0001 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket_LongPads" H 2700 2700 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74ls02" H 2700 2700 50  0001 C CNN
	4    2700 2700
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS02 U1
U 5 1 5DC0AF11
P 5950 6800
F 0 "U1" V 6200 6950 50  0000 C CNN
F 1 "74LS02" V 6200 6650 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket_LongPads" H 5950 6800 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74ls02" H 5950 6800 50  0001 C CNN
	5    5950 6800
	0    -1   -1   0   
$EndComp
$Comp
L Transistor_BJT:S8550 Q7
U 1 1 5DC126DD
P 4750 2200
F 0 "Q7" H 4940 2154 50  0000 L CNN
F 1 "S8550" H 4940 2245 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 4950 2125 50  0001 L CIN
F 3 "http://www.unisonic.com.tw/datasheet/S8550.pdf" H 4750 2200 50  0001 L CNN
	1    4750 2200
	1    0    0    1   
$EndComp
$Comp
L Transistor_BJT:S8550 Q10
U 1 1 5DC13A1E
P 5900 3150
F 0 "Q10" H 6090 3104 50  0000 L CNN
F 1 "S8550" H 6090 3195 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 6100 3075 50  0001 L CIN
F 3 "http://www.unisonic.com.tw/datasheet/S8550.pdf" H 5900 3150 50  0001 L CNN
	1    5900 3150
	1    0    0    1   
$EndComp
$Comp
L Transistor_BJT:S8550 Q12
U 1 1 5DC140F1
P 4350 4250
F 0 "Q12" H 4540 4204 50  0000 L CNN
F 1 "S8550" H 4540 4295 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 4550 4175 50  0001 L CIN
F 3 "http://www.unisonic.com.tw/datasheet/S8550.pdf" H 4350 4250 50  0001 L CNN
	1    4350 4250
	1    0    0    1   
$EndComp
$Comp
L Transistor_BJT:S8550 Q14
U 1 1 5DC14574
P 5900 5250
F 0 "Q14" H 6090 5204 50  0000 L CNN
F 1 "S8550" H 6090 5295 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 6100 5175 50  0001 L CIN
F 3 "http://www.unisonic.com.tw/datasheet/S8550.pdf" H 5900 5250 50  0001 L CNN
	1    5900 5250
	1    0    0    1   
$EndComp
Wire Wire Line
	4550 1650 4550 1700
$Comp
L Transistor_BJT:S8050 Q6
U 1 1 5DC15608
P 4750 1700
F 0 "Q6" H 4940 1746 50  0000 L CNN
F 1 "S8050" H 4940 1655 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 4950 1625 50  0001 L CIN
F 3 "http://www.unisonic.com.tw/datasheet/S8050.pdf" H 4750 1700 50  0001 L CNN
	1    4750 1700
	1    0    0    -1  
$EndComp
Connection ~ 4550 1700
Wire Wire Line
	4550 1700 4550 1850
Wire Wire Line
	5700 2600 5700 2650
$Comp
L Transistor_BJT:S8050 Q9
U 1 1 5DC166D2
P 5900 2650
F 0 "Q9" H 6090 2696 50  0000 L CNN
F 1 "S8050" H 6090 2605 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 6100 2575 50  0001 L CIN
F 3 "http://www.unisonic.com.tw/datasheet/S8050.pdf" H 5900 2650 50  0001 L CNN
	1    5900 2650
	1    0    0    -1  
$EndComp
Connection ~ 5700 2650
Wire Wire Line
	5700 2650 5700 2800
$Comp
L Transistor_BJT:S8050 Q11
U 1 1 5DC1740F
P 4350 3750
F 0 "Q11" H 4540 3796 50  0000 L CNN
F 1 "S8050" H 4540 3705 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 4550 3675 50  0001 L CIN
F 3 "http://www.unisonic.com.tw/datasheet/S8050.pdf" H 4350 3750 50  0001 L CNN
	1    4350 3750
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:S8050 Q13
U 1 1 5DC17AF4
P 5900 4750
F 0 "Q13" H 6090 4796 50  0000 L CNN
F 1 "S8050" H 6090 4705 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 6100 4675 50  0001 L CIN
F 3 "http://www.unisonic.com.tw/datasheet/S8050.pdf" H 5900 4750 50  0001 L CNN
	1    5900 4750
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N5822 D2
U 1 1 5DC1AF68
P 8800 4650
F 0 "D2" V 8800 4550 50  0000 R CNN
F 1 "1N5822" V 8900 4600 50  0000 R CNN
F 2 "Diode_THT:D_DO-201AD_P15.24mm_Horizontal" H 8800 4475 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88526/1n5820.pdf" H 8800 4650 50  0001 C CNN
	1    8800 4650
	0    1    1    0   
$EndComp
$Comp
L Diode:1N5822 D3
U 1 1 5DC24587
P 8000 5350
F 0 "D3" V 8000 5450 50  0000 L CNN
F 1 "1N5822" V 8100 5400 50  0000 L CNN
F 2 "Diode_THT:D_DO-201AD_P15.24mm_Horizontal" H 8000 5175 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88526/1n5820.pdf" H 8000 5350 50  0001 C CNN
	1    8000 5350
	0    1    1    0   
$EndComp
$Comp
L Diode:1N5822 D4
U 1 1 5DC248DE
P 8800 5350
F 0 "D4" V 8800 5250 50  0000 R CNN
F 1 "1N5822" V 8900 5300 50  0000 R CNN
F 2 "Diode_THT:D_DO-201AD_P15.24mm_Horizontal" H 8800 5175 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88526/1n5820.pdf" H 8800 5350 50  0001 C CNN
	1    8800 5350
	0    1    1    0   
$EndComp
$Comp
L Transistor_FET:IRF4905 Q1
U 1 1 5DC25A5D
P 7650 4600
F 0 "Q1" H 7500 4750 50  0000 L CNN
F 1 "IRF4905" H 7400 4850 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 7850 4525 50  0001 L CIN
F 3 "http://www.infineon.com/dgdl/irf4905.pdf?fileId=5546d462533600a4015355e32165197c" H 7650 4600 50  0001 L CNN
	1    7650 4600
	1    0    0    1   
$EndComp
$Comp
L Diode:1N5822 D1
U 1 1 5DC19925
P 8000 4650
F 0 "D1" V 8000 4750 50  0000 L CNN
F 1 "1N5822" V 8100 4700 50  0000 L CNN
F 2 "Diode_THT:D_DO-201AD_P15.24mm_Horizontal" H 8000 4475 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88526/1n5820.pdf" H 8000 4650 50  0001 C CNN
	1    8000 4650
	0    1    1    0   
$EndComp
$Comp
L Transistor_FET:IRF4905 Q2
U 1 1 5DC33472
P 9150 4600
F 0 "Q2" H 9000 4700 50  0000 L CNN
F 1 "IRF4905" H 8900 4800 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 9350 4525 50  0001 L CIN
F 3 "http://www.infineon.com/dgdl/irf4905.pdf?fileId=5546d462533600a4015355e32165197c" H 9150 4600 50  0001 L CNN
	1    9150 4600
	-1   0    0    1   
$EndComp
$Comp
L Transistor_FET:IRF3205 Q3
U 1 1 5DC34CFF
P 7650 5400
F 0 "Q3" H 7500 5250 50  0000 L CNN
F 1 "IRF3205" H 7400 5150 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 7900 5325 50  0001 L CIN
F 3 "http://www.irf.com/product-info/datasheets/data/irf3205.pdf" H 7650 5400 50  0001 L CNN
	1    7650 5400
	1    0    0    -1  
$EndComp
$Comp
L Transistor_FET:IRF3205 Q4
U 1 1 5DC36652
P 9150 5400
F 0 "Q4" H 9000 5300 50  0000 L CNN
F 1 "IRF3205" H 8900 5200 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 9400 5325 50  0001 L CIN
F 3 "http://www.irf.com/product-info/datasheets/data/irf3205.pdf" H 9150 5400 50  0001 L CNN
	1    9150 5400
	-1   0    0    -1  
$EndComp
Text Notes 7900 2800 2    50   ~ 0
0°C\n25°C\n50°C\n75°C\n100°C
Text Notes 7300 2800 0    50   ~ 0
0.14V\n0.46V\n1.16V\n2.21V\n3.27V
Text Notes 7550 2800 0    50   ~ 0
—\n—\n—\n—\n—
Text Notes 9250 2250 0    50   ~ 0
(current sensor maybe?)
$Comp
L Transistor_BJT:S8050 Q5
U 1 1 604AB4B5
P 4250 2100
F 0 "Q5" H 4440 2146 50  0000 L CNN
F 1 "S8050" H 4440 2055 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 4450 2025 50  0001 L CIN
F 3 "http://www.unisonic.com.tw/datasheet/S8050.pdf" H 4250 2100 50  0001 L CNN
	1    4250 2100
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:S8050 Q8
U 1 1 604AB7ED
P 5400 3050
F 0 "Q8" H 5590 3096 50  0000 L CNN
F 1 "S8050" H 5590 3005 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 5600 2975 50  0001 L CIN
F 3 "http://www.unisonic.com.tw/datasheet/S8050.pdf" H 5400 3050 50  0001 L CNN
	1    5400 3050
	1    0    0    -1  
$EndComp
$EndSCHEMATC
