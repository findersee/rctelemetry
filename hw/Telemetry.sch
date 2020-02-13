EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 4
Title "RC Telemetry board"
Date "2020-02-12"
Rev "0.2"
Comp "www.findersee.fi"
Comment1 "https://github.com/findersee/rctelemetry"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Device:C_Small C102
U 1 1 5CE1CE25
P 700 7300
F 0 "C102" H 792 7346 50  0000 L CNN
F 1 "100n" H 792 7255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 700 7300 50  0001 C CNN
F 3 "~" H 700 7300 50  0001 C CNN
	1    700  7300
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C103
U 1 1 5CE1CEC3
P 1100 7300
F 0 "C103" H 1192 7346 50  0000 L CNN
F 1 "100n" H 1192 7255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 1100 7300 50  0001 C CNN
F 3 "~" H 1100 7300 50  0001 C CNN
	1    1100 7300
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C104
U 1 1 5CE1CEEF
P 1450 7300
F 0 "C104" H 1542 7346 50  0000 L CNN
F 1 "100n" H 1542 7255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 1450 7300 50  0001 C CNN
F 3 "~" H 1450 7300 50  0001 C CNN
	1    1450 7300
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0114
U 1 1 5CE1CF89
P 700 7150
F 0 "#PWR0114" H 700 7000 50  0001 C CNN
F 1 "+3V3" H 715 7323 50  0000 C CNN
F 2 "" H 700 7150 50  0001 C CNN
F 3 "" H 700 7150 50  0001 C CNN
	1    700  7150
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C105
U 1 1 5CE1DA85
P 1800 7300
F 0 "C105" H 1892 7346 50  0000 L CNN
F 1 "100n" H 1892 7255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 1800 7300 50  0001 C CNN
F 3 "~" H 1800 7300 50  0001 C CNN
	1    1800 7300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0118
U 1 1 5CE1DB1B
P 700 7450
F 0 "#PWR0118" H 700 7200 50  0001 C CNN
F 1 "GND" H 705 7277 50  0000 C CNN
F 2 "" H 700 7450 50  0001 C CNN
F 3 "" H 700 7450 50  0001 C CNN
	1    700  7450
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 7150 1800 7200
Wire Wire Line
	1100 7200 1100 7150
Wire Wire Line
	1450 7200 1450 7150
Wire Wire Line
	1800 7400 1800 7450
Wire Wire Line
	1100 7400 1100 7450
Wire Wire Line
	1450 7400 1450 7450
Wire Wire Line
	700  7400 700  7450
Wire Wire Line
	700  7150 700  7200
$Comp
L power:GND #PWR0119
U 1 1 5CE1DE61
P 1100 7450
F 0 "#PWR0119" H 1100 7200 50  0001 C CNN
F 1 "GND" H 1105 7277 50  0000 C CNN
F 2 "" H 1100 7450 50  0001 C CNN
F 3 "" H 1100 7450 50  0001 C CNN
	1    1100 7450
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0115
U 1 1 5CE1DF2A
P 1100 7150
F 0 "#PWR0115" H 1100 7000 50  0001 C CNN
F 1 "+3V3" H 1115 7323 50  0000 C CNN
F 2 "" H 1100 7150 50  0001 C CNN
F 3 "" H 1100 7150 50  0001 C CNN
	1    1100 7150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0120
U 1 1 5CE1DFDA
P 1450 7450
F 0 "#PWR0120" H 1450 7200 50  0001 C CNN
F 1 "GND" H 1455 7277 50  0000 C CNN
F 2 "" H 1450 7450 50  0001 C CNN
F 3 "" H 1450 7450 50  0001 C CNN
	1    1450 7450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0121
U 1 1 5CE1DFEF
P 1800 7450
F 0 "#PWR0121" H 1800 7200 50  0001 C CNN
F 1 "GND" H 1805 7277 50  0000 C CNN
F 2 "" H 1800 7450 50  0001 C CNN
F 3 "" H 1800 7450 50  0001 C CNN
	1    1800 7450
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0116
U 1 1 5CE1E004
P 1450 7150
F 0 "#PWR0116" H 1450 7000 50  0001 C CNN
F 1 "+3V3" H 1465 7323 50  0000 C CNN
F 2 "" H 1450 7150 50  0001 C CNN
F 3 "" H 1450 7150 50  0001 C CNN
	1    1450 7150
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0117
U 1 1 5CE1E019
P 1800 7150
F 0 "#PWR0117" H 1800 7000 50  0001 C CNN
F 1 "+3V3" H 1815 7323 50  0000 C CNN
F 2 "" H 1800 7150 50  0001 C CNN
F 3 "" H 1800 7150 50  0001 C CNN
	1    1800 7150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0111
U 1 1 5CE1E2AB
P 4800 4650
F 0 "#PWR0111" H 4800 4400 50  0001 C CNN
F 1 "GND" H 4805 4477 50  0000 C CNN
F 2 "" H 4800 4650 50  0001 C CNN
F 3 "" H 4800 4650 50  0001 C CNN
	1    4800 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 4400 4800 4400
Wire Wire Line
	4800 4400 4800 4500
Wire Wire Line
	4850 4500 4800 4500
Connection ~ 4800 4500
Wire Wire Line
	4800 4500 4800 4600
Wire Wire Line
	4850 4600 4800 4600
Connection ~ 4800 4600
Wire Wire Line
	4800 4600 4800 4650
$Comp
L power:+3V3 #PWR0110
U 1 1 5CE1E5A7
P 4800 3300
F 0 "#PWR0110" H 4800 3150 50  0001 C CNN
F 1 "+3V3" H 4815 3473 50  0000 C CNN
F 2 "" H 4800 3300 50  0001 C CNN
F 3 "" H 4800 3300 50  0001 C CNN
	1    4800 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 3950 4800 3950
Wire Wire Line
	4850 3550 4800 3550
Wire Wire Line
	4800 3550 4800 3350
Wire Wire Line
	4850 3350 4800 3350
Connection ~ 4800 3350
Wire Wire Line
	4800 3350 4800 3300
Wire Wire Line
	4850 3650 4800 3650
Wire Wire Line
	4800 3650 4800 3550
Connection ~ 4800 3550
Wire Wire Line
	4850 3750 4800 3750
Wire Wire Line
	4800 3750 4800 3650
Connection ~ 4800 3650
$Comp
L Device:R R101
U 1 1 5CE1F394
P 3550 1100
F 0 "R101" V 3450 1100 50  0000 C CNN
F 1 "10k" V 3550 1100 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 3480 1100 50  0001 C CNN
F 3 "~" H 3550 1100 50  0001 C CNN
	1    3550 1100
	0    1    1    0   
$EndComp
$Comp
L power:+3V3 #PWR0103
U 1 1 5CE1F49F
P 3350 950
F 0 "#PWR0103" H 3350 800 50  0001 C CNN
F 1 "+3V3" H 3365 1123 50  0000 C CNN
F 2 "" H 3350 950 50  0001 C CNN
F 3 "" H 3350 950 50  0001 C CNN
	1    3350 950 
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 1100 3350 1100
Wire Wire Line
	3350 1100 3350 950 
$Comp
L Device:R R102
U 1 1 5CE1FC54
P 4600 1400
F 0 "R102" H 4750 1500 50  0000 C CNN
F 1 "470R" V 4600 1400 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 4530 1400 50  0001 C CNN
F 3 "~" H 4600 1400 50  0001 C CNN
	1    4600 1400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0107
U 1 1 5CE1FD49
P 4600 1600
F 0 "#PWR0107" H 4600 1350 50  0001 C CNN
F 1 "GND" H 4605 1427 50  0000 C CNN
F 2 "" H 4600 1600 50  0001 C CNN
F 3 "" H 4600 1600 50  0001 C CNN
	1    4600 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 1200 4600 1200
Wire Wire Line
	4600 1200 4600 1250
Wire Wire Line
	4600 1550 4600 1600
$Comp
L Connector_Generic:Conn_01x02 J102
U 1 1 5CE208B4
P 3000 1200
F 0 "J102" H 2920 875 50  0000 C CNN
F 1 "BOOT0" H 2920 966 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch1.27mm" H 3000 1200 50  0001 C CNN
F 3 "~" H 3000 1200 50  0001 C CNN
	1    3000 1200
	-1   0    0    1   
$EndComp
Wire Wire Line
	3200 1100 3350 1100
Connection ~ 3350 1100
Wire Wire Line
	4600 1200 3200 1200
Connection ~ 4600 1200
$Sheet
S 1150 2300 1100 1000
U 5CE22262
F0 "Power supplies" 50
F1 "Power.sch" 50
$EndSheet
$Sheet
S 9650 3800 1100 1050
U 5CE3A6F3
F0 "Current measurement" 50
F1 "current.sch" 50
$EndSheet
Text GLabel 6200 1000 2    50   Input ~ 0
ESC1_VOLTAGE_OUT
Text GLabel 6200 1100 2    50   Input ~ 0
ESC2_VOLTAGE_OUT
Text GLabel 6200 1200 2    50   Input ~ 0
ESC1_CURRENT_OUT
Text GLabel 6200 1300 2    50   Input ~ 0
ESC2_CURRENT_OUT
Wire Wire Line
	6200 1000 6050 1000
Wire Wire Line
	6050 1100 6200 1100
Wire Wire Line
	6200 1200 6050 1200
Wire Wire Line
	6050 1300 6200 1300
$Comp
L Connector_Generic:Conn_01x06 J103
U 1 1 5CE7FF53
P 9250 2600
F 0 "J103" H 9329 2592 50  0000 L CNN
F 1 "SPORT" H 9329 2501 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x03" H 9250 2600 50  0001 C CNN
F 3 "~" H 9250 2600 50  0001 C CNN
	1    9250 2600
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0105
U 1 1 5CE8046C
P 8900 2050
F 0 "#PWR0105" H 8900 1900 50  0001 C CNN
F 1 "VCC" H 8917 2223 50  0000 C CNN
F 2 "" H 8900 2050 50  0001 C CNN
F 3 "" H 8900 2050 50  0001 C CNN
	1    8900 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	9050 2600 8900 2600
Wire Wire Line
	9050 2700 8900 2700
Wire Wire Line
	8900 2700 8900 2600
Wire Wire Line
	9050 2800 8800 2800
Wire Wire Line
	8800 2800 8800 2900
Wire Wire Line
	9050 2900 8800 2900
Connection ~ 8800 2900
Wire Wire Line
	9050 2500 9000 2500
Wire Wire Line
	9000 2500 9000 2400
Wire Wire Line
	9000 2400 9050 2400
$Comp
L Connector_Generic:Conn_01x06 J104
U 1 1 5CEA038E
P 9250 3900
F 0 "J104" H 9329 3892 50  0000 L CNN
F 1 "SBUS" H 9329 3801 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x03" H 9250 3900 50  0001 C CNN
F 3 "~" H 9250 3900 50  0001 C CNN
	1    9250 3900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0109
U 1 1 5CEA03A3
P 8800 4300
F 0 "#PWR0109" H 8800 4050 50  0001 C CNN
F 1 "GND" H 8805 4127 50  0000 C CNN
F 2 "" H 8800 4300 50  0001 C CNN
F 3 "" H 8800 4300 50  0001 C CNN
	1    8800 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	9050 3900 8900 3900
Wire Wire Line
	9050 4000 8900 4000
Wire Wire Line
	8900 4000 8900 3900
Connection ~ 8900 3900
Wire Wire Line
	9050 4100 8800 4100
Wire Wire Line
	9050 4200 8800 4200
Connection ~ 8800 4200
Wire Wire Line
	8800 4200 8800 4300
Wire Wire Line
	9050 3800 9000 3800
Wire Wire Line
	9000 3800 9000 3700
Wire Wire Line
	9000 3700 9050 3700
Wire Wire Line
	6050 2100 6400 2100
Wire Wire Line
	6050 2200 6400 2200
Text Label 6400 2100 0    50   ~ 0
USB_D-
Text Label 6400 2200 0    50   ~ 0
USB_D+
$Comp
L Connector:USB_B_Micro J105
U 1 1 5CEC877C
P 8950 5550
F 0 "J105" H 9005 6017 50  0000 C CNN
F 1 "USB_B_Micro" H 9005 5926 50  0000 C CNN
F 2 "PCBDecals:USB_Micro-B" H 9100 5500 50  0001 C CNN
F 3 "~" H 9100 5500 50  0001 C CNN
	1    8950 5550
	-1   0    0    -1  
$EndComp
Wire Wire Line
	8650 5550 8050 5550
Wire Wire Line
	8650 5650 7700 5650
Text Label 7700 5650 2    50   ~ 0
USB_D-
Text Label 7700 5550 2    50   ~ 0
USB_D+
$Comp
L power:GND #PWR0113
U 1 1 5CECDD97
P 8950 6050
F 0 "#PWR0113" H 8950 5800 50  0001 C CNN
F 1 "GND" H 8955 5877 50  0000 C CNN
F 2 "" H 8950 6050 50  0001 C CNN
F 3 "" H 8950 6050 50  0001 C CNN
	1    8950 6050
	-1   0    0    -1  
$EndComp
Wire Wire Line
	8950 6050 8950 6000
Wire Wire Line
	8950 6000 9050 6000
Wire Wire Line
	9050 6000 9050 5950
Wire Wire Line
	8950 6000 8950 5950
Connection ~ 8950 6000
Wire Wire Line
	4850 2000 4200 2000
$Comp
L power:+3V3 #PWR0106
U 1 1 5CE248AA
P 3900 1600
F 0 "#PWR0106" H 3900 1450 50  0001 C CNN
F 1 "+3V3" H 3915 1773 50  0000 C CNN
F 2 "" H 3900 1600 50  0001 C CNN
F 3 "" H 3900 1600 50  0001 C CNN
	1    3900 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 1600 3900 1650
$Comp
L power:GND #PWR0108
U 1 1 5CE27D42
P 3900 2450
F 0 "#PWR0108" H 3900 2200 50  0001 C CNN
F 1 "GND" H 3905 2277 50  0000 C CNN
F 2 "" H 3900 2450 50  0001 C CNN
F 3 "" H 3900 2450 50  0001 C CNN
	1    3900 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 2300 3900 2400
Wire Wire Line
	3600 2000 3550 2000
Connection ~ 3900 1650
Wire Wire Line
	3900 1650 3900 1700
$Comp
L Device:C_Small C101
U 1 1 5CE3221B
P 3450 2250
F 0 "C101" H 3542 2296 50  0000 L CNN
F 1 "100n" H 3542 2205 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 3450 2250 50  0001 C CNN
F 3 "~" H 3450 2250 50  0001 C CNN
	1    3450 2250
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3450 1650 3450 2150
Wire Wire Line
	3900 2400 3450 2400
Wire Wire Line
	3450 2400 3450 2350
Connection ~ 3900 2400
Wire Wire Line
	3900 2400 3900 2450
Text Label 8550 3700 0    50   ~ 0
Sbus
Connection ~ 9000 2400
Text Label 8500 2400 0    50   ~ 0
S.port
Wire Wire Line
	8450 2400 8450 1900
Wire Wire Line
	8450 1900 6050 1900
Wire Wire Line
	8450 2400 9000 2400
$Comp
L power:GND #PWR0104
U 1 1 5CE4C56B
P 10400 1850
F 0 "#PWR0104" H 10400 1600 50  0001 C CNN
F 1 "GND" H 10405 1677 50  0000 C CNN
F 2 "" H 10400 1850 50  0001 C CNN
F 3 "" H 10400 1850 50  0001 C CNN
	1    10400 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	8900 2700 8900 3900
Connection ~ 8900 2700
Wire Wire Line
	8800 2900 8800 4100
Connection ~ 8800 4100
Wire Wire Line
	8800 4100 8800 4200
$Comp
L Switch:SW_Push SW101
U 1 1 5CE750E0
P 4400 850
F 0 "SW101" H 4400 1135 50  0000 C CNN
F 1 "SW_Push" H 4400 1044 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_SPST_B3U-1000P" H 4400 1050 50  0001 C CNN
F 3 "" H 4400 1050 50  0001 C CNN
	1    4400 850 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 5CE7D7C4
P 4150 900
F 0 "#PWR0102" H 4150 650 50  0001 C CNN
F 1 "GND" H 4155 727 50  0000 C CNN
F 2 "" H 4150 900 50  0001 C CNN
F 3 "" H 4150 900 50  0001 C CNN
	1    4150 900 
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 850  4150 850 
Wire Wire Line
	4150 850  4150 900 
Wire Wire Line
	4850 1000 4800 1000
Wire Wire Line
	4800 1000 4800 1100
Wire Wire Line
	4800 1100 3700 1100
Wire Wire Line
	4600 850  4800 850 
Wire Wire Line
	4800 850  4800 1000
Connection ~ 4800 1000
$Sheet
S 9650 5000 1100 1000
U 5CEA3FFC
F0 "Outputs" 50
F1 "output.sch" 50
$EndSheet
Text Label 8550 1500 0    50   ~ 0
SPI_SCK
Text Label 8550 1300 0    50   ~ 0
SPI_MISO
Text Label 8550 1400 0    50   ~ 0
SPI_MOSI
Text Label 8550 1200 0    50   ~ 0
SPI_CS
Wire Wire Line
	6150 2500 6050 2500
Wire Wire Line
	6050 2700 6150 2700
Text GLabel 6150 3600 2    50   Output ~ 0
PWM2
Text GLabel 6150 3300 2    50   Output ~ 0
HC_PWM1
Text GLabel 6150 3400 2    50   Output ~ 0
HC_PWM2
Text GLabel 7350 2300 2    50   Output ~ 0
PWM1
Wire Wire Line
	6150 3300 6050 3300
Wire Wire Line
	6150 3400 6050 3400
Wire Wire Line
	6150 3600 6050 3600
Text GLabel 6150 2900 2    50   Output ~ 0
OUT1
Text GLabel 6150 2700 2    50   Input ~ 0
IN1
Text GLabel 6150 2800 2    50   Output ~ 0
OUT2
Text GLabel 6150 3500 2    50   Input ~ 0
IN2
Wire Wire Line
	6050 2800 6150 2800
Wire Wire Line
	6150 2900 6050 2900
Wire Wire Line
	6050 3100 6150 3100
Wire Wire Line
	4800 3750 4800 3950
Connection ~ 4800 3750
Wire Wire Line
	4850 4050 4800 4050
Wire Wire Line
	4800 4050 4800 4400
Connection ~ 4800 4400
Wire Wire Line
	6150 4100 6050 4100
Wire Wire Line
	6150 4200 6050 4200
$Comp
L power:GND #PWR0122
U 1 1 5CE5F3AC
P 6200 6450
F 0 "#PWR0122" H 6200 6200 50  0001 C CNN
F 1 "GND" H 6205 6277 50  0000 C CNN
F 2 "" H 6200 6450 50  0001 C CNN
F 3 "" H 6200 6450 50  0001 C CNN
	1    6200 6450
	1    0    0    -1  
$EndComp
Wire Wire Line
	6250 6400 6200 6400
Wire Wire Line
	6200 6400 6200 6450
$Comp
L Connector_Generic:Conn_01x04 J106
U 1 1 5CE6386B
P 6450 6200
F 0 "J106" H 6529 6192 50  0000 L CNN
F 1 "UART_EXP" H 6529 6101 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x02_P2.54mm_Vertical" H 6450 6200 50  0001 C CNN
F 3 "~" H 6450 6200 50  0001 C CNN
	1    6450 6200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6250 6100 6200 6100
Wire Wire Line
	6200 6100 6200 6050
$Comp
L power:VCC #PWR0123
U 1 1 5CE67EB7
P 6200 6050
F 0 "#PWR0123" H 6200 5900 50  0001 C CNN
F 1 "VCC" H 6217 6223 50  0000 C CNN
F 2 "" H 6200 6050 50  0001 C CNN
F 3 "" H 6200 6050 50  0001 C CNN
	1    6200 6050
	1    0    0    -1  
$EndComp
Text GLabel 6150 3900 2    50   Input ~ 0
BAT_VOLTAGE
Wire Wire Line
	6150 3900 6050 3900
$Comp
L Device:Jumper_NC_Small JP101
U 1 1 5CE9AC78
P 8900 2200
F 0 "JP101" V 8946 2153 50  0000 R CNN
F 1 "Jumper_NC_Small" V 8855 2153 50  0000 R CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02" H 8900 2200 50  0001 C CNN
F 3 "~" H 8900 2200 50  0001 C CNN
	1    8900 2200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8900 2300 8900 2600
Connection ~ 8900 2600
Wire Wire Line
	8900 2050 8900 2100
Wire Wire Line
	8650 5350 8400 5350
NoConn ~ 4850 2200
Wire Wire Line
	8400 5350 8400 5300
$Comp
L power:VBUS #PWR0112
U 1 1 5CEEB052
P 8400 5300
F 0 "#PWR0112" H 8400 5150 50  0001 C CNN
F 1 "VBUS" H 8415 5473 50  0000 C CNN
F 2 "" H 8400 5300 50  0001 C CNN
F 3 "" H 8400 5300 50  0001 C CNN
	1    8400 5300
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6050 4000 6150 4000
Wire Wire Line
	8250 1200 8250 1800
Connection ~ 9000 3700
Wire Wire Line
	8250 1200 9500 1200
$Comp
L power:+3V3 #PWR0101
U 1 1 5CEF7FBB
P 9500 700
F 0 "#PWR0101" H 9500 550 50  0001 C CNN
F 1 "+3V3" H 9515 873 50  0000 C CNN
F 2 "" H 9500 700 50  0001 C CNN
F 3 "" H 9500 700 50  0001 C CNN
	1    9500 700 
	1    0    0    -1  
$EndComp
NoConn ~ 9500 1650
$Comp
L Device:LED D101
U 1 1 5CF14422
P 7100 4400
F 0 "D101" H 7091 4616 50  0000 C CNN
F 1 "LED" H 7091 4525 50  0000 C CNN
F 2 "LEDs:LED_0603_HandSoldering" H 7100 4400 50  0001 C CNN
F 3 "~" H 7100 4400 50  0001 C CNN
	1    7100 4400
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0125
U 1 1 5CF145CC
P 7650 4300
F 0 "#PWR0125" H 7650 4150 50  0001 C CNN
F 1 "+3V3" H 7665 4473 50  0000 C CNN
F 2 "" H 7650 4300 50  0001 C CNN
F 3 "" H 7650 4300 50  0001 C CNN
	1    7650 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	7650 4300 7650 4400
Wire Wire Line
	7650 4400 7250 4400
$Comp
L Telemetry-rescue:STM32F303CBx-Misc U101
U 1 1 5CE38426
P 5450 3100
F 0 "U101" H 5450 5465 50  0000 C CNN
F 1 "STM32F303CBx" H 5450 5374 50  0000 C CNN
F 2 "Housings_QFP:LQFP-48_7x7mm_Pitch0.5mm" H 6200 4950 50  0001 C CNN
F 3 "https://www.st.com/resource/en/datasheet/stm32f303cb.pdf" H 6200 4950 50  0001 C CNN
	1    5450 3100
	1    0    0    -1  
$EndComp
Text Notes 7200 4500 0    50   ~ 0
ERROR LED
$Comp
L Device:R R103
U 1 1 5CF2EC11
P 6600 4400
F 0 "R103" V 6500 4400 50  0000 C CNN
F 1 "470R" V 6600 4400 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 6530 4400 50  0001 C CNN
F 3 "~" H 6600 4400 50  0001 C CNN
	1    6600 4400
	0    1    1    0   
$EndComp
Wire Wire Line
	6950 4400 6750 4400
Wire Wire Line
	6050 4400 6450 4400
$Comp
L Device:C_Small C106
U 1 1 5CF3E241
P 10400 1400
F 0 "C106" H 10492 1446 50  0000 L CNN
F 1 "100n" H 10492 1355 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 10400 1400 50  0001 C CNN
F 3 "~" H 10400 1400 50  0001 C CNN
	1    10400 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	10400 1300 10400 750 
Wire Wire Line
	6050 1400 6200 1400
Wire Wire Line
	8250 1800 6050 1800
Wire Wire Line
	6050 1600 8050 1600
Wire Wire Line
	8050 1300 8050 1600
Wire Wire Line
	8150 1400 9500 1400
Wire Wire Line
	6050 1700 8150 1700
Wire Wire Line
	8150 1400 8150 1700
Wire Wire Line
	6050 1500 9500 1500
Wire Wire Line
	9500 1750 9400 1750
$Comp
L Mechanical:MountingHole MH101
U 1 1 5CF43C55
P 4900 7250
F 0 "MH101" H 5000 7296 50  0000 L CNN
F 1 "MountingHole" H 5000 7205 50  0000 L CNN
F 2 "Mounting_Holes:MountingHole_3.2mm_M3_DIN965" H 4900 7250 50  0001 C CNN
F 3 "~" H 4900 7250 50  0001 C CNN
	1    4900 7250
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole MH103
U 1 1 5CF43CF8
P 4900 7500
F 0 "MH103" H 5000 7546 50  0000 L CNN
F 1 "MountingHole" H 5000 7455 50  0000 L CNN
F 2 "Mounting_Holes:MountingHole_3.2mm_M3_DIN965" H 4900 7500 50  0001 C CNN
F 3 "~" H 4900 7500 50  0001 C CNN
	1    4900 7500
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole MH102
U 1 1 5CF43D3E
P 5650 7250
F 0 "MH102" H 5750 7296 50  0000 L CNN
F 1 "MountingHole" H 5750 7205 50  0000 L CNN
F 2 "Mounting_Holes:MountingHole_3.2mm_M3_DIN965" H 5650 7250 50  0001 C CNN
F 3 "~" H 5650 7250 50  0001 C CNN
	1    5650 7250
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole MH104
U 1 1 5CF43D94
P 5650 7500
F 0 "MH104" H 5750 7546 50  0000 L CNN
F 1 "MountingHole" H 5750 7455 50  0000 L CNN
F 2 "Mounting_Holes:MountingHole_3.2mm_M3_DIN965" H 5650 7500 50  0001 C CNN
F 3 "~" H 5650 7500 50  0001 C CNN
	1    5650 7500
	1    0    0    -1  
$EndComp
Text GLabel 6200 1400 2    50   Output ~ 0
DAC_OUT
Text GLabel 6150 4100 2    50   Output ~ 0
AMP_CS
Wire Wire Line
	6050 4600 6150 4600
$Comp
L Connector:TestPoint TP101
U 1 1 5CED0971
P 4800 850
F 0 "TP101" H 4858 970 50  0000 L CNN
F 1 "RST" H 4858 879 50  0000 L CNN
F 2 "Wire_Pads:SolderWirePad_single_0-8mmDrill" H 5000 850 50  0001 C CNN
F 3 "~" H 5000 850 50  0001 C CNN
	1    4800 850 
	1    0    0    -1  
$EndComp
Connection ~ 4800 850 
$Comp
L Connector:TestPoint TP104
U 1 1 5CED1B66
P 2450 7250
F 0 "TP104" H 2508 7370 50  0000 L CNN
F 1 "3V3" H 2508 7279 50  0000 L CNN
F 2 "Wire_Pads:SolderWirePad_single_0-8mmDrill" H 2650 7250 50  0001 C CNN
F 3 "~" H 2650 7250 50  0001 C CNN
	1    2450 7250
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0126
U 1 1 5CED1EA6
P 2250 7250
F 0 "#PWR0126" H 2250 7100 50  0001 C CNN
F 1 "+3V3" H 2265 7423 50  0000 C CNN
F 2 "" H 2250 7250 50  0001 C CNN
F 3 "" H 2250 7250 50  0001 C CNN
	1    2250 7250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 7250 2450 7300
Wire Wire Line
	2450 7300 2250 7300
Wire Wire Line
	2250 7300 2250 7250
$Comp
L Connector:TestPoint TP105
U 1 1 5CED7BFF
P 2850 7250
F 0 "TP105" H 2908 7370 50  0000 L CNN
F 1 "GND" H 2908 7279 50  0000 L CNN
F 2 "Wire_Pads:SolderWirePad_single_0-8mmDrill" H 3050 7250 50  0001 C CNN
F 3 "~" H 3050 7250 50  0001 C CNN
	1    2850 7250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0127
U 1 1 5CED7C70
P 2850 7300
F 0 "#PWR0127" H 2850 7050 50  0001 C CNN
F 1 "GND" H 2855 7127 50  0000 C CNN
F 2 "" H 2850 7300 50  0001 C CNN
F 3 "" H 2850 7300 50  0001 C CNN
	1    2850 7300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 7250 2850 7300
$Comp
L Telemetry-rescue:SG-310_SCF_8.000000MHZ-Misc X101
U 1 1 5CECEA0C
P 3900 2000
F 0 "X101" H 3950 2250 50  0000 L CNN
F 1 "SG-310_SCF_8.000000MHZ" H 4450 1750 50  0001 C CNN
F 2 "PCBDecals:SG- 310" H 3900 2000 50  0001 C CNN
F 3 "https://support.epson.biz/td/api/doc_check.php?dl=brief_SG-310SEF&lang=en" H 3900 2000 50  0001 C CNN
	1    3900 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 1650 3900 1650
Wire Wire Line
	8050 1300 9500 1300
Wire Wire Line
	10400 1500 10400 1750
$Comp
L Telemetry-rescue:IS25LP032D-Misc U102
U 1 1 5CF328C7
P 9950 1400
F 0 "U102" H 9950 1975 50  0000 C CNN
F 1 "IS25LP032D" H 9950 1884 50  0000 C CNN
F 2 "digikey-footprints:SOIC-8_W5.6mm" H 9850 1250 50  0001 C CNN
F 3 "http://www.issi.com/WW/pdf/25LP-WP032D.pdf" H 9850 1250 50  0001 C CNN
	1    9950 1400
	1    0    0    -1  
$EndComp
Connection ~ 10400 1750
Wire Wire Line
	10400 1750 10400 1850
Wire Wire Line
	9500 750  10400 750 
Wire Wire Line
	9500 700  9500 750 
Connection ~ 9500 750 
Wire Wire Line
	9500 750  9500 1050
Wire Wire Line
	6150 3500 6050 3500
Wire Wire Line
	6050 3200 6150 3200
Text GLabel 6150 4000 2    50   Output ~ 0
AMP_CLK
Text GLabel 6150 4200 2    50   Output ~ 0
AMP_DIN
NoConn ~ 6050 4500
NoConn ~ 8650 5750
NoConn ~ 3550 2000
Wire Wire Line
	6050 3700 9000 3700
$Comp
L Connector:TestPoint TP102
U 1 1 5CECADFA
P 7350 2150
F 0 "TP102" H 7408 2270 50  0000 L CNN
F 1 "SWDIO" H 7408 2179 50  0000 L CNN
F 2 "Wire_Pads:SolderWirePad_single_0-8mmDrill" H 7550 2150 50  0001 C CNN
F 3 "~" H 7550 2150 50  0001 C CNN
	1    7350 2150
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP103
U 1 1 5CECB040
P 8050 2400
F 0 "TP103" H 8108 2520 50  0000 L CNN
F 1 "SWCLK" H 8100 2450 50  0000 L CNN
F 2 "Wire_Pads:SolderWirePad_single_0-8mmDrill" H 8250 2400 50  0001 C CNN
F 3 "~" H 8250 2400 50  0001 C CNN
	1    8050 2400
	1    0    0    -1  
$EndComp
Text GLabel 5600 6200 0    50   Output ~ 0
UART_RX
Text GLabel 5600 6300 0    50   Input ~ 0
UART_TX
Text GLabel 6150 3100 2    50   Output ~ 0
SERVO_1
Text GLabel 6150 3200 2    50   Output ~ 0
SERVO_2
Text GLabel 6050 2000 2    50   Output ~ 0
USB_ENUMRATION
Wire Wire Line
	6050 3800 6150 3800
Wire Wire Line
	8050 5550 8050 5700
Connection ~ 8050 5550
Wire Wire Line
	8050 5550 7700 5550
Wire Wire Line
	8050 5900 8050 5950
Wire Wire Line
	8050 5950 7650 5950
Text GLabel 7650 5950 0    50   Input ~ 0
USB_ENUMRATION
$Comp
L Device:R_Small R105
U 1 1 5E4B8124
P 8050 5800
F 0 "R105" H 8109 5846 50  0000 L CNN
F 1 "1k5" H 8109 5755 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 8050 5800 50  0001 C CNN
F 3 "~" H 8050 5800 50  0001 C CNN
	1    8050 5800
	1    0    0    -1  
$EndComp
Text GLabel 6150 2500 2    50   Input ~ 0
UART_RX
Text GLabel 6900 3000 2    50   Output ~ 0
UART_TX
Text GLabel 9400 1750 0    50   Input ~ 0
WP
Text GLabel 6150 3800 2    50   Output ~ 0
WP
$Comp
L Device:R R104
U 1 1 5E4C8C09
P 7100 2150
F 0 "R104" V 7000 2150 50  0000 C CNN
F 1 "50R" V 7100 2150 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 7030 2150 50  0001 C CNN
F 3 "~" H 7100 2150 50  0001 C CNN
	1    7100 2150
	0    1    1    0   
$EndComp
Wire Wire Line
	7250 2150 7350 2150
Wire Wire Line
	6050 2300 6850 2300
Wire Wire Line
	6950 2150 6850 2150
Wire Wire Line
	6850 2150 6850 2300
Connection ~ 6850 2300
Wire Wire Line
	6850 2300 7350 2300
$Comp
L Device:R R106
U 1 1 5E4D66BC
P 7800 2400
F 0 "R106" V 7700 2400 50  0000 C CNN
F 1 "50R" V 7800 2400 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 7730 2400 50  0001 C CNN
F 3 "~" H 7800 2400 50  0001 C CNN
	1    7800 2400
	0    1    1    0   
$EndComp
Wire Wire Line
	8050 2400 7950 2400
Wire Wire Line
	6050 2400 7650 2400
$Comp
L Device:R R107
U 1 1 5E51659E
P 5900 6200
F 0 "R107" V 5850 6050 50  0000 C CNN
F 1 "50R" V 5900 6200 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 5830 6200 50  0001 C CNN
F 3 "~" H 5900 6200 50  0001 C CNN
	1    5900 6200
	0    1    1    0   
$EndComp
Wire Wire Line
	5750 6200 5600 6200
Wire Wire Line
	6050 6200 6250 6200
$Comp
L Device:R R108
U 1 1 5E517A65
P 6650 3000
F 0 "R108" V 6600 2850 50  0000 C CNN
F 1 "50R" V 6650 3000 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 6580 3000 50  0001 C CNN
F 3 "~" H 6650 3000 50  0001 C CNN
	1    6650 3000
	0    1    1    0   
$EndComp
Wire Wire Line
	6800 3000 6900 3000
Wire Wire Line
	6050 3000 6500 3000
Wire Wire Line
	5600 6300 6250 6300
$EndSCHEMATC
