EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 4
Title "RC Telemetry board"
Date "2020-02-23"
Rev "1.1"
Comp "www.findersee.fi"
Comment1 "https://github.com/findersee/rctelemetry"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Sensor_Current:ACS770xCB-100U-PSF U302
U 1 1 5CE3A7DE
P 6750 2100
F 0 "U302" H 6800 2350 50  0000 L CNN
F 1 "ACS758LCB-100B-PFF-T" H 6800 1850 50  0000 L CNN
F 2 "PCBDecals:Allegro_PFF" H 6750 2100 50  0001 C CNN
F 3 "http://www.allegromicro.com/~/media/Files/Datasheets/ACS758-Datasheet.ashx?la=en" H 6750 2100 50  0001 C CNN
F 4 "-prod" H 6750 2100 50  0001 C CNN "Config"
F 5 "ACS758LCB-100B-PFF-T" H 6750 2100 50  0001 C CNN "MPN"
F 6 "Allegro" H 6750 2100 50  0001 C CNN "Manufacturer"
F 7 "Thermally Enhanced, Fully Integrated, Hall-Effect-Based Linear Current Sensor IC with 100 µΩ Current Conductor" H 6750 2100 50  0001 C CNN "Description"
	1    6750 2100
	1    0    0    -1  
$EndComp
$Comp
L power:+5VA #PWR0304
U 1 1 5CE3AAE9
P 6750 1700
F 0 "#PWR0304" H 6750 1550 50  0001 C CNN
F 1 "+5VA" H 6765 1873 50  0000 C CNN
F 2 "" H 6750 1700 50  0001 C CNN
F 3 "" H 6750 1700 50  0001 C CNN
	1    6750 1700
	1    0    0    -1  
$EndComp
$Comp
L power:+5VA #PWR0312
U 1 1 5CE3AB0F
P 6650 3950
F 0 "#PWR0312" H 6650 3800 50  0001 C CNN
F 1 "+5VA" H 6665 4123 50  0000 C CNN
F 2 "" H 6650 3950 50  0001 C CNN
F 3 "" H 6650 3950 50  0001 C CNN
	1    6650 3950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0306
U 1 1 5CE3AB99
P 6750 2500
F 0 "#PWR0306" H 6750 2250 50  0001 C CNN
F 1 "GND" H 6755 2327 50  0000 C CNN
F 2 "" H 6750 2500 50  0001 C CNN
F 3 "" H 6750 2500 50  0001 C CNN
	1    6750 2500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0314
U 1 1 5CE3ABB5
P 6650 4750
F 0 "#PWR0314" H 6650 4500 50  0001 C CNN
F 1 "GND" H 6655 4577 50  0000 C CNN
F 2 "" H 6650 4750 50  0001 C CNN
F 3 "" H 6650 4750 50  0001 C CNN
	1    6650 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	6650 3950 6650 4000
Wire Wire Line
	6650 4650 6650 4750
Wire Wire Line
	6750 2400 6750 2500
Wire Wire Line
	6750 1700 6750 1750
$Comp
L power:+BATT #PWR0302
U 1 1 5CE3AC45
P 6200 1450
F 0 "#PWR0302" H 6200 1300 50  0001 C CNN
F 1 "+BATT" H 6215 1623 50  0000 C CNN
F 2 "" H 6200 1450 50  0001 C CNN
F 3 "" H 6200 1450 50  0001 C CNN
	1    6200 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 2000 6200 1450
Wire Wire Line
	6200 2000 6350 2000
Wire Wire Line
	6250 4250 6200 4250
Wire Wire Line
	6200 4250 6200 2000
Connection ~ 6200 2000
Wire Wire Line
	6350 2200 6300 2200
Wire Wire Line
	6250 4450 6200 4450
$Comp
L Connector_Generic:Conn_01x02 J301
U 1 1 5CE3D224
P 7100 2750
F 0 "J301" H 7180 2742 50  0000 L CNN
F 1 "Conn_01x02" H 7180 2651 50  0000 L CNN
F 2 "PCBDecals:2Pin_4mm" H 7100 2750 50  0001 C CNN
F 3 "~" H 7100 2750 50  0001 C CNN
F 4 "-prod" H 7100 2750 50  0001 C CNN "Config"
	1    7100 2750
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J302
U 1 1 5CE3D378
P 7100 5050
F 0 "J302" H 7180 5042 50  0000 L CNN
F 1 "Conn_01x02" H 7180 4951 50  0000 L CNN
F 2 "PCBDecals:2Pin_4mm" H 7100 5050 50  0001 C CNN
F 3 "~" H 7100 5050 50  0001 C CNN
F 4 "-prod" H 7100 5050 50  0001 C CNN "Config"
	1    7100 5050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0308
U 1 1 5CE3D402
P 6850 2900
F 0 "#PWR0308" H 6850 2650 50  0001 C CNN
F 1 "GND" H 6855 2727 50  0000 C CNN
F 2 "" H 6850 2900 50  0001 C CNN
F 3 "" H 6850 2900 50  0001 C CNN
	1    6850 2900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0316
U 1 1 5CE3D41C
P 6850 5200
F 0 "#PWR0316" H 6850 4950 50  0001 C CNN
F 1 "GND" H 6855 5027 50  0000 C CNN
F 2 "" H 6850 5200 50  0001 C CNN
F 3 "" H 6850 5200 50  0001 C CNN
	1    6850 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 2850 6850 2850
Wire Wire Line
	6850 2850 6850 2900
Wire Wire Line
	6900 5150 6850 5150
Wire Wire Line
	6850 5150 6850 5200
$Comp
L Device:R_Small R301
U 1 1 5CE3DA46
P 6650 3000
F 0 "R301" H 6709 3046 50  0000 L CNN
F 1 "68k" H 6709 2955 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 6650 3000 50  0001 C CNN
F 3 "~" H 6650 3000 50  0001 C CNN
	1    6650 3000
	-1   0    0    -1  
$EndComp
$Comp
L Device:R_Small R302
U 1 1 5CE3DA7A
P 6650 3300
F 0 "R302" H 6709 3346 50  0000 L CNN
F 1 "12k" H 6709 3255 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 6650 3300 50  0001 C CNN
F 3 "~" H 6650 3300 50  0001 C CNN
	1    6650 3300
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR0310
U 1 1 5CE3DBDF
P 6650 3500
F 0 "#PWR0310" H 6650 3250 50  0001 C CNN
F 1 "GND" H 6655 3327 50  0000 C CNN
F 2 "" H 6650 3500 50  0001 C CNN
F 3 "" H 6650 3500 50  0001 C CNN
	1    6650 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	6650 2750 6650 2900
Connection ~ 6650 2750
Wire Wire Line
	6650 2750 6900 2750
Wire Wire Line
	6650 3100 6650 3150
Connection ~ 6650 3150
Wire Wire Line
	6650 3150 6650 3200
$Comp
L Device:R_Small R303
U 1 1 5CE3EEED
P 6650 5300
F 0 "R303" H 6709 5346 50  0000 L CNN
F 1 "68k" H 6709 5255 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 6650 5300 50  0001 C CNN
F 3 "~" H 6650 5300 50  0001 C CNN
	1    6650 5300
	-1   0    0    -1  
$EndComp
$Comp
L Device:R_Small R304
U 1 1 5CE3EEF4
P 6650 5600
F 0 "R304" H 6709 5646 50  0000 L CNN
F 1 "12k" H 6709 5555 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 6650 5600 50  0001 C CNN
F 3 "~" H 6650 5600 50  0001 C CNN
	1    6650 5600
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR0318
U 1 1 5CE3EEFB
P 6650 5800
F 0 "#PWR0318" H 6650 5550 50  0001 C CNN
F 1 "GND" H 6655 5627 50  0000 C CNN
F 2 "" H 6650 5800 50  0001 C CNN
F 3 "" H 6650 5800 50  0001 C CNN
	1    6650 5800
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6650 5400 6650 5450
Connection ~ 6650 5450
Wire Wire Line
	6650 5450 6650 5500
Wire Wire Line
	6200 5050 6200 4450
Wire Wire Line
	6300 2750 6300 2200
Wire Wire Line
	6300 2750 6650 2750
Wire Wire Line
	6200 5050 6650 5050
Wire Wire Line
	6650 5200 6650 5050
Connection ~ 6650 5050
Wire Wire Line
	6650 5050 6900 5050
Text GLabel 8300 5550 2    50   Output ~ 0
ESC2_VOLTAGE_OUT
Text GLabel 8400 3250 2    50   Output ~ 0
ESC1_VOLTAGE_OUT
Text GLabel 8400 4350 2    50   Output ~ 0
ESC2_CURRENT_OUT
Text GLabel 8400 2100 2    50   Output ~ 0
ESC1_CURRENT_OUT
$Comp
L Device:C_Small C303
U 1 1 5CE5A73F
P 7150 1750
F 0 "C303" V 6921 1750 50  0000 C CNN
F 1 "100n/50V" V 7012 1750 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 7150 1750 50  0001 C CNN
F 3 "~" H 7150 1750 50  0001 C CNN
	1    7150 1750
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0305
U 1 1 5CE5A980
P 7300 1800
F 0 "#PWR0305" H 7300 1550 50  0001 C CNN
F 1 "GND" H 7305 1627 50  0000 C CNN
F 2 "" H 7300 1800 50  0001 C CNN
F 3 "" H 7300 1800 50  0001 C CNN
	1    7300 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	7250 1750 7300 1750
Wire Wire Line
	7300 1750 7300 1800
Wire Wire Line
	7050 1750 6750 1750
Connection ~ 6750 1750
Wire Wire Line
	6750 1750 6750 1800
Wire Wire Line
	6850 4000 6650 4000
Connection ~ 6650 4000
Wire Wire Line
	6650 4000 6650 4050
$Comp
L power:+5VA #PWR0307
U 1 1 5CE5E34B
P 7850 2850
F 0 "#PWR0307" H 7850 2700 50  0001 C CNN
F 1 "+5VA" H 7865 3023 50  0000 C CNN
F 2 "" H 7850 2850 50  0001 C CNN
F 3 "" H 7850 2850 50  0001 C CNN
	1    7850 2850
	1    0    0    -1  
$EndComp
$Comp
L power:+5VA #PWR0315
U 1 1 5CE5E3EC
P 7750 5150
F 0 "#PWR0315" H 7750 5000 50  0001 C CNN
F 1 "+5VA" H 7765 5323 50  0000 C CNN
F 2 "" H 7750 5150 50  0001 C CNN
F 3 "" H 7750 5150 50  0001 C CNN
	1    7750 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	7550 5650 7500 5650
Wire Wire Line
	7500 5650 7500 6150
Wire Wire Line
	7500 6150 8250 6150
Wire Wire Line
	8250 6150 8250 5550
Wire Wire Line
	8250 5550 8150 5550
Wire Wire Line
	8250 5550 8300 5550
Connection ~ 8250 5550
$Comp
L power:GND #PWR0319
U 1 1 5CE6251B
P 7750 5900
F 0 "#PWR0319" H 7750 5650 50  0001 C CNN
F 1 "GND" H 7755 5727 50  0000 C CNN
F 2 "" H 7750 5900 50  0001 C CNN
F 3 "" H 7750 5900 50  0001 C CNN
	1    7750 5900
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7750 5850 7750 5900
Wire Wire Line
	7750 5150 7750 5200
$Comp
L Device:C_Small C307
U 1 1 5CE649B1
P 8000 5200
F 0 "C307" V 7771 5200 50  0000 C CNN
F 1 "100n/50V" V 7862 5200 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 8000 5200 50  0001 C CNN
F 3 "~" H 8000 5200 50  0001 C CNN
	1    8000 5200
	0    1    1    0   
$EndComp
Wire Wire Line
	7900 5200 7750 5200
Connection ~ 7750 5200
Wire Wire Line
	7750 5200 7750 5250
$Comp
L power:GND #PWR0317
U 1 1 5CE6567B
P 8150 5250
F 0 "#PWR0317" H 8150 5000 50  0001 C CNN
F 1 "GND" H 8155 5077 50  0000 C CNN
F 2 "" H 8150 5250 50  0001 C CNN
F 3 "" H 8150 5250 50  0001 C CNN
	1    8150 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	8100 5200 8150 5200
Wire Wire Line
	8150 5200 8150 5250
$Comp
L power:GND #PWR0311
U 1 1 5CE672DA
P 7850 3600
F 0 "#PWR0311" H 7850 3350 50  0001 C CNN
F 1 "GND" H 7855 3427 50  0000 C CNN
F 2 "" H 7850 3600 50  0001 C CNN
F 3 "" H 7850 3600 50  0001 C CNN
	1    7850 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	7850 3550 7850 3600
Wire Wire Line
	7850 2850 7850 2900
$Comp
L Device:C_Small C304
U 1 1 5CE68FD1
P 8050 2900
F 0 "C304" V 7821 2900 50  0000 C CNN
F 1 "100n/50V" V 7912 2900 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 8050 2900 50  0001 C CNN
F 3 "~" H 8050 2900 50  0001 C CNN
	1    8050 2900
	0    1    1    0   
$EndComp
Wire Wire Line
	7850 2900 7950 2900
Connection ~ 7850 2900
Wire Wire Line
	7850 2900 7850 2950
$Comp
L power:GND #PWR0309
U 1 1 5CE69F2A
P 8200 2950
F 0 "#PWR0309" H 8200 2700 50  0001 C CNN
F 1 "GND" H 8205 2777 50  0000 C CNN
F 2 "" H 8200 2950 50  0001 C CNN
F 3 "" H 8200 2950 50  0001 C CNN
	1    8200 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	8150 2900 8200 2900
Wire Wire Line
	8200 2900 8200 2950
Wire Wire Line
	8400 3250 8350 3250
Wire Wire Line
	8350 3250 8350 3850
Wire Wire Line
	8350 3850 7600 3850
Wire Wire Line
	7600 3850 7600 3350
Wire Wire Line
	7600 3350 7650 3350
Connection ~ 8350 3250
Wire Wire Line
	8350 3250 8250 3250
Wire Wire Line
	2950 1250 2950 1050
Wire Wire Line
	2950 1050 2600 1050
Wire Wire Line
	3700 1550 4250 1550
Wire Wire Line
	3700 1550 2950 1550
Wire Wire Line
	2950 1550 2950 1450
Connection ~ 3700 1550
$Comp
L power:GND #PWR0303
U 1 1 5CEBB23A
P 3700 1600
F 0 "#PWR0303" H 3700 1350 50  0001 C CNN
F 1 "GND" H 3705 1427 50  0000 C CNN
F 2 "" H 3700 1600 50  0001 C CNN
F 3 "" H 3700 1600 50  0001 C CNN
	1    3700 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 1600 3700 1550
Text GLabel 5550 1050 2    50   Output ~ 0
+5VA
Wire Wire Line
	5550 1050 4950 1050
$Comp
L power:VCC #PWR0301
U 1 1 5CEBEF98
P 2600 1050
F 0 "#PWR0301" H 2600 900 50  0001 C CNN
F 1 "VCC" H 2617 1223 50  0000 C CNN
F 2 "" H 2600 1050 50  0001 C CNN
F 3 "" H 2600 1050 50  0001 C CNN
	1    2600 1050
	1    0    0    -1  
$EndComp
Text Label 6300 2700 1    50   ~ 0
ESC1_C_Negative
Text Label 6200 5000 1    50   ~ 0
ESC2_C_Negative
$Comp
L Device:R_Small R305
U 1 1 5CEA144F
P 7800 2100
F 0 "R305" V 7604 2100 50  0000 C CNN
F 1 "12k" V 7700 2100 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 7800 2100 50  0001 C CNN
F 3 "~" H 7800 2100 50  0001 C CNN
	1    7800 2100
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R306
U 1 1 5CEA1520
P 7950 2250
F 0 "R306" H 8009 2296 50  0000 L CNN
F 1 "18k" H 8009 2205 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 7950 2250 50  0001 C CNN
F 3 "~" H 7950 2250 50  0001 C CNN
	1    7950 2250
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR0320
U 1 1 5CEA15B7
P 7950 2400
F 0 "#PWR0320" H 7950 2150 50  0001 C CNN
F 1 "GND" H 7955 2227 50  0000 C CNN
F 2 "" H 7950 2400 50  0001 C CNN
F 3 "" H 7950 2400 50  0001 C CNN
	1    7950 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	7150 2100 7700 2100
Wire Wire Line
	7900 2100 7950 2100
Wire Wire Line
	7950 2100 7950 2150
Connection ~ 7950 2100
Wire Wire Line
	7950 2100 8400 2100
Wire Wire Line
	7950 2350 7950 2400
$Comp
L Device:R_Small R307
U 1 1 5CEA9170
P 7800 4350
F 0 "R307" V 7604 4350 50  0000 C CNN
F 1 "12k" V 7700 4350 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 7800 4350 50  0001 C CNN
F 3 "~" H 7800 4350 50  0001 C CNN
	1    7800 4350
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R308
U 1 1 5CEA9176
P 7950 4500
F 0 "R308" H 8009 4546 50  0000 L CNN
F 1 "18k" H 8009 4455 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 7950 4500 50  0001 C CNN
F 3 "~" H 7950 4500 50  0001 C CNN
	1    7950 4500
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR0321
U 1 1 5CEA917C
P 7950 4650
F 0 "#PWR0321" H 7950 4400 50  0001 C CNN
F 1 "GND" H 7955 4477 50  0000 C CNN
F 2 "" H 7950 4650 50  0001 C CNN
F 3 "" H 7950 4650 50  0001 C CNN
	1    7950 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	7900 4350 7950 4350
Wire Wire Line
	7950 4350 7950 4400
Connection ~ 7950 4350
Wire Wire Line
	7950 4350 8400 4350
Wire Wire Line
	7950 4600 7950 4650
Wire Wire Line
	7050 4350 7700 4350
$Comp
L Regulator_Linear:LP2985-5.0 U301
U 1 1 5CEB555D
P 3700 1150
F 0 "U301" H 3700 1492 50  0000 C CNN
F 1 "LP2985-5.0" H 3700 1401 50  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-23-5_HandSoldering" H 3700 1475 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lp2985.pdf" H 3700 1150 50  0001 C CNN
F 4 "Texas Instruments" H 3700 1150 50  0001 C CNN "Manufacturer"
F 5 "LP2985-5.0" H 3700 1150 50  0001 C CNN "MPN"
F 6 "Micropower 150-mA Low-Noise Ultra-Low-Dropout Regulator" H 3700 1150 50  0001 C CNN "Description"
	1    3700 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 1050 4950 1050
Connection ~ 4950 1050
$Comp
L Device:C_Small C302
U 1 1 5CEBF878
P 4250 1350
F 0 "C302" H 4342 1396 50  0000 L CNN
F 1 "10n/50V" H 4342 1305 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4250 1350 50  0001 C CNN
F 3 "~" H 4250 1350 50  0001 C CNN
	1    4250 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 1150 4250 1150
Wire Wire Line
	4250 1150 4250 1250
Wire Wire Line
	4250 1450 4250 1550
Connection ~ 4250 1550
Wire Wire Line
	4250 1550 4950 1550
Wire Wire Line
	3300 1050 3150 1050
Connection ~ 2950 1050
Wire Wire Line
	3300 1150 3150 1150
Wire Wire Line
	3150 1150 3150 1050
Connection ~ 3150 1050
Wire Wire Line
	3150 1050 2950 1050
$Comp
L Device:C_Small C301
U 1 1 5CEB3613
P 2950 1350
F 0 "C301" H 2858 1304 50  0000 R CNN
F 1 "1u/35V" H 2858 1395 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 2950 1350 50  0001 C CNN
F 3 "~" H 2950 1350 50  0001 C CNN
	1    2950 1350
	-1   0    0    1   
$EndComp
$Comp
L Device:C_Small C309
U 1 1 5CEC8EFA
P 4950 1350
F 0 "C309" H 4858 1304 50  0000 R CNN
F 1 "2u2/10V" H 4858 1395 50  0000 R CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4950 1350 50  0001 C CNN
F 3 "~" H 4950 1350 50  0001 C CNN
	1    4950 1350
	-1   0    0    1   
$EndComp
Wire Wire Line
	4950 1050 4950 1250
Wire Wire Line
	4950 1450 4950 1550
Wire Wire Line
	3700 1450 3700 1550
Wire Wire Line
	6650 5700 6650 5800
Wire Wire Line
	6650 5450 7550 5450
Wire Wire Line
	6650 3150 7650 3150
Wire Wire Line
	6650 3400 6650 3500
$Comp
L Amplifier_Operational:MCP6001-OT U303
U 1 1 5CEC3C95
P 7950 3250
F 0 "U303" H 7950 3450 50  0000 L CNN
F 1 "MCP6001-OT" H 7950 3050 50  0001 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23-5_HandSoldering" H 7850 3050 50  0001 L CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/21733j.pdf" H 7950 3450 50  0001 C CNN
F 4 "Microchip" H 7950 3250 50  0001 C CNN "Manufacturer"
F 5 "MCP6001-OT" H 7950 3250 50  0001 C CNN "MPN"
	1    7950 3250
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:MCP6001-OT U305
U 1 1 5CEC3EEF
P 7850 5550
F 0 "U305" H 7850 5750 50  0000 L CNN
F 1 "MCP6001-OT" H 7850 5350 50  0001 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23-5_HandSoldering" H 7750 5350 50  0001 L CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/21733j.pdf" H 7850 5750 50  0001 C CNN
F 4 "MCP6001-OT" H 7850 5550 50  0001 C CNN "MPN"
F 5 "Microchip" H 7850 5550 50  0001 C CNN "Manufacturer"
	1    7850 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	7150 4000 7150 4050
Wire Wire Line
	7050 4000 7150 4000
$Comp
L power:GND #PWR0313
U 1 1 5CE5A8D9
P 7150 4050
F 0 "#PWR0313" H 7150 3800 50  0001 C CNN
F 1 "GND" H 7155 3877 50  0000 C CNN
F 2 "" H 7150 4050 50  0001 C CNN
F 3 "" H 7150 4050 50  0001 C CNN
	1    7150 4050
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C306
U 1 1 5CE5A7C1
P 6950 4000
F 0 "C306" V 6721 4000 50  0000 C CNN
F 1 "100n/50V" V 6812 4000 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 6950 4000 50  0001 C CNN
F 3 "~" H 6950 4000 50  0001 C CNN
	1    6950 4000
	0    1    1    0   
$EndComp
$Comp
L Sensor_Current:ACS770xCB-100U-PSF U304
U 1 1 5CE3A9FD
P 6650 4350
F 0 "U304" H 6700 4600 50  0000 L CNN
F 1 "ACS758LCB-100B-PFF-T" H 6700 4100 50  0000 L CNN
F 2 "PCBDecals:Allegro_PFF" H 6650 4350 50  0001 C CNN
F 3 "http://www.allegromicro.com/~/media/Files/Datasheets/ACS758-Datasheet.ashx?la=en" H 6650 4350 50  0001 C CNN
F 4 "-prod" H 6650 4350 50  0001 C CNN "Config"
F 5 "ACS758LCB-100B-PFF-T" H 6650 4350 50  0001 C CNN "MPN"
F 6 "Allegro" H 6650 4350 50  0001 C CNN "Manufacturer"
F 7 "Thermally Enhanced, Fully Integrated, Hall-Effect-Based Linear Current Sensor IC with 100 µΩ Current Conductor" H 6650 4350 50  0001 C CNN "Description"
	1    6650 4350
	1    0    0    -1  
$EndComp
$EndSCHEMATC
