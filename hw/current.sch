EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 4
Title "RC Telemetry board"
Date "2020-02-24"
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
P 2700 3550
F 0 "U302" H 2750 3800 50  0000 L CNN
F 1 "ACS758LCB-100B-PFF-T" H 2750 3300 50  0000 L CNN
F 2 "Sensor_Current:Allegro_CB_PFF" H 2700 3550 50  0001 C CNN
F 3 "http://www.allegromicro.com/~/media/Files/Datasheets/ACS758-Datasheet.ashx?la=en" H 2700 3550 50  0001 C CNN
F 4 "-prod" H 2700 3550 50  0001 C CNN "Config"
F 5 "ACS758LCB-100B-PFF-T" H 2700 3550 50  0001 C CNN "MPN"
F 6 "Allegro" H 2700 3550 50  0001 C CNN "Manufacturer"
F 7 "Thermally Enhanced, Fully Integrated, Hall-Effect-Based Linear Current Sensor IC with 100 µΩ Current Conductor" H 2700 3550 50  0001 C CNN "Description"
	1    2700 3550
	1    0    0    -1  
$EndComp
$Comp
L power:+5VA #PWR0304
U 1 1 5CE3AAE9
P 2700 3150
F 0 "#PWR0304" H 2700 3000 50  0001 C CNN
F 1 "+5VA" H 2715 3323 50  0000 C CNN
F 2 "" H 2700 3150 50  0001 C CNN
F 3 "" H 2700 3150 50  0001 C CNN
	1    2700 3150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0306
U 1 1 5CE3AB99
P 2700 3950
F 0 "#PWR0306" H 2700 3700 50  0001 C CNN
F 1 "GND" H 2705 3777 50  0000 C CNN
F 2 "" H 2700 3950 50  0001 C CNN
F 3 "" H 2700 3950 50  0001 C CNN
	1    2700 3950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0314
U 1 1 5CE3ABB5
P 7400 4000
F 0 "#PWR0314" H 7400 3750 50  0001 C CNN
F 1 "GND" H 7405 3827 50  0000 C CNN
F 2 "" H 7400 4000 50  0001 C CNN
F 3 "" H 7400 4000 50  0001 C CNN
	1    7400 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	7400 3900 7400 4000
Wire Wire Line
	2700 3850 2700 3950
Wire Wire Line
	2700 3150 2700 3200
$Comp
L power:+BATT #PWR0302
U 1 1 5CE3AC45
P 2150 2900
F 0 "#PWR0302" H 2150 2750 50  0001 C CNN
F 1 "+BATT" H 2165 3073 50  0000 C CNN
F 2 "" H 2150 2900 50  0001 C CNN
F 3 "" H 2150 2900 50  0001 C CNN
	1    2150 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 3450 2150 2900
Wire Wire Line
	2150 3450 2300 3450
Wire Wire Line
	7000 3500 6950 3500
Wire Wire Line
	6950 3500 6950 2900
Wire Wire Line
	2300 3650 2250 3650
Wire Wire Line
	7000 3700 6950 3700
$Comp
L Connector_Generic:Conn_01x02 J301
U 1 1 5CE3D224
P 3050 4200
F 0 "J301" H 3130 4192 50  0000 L CNN
F 1 "Conn_01x02" H 3130 4101 50  0000 L CNN
F 2 "PCBDecals:2Pin_4mm" H 3050 4200 50  0001 C CNN
F 3 "~" H 3050 4200 50  0001 C CNN
F 4 "-prod" H 3050 4200 50  0001 C CNN "Config"
	1    3050 4200
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J302
U 1 1 5CE3D378
P 7850 4300
F 0 "J302" H 7930 4292 50  0000 L CNN
F 1 "Conn_01x02" H 7930 4201 50  0000 L CNN
F 2 "PCBDecals:2Pin_4mm" H 7850 4300 50  0001 C CNN
F 3 "~" H 7850 4300 50  0001 C CNN
F 4 "-prod" H 7850 4300 50  0001 C CNN "Config"
	1    7850 4300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0308
U 1 1 5CE3D402
P 2800 4350
F 0 "#PWR0308" H 2800 4100 50  0001 C CNN
F 1 "GND" H 2805 4177 50  0000 C CNN
F 2 "" H 2800 4350 50  0001 C CNN
F 3 "" H 2800 4350 50  0001 C CNN
	1    2800 4350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0316
U 1 1 5CE3D41C
P 7600 4450
F 0 "#PWR0316" H 7600 4200 50  0001 C CNN
F 1 "GND" H 7605 4277 50  0000 C CNN
F 2 "" H 7600 4450 50  0001 C CNN
F 3 "" H 7600 4450 50  0001 C CNN
	1    7600 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 4300 2800 4300
Wire Wire Line
	2800 4300 2800 4350
Wire Wire Line
	7650 4400 7600 4400
Wire Wire Line
	7600 4400 7600 4450
$Comp
L Device:R_Small R301
U 1 1 5CE3DA46
P 2600 4450
F 0 "R301" H 2659 4496 50  0000 L CNN
F 1 "68k" H 2659 4405 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 2600 4450 50  0001 C CNN
F 3 "~" H 2600 4450 50  0001 C CNN
	1    2600 4450
	-1   0    0    -1  
$EndComp
$Comp
L Device:R_Small R302
U 1 1 5CE3DA7A
P 2600 4750
F 0 "R302" H 2659 4796 50  0000 L CNN
F 1 "12k" H 2659 4705 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 2600 4750 50  0001 C CNN
F 3 "~" H 2600 4750 50  0001 C CNN
	1    2600 4750
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR0310
U 1 1 5CE3DBDF
P 2600 4950
F 0 "#PWR0310" H 2600 4700 50  0001 C CNN
F 1 "GND" H 2605 4777 50  0000 C CNN
F 2 "" H 2600 4950 50  0001 C CNN
F 3 "" H 2600 4950 50  0001 C CNN
	1    2600 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 4200 2600 4350
Connection ~ 2600 4200
Wire Wire Line
	2600 4200 2850 4200
Wire Wire Line
	2600 4550 2600 4600
Connection ~ 2600 4600
Wire Wire Line
	2600 4600 2600 4650
$Comp
L Device:R_Small R303
U 1 1 5CE3EEED
P 7400 4550
F 0 "R303" H 7459 4596 50  0000 L CNN
F 1 "68k" H 7459 4505 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 7400 4550 50  0001 C CNN
F 3 "~" H 7400 4550 50  0001 C CNN
	1    7400 4550
	-1   0    0    -1  
$EndComp
$Comp
L Device:R_Small R304
U 1 1 5CE3EEF4
P 7400 4850
F 0 "R304" H 7459 4896 50  0000 L CNN
F 1 "12k" H 7459 4805 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 7400 4850 50  0001 C CNN
F 3 "~" H 7400 4850 50  0001 C CNN
	1    7400 4850
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR0318
U 1 1 5CE3EEFB
P 7400 5050
F 0 "#PWR0318" H 7400 4800 50  0001 C CNN
F 1 "GND" H 7405 4877 50  0000 C CNN
F 2 "" H 7400 5050 50  0001 C CNN
F 3 "" H 7400 5050 50  0001 C CNN
	1    7400 5050
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7400 4650 7400 4700
Connection ~ 7400 4700
Wire Wire Line
	7400 4700 7400 4750
Wire Wire Line
	6950 4300 6950 3700
Wire Wire Line
	2250 4200 2250 3650
Wire Wire Line
	2250 4200 2600 4200
Wire Wire Line
	6950 4300 7400 4300
Wire Wire Line
	7400 4450 7400 4300
Connection ~ 7400 4300
Wire Wire Line
	7400 4300 7650 4300
Text GLabel 9050 4800 2    50   Output ~ 0
ESC2_VOLTAGE_OUT
Text GLabel 4350 4700 2    50   Output ~ 0
ESC1_VOLTAGE_OUT
Text GLabel 9150 3600 2    50   Output ~ 0
ESC2_CURRENT_OUT
Text GLabel 4350 3550 2    50   Output ~ 0
ESC1_CURRENT_OUT
$Comp
L Device:C_Small C303
U 1 1 5CE5A73F
P 3100 3200
F 0 "C303" V 2871 3200 50  0000 C CNN
F 1 "100n/50V" V 2962 3200 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 3100 3200 50  0001 C CNN
F 3 "~" H 3100 3200 50  0001 C CNN
	1    3100 3200
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0305
U 1 1 5CE5A980
P 3250 3250
F 0 "#PWR0305" H 3250 3000 50  0001 C CNN
F 1 "GND" H 3255 3077 50  0000 C CNN
F 2 "" H 3250 3250 50  0001 C CNN
F 3 "" H 3250 3250 50  0001 C CNN
	1    3250 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 3200 3250 3200
Wire Wire Line
	3250 3200 3250 3250
Wire Wire Line
	3000 3200 2700 3200
Connection ~ 2700 3200
Wire Wire Line
	2700 3200 2700 3250
$Comp
L power:+5VA #PWR0307
U 1 1 5CE5E34B
P 3800 4300
F 0 "#PWR0307" H 3800 4150 50  0001 C CNN
F 1 "+5VA" H 3815 4473 50  0000 C CNN
F 2 "" H 3800 4300 50  0001 C CNN
F 3 "" H 3800 4300 50  0001 C CNN
	1    3800 4300
	1    0    0    -1  
$EndComp
$Comp
L power:+5VA #PWR0315
U 1 1 5CE5E3EC
P 8500 4400
F 0 "#PWR0315" H 8500 4250 50  0001 C CNN
F 1 "+5VA" H 8515 4573 50  0000 C CNN
F 2 "" H 8500 4400 50  0001 C CNN
F 3 "" H 8500 4400 50  0001 C CNN
	1    8500 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	8300 4900 8250 4900
Wire Wire Line
	8250 4900 8250 5400
Wire Wire Line
	8250 5400 9000 5400
Wire Wire Line
	9000 5400 9000 4800
Wire Wire Line
	9000 4800 8900 4800
Wire Wire Line
	9000 4800 9050 4800
Connection ~ 9000 4800
$Comp
L power:GND #PWR0319
U 1 1 5CE6251B
P 8500 5150
F 0 "#PWR0319" H 8500 4900 50  0001 C CNN
F 1 "GND" H 8505 4977 50  0000 C CNN
F 2 "" H 8500 5150 50  0001 C CNN
F 3 "" H 8500 5150 50  0001 C CNN
	1    8500 5150
	-1   0    0    -1  
$EndComp
Wire Wire Line
	8500 5100 8500 5150
Wire Wire Line
	8500 4400 8500 4450
$Comp
L Device:C_Small C307
U 1 1 5CE649B1
P 8750 4450
F 0 "C307" V 8521 4450 50  0000 C CNN
F 1 "100n/50V" V 8612 4450 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 8750 4450 50  0001 C CNN
F 3 "~" H 8750 4450 50  0001 C CNN
	1    8750 4450
	0    1    1    0   
$EndComp
Wire Wire Line
	8650 4450 8500 4450
Connection ~ 8500 4450
Wire Wire Line
	8500 4450 8500 4500
$Comp
L power:GND #PWR0317
U 1 1 5CE6567B
P 8900 4500
F 0 "#PWR0317" H 8900 4250 50  0001 C CNN
F 1 "GND" H 8905 4327 50  0000 C CNN
F 2 "" H 8900 4500 50  0001 C CNN
F 3 "" H 8900 4500 50  0001 C CNN
	1    8900 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	8850 4450 8900 4450
Wire Wire Line
	8900 4450 8900 4500
$Comp
L power:GND #PWR0311
U 1 1 5CE672DA
P 3800 5050
F 0 "#PWR0311" H 3800 4800 50  0001 C CNN
F 1 "GND" H 3805 4877 50  0000 C CNN
F 2 "" H 3800 5050 50  0001 C CNN
F 3 "" H 3800 5050 50  0001 C CNN
	1    3800 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 5000 3800 5050
Wire Wire Line
	3800 4300 3800 4350
$Comp
L Device:C_Small C304
U 1 1 5CE68FD1
P 4000 4350
F 0 "C304" V 3771 4350 50  0000 C CNN
F 1 "100n/50V" V 3862 4350 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4000 4350 50  0001 C CNN
F 3 "~" H 4000 4350 50  0001 C CNN
	1    4000 4350
	0    1    1    0   
$EndComp
Wire Wire Line
	3800 4350 3900 4350
Connection ~ 3800 4350
Wire Wire Line
	3800 4350 3800 4400
$Comp
L power:GND #PWR0309
U 1 1 5CE69F2A
P 4150 4400
F 0 "#PWR0309" H 4150 4150 50  0001 C CNN
F 1 "GND" H 4155 4227 50  0000 C CNN
F 2 "" H 4150 4400 50  0001 C CNN
F 3 "" H 4150 4400 50  0001 C CNN
	1    4150 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 4350 4150 4350
Wire Wire Line
	4150 4350 4150 4400
Wire Wire Line
	4350 4700 4300 4700
Wire Wire Line
	4300 4700 4300 5300
Wire Wire Line
	3550 4800 3600 4800
Connection ~ 4300 4700
Wire Wire Line
	4300 4700 4200 4700
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
Text Label 2250 4150 1    50   ~ 0
ESC1_C_Negative
Text Label 6950 4250 1    50   ~ 0
ESC2_C_Negative
$Comp
L Device:R_Small R305
U 1 1 5CEA144F
P 3750 3550
F 0 "R305" V 3554 3550 50  0000 C CNN
F 1 "12k" V 3650 3550 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 3750 3550 50  0001 C CNN
F 3 "~" H 3750 3550 50  0001 C CNN
	1    3750 3550
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R306
U 1 1 5CEA1520
P 3900 3700
F 0 "R306" H 3959 3746 50  0000 L CNN
F 1 "18k" H 3959 3655 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 3900 3700 50  0001 C CNN
F 3 "~" H 3900 3700 50  0001 C CNN
	1    3900 3700
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR0320
U 1 1 5CEA15B7
P 3900 3850
F 0 "#PWR0320" H 3900 3600 50  0001 C CNN
F 1 "GND" H 3905 3677 50  0000 C CNN
F 2 "" H 3900 3850 50  0001 C CNN
F 3 "" H 3900 3850 50  0001 C CNN
	1    3900 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 3550 3650 3550
Wire Wire Line
	3850 3550 3900 3550
Wire Wire Line
	3900 3550 3900 3600
Connection ~ 3900 3550
Wire Wire Line
	3900 3550 4350 3550
Wire Wire Line
	3900 3800 3900 3850
$Comp
L Device:R_Small R307
U 1 1 5CEA9170
P 8550 3600
F 0 "R307" V 8354 3600 50  0000 C CNN
F 1 "12k" V 8450 3600 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 8550 3600 50  0001 C CNN
F 3 "~" H 8550 3600 50  0001 C CNN
	1    8550 3600
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R308
U 1 1 5CEA9176
P 8700 3750
F 0 "R308" H 8759 3796 50  0000 L CNN
F 1 "18k" H 8759 3705 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 8700 3750 50  0001 C CNN
F 3 "~" H 8700 3750 50  0001 C CNN
	1    8700 3750
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR0321
U 1 1 5CEA917C
P 8700 3900
F 0 "#PWR0321" H 8700 3650 50  0001 C CNN
F 1 "GND" H 8705 3727 50  0000 C CNN
F 2 "" H 8700 3900 50  0001 C CNN
F 3 "" H 8700 3900 50  0001 C CNN
	1    8700 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	8650 3600 8700 3600
Wire Wire Line
	8700 3600 8700 3650
Connection ~ 8700 3600
Wire Wire Line
	8700 3600 9150 3600
Wire Wire Line
	8700 3850 8700 3900
Wire Wire Line
	7800 3600 8450 3600
$Comp
L Regulator_Linear:LP2985-5.0 U301
U 1 1 5CEB555D
P 3700 1150
F 0 "U301" H 3700 1492 50  0000 C CNN
F 1 "LP2985-5.0" H 3700 1401 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5_HandSoldering" H 3700 1475 50  0001 C CNN
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
	7400 4950 7400 5050
Wire Wire Line
	7400 4700 8300 4700
Wire Wire Line
	2600 4600 3600 4600
Wire Wire Line
	2600 4850 2600 4950
$Comp
L Amplifier_Operational:MCP6001-OT U303
U 1 1 5CEC3C95
P 3900 4700
F 0 "U303" H 3900 4900 50  0000 L CNN
F 1 "MCP6001-OT" H 3900 4500 50  0001 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23-5_HandSoldering" H 3800 4500 50  0001 L CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/21733j.pdf" H 3900 4900 50  0001 C CNN
F 4 "Microchip" H 3900 4700 50  0001 C CNN "Manufacturer"
F 5 "MCP6001-OT" H 3900 4700 50  0001 C CNN "MPN"
	1    3900 4700
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:MCP6001-OT U305
U 1 1 5CEC3EEF
P 8600 4800
F 0 "U305" H 8600 5000 50  0000 L CNN
F 1 "MCP6001-OT" H 8600 4600 50  0001 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5_HandSoldering" H 8500 4600 50  0001 L CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/21733j.pdf" H 8600 5000 50  0001 C CNN
F 4 "MCP6001-OT" H 8600 4800 50  0001 C CNN "MPN"
F 5 "Microchip" H 8600 4800 50  0001 C CNN "Manufacturer"
	1    8600 4800
	1    0    0    -1  
$EndComp
$Comp
L Sensor_Current:ACS770xCB-100U-PSF U304
U 1 1 5CE3A9FD
P 7400 3600
F 0 "U304" H 7450 3850 50  0000 L CNN
F 1 "ACS758LCB-100B-PFF-T" H 7450 3350 50  0000 L CNN
F 2 "Sensor_Current:Allegro_CB_PFF" H 7400 3600 50  0001 C CNN
F 3 "http://www.allegromicro.com/~/media/Files/Datasheets/ACS758-Datasheet.ashx?la=en" H 7400 3600 50  0001 C CNN
F 4 "-prod" H 7400 3600 50  0001 C CNN "Config"
F 5 "ACS758LCB-100B-PFF-T" H 7400 3600 50  0001 C CNN "MPN"
F 6 "Allegro" H 7400 3600 50  0001 C CNN "Manufacturer"
F 7 "Thermally Enhanced, Fully Integrated, Hall-Effect-Based Linear Current Sensor IC with 100 µΩ Current Conductor" H 7400 3600 50  0001 C CNN "Description"
	1    7400 3600
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C306
U 1 1 5CE5A7C1
P 7700 3250
F 0 "C306" V 7471 3250 50  0000 C CNN
F 1 "100n/50V" V 7562 3250 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 7700 3250 50  0001 C CNN
F 3 "~" H 7700 3250 50  0001 C CNN
	1    7700 3250
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0313
U 1 1 5CE5A8D9
P 7900 3300
F 0 "#PWR0313" H 7900 3050 50  0001 C CNN
F 1 "GND" H 7905 3127 50  0000 C CNN
F 2 "" H 7900 3300 50  0001 C CNN
F 3 "" H 7900 3300 50  0001 C CNN
	1    7900 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	7800 3250 7900 3250
Wire Wire Line
	7900 3250 7900 3300
Wire Wire Line
	3550 5300 3550 4800
Wire Wire Line
	4300 5300 3550 5300
Wire Wire Line
	7400 3250 7400 3300
Connection ~ 7400 3250
Wire Wire Line
	7600 3250 7400 3250
Wire Wire Line
	7400 3200 7400 3250
$Comp
L power:+5VA #PWR0312
U 1 1 5CE3AB0F
P 7400 3200
F 0 "#PWR0312" H 7400 3050 50  0001 C CNN
F 1 "+5VA" H 7415 3373 50  0000 C CNN
F 2 "" H 7400 3200 50  0001 C CNN
F 3 "" H 7400 3200 50  0001 C CNN
	1    7400 3200
	1    0    0    -1  
$EndComp
$Comp
L power:+BATT #PWR0136
U 1 1 5E57BACB
P 6950 2900
F 0 "#PWR0136" H 6950 2750 50  0001 C CNN
F 1 "+BATT" H 6965 3073 50  0000 C CNN
F 2 "" H 6950 2900 50  0001 C CNN
F 3 "" H 6950 2900 50  0001 C CNN
	1    6950 2900
	1    0    0    -1  
$EndComp
$EndSCHEMATC
