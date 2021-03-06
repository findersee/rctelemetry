EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 4
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
L Device:C_Small C104
U 1 1 5CE1CEEF
P 1900 1150
F 0 "C104" H 1992 1196 50  0000 L CNN
F 1 "100n/50V" H 1992 1105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 1900 1150 50  0001 C CNN
F 3 "~" H 1900 1150 50  0001 C CNN
	1    1900 1150
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C105
U 1 1 5CE1DA85
P 2450 1150
F 0 "C105" H 2542 1196 50  0000 L CNN
F 1 "100n/50V" H 2542 1105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 2450 1150 50  0001 C CNN
F 3 "~" H 2450 1150 50  0001 C CNN
	1    2450 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 1000 2450 1050
Wire Wire Line
	1900 1050 1900 1000
Wire Wire Line
	2450 1250 2450 1300
Wire Wire Line
	1900 1250 1900 1300
$Comp
L power:GND #PWR0120
U 1 1 5CE1DFDA
P 1900 1300
F 0 "#PWR0120" H 1900 1050 50  0001 C CNN
F 1 "GND" H 1905 1127 50  0000 C CNN
F 2 "" H 1900 1300 50  0001 C CNN
F 3 "" H 1900 1300 50  0001 C CNN
	1    1900 1300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0121
U 1 1 5CE1DFEF
P 2450 1300
F 0 "#PWR0121" H 2450 1050 50  0001 C CNN
F 1 "GND" H 2455 1127 50  0000 C CNN
F 2 "" H 2450 1300 50  0001 C CNN
F 3 "" H 2450 1300 50  0001 C CNN
	1    2450 1300
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0116
U 1 1 5CE1E004
P 1900 1000
F 0 "#PWR0116" H 1900 850 50  0001 C CNN
F 1 "+3V3" H 1915 1173 50  0000 C CNN
F 2 "" H 1900 1000 50  0001 C CNN
F 3 "" H 1900 1000 50  0001 C CNN
	1    1900 1000
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0117
U 1 1 5CE1E019
P 2450 1000
F 0 "#PWR0117" H 2450 850 50  0001 C CNN
F 1 "+3V3" H 2465 1173 50  0000 C CNN
F 2 "" H 2450 1000 50  0001 C CNN
F 3 "" H 2450 1000 50  0001 C CNN
	1    2450 1000
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
L Device:R R102
U 1 1 5CE1FC54
P 4600 1400
F 0 "R102" H 4750 1500 50  0000 C CNN
F 1 "470" V 4600 1400 50  0000 C CNN
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
$Sheet
S 1150 2300 1100 1000
U 5CE22262
F0 "Power supplies" 50
F1 "Power.sch" 50
$EndSheet
$Sheet
S 1150 3500 1100 1050
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
F 4 "-prod" H 9250 2600 50  0001 C CNN "Config"
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
F 4 "-prod" H 9250 3900 50  0001 C CNN "Config"
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
$Comp
L Connector:USB_B_Micro J105
U 1 1 5CEC877C
P 10650 5000
F 0 "J105" H 10705 5467 50  0000 C CNN
F 1 "USB_B_Micro" H 10705 5376 50  0000 C CNN
F 2 "PCBDecals:USB_Micro-B" H 10800 4950 50  0001 C CNN
F 3 "~" H 10800 4950 50  0001 C CNN
F 4 "-prod" H 10650 5000 50  0001 C CNN "Config"
	1    10650 5000
	-1   0    0    -1  
$EndComp
Wire Wire Line
	10350 5000 10000 5000
Wire Wire Line
	10350 5100 9900 5100
$Comp
L power:GND #PWR0113
U 1 1 5CECDD97
P 10650 5500
F 0 "#PWR0113" H 10650 5250 50  0001 C CNN
F 1 "GND" H 10655 5327 50  0000 C CNN
F 2 "" H 10650 5500 50  0001 C CNN
F 3 "" H 10650 5500 50  0001 C CNN
	1    10650 5500
	-1   0    0    -1  
$EndComp
Wire Wire Line
	10650 5500 10650 5450
Wire Wire Line
	10650 5450 10750 5450
Wire Wire Line
	10750 5450 10750 5400
Wire Wire Line
	10650 5450 10650 5400
Connection ~ 10650 5450
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
F 1 "100n/50V" H 3542 2205 50  0000 L CNN
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
F 3 "https://omronfs.omron.com/en_US/ecb/products/pdf/en-b3u.pdf" H 4400 1050 50  0001 C CNN
F 4 "-prod" H 4400 850 50  0001 C CNN "Config"
F 5 "B3U-1000P" H 4400 850 50  0001 C CNN "MPN"
F 6 "Omron" H 4400 850 50  0001 C CNN "Manufacturer"
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
S 1150 4750 1100 1000
U 5CEA3FFC
F0 "Outputs" 50
F1 "output.sch" 50
$EndSheet
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
	4850 4050 4800 4050
Connection ~ 4800 4400
Wire Wire Line
	6150 4100 6050 4100
Wire Wire Line
	6150 4200 6050 4200
$Comp
L power:GND #PWR0122
U 1 1 5CE5F3AC
P 6450 6400
F 0 "#PWR0122" H 6450 6150 50  0001 C CNN
F 1 "GND" H 6455 6227 50  0000 C CNN
F 2 "" H 6450 6400 50  0001 C CNN
F 3 "" H 6450 6400 50  0001 C CNN
	1    6450 6400
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 6350 6450 6350
Wire Wire Line
	6450 6350 6450 6400
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
F 2 "Connector_PinHeader_1.27mm:PinHeader_1x02_P1.27mm_Vertical" H 8900 2200 50  0001 C CNN
F 3 "~" H 8900 2200 50  0001 C CNN
F 4 "-prod" H 8900 2200 50  0001 C CNN "Config"
	1    8900 2200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8900 2300 8900 2600
Connection ~ 8900 2600
Wire Wire Line
	8900 2050 8900 2100
Wire Wire Line
	10350 4800 10100 4800
NoConn ~ 4850 2200
Wire Wire Line
	10100 4800 10100 4750
$Comp
L power:VBUS #PWR0112
U 1 1 5CEEB052
P 10100 4750
F 0 "#PWR0112" H 10100 4600 50  0001 C CNN
F 1 "VBUS" H 10115 4923 50  0000 C CNN
F 2 "" H 10100 4750 50  0001 C CNN
F 3 "" H 10100 4750 50  0001 C CNN
	1    10100 4750
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6050 4000 6150 4000
Connection ~ 9000 3700
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
$Comp
L Device:LED D101
U 1 1 5CF14422
P 6800 4600
F 0 "D101" H 6791 4816 50  0000 C CNN
F 1 "LED_Green" H 6791 4725 50  0000 C CNN
F 2 "LEDs:LED_0603_HandSoldering" H 6800 4600 50  0001 C CNN
F 3 "~" H 6800 4600 50  0001 C CNN
	1    6800 4600
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0125
U 1 1 5CF145CC
P 7350 4500
F 0 "#PWR0125" H 7350 4350 50  0001 C CNN
F 1 "+3V3" H 7365 4673 50  0000 C CNN
F 2 "" H 7350 4500 50  0001 C CNN
F 3 "" H 7350 4500 50  0001 C CNN
	1    7350 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	7350 4500 7350 4600
Wire Wire Line
	7350 4600 6950 4600
$Comp
L Telemetry-rescue:STM32F303CBx-Misc-Telemetry-rescue U101
U 1 1 5CE38426
P 5450 3100
F 0 "U101" H 5450 5465 50  0000 C CNN
F 1 "STM32F303CBx" H 5450 5374 50  0000 C CNN
F 2 "Housings_QFP:LQFP-48_7x7mm_Pitch0.5mm" H 6200 4950 50  0001 C CNN
F 3 "https://www.st.com/resource/en/datasheet/stm32f303cb.pdf" H 6200 4950 50  0001 C CNN
F 4 "ST Microelectronics" H 5450 3100 50  0001 C CNN "Manufacturer"
F 5 "STM32F303CB" H 5450 3100 50  0001 C CNN "MPN"
	1    5450 3100
	1    0    0    -1  
$EndComp
Text Notes 6900 4700 0    50   ~ 0
ERROR LED
$Comp
L Device:R R103
U 1 1 5CF2EC11
P 6300 4600
F 0 "R103" V 6200 4600 50  0000 C CNN
F 1 "470" V 6300 4600 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 6230 4600 50  0001 C CNN
F 3 "~" H 6300 4600 50  0001 C CNN
	1    6300 4600
	0    1    1    0   
$EndComp
Wire Wire Line
	6650 4600 6450 4600
$Comp
L Device:C_Small C106
U 1 1 5CF3E241
P 10400 1400
F 0 "C106" H 10492 1446 50  0000 L CNN
F 1 "100n/50V" H 10492 1355 50  0000 L CNN
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
	9500 1750 9450 1750
$Comp
L Mechanical:MountingHole MH101
U 1 1 5CF43C55
P 650 7300
F 0 "MH101" H 750 7346 50  0000 L CNN
F 1 "MountingHole" H 750 7255 50  0000 L CNN
F 2 "Mounting_Holes:MountingHole_3.2mm_M3_DIN965" H 650 7300 50  0001 C CNN
F 3 "~" H 650 7300 50  0001 C CNN
F 4 "" H 650 7300 50  0001 C CNN "Config"
	1    650  7300
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole MH103
U 1 1 5CF43CF8
P 650 7550
F 0 "MH103" H 750 7596 50  0000 L CNN
F 1 "MountingHole" H 750 7505 50  0000 L CNN
F 2 "Mounting_Holes:MountingHole_3.2mm_M3_DIN965" H 650 7550 50  0001 C CNN
F 3 "~" H 650 7550 50  0001 C CNN
F 4 "" H 650 7550 50  0001 C CNN "Config"
	1    650  7550
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole MH102
U 1 1 5CF43D3E
P 1400 7300
F 0 "MH102" H 1500 7346 50  0000 L CNN
F 1 "MountingHole" H 1500 7255 50  0000 L CNN
F 2 "Mounting_Holes:MountingHole_3.2mm_M3_DIN965" H 1400 7300 50  0001 C CNN
F 3 "~" H 1400 7300 50  0001 C CNN
F 4 "" H 1400 7300 50  0001 C CNN "Config"
	1    1400 7300
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole MH104
U 1 1 5CF43D94
P 1400 7550
F 0 "MH104" H 1500 7596 50  0000 L CNN
F 1 "MountingHole" H 1500 7505 50  0000 L CNN
F 2 "Mounting_Holes:MountingHole_3.2mm_M3_DIN965" H 1400 7550 50  0001 C CNN
F 3 "~" H 1400 7550 50  0001 C CNN
F 4 "" H 1400 7550 50  0001 C CNN "Config"
	1    1400 7550
	1    0    0    -1  
$EndComp
Text GLabel 6200 1400 2    50   Output ~ 0
DAC_OUT
Text GLabel 6150 4100 2    50   Output ~ 0
AMP_CS
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
P 1400 1850
F 0 "TP104" H 1458 1970 50  0000 L CNN
F 1 "3V3" H 1458 1879 50  0000 L CNN
F 2 "Wire_Pads:SolderWirePad_single_0-8mmDrill" H 1600 1850 50  0001 C CNN
F 3 "~" H 1600 1850 50  0001 C CNN
	1    1400 1850
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0126
U 1 1 5CED1EA6
P 1200 1850
F 0 "#PWR0126" H 1200 1700 50  0001 C CNN
F 1 "+3V3" H 1215 2023 50  0000 C CNN
F 2 "" H 1200 1850 50  0001 C CNN
F 3 "" H 1200 1850 50  0001 C CNN
	1    1200 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 1850 1400 1900
Wire Wire Line
	1400 1900 1200 1900
Wire Wire Line
	1200 1900 1200 1850
$Comp
L Connector:TestPoint TP105
U 1 1 5CED7BFF
P 1800 1850
F 0 "TP105" H 1858 1970 50  0000 L CNN
F 1 "GND" H 1858 1879 50  0000 L CNN
F 2 "Wire_Pads:SolderWirePad_single_0-8mmDrill" H 2000 1850 50  0001 C CNN
F 3 "~" H 2000 1850 50  0001 C CNN
	1    1800 1850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0127
U 1 1 5CED7C70
P 1800 1900
F 0 "#PWR0127" H 1800 1650 50  0001 C CNN
F 1 "GND" H 1805 1727 50  0000 C CNN
F 2 "" H 1800 1900 50  0001 C CNN
F 3 "" H 1800 1900 50  0001 C CNN
	1    1800 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 1850 1800 1900
$Comp
L Telemetry-rescue:SG-310_SCF_8.000000MHZ-Misc-Telemetry-rescue X101
U 1 1 5CECEA0C
P 3900 2000
F 0 "X101" H 3950 2250 50  0000 L CNN
F 1 "SG-310_SCF_8.000000MHZ" H 4450 1750 50  0001 C CNN
F 2 "PCBDecals:SG- 310" H 3900 2000 50  0001 C CNN
F 3 "https://support.epson.biz/td/api/doc_check.php?dl=brief_SG-310SEF&lang=en" H 3900 2000 50  0001 C CNN
F 4 "Epson" H 3900 2000 50  0001 C CNN "Manufacturer"
F 5 "SG-310_SCF_8.000000MHZ" H 3900 2000 50  0001 C CNN "MPN"
F 6 "SMD Oscillator 8 MHz" H 3900 2000 50  0001 C CNN "Description"
	1    3900 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 1650 3900 1650
Wire Wire Line
	10400 1500 10400 1750
$Comp
L Telemetry-rescue:IS25LP032D-Misc-Telemetry-rescue U102
U 1 1 5CF328C7
P 9950 1400
AR Path="/5CF328C7" Ref="U102"  Part="1" 
AR Path="/5CEA3FFC/5CF328C7" Ref="U102"  Part="1" 
F 0 "U102" H 9950 1975 50  0000 C CNN
F 1 "IS25LP032D" H 9950 1884 50  0000 C CNN
F 2 "digikey-footprints:SOIC-8_W5.6mm" H 9850 1250 50  0001 C CNN
F 3 "http://www.issi.com/WW/pdf/25LP-WP032D.pdf" H 9850 1250 50  0001 C CNN
F 4 "ISSI" H 9950 1400 50  0001 C CNN "Manufacturer"
F 5 "IS25LP032D" H 9950 1400 50  0001 C CNN "MPN"
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
NoConn ~ 10350 5200
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
Text GLabel 5850 6150 0    50   Output ~ 0
UART_RX
Text GLabel 5850 6250 0    50   Input ~ 0
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
	10000 5000 10000 5150
Connection ~ 10000 5000
Wire Wire Line
	10000 5000 9900 5000
Wire Wire Line
	10000 5350 10000 5400
Wire Wire Line
	10000 5400 9950 5400
Text GLabel 9950 5400 0    50   Input ~ 0
USB_ENUMRATION
$Comp
L Device:R_Small R105
U 1 1 5E4B8124
P 10000 5250
F 0 "R105" H 10059 5296 50  0000 L CNN
F 1 "1k5" H 10059 5205 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 10000 5250 50  0001 C CNN
F 3 "~" H 10000 5250 50  0001 C CNN
	1    10000 5250
	1    0    0    -1  
$EndComp
Text GLabel 6150 2500 2    50   Input ~ 0
UART_RX
Text GLabel 6900 3000 2    50   Output ~ 0
UART_TX
Text GLabel 9450 1750 0    50   Input ~ 0
FLASH_WP
Text GLabel 6150 3800 2    50   Output ~ 0
FLASH_WP
$Comp
L Device:R R104
U 1 1 5E4C8C09
P 7100 2150
F 0 "R104" V 7000 2150 50  0000 C CNN
F 1 "1k5" V 7100 2150 50  0000 C CNN
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
F 1 "1k5" V 7800 2400 50  0000 C CNN
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
P 6150 6150
F 0 "R107" V 6050 6150 50  0000 C CNN
F 1 "50" V 6150 6150 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 6080 6150 50  0001 C CNN
F 3 "~" H 6150 6150 50  0001 C CNN
	1    6150 6150
	0    1    1    0   
$EndComp
Wire Wire Line
	6000 6150 5850 6150
Wire Wire Line
	6300 6150 6500 6150
$Comp
L Device:R R108
U 1 1 5E517A65
P 6650 3000
F 0 "R108" V 6550 3000 50  0000 C CNN
F 1 "50" V 6650 3000 50  0000 C CNN
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
	5850 6250 6500 6250
Wire Wire Line
	4800 4050 4800 4400
Wire Wire Line
	4850 3950 4800 3950
Connection ~ 4800 3750
Wire Wire Line
	4800 3750 4800 3950
Text Notes 4700 7350 0    67   ~ 13
Changes to 1.0\n
Text GLabel 9900 5000 0    50   BiDi ~ 0
USB_D+
Text GLabel 9900 5100 0    50   BiDi ~ 0
USB_D-
Text GLabel 6400 2200 2    50   BiDi ~ 0
USB_D+
Text GLabel 6400 2100 2    50   BiDi ~ 0
USB_D-
$Comp
L Mechanical:Fiducial FID101
U 1 1 5E52C628
P 650 6900
F 0 "FID101" H 735 6946 50  0000 L CNN
F 1 "Fiducial" H 735 6855 50  0000 L CNN
F 2 "Fiducial:Fiducial_1mm_Mask2mm" H 650 6900 50  0001 C CNN
F 3 "~" H 650 6900 50  0001 C CNN
	1    650  6900
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:Fiducial FID102
U 1 1 5E52CDB3
P 1200 6900
F 0 "FID102" H 1285 6946 50  0000 L CNN
F 1 "Fiducial" H 1285 6855 50  0000 L CNN
F 2 "Fiducial:Fiducial_1mm_Mask2mm" H 1200 6900 50  0001 C CNN
F 3 "~" H 1200 6900 50  0001 C CNN
	1    1200 6900
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:Fiducial FID103
U 1 1 5E52D5D2
P 1700 6900
F 0 "FID103" H 1785 6946 50  0000 L CNN
F 1 "Fiducial" H 1785 6855 50  0000 L CNN
F 2 "Fiducial:Fiducial_1mm_Mask2mm" H 1700 6900 50  0001 C CNN
F 3 "~" H 1700 6900 50  0001 C CNN
	1    1700 6900
	1    0    0    -1  
$EndComp
Text Notes 1100 650  0    50   ~ 0
MCU Decoupling capacitors
$Comp
L power:+3V3 #PWR0115
U 1 1 5CE1DF2A
P 1350 1000
F 0 "#PWR0115" H 1350 850 50  0001 C CNN
F 1 "+3V3" H 1365 1173 50  0000 C CNN
F 2 "" H 1350 1000 50  0001 C CNN
F 3 "" H 1350 1000 50  0001 C CNN
	1    1350 1000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0119
U 1 1 5CE1DE61
P 1350 1300
F 0 "#PWR0119" H 1350 1050 50  0001 C CNN
F 1 "GND" H 1355 1127 50  0000 C CNN
F 2 "" H 1350 1300 50  0001 C CNN
F 3 "" H 1350 1300 50  0001 C CNN
	1    1350 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	1350 1250 1350 1300
Wire Wire Line
	1350 1050 1350 1000
$Comp
L Device:C_Small C103
U 1 1 5CE1CEC3
P 1350 1150
F 0 "C103" H 1442 1196 50  0000 L CNN
F 1 "100n/50V" H 1442 1105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 1350 1150 50  0001 C CNN
F 3 "~" H 1350 1150 50  0001 C CNN
	1    1350 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	750  1000 750  1050
Wire Wire Line
	750  1250 750  1300
$Comp
L power:GND #PWR0118
U 1 1 5CE1DB1B
P 750 1300
F 0 "#PWR0118" H 750 1050 50  0001 C CNN
F 1 "GND" H 755 1127 50  0000 C CNN
F 2 "" H 750 1300 50  0001 C CNN
F 3 "" H 750 1300 50  0001 C CNN
	1    750  1300
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0114
U 1 1 5CE1CF89
P 750 1000
F 0 "#PWR0114" H 750 850 50  0001 C CNN
F 1 "+3V3" H 765 1173 50  0000 C CNN
F 2 "" H 750 1000 50  0001 C CNN
F 3 "" H 750 1000 50  0001 C CNN
	1    750  1000
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C102
U 1 1 5CE1CE25
P 750 1150
F 0 "C102" H 842 1196 50  0000 L CNN
F 1 "100n/50V" H 842 1105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 750 1150 50  0001 C CNN
F 3 "~" H 750 1150 50  0001 C CNN
	1    750  1150
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0123
U 1 1 5CE67EB7
P 6100 5350
F 0 "#PWR0123" H 6100 5200 50  0001 C CNN
F 1 "VCC" H 6117 5523 50  0000 C CNN
F 2 "" H 6100 5350 50  0001 C CNN
F 3 "" H 6100 5350 50  0001 C CNN
	1    6100 5350
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0144
U 1 1 5E59175F
P 6500 5350
F 0 "#PWR0144" H 6500 5200 50  0001 C CNN
F 1 "+3V3" H 6515 5523 50  0000 C CNN
F 2 "" H 6500 5350 50  0001 C CNN
F 3 "" H 6500 5350 50  0001 C CNN
	1    6500 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 5750 6100 5650
Wire Wire Line
	6100 5750 6500 5750
Wire Wire Line
	6100 5450 6100 5350
Wire Wire Line
	6500 5350 6500 5450
Wire Wire Line
	6500 5650 6500 5750
$Comp
L Connector_Generic:Conn_01x04 J106
U 1 1 5CE6386B
P 6700 6150
F 0 "J106" H 6779 6142 50  0000 L CNN
F 1 "UART_EXP" H 6779 6051 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x02_P2.54mm_Vertical" H 6700 6150 50  0001 C CNN
F 3 "~" H 6700 6150 50  0001 C CNN
F 4 "-prod" H 6700 6150 50  0001 C CNN "Config"
	1    6700 6150
	1    0    0    -1  
$EndComp
Connection ~ 6500 5750
$Comp
L Device:Jumper_NC_Small JP103
U 1 1 5E5F175F
P 6500 5550
F 0 "JP103" V 6550 5850 50  0000 R CNN
F 1 "Jumper_NC_Small" V 6455 5503 50  0001 R CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 6500 5550 50  0001 C CNN
F 3 "~" H 6500 5550 50  0001 C CNN
F 4 "dnp" H 6500 5550 50  0001 C CNN "Config"
	1    6500 5550
	0    -1   -1   0   
$EndComp
$Comp
L Device:Jumper_NC_Small JP102
U 1 1 5E5F3931
P 6100 5550
F 0 "JP102" V 6150 5850 50  0000 R CNN
F 1 "Jumper_NC_Small" V 6050 6300 50  0001 R CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 6100 5550 50  0001 C CNN
F 3 "~" H 6100 5550 50  0001 C CNN
F 4 "dnp" H 6100 5550 50  0001 C CNN "Config"
	1    6100 5550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6500 5750 6500 6050
Wire Wire Line
	6150 4600 6050 4600
Text GLabel 6200 1800 2    50   Output ~ 0
FLASH_HOLD
Text GLabel 9450 1650 0    50   Input ~ 0
FLASH_HOLD
Wire Wire Line
	9450 1650 9500 1650
Text GLabel 6150 4400 2    50   Output ~ 0
FLASH_CS
Text GLabel 9450 1200 0    50   Input ~ 0
FLASH_CS
Text GLabel 6200 1500 2    50   Output ~ 0
FLASH_SCK
Text GLabel 6200 1700 2    50   Output ~ 0
FLASH_MOSI
Text GLabel 6200 1600 2    50   Input ~ 0
FLASH_MISO
Text GLabel 9450 1300 0    50   Output ~ 0
FLASH_MISO
Text GLabel 9450 1500 0    50   Input ~ 0
FLASH_SCK
Text GLabel 9450 1400 0    50   Input ~ 0
FLASH_MOSI
Wire Wire Line
	9450 1200 9500 1200
Wire Wire Line
	9450 1300 9500 1300
Wire Wire Line
	9450 1400 9500 1400
Wire Wire Line
	9500 1500 9450 1500
Wire Wire Line
	6050 1500 6200 1500
Wire Wire Line
	6200 1600 6050 1600
Wire Wire Line
	6050 1700 6200 1700
Wire Wire Line
	6200 1800 6050 1800
NoConn ~ 6050 4500
Wire Wire Line
	6150 4400 6050 4400
Connection ~ 4600 1200
Wire Wire Line
	4600 1200 3200 1200
Connection ~ 3350 1100
Wire Wire Line
	3200 1100 3350 1100
$Comp
L Connector_Generic:Conn_01x02 J102
U 1 1 5CE208B4
P 3000 1200
F 0 "J102" H 2920 875 50  0000 C CNN
F 1 "BOOT0" H 2920 966 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch1.27mm" H 3000 1200 50  0001 C CNN
F 3 "~" H 3000 1200 50  0001 C CNN
F 4 "-prod" H 3000 1200 50  0001 C CNN "Config"
	1    3000 1200
	-1   0    0    1   
$EndComp
Wire Wire Line
	3350 1100 3350 950 
Wire Wire Line
	3400 1100 3350 1100
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
L Device:Jumper_NC_Small JP104
U 1 1 5F08C822
P 8900 3400
F 0 "JP104" V 8946 3353 50  0000 R CNN
F 1 "Jumper_NC_Small" V 8855 3353 50  0000 R CNN
F 2 "Connector_PinHeader_1.27mm:PinHeader_1x02_P1.27mm_Vertical" H 8900 3400 50  0001 C CNN
F 3 "~" H 8900 3400 50  0001 C CNN
F 4 "-prod" H 8900 3400 50  0001 C CNN "Config"
	1    8900 3400
	0    -1   -1   0   
$EndComp
$Comp
L power:VCC #PWR0145
U 1 1 5F08D4E4
P 8900 3200
F 0 "#PWR0145" H 8900 3050 50  0001 C CNN
F 1 "VCC" H 8917 3373 50  0000 C CNN
F 2 "" H 8900 3200 50  0001 C CNN
F 3 "" H 8900 3200 50  0001 C CNN
	1    8900 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	8900 3200 8900 3300
Wire Wire Line
	8900 3500 8900 3900
Connection ~ 8900 3900
Text Notes 4700 7700 0    50   ~ 0
Added 1k5 enumeration resistor\nRemoved 2 servo channels\nChanged UART Configurations for SBUS and S.port\nChanged current sensor PCB decal pinout to correct one
$EndSCHEMATC
