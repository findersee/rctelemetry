EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 4
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
L power:+BATT #PWR0401
U 1 1 5CEA5103
P 2700 900
F 0 "#PWR0401" H 2700 750 50  0001 C CNN
F 1 "+BATT" H 2715 1073 50  0000 C CNN
F 2 "" H 2700 900 50  0001 C CNN
F 3 "" H 2700 900 50  0001 C CNN
	1    2700 900 
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J404
U 1 1 5CEA51F6
P 2900 1250
F 0 "J404" H 2980 1242 50  0000 L CNN
F 1 "Conn_01x02" H 2980 1151 50  0000 L CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_PT-1,5-2-5.0-H_1x02_P5.00mm_Horizontal" H 2900 1250 50  0001 C CNN
F 3 "~" H 2900 1250 50  0001 C CNN
	1    2900 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 1350 2700 1600
$Comp
L power:GND #PWR0408
U 1 1 5CEA5274
P 2700 2250
F 0 "#PWR0408" H 2700 2000 50  0001 C CNN
F 1 "GND" H 2705 2077 50  0000 C CNN
F 2 "" H 2700 2250 50  0001 C CNN
F 3 "" H 2700 2250 50  0001 C CNN
	1    2700 2250
	1    0    0    -1  
$EndComp
Text GLabel 1050 1800 0    50   Input ~ 0
HC_PWM1
$Comp
L power:+BATT #PWR0412
U 1 1 5CEA77C5
P 2700 2750
F 0 "#PWR0412" H 2700 2600 50  0001 C CNN
F 1 "+BATT" H 2715 2923 50  0000 C CNN
F 2 "" H 2700 2750 50  0001 C CNN
F 3 "" H 2700 2750 50  0001 C CNN
	1    2700 2750
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J408
U 1 1 5CEA77CB
P 2900 3100
F 0 "J408" H 2980 3092 50  0000 L CNN
F 1 "Conn_01x02" H 2980 3001 50  0000 L CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_PT-1,5-2-5.0-H_1x02_P5.00mm_Horizontal" H 2900 3100 50  0001 C CNN
F 3 "~" H 2900 3100 50  0001 C CNN
	1    2900 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 3200 2700 3450
$Comp
L power:GND #PWR0416
U 1 1 5CEA77D3
P 2700 4100
F 0 "#PWR0416" H 2700 3850 50  0001 C CNN
F 1 "GND" H 2705 3927 50  0000 C CNN
F 2 "" H 2700 4100 50  0001 C CNN
F 3 "" H 2700 4100 50  0001 C CNN
	1    2700 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 4100 2700 4050
Connection ~ 2700 4050
Wire Wire Line
	2700 4050 2700 3850
Text GLabel 1050 3650 0    50   Input ~ 0
HC_PWM2
Wire Wire Line
	2700 2750 2700 2950
Wire Wire Line
	2700 900  2700 1000
$Comp
L power:VCC #PWR0417
U 1 1 5CEA7FEA
P 1550 5800
F 0 "#PWR0417" H 1550 5650 50  0001 C CNN
F 1 "VCC" H 1567 5973 50  0000 C CNN
F 2 "" H 1550 5800 50  0001 C CNN
F 3 "" H 1550 5800 50  0001 C CNN
	1    1550 5800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0420
U 1 1 5CEA8060
P 2200 7000
F 0 "#PWR0420" H 2200 6750 50  0001 C CNN
F 1 "GND" H 2205 6827 50  0000 C CNN
F 2 "" H 2200 7000 50  0001 C CNN
F 3 "" H 2200 7000 50  0001 C CNN
	1    2200 7000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0419
U 1 1 5CEA8080
P 1500 7000
F 0 "#PWR0419" H 1500 6750 50  0001 C CNN
F 1 "GND" H 1505 6827 50  0000 C CNN
F 2 "" H 1500 7000 50  0001 C CNN
F 3 "" H 1500 7000 50  0001 C CNN
	1    1500 7000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2100 6500 2150 6500
Wire Wire Line
	2150 6500 2150 6100
Wire Wire Line
	1600 6500 1550 6500
Wire Wire Line
	1550 6500 1550 6100
Wire Wire Line
	1600 6600 1500 6600
Wire Wire Line
	2100 6600 2200 6600
Wire Wire Line
	1600 6400 1250 6400
Wire Wire Line
	2100 6400 2400 6400
Text GLabel 2400 6400 2    50   Input ~ 0
SERVO_2
Text GLabel 1250 6400 0    50   Input ~ 0
SERVO_1
$Comp
L dk_Transistors-FETs-MOSFETs-Single:IRLML6344TRPBF Q401
U 1 1 5CEB6A73
P 5500 1700
F 0 "Q401" H 5607 1753 60  0000 L CNN
F 1 "IRLML6344TRPBF" H 5607 1647 60  0000 L CNN
F 2 "digikey-footprints:SOT-23-3" H 5700 1900 60  0001 L CNN
F 3 "https://www.infineon.com/dgdl/irlml6344pbf.pdf?fileId=5546d462533600a4015356689c44262c" H 5700 2000 60  0001 L CNN
F 4 "IRLML6344TRPBFCT-ND" H 5700 2100 60  0001 L CNN "Digi-Key_PN"
F 5 "IRLML6344TRPBF" H 5700 2200 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 5700 2300 60  0001 L CNN "Category"
F 7 "Transistors - FETs, MOSFETs - Single" H 5700 2400 60  0001 L CNN "Family"
F 8 "https://www.infineon.com/dgdl/irlml6344pbf.pdf?fileId=5546d462533600a4015356689c44262c" H 5700 2500 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/infineon-technologies/IRLML6344TRPBF/IRLML6344TRPBFCT-ND/2538168" H 5700 2600 60  0001 L CNN "DK_Detail_Page"
F 10 "MOSFET N-CH 30V 5A SOT23" H 5700 2700 60  0001 L CNN "Description"
F 11 "Infineon Technologies" H 5700 2800 60  0001 L CNN "Manufacturer"
F 12 "Active" H 5700 2900 60  0001 L CNN "Status"
	1    5500 1700
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0402
U 1 1 5CEB6CAA
P 5500 950
F 0 "#PWR0402" H 5500 800 50  0001 C CNN
F 1 "VCC" H 5517 1123 50  0000 C CNN
F 2 "" H 5500 950 50  0001 C CNN
F 3 "" H 5500 950 50  0001 C CNN
	1    5500 950 
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J401
U 1 1 5CEB6D65
P 5700 1200
F 0 "J401" H 5780 1192 50  0000 L CNN
F 1 "Conn_01x02" H 5780 1101 50  0000 L CNN
F 2 "Connector_Molex:Molex_KK-254_AE-6410-02A_1x02_P2.54mm_Vertical" H 5700 1200 50  0001 C CNN
F 3 "~" H 5700 1200 50  0001 C CNN
	1    5700 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 1300 5500 1500
Wire Wire Line
	5500 950  5500 1200
$Comp
L power:GND #PWR0405
U 1 1 5CEB7F08
P 5500 2150
F 0 "#PWR0405" H 5500 1900 50  0001 C CNN
F 1 "GND" H 5505 1977 50  0000 C CNN
F 2 "" H 5500 2150 50  0001 C CNN
F 3 "" H 5500 2150 50  0001 C CNN
	1    5500 2150
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R405
U 1 1 5CEB7F37
P 5150 2000
F 0 "R405" H 5091 1954 50  0000 R CNN
F 1 "10k" H 5091 2045 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 5150 2000 50  0001 C CNN
F 3 "~" H 5150 2000 50  0001 C CNN
	1    5150 2000
	1    0    0    1   
$EndComp
Wire Wire Line
	5500 2150 5500 2100
Wire Wire Line
	5500 2100 5150 2100
Wire Wire Line
	5500 2100 5500 1900
Connection ~ 5500 2100
$Comp
L Device:R_Small R402
U 1 1 5CEBF122
P 5000 1800
F 0 "R402" V 4804 1800 50  0000 C CNN
F 1 "10" V 4895 1800 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 5000 1800 50  0001 C CNN
F 3 "~" H 5000 1800 50  0001 C CNN
	1    5000 1800
	0    1    1    0   
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J405
U 1 1 5CEC27F6
P 9150 1700
F 0 "J405" H 9230 1692 50  0000 L CNN
F 1 "Conn_01x02" H 9230 1601 50  0000 L CNN
F 2 "Connector_Molex:Molex_KK-254_AE-6410-02A_1x02_P2.54mm_Vertical" H 9150 1700 50  0001 C CNN
F 3 "~" H 9150 1700 50  0001 C CNN
	1    9150 1700
	-1   0    0    1   
$EndComp
$Comp
L dk_Transistors-FETs-MOSFETs-Single:IRLML6344TRPBF Q402
U 1 1 5CEC3A82
P 7600 1700
F 0 "Q402" H 7707 1753 60  0000 L CNN
F 1 "IRLML6344TRPBF" H 7707 1647 60  0000 L CNN
F 2 "digikey-footprints:SOT-23-3" H 7800 1900 60  0001 L CNN
F 3 "https://www.infineon.com/dgdl/irlml6344pbf.pdf?fileId=5546d462533600a4015356689c44262c" H 7800 2000 60  0001 L CNN
F 4 "IRLML6344TRPBFCT-ND" H 7800 2100 60  0001 L CNN "Digi-Key_PN"
F 5 "IRLML6344TRPBF" H 7800 2200 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 7800 2300 60  0001 L CNN "Category"
F 7 "Transistors - FETs, MOSFETs - Single" H 7800 2400 60  0001 L CNN "Family"
F 8 "https://www.infineon.com/dgdl/irlml6344pbf.pdf?fileId=5546d462533600a4015356689c44262c" H 7800 2500 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/infineon-technologies/IRLML6344TRPBF/IRLML6344TRPBFCT-ND/2538168" H 7800 2600 60  0001 L CNN "DK_Detail_Page"
F 10 "MOSFET N-CH 30V 5A SOT23" H 7800 2700 60  0001 L CNN "Description"
F 11 "Infineon Technologies" H 7800 2800 60  0001 L CNN "Manufacturer"
F 12 "Active" H 7800 2900 60  0001 L CNN "Status"
	1    7600 1700
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0403
U 1 1 5CEC3A89
P 7600 950
F 0 "#PWR0403" H 7600 800 50  0001 C CNN
F 1 "VCC" H 7617 1123 50  0000 C CNN
F 2 "" H 7600 950 50  0001 C CNN
F 3 "" H 7600 950 50  0001 C CNN
	1    7600 950 
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J402
U 1 1 5CEC3A8F
P 7800 1200
F 0 "J402" H 7880 1192 50  0000 L CNN
F 1 "Conn_01x02" H 7880 1101 50  0000 L CNN
F 2 "Connector_Molex:Molex_KK-254_AE-6410-02A_1x02_P2.54mm_Vertical" H 7800 1200 50  0001 C CNN
F 3 "~" H 7800 1200 50  0001 C CNN
	1    7800 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	7600 1300 7600 1500
Wire Wire Line
	7600 950  7600 1200
$Comp
L power:GND #PWR0406
U 1 1 5CEC3A98
P 7600 2150
F 0 "#PWR0406" H 7600 1900 50  0001 C CNN
F 1 "GND" H 7605 1977 50  0000 C CNN
F 2 "" H 7600 2150 50  0001 C CNN
F 3 "" H 7600 2150 50  0001 C CNN
	1    7600 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	7600 2150 7600 2100
Wire Wire Line
	7600 2100 7600 1900
Connection ~ 7600 2100
$Comp
L Device:R_Small R403
U 1 1 5CEC3AAD
P 7100 1800
F 0 "R403" V 6904 1800 50  0000 C CNN
F 1 "10" V 6995 1800 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 7100 1800 50  0001 C CNN
F 3 "~" H 7100 1800 50  0001 C CNN
	1    7100 1800
	0    1    1    0   
$EndComp
$Comp
L dk_Transistors-FETs-MOSFETs-Single:IRLML6344TRPBF Q406
U 1 1 5CEC3ABF
P 5500 3550
F 0 "Q406" H 5607 3603 60  0000 L CNN
F 1 "IRLML6344TRPBF" H 5607 3497 60  0000 L CNN
F 2 "digikey-footprints:SOT-23-3" H 5700 3750 60  0001 L CNN
F 3 "https://www.infineon.com/dgdl/irlml6344pbf.pdf?fileId=5546d462533600a4015356689c44262c" H 5700 3850 60  0001 L CNN
F 4 "IRLML6344TRPBFCT-ND" H 5700 3950 60  0001 L CNN "Digi-Key_PN"
F 5 "IRLML6344TRPBF" H 5700 4050 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 5700 4150 60  0001 L CNN "Category"
F 7 "Transistors - FETs, MOSFETs - Single" H 5700 4250 60  0001 L CNN "Family"
F 8 "https://www.infineon.com/dgdl/irlml6344pbf.pdf?fileId=5546d462533600a4015356689c44262c" H 5700 4350 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/infineon-technologies/IRLML6344TRPBF/IRLML6344TRPBFCT-ND/2538168" H 5700 4450 60  0001 L CNN "DK_Detail_Page"
F 10 "MOSFET N-CH 30V 5A SOT23" H 5700 4550 60  0001 L CNN "Description"
F 11 "Infineon Technologies" H 5700 4650 60  0001 L CNN "Manufacturer"
F 12 "Active" H 5700 4750 60  0001 L CNN "Status"
	1    5500 3550
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0410
U 1 1 5CEC3AC6
P 5500 2800
F 0 "#PWR0410" H 5500 2650 50  0001 C CNN
F 1 "VCC" H 5517 2973 50  0000 C CNN
F 2 "" H 5500 2800 50  0001 C CNN
F 3 "" H 5500 2800 50  0001 C CNN
	1    5500 2800
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J406
U 1 1 5CEC3ACC
P 5700 3050
F 0 "J406" H 5780 3042 50  0000 L CNN
F 1 "Conn_01x02" H 5780 2951 50  0000 L CNN
F 2 "Connector_Molex:Molex_KK-254_AE-6410-02A_1x02_P2.54mm_Vertical" H 5700 3050 50  0001 C CNN
F 3 "~" H 5700 3050 50  0001 C CNN
	1    5700 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 3150 5500 3350
Wire Wire Line
	5500 2800 5500 3050
$Comp
L power:GND #PWR0414
U 1 1 5CEC3AD5
P 5500 4000
F 0 "#PWR0414" H 5500 3750 50  0001 C CNN
F 1 "GND" H 5505 3827 50  0000 C CNN
F 2 "" H 5500 4000 50  0001 C CNN
F 3 "" H 5500 4000 50  0001 C CNN
	1    5500 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 4000 5500 3950
Wire Wire Line
	5500 3950 5500 3750
Connection ~ 5500 3950
Text GLabel 10700 1700 2    50   Output ~ 0
IN1
$Comp
L power:VCC #PWR0404
U 1 1 5CEFB1E7
P 7600 2800
F 0 "#PWR0404" H 7600 2650 50  0001 C CNN
F 1 "VCC" H 7617 2973 50  0000 C CNN
F 2 "" H 7600 2800 50  0001 C CNN
F 3 "" H 7600 2800 50  0001 C CNN
	1    7600 2800
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J403
U 1 1 5CEFB1ED
P 7800 3050
F 0 "J403" H 7880 3042 50  0000 L CNN
F 1 "Conn_01x02" H 7880 2951 50  0000 L CNN
F 2 "Connector_Molex:Molex_KK-254_AE-6410-02A_1x02_P2.54mm_Vertical" H 7800 3050 50  0001 C CNN
F 3 "~" H 7800 3050 50  0001 C CNN
	1    7800 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	7600 3150 7600 3350
Wire Wire Line
	7600 2800 7600 3050
$Comp
L power:GND #PWR0407
U 1 1 5CEFB1F5
P 7600 4000
F 0 "#PWR0407" H 7600 3750 50  0001 C CNN
F 1 "GND" H 7605 3827 50  0000 C CNN
F 2 "" H 7600 4000 50  0001 C CNN
F 3 "" H 7600 4000 50  0001 C CNN
	1    7600 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	7600 4000 7600 3950
Wire Wire Line
	7600 3950 7600 3750
Connection ~ 7600 3950
$Comp
L Connector_Generic:Conn_01x02 J407
U 1 1 5CEFB226
P 9150 3400
F 0 "J407" H 9230 3392 50  0000 L CNN
F 1 "Conn_01x02" H 9230 3301 50  0000 L CNN
F 2 "Connector_Molex:Molex_KK-254_AE-6410-02A_1x02_P2.54mm_Vertical" H 9150 3400 50  0001 C CNN
F 3 "~" H 9150 3400 50  0001 C CNN
	1    9150 3400
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0415
U 1 1 5CEFB22E
P 10100 3850
F 0 "#PWR0415" H 10100 3600 50  0001 C CNN
F 1 "GND" H 10105 3677 50  0000 C CNN
F 2 "" H 10100 3850 50  0001 C CNN
F 3 "" H 10100 3850 50  0001 C CNN
	1    10100 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 6100 1550 6100
Connection ~ 1550 6100
Wire Wire Line
	1550 5800 1550 5850
Wire Wire Line
	1550 6050 1550 6100
$Comp
L Device:Jumper_NC_Small JP401
U 1 1 5CE95F20
P 1550 5950
F 0 "JP401" V 1596 5903 50  0000 R CNN
F 1 "Jumper_NC_Small" V 1505 5903 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 1550 5950 50  0001 C CNN
F 3 "~" H 1550 5950 50  0001 C CNN
	1    1550 5950
	0    -1   -1   0   
$EndComp
$Comp
L Telemetry-rescue:MCP1416-Driver_FET U402
U 1 1 5CEC7B81
P 1650 3650
AR Path="/5CEC7B81" Ref="U402"  Part="1" 
AR Path="/5CEA3FFC/5CEC7B81" Ref="U402"  Part="1" 
F 0 "U402" H 1750 3900 50  0000 L CNN
F 1 "MCP1416" H 1750 3400 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23-5_HandSoldering" H 1650 3250 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/20002092F.pdf" H 1450 3900 50  0001 C CNN
	1    1650 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 3650 2400 3650
Wire Wire Line
	1650 4050 1650 3950
Wire Wire Line
	1650 4050 2200 4050
Wire Wire Line
	1350 3650 1050 3650
Wire Wire Line
	1650 3350 1650 2950
Wire Wire Line
	1650 2950 2200 2950
Connection ~ 2700 2950
Wire Wire Line
	2700 2950 2700 3100
$Comp
L Telemetry-rescue:MCP1416-Driver_FET U401
U 1 1 5CED0BC8
P 1700 1800
AR Path="/5CED0BC8" Ref="U401"  Part="1" 
AR Path="/5CEA3FFC/5CED0BC8" Ref="U401"  Part="1" 
F 0 "U401" H 1800 2050 50  0000 L CNN
F 1 "MCP1416" H 1800 1550 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23-5_HandSoldering" H 1700 1400 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/20002092F.pdf" H 1500 2050 50  0001 C CNN
	1    1700 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 2000 2700 2150
Wire Wire Line
	2100 1800 2400 1800
Wire Wire Line
	1700 2100 1700 2150
Wire Wire Line
	1700 2150 2350 2150
Connection ~ 2700 2150
Wire Wire Line
	2700 2150 2700 2250
Wire Wire Line
	1700 1500 1700 1000
Wire Wire Line
	1700 1000 2350 1000
Connection ~ 2700 1000
Wire Wire Line
	2700 1000 2700 1250
Wire Wire Line
	1400 1800 1050 1800
$Comp
L Device:C_Small C401
U 1 1 5CEDA6FC
P 2350 1250
F 0 "C401" H 2259 1204 50  0000 R CNN
F 1 "1u" H 2259 1295 50  0000 R CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2350 1250 50  0001 C CNN
F 3 "~" H 2350 1250 50  0001 C CNN
	1    2350 1250
	1    0    0    1   
$EndComp
$Comp
L Device:C_Small C402
U 1 1 5CEDA76C
P 2200 3200
F 0 "C402" H 2109 3154 50  0000 R CNN
F 1 "1u" H 2109 3245 50  0000 R CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2200 3200 50  0001 C CNN
F 3 "~" H 2200 3200 50  0001 C CNN
	1    2200 3200
	1    0    0    1   
$EndComp
Wire Wire Line
	2200 3100 2200 2950
Connection ~ 2200 2950
Wire Wire Line
	2200 2950 2700 2950
Connection ~ 2200 4050
Wire Wire Line
	2200 4050 2700 4050
Wire Wire Line
	2200 3300 2200 4050
Wire Wire Line
	2350 1150 2350 1000
Connection ~ 2350 1000
Wire Wire Line
	2350 1000 2700 1000
Wire Wire Line
	2350 1350 2350 2150
Connection ~ 2350 2150
Wire Wire Line
	2350 2150 2700 2150
$Comp
L Transistor_FET:CSD17306Q5A Q408
U 1 1 5CEF5B9F
P 2600 3650
F 0 "Q408" H 2806 3696 50  0000 L CNN
F 1 "CSD17306Q5A" H 2806 3605 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:TDSON-8-1_HandSoldering" H 2800 3575 50  0001 L CIN
F 3 "http://www.ti.com/lit/gpn/csd17306q5a" V 2600 3650 50  0001 L CNN
	1    2600 3650
	1    0    0    -1  
$EndComp
$Comp
L Transistor_FET:CSD17306Q5A Q404
U 1 1 5CEF5CB0
P 2600 1800
F 0 "Q404" H 2806 1846 50  0000 L CNN
F 1 "CSD17306Q5A" H 2806 1755 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:TDSON-8-1_HandSoldering" H 2800 1725 50  0001 L CIN
F 3 "http://www.ti.com/lit/gpn/csd17306q5a" V 2600 1800 50  0001 L CNN
	1    2600 1800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0423
U 1 1 5CEBDE01
P 3700 6450
F 0 "#PWR0423" H 3700 6200 50  0001 C CNN
F 1 "GND" H 3705 6277 50  0000 C CNN
F 2 "" H 3700 6450 50  0001 C CNN
F 3 "" H 3700 6450 50  0001 C CNN
	1    3700 6450
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R408
U 1 1 5CEBDEBF
P 4550 7450
F 0 "R408" V 4354 7450 50  0000 C CNN
F 1 "10k" V 4445 7450 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4550 7450 50  0001 C CNN
F 3 "~" H 4550 7450 50  0001 C CNN
	1    4550 7450
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R401
U 1 1 5CEBE092
P 4850 6050
F 0 "R401" V 4654 6050 50  0000 C CNN
F 1 "10k" V 4745 6050 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4850 6050 50  0001 C CNN
F 3 "~" H 4850 6050 50  0001 C CNN
	1    4850 6050
	0    1    1    0   
$EndComp
Wire Wire Line
	4500 6150 4550 6150
Wire Wire Line
	4550 6150 4550 6250
Wire Wire Line
	3700 6400 3700 6450
Wire Wire Line
	3700 5750 3700 5800
Wire Wire Line
	4500 6050 4700 6050
$Comp
L power:GND #PWR0425
U 1 1 5CEF1CA9
P 4850 7500
F 0 "#PWR0425" H 4850 7250 50  0001 C CNN
F 1 "GND" H 4855 7327 50  0000 C CNN
F 2 "" H 4850 7500 50  0001 C CNN
F 3 "" H 4850 7500 50  0001 C CNN
	1    4850 7500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 7450 4850 7500
Connection ~ 4850 7450
Wire Wire Line
	4850 7450 5000 7450
Wire Wire Line
	5400 7150 5600 7150
Wire Wire Line
	5600 7150 5600 6350
$Comp
L Connector_Generic:Conn_01x02 J?
U 1 1 5CF13188
P 6500 7250
AR Path="/5CF13188" Ref="J?"  Part="1" 
AR Path="/5CEA3FFC/5CF13188" Ref="J410"  Part="1" 
F 0 "J410" H 6420 6925 50  0000 C CNN
F 1 "AUDIO" H 6420 7016 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 6500 7250 50  0001 C CNN
F 3 "~" H 6500 7250 50  0001 C CNN
	1    6500 7250
	1    0    0    1   
$EndComp
Text GLabel 4300 7050 0    50   Input ~ 0
DAC_OUT
$Comp
L Device:C_Small C404
U 1 1 5CF2496D
P 6050 7150
F 0 "C404" V 5821 7150 50  0000 C CNN
F 1 "10u" V 5912 7150 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 6050 7150 50  0001 C CNN
F 3 "~" H 6050 7150 50  0001 C CNN
	1    6050 7150
	0    1    1    0   
$EndComp
Wire Wire Line
	6150 7150 6300 7150
Wire Wire Line
	5950 7150 5600 7150
Connection ~ 5600 7150
Wire Wire Line
	6300 7250 6200 7250
Wire Wire Line
	6200 7250 6200 7350
$Comp
L power:GND #PWR0424
U 1 1 5CF35E59
P 6200 7350
F 0 "#PWR0424" H 6200 7100 50  0001 C CNN
F 1 "GND" H 6205 7177 50  0000 C CNN
F 2 "" H 6200 7350 50  0001 C CNN
F 3 "" H 6200 7350 50  0001 C CNN
	1    6200 7350
	1    0    0    -1  
$EndComp
$Comp
L power:+5VA #PWR0421
U 1 1 5CF49340
P 5000 6650
F 0 "#PWR0421" H 5000 6500 50  0001 C CNN
F 1 "+5VA" H 5015 6823 50  0000 C CNN
F 2 "" H 5000 6650 50  0001 C CNN
F 3 "" H 5000 6650 50  0001 C CNN
	1    5000 6650
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C403
U 1 1 5CF494E5
P 5200 6750
F 0 "C403" V 4971 6750 50  0000 C CNN
F 1 "100n" V 5062 6750 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 5200 6750 50  0001 C CNN
F 3 "~" H 5200 6750 50  0001 C CNN
	1    5200 6750
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0422
U 1 1 5CF495FB
P 5400 6850
F 0 "#PWR0422" H 5400 6600 50  0001 C CNN
F 1 "GND" H 5405 6677 50  0000 C CNN
F 2 "" H 5400 6850 50  0001 C CNN
F 3 "" H 5400 6850 50  0001 C CNN
	1    5400 6850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 6850 5400 6750
Wire Wire Line
	5400 6750 5300 6750
Wire Wire Line
	4950 6050 5600 6050
Wire Wire Line
	5100 6750 5000 6750
Wire Wire Line
	5000 6750 5000 6650
Wire Wire Line
	5000 6750 5000 6850
Connection ~ 5000 6750
Text GLabel 3600 6150 0    50   Input ~ 0
AMP_DIN
Text GLabel 3600 6050 0    50   Input ~ 0
AMP_CS
Wire Wire Line
	3700 6050 3600 6050
Wire Wire Line
	3600 6150 3700 6150
Wire Wire Line
	4300 7050 4800 7050
Wire Wire Line
	4650 7450 4850 7450
Wire Wire Line
	4550 7150 4350 7150
Wire Wire Line
	4350 7150 4350 7450
Wire Wire Line
	4350 7450 4450 7450
Connection ~ 4550 7150
Wire Wire Line
	4550 7150 4700 7150
$Comp
L Device:C_Small C405
U 1 1 5CFB53EC
P 5400 6350
F 0 "C405" V 5171 6350 50  0000 C CNN
F 1 "100n" V 5262 6350 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 5400 6350 50  0001 C CNN
F 3 "~" H 5400 6350 50  0001 C CNN
	1    5400 6350
	0    1    1    0   
$EndComp
Wire Wire Line
	5500 6350 5600 6350
Connection ~ 5600 6350
Wire Wire Line
	5600 6350 5600 6050
Wire Wire Line
	5300 6350 4700 6350
Connection ~ 4550 6350
Wire Wire Line
	4550 6350 4550 7150
$Comp
L Device:C_Small C406
U 1 1 5CFEB336
P 3400 5800
F 0 "C406" V 3171 5800 50  0000 C CNN
F 1 "100n" V 3262 5800 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 3400 5800 50  0001 C CNN
F 3 "~" H 3400 5800 50  0001 C CNN
	1    3400 5800
	0    1    1    0   
$EndComp
Wire Wire Line
	3700 5800 3500 5800
Connection ~ 3700 5800
$Comp
L power:GND #PWR0426
U 1 1 5CFF04E8
P 3100 5850
F 0 "#PWR0426" H 3100 5600 50  0001 C CNN
F 1 "GND" H 3105 5677 50  0000 C CNN
F 2 "" H 3100 5850 50  0001 C CNN
F 3 "" H 3100 5850 50  0001 C CNN
	1    3100 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 5800 3100 5800
Wire Wire Line
	3100 5800 3100 5850
Wire Notes Line
	6700 5400 6700 7750
Wire Notes Line
	3000 7750 3000 5400
Text Notes 3250 5500 0    50   ~ 0
DAC AMPLIFIER
Wire Notes Line
	4350 4500 4350 650 
Wire Notes Line
	3650 650  3650 4500
Wire Notes Line
	3650 4500 600  4500
Wire Notes Line
	600  4500 600  650 
Wire Notes Line
	600  650  3650 650 
Wire Notes Line
	8600 650  8600 4500
Wire Notes Line
	4350 650  11000 650 
Wire Notes Line
	4350 4500 11000 4500
Text Notes 650  750  0    50   ~ 0
HIGH CURRENT PWM OUTPUTS
Text Notes 4400 750  0    50   ~ 0
PWM OUTPUTS
Text Notes 6700 750  0    50   ~ 0
ON/OFF OUTPUTS
Wire Notes Line
	550  5400 550  7750
Wire Notes Line
	550  5400 6700 5400
Wire Notes Line
	550  7750 6700 7750
Text Notes 600  5500 0    50   ~ 0
SERVO OUTPUTS
$Comp
L Amplifier_Operational:MCP6001-OT U404
U 1 1 5CEC9F24
P 5100 7150
F 0 "U404" H 5100 7300 50  0000 L CNN
F 1 "MCP6001-OT" H 5100 7000 50  0001 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23-5_HandSoldering" H 5000 6950 50  0001 L CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/21733j.pdf" H 5100 7350 50  0001 C CNN
	1    5100 7150
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R412
U 1 1 5CF71EBC
P 4700 6200
F 0 "R412" H 4759 6246 50  0000 L CNN
F 1 "0R" H 4759 6155 50  0000 L CNN
F 2 "Resistors_SMD:R_0402_NoSilk" H 4700 6200 50  0001 C CNN
F 3 "~" H 4700 6200 50  0001 C CNN
	1    4700 6200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 7250 4700 7250
Wire Wire Line
	4700 7250 4700 7150
Wire Wire Line
	4700 6300 4700 6350
Connection ~ 4700 6350
Wire Wire Line
	4700 6350 4550 6350
Wire Wire Line
	4700 6100 4700 6050
Connection ~ 4700 6050
Wire Wire Line
	4700 6050 4750 6050
$Comp
L Telemetry-rescue:AD5160BRJZ10-R2-Misc U403
U 1 1 5CEF134B
P 4100 6100
F 0 "U403" H 4100 6433 50  0000 C CNN
F 1 "AD5160BRJZ10-R2" H 4100 6500 50  0001 C CNN
F 2 "digikey-footprints:SOT-23-8" H 3900 6100 50  0001 C CNN
F 3 "https://www.analog.com/media/en/technical-documentation/data-sheets/AD5160.pdf" H 3900 6100 50  0001 C CNN
	1    4100 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 5800 3700 5900
Wire Wire Line
	4500 6250 4550 6250
Connection ~ 4550 6250
Wire Wire Line
	4550 6250 4550 6350
Text GLabel 3600 6250 0    50   Input ~ 0
AMP_CLK
Wire Wire Line
	3700 6250 3600 6250
$Comp
L power:VCC #PWR0128
U 1 1 5CF53AF2
P 3700 5750
F 0 "#PWR0128" H 3700 5600 50  0001 C CNN
F 1 "VCC" H 3717 5923 50  0000 C CNN
F 2 "" H 3700 5750 50  0001 C CNN
F 3 "" H 3700 5750 50  0001 C CNN
	1    3700 5750
	1    0    0    -1  
$EndComp
$Comp
L dk_Optoisolators-Logic-Output:TLP2361_TPL_E U405
U 1 1 5D10DD0E
P 10100 1700
F 0 "U405" H 10250 1900 60  0000 L CNN
F 1 "TLP2361_TPL_E" H 10250 1500 60  0000 L CNN
F 2 "digikey-footprints:SOIC-6-5_W4.55mm" H 10300 1900 60  0001 L CNN
F 3 "https://toshiba.semicon-storage.com/info/docget.jsp?did=14229&prodName=TLP2361" H 10300 2000 60  0001 L CNN
F 4 "TLP2361(TPLECT-ND" H 10300 2100 60  0001 L CNN "Digi-Key_PN"
F 5 "TLP2361(TPL,E" H 10300 2200 60  0001 L CNN "MPN"
F 6 "Isolators" H 10300 2300 60  0001 L CNN "Category"
F 7 "Optoisolators - Logic Output" H 10300 2400 60  0001 L CNN "Family"
F 8 "https://toshiba.semicon-storage.com/info/docget.jsp?did=14229&prodName=TLP2361" H 10300 2500 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/toshiba-semiconductor-and-storage/TLP2361(TPL,E/TLP2361(TPLECT-ND/5189799" H 10300 2600 60  0001 L CNN "DK_Detail_Page"
F 10 "OPTOISO 3.75KV PSH PULL SO6-5" H 10300 2700 60  0001 L CNN "Description"
F 11 "Toshiba Semiconductor and Storage" H 10300 2800 60  0001 L CNN "Manufacturer"
F 12 "Active" H 10300 2900 60  0001 L CNN "Status"
	1    10100 1700
	1    0    0    -1  
$EndComp
Text GLabel 10700 3400 2    50   Output ~ 0
IN2
$Comp
L dk_Transistors-FETs-MOSFETs-Single:IRLML6344TRPBF Q403
U 1 1 5CEFB1E1
P 7600 3550
F 0 "Q403" H 7707 3603 60  0000 L CNN
F 1 "IRLML6344TRPBF" H 7707 3497 60  0000 L CNN
F 2 "digikey-footprints:SOT-23-3" H 7800 3750 60  0001 L CNN
F 3 "https://www.infineon.com/dgdl/irlml6344pbf.pdf?fileId=5546d462533600a4015356689c44262c" H 7800 3850 60  0001 L CNN
F 4 "IRLML6344TRPBFCT-ND" H 7800 3950 60  0001 L CNN "Digi-Key_PN"
F 5 "IRLML6344TRPBF" H 7800 4050 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 7800 4150 60  0001 L CNN "Category"
F 7 "Transistors - FETs, MOSFETs - Single" H 7800 4250 60  0001 L CNN "Family"
F 8 "https://www.infineon.com/dgdl/irlml6344pbf.pdf?fileId=5546d462533600a4015356689c44262c" H 7800 4350 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/infineon-technologies/IRLML6344TRPBF/IRLML6344TRPBFCT-ND/2538168" H 7800 4450 60  0001 L CNN "DK_Detail_Page"
F 10 "MOSFET N-CH 30V 5A SOT23" H 7800 4550 60  0001 L CNN "Description"
F 11 "Infineon Technologies" H 7800 4650 60  0001 L CNN "Manufacturer"
F 12 "Active" H 7800 4750 60  0001 L CNN "Status"
	1    7600 3550
	1    0    0    -1  
$EndComp
$Comp
L dk_Optoisolators-Logic-Output:TLP2361_TPL_E U406
U 1 1 5D12E921
P 10100 3400
F 0 "U406" H 10250 3600 60  0000 L CNN
F 1 "TLP2361_TPL_E" H 10250 3200 60  0000 L CNN
F 2 "digikey-footprints:SOIC-6-5_W4.55mm" H 10300 3600 60  0001 L CNN
F 3 "https://toshiba.semicon-storage.com/info/docget.jsp?did=14229&prodName=TLP2361" H 10300 3700 60  0001 L CNN
F 4 "TLP2361(TPLECT-ND" H 10300 3800 60  0001 L CNN "Digi-Key_PN"
F 5 "TLP2361(TPL,E" H 10300 3900 60  0001 L CNN "MPN"
F 6 "Isolators" H 10300 4000 60  0001 L CNN "Category"
F 7 "Optoisolators - Logic Output" H 10300 4100 60  0001 L CNN "Family"
F 8 "https://toshiba.semicon-storage.com/info/docget.jsp?did=14229&prodName=TLP2361" H 10300 4200 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/toshiba-semiconductor-and-storage/TLP2361(TPL,E/TLP2361(TPLECT-ND/5189799" H 10300 4300 60  0001 L CNN "DK_Detail_Page"
F 10 "OPTOISO 3.75KV PSH PULL SO6-5" H 10300 4400 60  0001 L CNN "Description"
F 11 "Toshiba Semiconductor and Storage" H 10300 4500 60  0001 L CNN "Manufacturer"
F 12 "Active" H 10300 4600 60  0001 L CNN "Status"
	1    10100 3400
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R411
U 1 1 5D1521BC
P 9550 3300
F 0 "R411" V 9354 3300 50  0000 C CNN
F 1 "100" V 9445 3300 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 9550 3300 50  0001 C CNN
F 3 "~" H 9550 3300 50  0001 C CNN
	1    9550 3300
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R409
U 1 1 5D1526A8
P 9550 1600
F 0 "R409" V 9354 1600 50  0000 C CNN
F 1 "100" V 9445 1600 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 9550 1600 50  0001 C CNN
F 3 "~" H 9550 1600 50  0001 C CNN
	1    9550 1600
	0    1    1    0   
$EndComp
$Comp
L power:+3V3 #PWR0131
U 1 1 5D15D547
P 10100 1000
F 0 "#PWR0131" H 10100 850 50  0001 C CNN
F 1 "+3V3" H 10115 1173 50  0000 C CNN
F 2 "" H 10100 1000 50  0001 C CNN
F 3 "" H 10100 1000 50  0001 C CNN
	1    10100 1000
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0132
U 1 1 5D15D62B
P 10100 2600
F 0 "#PWR0132" H 10100 2450 50  0001 C CNN
F 1 "+3V3" H 10115 2773 50  0000 C CNN
F 2 "" H 10100 2600 50  0001 C CNN
F 3 "" H 10100 2600 50  0001 C CNN
	1    10100 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	10100 2600 10100 2800
Wire Wire Line
	9800 3300 9650 3300
Wire Wire Line
	9450 3300 9350 3300
Wire Wire Line
	9800 1600 9650 1600
Wire Wire Line
	9450 1600 9350 1600
Wire Wire Line
	10100 1400 10100 1200
$Comp
L power:GND #PWR0133
U 1 1 5D17CE18
P 10100 2100
F 0 "#PWR0133" H 10100 1850 50  0001 C CNN
F 1 "GND" H 10105 1927 50  0000 C CNN
F 2 "" H 10100 2100 50  0001 C CNN
F 3 "" H 10100 2100 50  0001 C CNN
	1    10100 2100
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C407
U 1 1 5D198B7B
P 10250 1200
F 0 "C407" V 10021 1200 50  0000 C CNN
F 1 "100n" V 10112 1200 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 10250 1200 50  0001 C CNN
F 3 "~" H 10250 1200 50  0001 C CNN
	1    10250 1200
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C408
U 1 1 5D1990C7
P 10250 2800
F 0 "C408" V 10021 2800 50  0000 C CNN
F 1 "100n" V 10112 2800 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 10250 2800 50  0001 C CNN
F 3 "~" H 10250 2800 50  0001 C CNN
	1    10250 2800
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0134
U 1 1 5D1992E3
P 10400 1250
F 0 "#PWR0134" H 10400 1000 50  0001 C CNN
F 1 "GND" H 10405 1077 50  0000 C CNN
F 2 "" H 10400 1250 50  0001 C CNN
F 3 "" H 10400 1250 50  0001 C CNN
	1    10400 1250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0135
U 1 1 5D199422
P 10450 2850
F 0 "#PWR0135" H 10450 2600 50  0001 C CNN
F 1 "GND" H 10455 2677 50  0000 C CNN
F 2 "" H 10450 2850 50  0001 C CNN
F 3 "" H 10450 2850 50  0001 C CNN
	1    10450 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	10450 2850 10450 2800
Wire Wire Line
	10450 2800 10350 2800
Wire Wire Line
	10150 2800 10100 2800
Connection ~ 10100 2800
Wire Wire Line
	10100 2800 10100 3100
Wire Wire Line
	10400 1250 10400 1200
Wire Wire Line
	10400 1200 10350 1200
Wire Wire Line
	10150 1200 10100 1200
Connection ~ 10100 1200
Wire Wire Line
	10100 1200 10100 1000
Wire Wire Line
	10700 1700 10400 1700
Wire Wire Line
	10700 3400 10400 3400
Wire Wire Line
	9400 3400 9350 3400
Wire Wire Line
	9350 1700 9400 1700
Wire Notes Line
	11000 4500 11000 650 
Text Notes 8650 750  0    50   ~ 0
OPTO INPUTS
Wire Wire Line
	9400 3500 9800 3500
Wire Wire Line
	9400 3400 9400 3500
Wire Wire Line
	10100 3700 10100 3850
Wire Wire Line
	9400 1700 9400 1800
Wire Wire Line
	9400 1800 9800 1800
Wire Wire Line
	10100 2000 10100 2100
$Comp
L Connector_Generic:Conn_02x03_Odd_Even J409
U 1 1 5E5305C4
P 1800 6500
F 0 "J409" H 1850 6817 50  0000 C CNN
F 1 "ServoCon" H 1850 6726 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x03_P2.54mm_Vertical" H 1800 6500 50  0001 C CNN
F 3 "~" H 1800 6500 50  0001 C CNN
	1    1800 6500
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 6600 1500 7000
Wire Wire Line
	2200 6600 2200 7000
Wire Wire Line
	7600 2100 7250 2100
$Comp
L Device:R_Small R406
U 1 1 5CEC3A9E
P 7250 2000
F 0 "R406" H 7191 1954 50  0000 R CNN
F 1 "10k" H 7191 2045 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 7250 2000 50  0001 C CNN
F 3 "~" H 7250 2000 50  0001 C CNN
	1    7250 2000
	1    0    0    1   
$EndComp
$Comp
L Device:R_Small R404
U 1 1 5CEFB209
P 7100 3650
F 0 "R404" V 6904 3650 50  0000 C CNN
F 1 "10" V 6995 3650 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 7100 3650 50  0001 C CNN
F 3 "~" H 7100 3650 50  0001 C CNN
	1    7100 3650
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R410
U 1 1 5CEC3AEA
P 5000 3650
F 0 "R410" V 4804 3650 50  0000 C CNN
F 1 "10" V 4895 3650 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 5000 3650 50  0001 C CNN
F 3 "~" H 5000 3650 50  0001 C CNN
	1    5000 3650
	0    1    1    0   
$EndComp
Wire Wire Line
	5500 3950 5150 3950
$Comp
L Device:R_Small R414
U 1 1 5CEC3ADB
P 5150 3850
F 0 "R414" H 5091 3804 50  0000 R CNN
F 1 "10k" H 5091 3895 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 5150 3850 50  0001 C CNN
F 3 "~" H 5150 3850 50  0001 C CNN
	1    5150 3850
	1    0    0    1   
$EndComp
Wire Wire Line
	7600 3950 7250 3950
$Comp
L Device:R_Small R407
U 1 1 5CEFB1FB
P 7250 3850
F 0 "R407" H 7191 3804 50  0000 R CNN
F 1 "10k" H 7191 3895 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 7250 3850 50  0001 C CNN
F 3 "~" H 7250 3850 50  0001 C CNN
	1    7250 3850
	1    0    0    1   
$EndComp
Wire Wire Line
	5150 3650 5100 3650
Wire Wire Line
	5150 3650 5200 3650
Connection ~ 5150 3650
Wire Wire Line
	5150 3750 5150 3650
Wire Wire Line
	5150 1800 5100 1800
Wire Wire Line
	5150 1800 5200 1800
Connection ~ 5150 1800
Wire Wire Line
	5150 1900 5150 1800
Wire Wire Line
	7250 1800 7200 1800
Wire Wire Line
	7250 1800 7300 1800
Connection ~ 7250 1800
Wire Wire Line
	7250 1900 7250 1800
Wire Wire Line
	7250 3650 7200 3650
Wire Wire Line
	7250 3650 7300 3650
Connection ~ 7250 3650
Wire Wire Line
	7250 3750 7250 3650
Wire Wire Line
	7000 3650 6950 3650
Text GLabel 6950 3650 0    50   Input ~ 0
OUT2
Wire Wire Line
	7000 1800 6950 1800
Text GLabel 6950 1800 0    50   Input ~ 0
OUT1
Wire Notes Line
	6600 650  6600 4500
Wire Wire Line
	4900 3650 4850 3650
Text GLabel 4850 3650 0    50   Input ~ 0
PWM2
Wire Wire Line
	4900 1800 4850 1800
Text GLabel 4850 1800 0    50   Input ~ 0
PWM1
$EndSCHEMATC
