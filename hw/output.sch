EESchema Schematic File Version 4
LIBS:Telemetry-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 4
Title "RC Telemetry board"
Date "2019-05-20"
Rev "0.1"
Comp "www.findersee.fi"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L power:+BATT #PWR0401
U 1 1 5CEA5103
P 2000 900
F 0 "#PWR0401" H 2000 750 50  0001 C CNN
F 1 "+BATT" H 2015 1073 50  0000 C CNN
F 2 "" H 2000 900 50  0001 C CNN
F 3 "" H 2000 900 50  0001 C CNN
	1    2000 900 
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J404
U 1 1 5CEA51F6
P 2200 1250
F 0 "J404" H 2280 1242 50  0000 L CNN
F 1 "Conn_01x02" H 2280 1151 50  0000 L CNN
F 2 "Connectors_Phoenix:PhoenixContact_MCV-G_02x3.81mm_Vertical" H 2200 1250 50  0001 C CNN
F 3 "~" H 2200 1250 50  0001 C CNN
	1    2200 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 1350 2000 1600
$Comp
L power:GND #PWR0408
U 1 1 5CEA5274
P 2000 2250
F 0 "#PWR0408" H 2000 2000 50  0001 C CNN
F 1 "GND" H 2005 2077 50  0000 C CNN
F 2 "" H 2000 2250 50  0001 C CNN
F 3 "" H 2000 2250 50  0001 C CNN
	1    2000 2250
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R408
U 1 1 5CEA5321
P 1650 2100
F 0 "R408" H 1591 2054 50  0000 R CNN
F 1 "10k" H 1591 2145 50  0000 R CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 1650 2100 50  0001 C CNN
F 3 "~" H 1650 2100 50  0001 C CNN
	1    1650 2100
	1    0    0    1   
$EndComp
Wire Wire Line
	2000 2250 2000 2200
Wire Wire Line
	2000 2200 1650 2200
Connection ~ 2000 2200
Wire Wire Line
	2000 2200 2000 2000
$Comp
L Transistor_FET:IRLZ44N Q404
U 1 1 5CEA7098
P 1900 1800
F 0 "Q404" H 2105 1846 50  0000 L CNN
F 1 "IRLZ44N" H 2105 1755 50  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-220_Vertical" H 2150 1725 50  0001 L CIN
F 3 "http://www.irf.com/product-info/datasheets/data/irlz44n.pdf" H 1900 1800 50  0001 L CNN
	1    1900 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	1650 1800 1700 1800
Wire Wire Line
	1650 1800 1650 2000
Text GLabel 1050 1800 0    50   Input ~ 0
HC_OUT1
$Comp
L power:+BATT #PWR0412
U 1 1 5CEA77C5
P 2000 3000
F 0 "#PWR0412" H 2000 2850 50  0001 C CNN
F 1 "+BATT" H 2015 3173 50  0000 C CNN
F 2 "" H 2000 3000 50  0001 C CNN
F 3 "" H 2000 3000 50  0001 C CNN
	1    2000 3000
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J408
U 1 1 5CEA77CB
P 2200 3350
F 0 "J408" H 2280 3342 50  0000 L CNN
F 1 "Conn_01x02" H 2280 3251 50  0000 L CNN
F 2 "Connectors_Phoenix:PhoenixContact_MCV-G_02x3.81mm_Vertical" H 2200 3350 50  0001 C CNN
F 3 "~" H 2200 3350 50  0001 C CNN
	1    2200 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 3450 2000 3700
$Comp
L power:GND #PWR0416
U 1 1 5CEA77D3
P 2000 4350
F 0 "#PWR0416" H 2000 4100 50  0001 C CNN
F 1 "GND" H 2005 4177 50  0000 C CNN
F 2 "" H 2000 4350 50  0001 C CNN
F 3 "" H 2000 4350 50  0001 C CNN
	1    2000 4350
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R416
U 1 1 5CEA77D9
P 1650 4200
F 0 "R416" H 1591 4154 50  0000 R CNN
F 1 "10k" H 1591 4245 50  0000 R CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 1650 4200 50  0001 C CNN
F 3 "~" H 1650 4200 50  0001 C CNN
	1    1650 4200
	1    0    0    1   
$EndComp
Wire Wire Line
	2000 4350 2000 4300
Wire Wire Line
	2000 4300 1650 4300
Connection ~ 2000 4300
Wire Wire Line
	2000 4300 2000 4100
$Comp
L Transistor_FET:IRLZ44N Q408
U 1 1 5CEA77ED
P 1900 3900
F 0 "Q408" H 2105 3946 50  0000 L CNN
F 1 "IRLZ44N" H 2105 3855 50  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-220_Vertical" H 2150 3825 50  0001 L CIN
F 3 "http://www.irf.com/product-info/datasheets/data/irlz44n.pdf" H 1900 3900 50  0001 L CNN
	1    1900 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	1650 3900 1700 3900
Wire Wire Line
	1650 3900 1650 4100
Text GLabel 1050 3900 0    50   Input ~ 0
HC_OUT2
Wire Wire Line
	2000 3000 2000 3350
Wire Wire Line
	2000 900  2000 1250
$Comp
L power:VCC #PWR0417
U 1 1 5CEA7FEA
P 1500 4900
F 0 "#PWR0417" H 1500 4750 50  0001 C CNN
F 1 "VCC" H 1517 5073 50  0000 C CNN
F 2 "" H 1500 4900 50  0001 C CNN
F 3 "" H 1500 4900 50  0001 C CNN
	1    1500 4900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0420
U 1 1 5CEA8060
P 2150 6100
F 0 "#PWR0420" H 2150 5850 50  0001 C CNN
F 1 "GND" H 2155 5927 50  0000 C CNN
F 2 "" H 2150 6100 50  0001 C CNN
F 3 "" H 2150 6100 50  0001 C CNN
	1    2150 6100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0419
U 1 1 5CEA8080
P 1450 6100
F 0 "#PWR0419" H 1450 5850 50  0001 C CNN
F 1 "GND" H 1455 5927 50  0000 C CNN
F 2 "" H 1450 6100 50  0001 C CNN
F 3 "" H 1450 6100 50  0001 C CNN
	1    1450 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 5600 2100 5600
Wire Wire Line
	2100 5600 2100 5200
Wire Wire Line
	2050 5900 2100 5900
Wire Wire Line
	2100 5900 2100 5600
Connection ~ 2100 5600
Wire Wire Line
	1550 5600 1500 5600
Wire Wire Line
	1500 5600 1500 5200
Wire Wire Line
	1550 5900 1500 5900
Wire Wire Line
	1500 5900 1500 5600
Connection ~ 1500 5600
Wire Wire Line
	1550 5700 1450 5700
Wire Wire Line
	2050 5700 2150 5700
Wire Wire Line
	1550 5500 1200 5500
Wire Wire Line
	2050 5500 2350 5500
Text GLabel 2350 5500 2    50   Input ~ 0
SERVO_OUT2
Text GLabel 2350 6000 2    50   Input ~ 0
SERVO_OUT4
Text GLabel 1200 6000 0    50   Input ~ 0
SERVO_OUT3
Text GLabel 1200 5500 0    50   Input ~ 0
SERVO_OUT1
$Comp
L dk_Transistors-FETs-MOSFETs-Single:IRLML6344TRPBF Q401
U 1 1 5CEB6A73
P 4050 1700
F 0 "Q401" H 4157 1753 60  0000 L CNN
F 1 "IRLML6344TRPBF" H 4157 1647 60  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 4250 1900 60  0001 L CNN
F 3 "https://www.infineon.com/dgdl/irlml6344pbf.pdf?fileId=5546d462533600a4015356689c44262c" H 4250 2000 60  0001 L CNN
F 4 "IRLML6344TRPBFCT-ND" H 4250 2100 60  0001 L CNN "Digi-Key_PN"
F 5 "IRLML6344TRPBF" H 4250 2200 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 4250 2300 60  0001 L CNN "Category"
F 7 "Transistors - FETs, MOSFETs - Single" H 4250 2400 60  0001 L CNN "Family"
F 8 "https://www.infineon.com/dgdl/irlml6344pbf.pdf?fileId=5546d462533600a4015356689c44262c" H 4250 2500 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/infineon-technologies/IRLML6344TRPBF/IRLML6344TRPBFCT-ND/2538168" H 4250 2600 60  0001 L CNN "DK_Detail_Page"
F 10 "MOSFET N-CH 30V 5A SOT23" H 4250 2700 60  0001 L CNN "Description"
F 11 "Infineon Technologies" H 4250 2800 60  0001 L CNN "Manufacturer"
F 12 "Active" H 4250 2900 60  0001 L CNN "Status"
	1    4050 1700
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0402
U 1 1 5CEB6CAA
P 4050 950
F 0 "#PWR0402" H 4050 800 50  0001 C CNN
F 1 "VCC" H 4067 1123 50  0000 C CNN
F 2 "" H 4050 950 50  0001 C CNN
F 3 "" H 4050 950 50  0001 C CNN
	1    4050 950 
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J401
U 1 1 5CEB6D65
P 4250 1200
F 0 "J401" H 4330 1192 50  0000 L CNN
F 1 "Conn_01x02" H 4330 1101 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Angled_1x02_Pitch2.54mm" H 4250 1200 50  0001 C CNN
F 3 "~" H 4250 1200 50  0001 C CNN
	1    4250 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 1300 4050 1500
Wire Wire Line
	4050 950  4050 1200
$Comp
L power:GND #PWR0405
U 1 1 5CEB7F08
P 4050 2150
F 0 "#PWR0405" H 4050 1900 50  0001 C CNN
F 1 "GND" H 4055 1977 50  0000 C CNN
F 2 "" H 4050 2150 50  0001 C CNN
F 3 "" H 4050 2150 50  0001 C CNN
	1    4050 2150
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R405
U 1 1 5CEB7F37
P 3700 2000
F 0 "R405" H 3641 1954 50  0000 R CNN
F 1 "R_Small" H 3641 2045 50  0000 R CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 3700 2000 50  0001 C CNN
F 3 "~" H 3700 2000 50  0001 C CNN
	1    3700 2000
	1    0    0    1   
$EndComp
Wire Wire Line
	4050 2150 4050 2100
Wire Wire Line
	4050 2100 3700 2100
Wire Wire Line
	3700 1900 3700 1800
Wire Wire Line
	3700 1800 3750 1800
Wire Wire Line
	4050 2100 4050 1900
Connection ~ 4050 2100
Wire Wire Line
	3700 1800 3650 1800
Connection ~ 3700 1800
$Comp
L Device:R_Small R401
U 1 1 5CEBBDE7
P 1350 1800
F 0 "R401" V 1154 1800 50  0000 C CNN
F 1 "10" V 1245 1800 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 1350 1800 50  0001 C CNN
F 3 "~" H 1350 1800 50  0001 C CNN
	1    1350 1800
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R412
U 1 1 5CEBBEA5
P 1350 3900
F 0 "R412" V 1154 3900 50  0000 C CNN
F 1 "10" V 1245 3900 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 1350 3900 50  0001 C CNN
F 3 "~" H 1350 3900 50  0001 C CNN
	1    1350 3900
	0    1    1    0   
$EndComp
Wire Wire Line
	1450 3900 1650 3900
Connection ~ 1650 3900
Wire Wire Line
	1250 3900 1050 3900
Wire Wire Line
	1050 1800 1250 1800
Wire Wire Line
	1450 1800 1650 1800
Connection ~ 1650 1800
$Comp
L Device:R_Small R402
U 1 1 5CEBF122
P 3550 1800
F 0 "R402" V 3354 1800 50  0000 C CNN
F 1 "10" V 3445 1800 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 3550 1800 50  0001 C CNN
F 3 "~" H 3550 1800 50  0001 C CNN
	1    3550 1800
	0    1    1    0   
$EndComp
Text GLabel 3400 1800 0    50   Input ~ 0
OUT1
Wire Wire Line
	3450 1800 3400 1800
$Comp
L dk_Transistors-FETs-MOSFETs-Single:IRLML6344TRPBF Q405
U 1 1 5CEC27E9
P 4050 3600
F 0 "Q405" H 4157 3653 60  0000 L CNN
F 1 "IRLML6344TRPBF" H 4157 3547 60  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 4250 3800 60  0001 L CNN
F 3 "https://www.infineon.com/dgdl/irlml6344pbf.pdf?fileId=5546d462533600a4015356689c44262c" H 4250 3900 60  0001 L CNN
F 4 "IRLML6344TRPBFCT-ND" H 4250 4000 60  0001 L CNN "Digi-Key_PN"
F 5 "IRLML6344TRPBF" H 4250 4100 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 4250 4200 60  0001 L CNN "Category"
F 7 "Transistors - FETs, MOSFETs - Single" H 4250 4300 60  0001 L CNN "Family"
F 8 "https://www.infineon.com/dgdl/irlml6344pbf.pdf?fileId=5546d462533600a4015356689c44262c" H 4250 4400 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/infineon-technologies/IRLML6344TRPBF/IRLML6344TRPBFCT-ND/2538168" H 4250 4500 60  0001 L CNN "DK_Detail_Page"
F 10 "MOSFET N-CH 30V 5A SOT23" H 4250 4600 60  0001 L CNN "Description"
F 11 "Infineon Technologies" H 4250 4700 60  0001 L CNN "Manufacturer"
F 12 "Active" H 4250 4800 60  0001 L CNN "Status"
	1    4050 3600
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0409
U 1 1 5CEC27F0
P 4050 2850
F 0 "#PWR0409" H 4050 2700 50  0001 C CNN
F 1 "VCC" H 4067 3023 50  0000 C CNN
F 2 "" H 4050 2850 50  0001 C CNN
F 3 "" H 4050 2850 50  0001 C CNN
	1    4050 2850
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J405
U 1 1 5CEC27F6
P 4250 3100
F 0 "J405" H 4330 3092 50  0000 L CNN
F 1 "Conn_01x02" H 4330 3001 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Angled_1x02_Pitch2.54mm" H 4250 3100 50  0001 C CNN
F 3 "~" H 4250 3100 50  0001 C CNN
	1    4250 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 3200 4050 3400
Wire Wire Line
	4050 2850 4050 3100
$Comp
L power:GND #PWR0413
U 1 1 5CEC27FF
P 4050 4050
F 0 "#PWR0413" H 4050 3800 50  0001 C CNN
F 1 "GND" H 4055 3877 50  0000 C CNN
F 2 "" H 4050 4050 50  0001 C CNN
F 3 "" H 4050 4050 50  0001 C CNN
	1    4050 4050
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R413
U 1 1 5CEC2805
P 3700 3900
F 0 "R413" H 3641 3854 50  0000 R CNN
F 1 "R_Small" H 3641 3945 50  0000 R CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 3700 3900 50  0001 C CNN
F 3 "~" H 3700 3900 50  0001 C CNN
	1    3700 3900
	1    0    0    1   
$EndComp
Wire Wire Line
	4050 4050 4050 4000
Wire Wire Line
	4050 4000 3700 4000
Wire Wire Line
	3700 3800 3700 3700
Wire Wire Line
	3700 3700 3750 3700
Wire Wire Line
	4050 4000 4050 3800
Connection ~ 4050 4000
Wire Wire Line
	3700 3700 3650 3700
Connection ~ 3700 3700
$Comp
L Device:R_Small R409
U 1 1 5CEC2814
P 3550 3700
F 0 "R409" V 3354 3700 50  0000 C CNN
F 1 "10" V 3445 3700 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 3550 3700 50  0001 C CNN
F 3 "~" H 3550 3700 50  0001 C CNN
	1    3550 3700
	0    1    1    0   
$EndComp
Text GLabel 3400 3700 0    50   Input ~ 0
OUT2
Wire Wire Line
	3450 3700 3400 3700
$Comp
L dk_Transistors-FETs-MOSFETs-Single:IRLML6344TRPBF Q402
U 1 1 5CEC3A82
P 6150 1700
F 0 "Q402" H 6257 1753 60  0000 L CNN
F 1 "IRLML6344TRPBF" H 6257 1647 60  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 6350 1900 60  0001 L CNN
F 3 "https://www.infineon.com/dgdl/irlml6344pbf.pdf?fileId=5546d462533600a4015356689c44262c" H 6350 2000 60  0001 L CNN
F 4 "IRLML6344TRPBFCT-ND" H 6350 2100 60  0001 L CNN "Digi-Key_PN"
F 5 "IRLML6344TRPBF" H 6350 2200 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 6350 2300 60  0001 L CNN "Category"
F 7 "Transistors - FETs, MOSFETs - Single" H 6350 2400 60  0001 L CNN "Family"
F 8 "https://www.infineon.com/dgdl/irlml6344pbf.pdf?fileId=5546d462533600a4015356689c44262c" H 6350 2500 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/infineon-technologies/IRLML6344TRPBF/IRLML6344TRPBFCT-ND/2538168" H 6350 2600 60  0001 L CNN "DK_Detail_Page"
F 10 "MOSFET N-CH 30V 5A SOT23" H 6350 2700 60  0001 L CNN "Description"
F 11 "Infineon Technologies" H 6350 2800 60  0001 L CNN "Manufacturer"
F 12 "Active" H 6350 2900 60  0001 L CNN "Status"
	1    6150 1700
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0403
U 1 1 5CEC3A89
P 6150 950
F 0 "#PWR0403" H 6150 800 50  0001 C CNN
F 1 "VCC" H 6167 1123 50  0000 C CNN
F 2 "" H 6150 950 50  0001 C CNN
F 3 "" H 6150 950 50  0001 C CNN
	1    6150 950 
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J402
U 1 1 5CEC3A8F
P 6350 1200
F 0 "J402" H 6430 1192 50  0000 L CNN
F 1 "Conn_01x02" H 6430 1101 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Angled_1x02_Pitch2.54mm" H 6350 1200 50  0001 C CNN
F 3 "~" H 6350 1200 50  0001 C CNN
	1    6350 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6150 1300 6150 1500
Wire Wire Line
	6150 950  6150 1200
$Comp
L power:GND #PWR0406
U 1 1 5CEC3A98
P 6150 2150
F 0 "#PWR0406" H 6150 1900 50  0001 C CNN
F 1 "GND" H 6155 1977 50  0000 C CNN
F 2 "" H 6150 2150 50  0001 C CNN
F 3 "" H 6150 2150 50  0001 C CNN
	1    6150 2150
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R406
U 1 1 5CEC3A9E
P 5800 2000
F 0 "R406" H 5741 1954 50  0000 R CNN
F 1 "R_Small" H 5741 2045 50  0000 R CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 5800 2000 50  0001 C CNN
F 3 "~" H 5800 2000 50  0001 C CNN
	1    5800 2000
	1    0    0    1   
$EndComp
Wire Wire Line
	6150 2150 6150 2100
Wire Wire Line
	6150 2100 5800 2100
Wire Wire Line
	5800 1900 5800 1800
Wire Wire Line
	5800 1800 5850 1800
Wire Wire Line
	6150 2100 6150 1900
Connection ~ 6150 2100
Wire Wire Line
	5800 1800 5750 1800
Connection ~ 5800 1800
$Comp
L Device:R_Small R403
U 1 1 5CEC3AAD
P 5650 1800
F 0 "R403" V 5454 1800 50  0000 C CNN
F 1 "10" V 5545 1800 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 5650 1800 50  0001 C CNN
F 3 "~" H 5650 1800 50  0001 C CNN
	1    5650 1800
	0    1    1    0   
$EndComp
Text GLabel 5500 1800 0    50   Input ~ 0
OUT3
Wire Wire Line
	5550 1800 5500 1800
$Comp
L dk_Transistors-FETs-MOSFETs-Single:IRLML6344TRPBF Q406
U 1 1 5CEC3ABF
P 6150 3600
F 0 "Q406" H 6257 3653 60  0000 L CNN
F 1 "IRLML6344TRPBF" H 6257 3547 60  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 6350 3800 60  0001 L CNN
F 3 "https://www.infineon.com/dgdl/irlml6344pbf.pdf?fileId=5546d462533600a4015356689c44262c" H 6350 3900 60  0001 L CNN
F 4 "IRLML6344TRPBFCT-ND" H 6350 4000 60  0001 L CNN "Digi-Key_PN"
F 5 "IRLML6344TRPBF" H 6350 4100 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 6350 4200 60  0001 L CNN "Category"
F 7 "Transistors - FETs, MOSFETs - Single" H 6350 4300 60  0001 L CNN "Family"
F 8 "https://www.infineon.com/dgdl/irlml6344pbf.pdf?fileId=5546d462533600a4015356689c44262c" H 6350 4400 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/infineon-technologies/IRLML6344TRPBF/IRLML6344TRPBFCT-ND/2538168" H 6350 4500 60  0001 L CNN "DK_Detail_Page"
F 10 "MOSFET N-CH 30V 5A SOT23" H 6350 4600 60  0001 L CNN "Description"
F 11 "Infineon Technologies" H 6350 4700 60  0001 L CNN "Manufacturer"
F 12 "Active" H 6350 4800 60  0001 L CNN "Status"
	1    6150 3600
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0410
U 1 1 5CEC3AC6
P 6150 2850
F 0 "#PWR0410" H 6150 2700 50  0001 C CNN
F 1 "VCC" H 6167 3023 50  0000 C CNN
F 2 "" H 6150 2850 50  0001 C CNN
F 3 "" H 6150 2850 50  0001 C CNN
	1    6150 2850
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J406
U 1 1 5CEC3ACC
P 6350 3100
F 0 "J406" H 6430 3092 50  0000 L CNN
F 1 "Conn_01x02" H 6430 3001 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Angled_1x02_Pitch2.54mm" H 6350 3100 50  0001 C CNN
F 3 "~" H 6350 3100 50  0001 C CNN
	1    6350 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6150 3200 6150 3400
Wire Wire Line
	6150 2850 6150 3100
$Comp
L power:GND #PWR0414
U 1 1 5CEC3AD5
P 6150 4050
F 0 "#PWR0414" H 6150 3800 50  0001 C CNN
F 1 "GND" H 6155 3877 50  0000 C CNN
F 2 "" H 6150 4050 50  0001 C CNN
F 3 "" H 6150 4050 50  0001 C CNN
	1    6150 4050
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R414
U 1 1 5CEC3ADB
P 5800 3900
F 0 "R414" H 5741 3854 50  0000 R CNN
F 1 "R_Small" H 5741 3945 50  0000 R CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 5800 3900 50  0001 C CNN
F 3 "~" H 5800 3900 50  0001 C CNN
	1    5800 3900
	1    0    0    1   
$EndComp
Wire Wire Line
	6150 4050 6150 4000
Wire Wire Line
	6150 4000 5800 4000
Wire Wire Line
	5800 3800 5800 3700
Wire Wire Line
	5800 3700 5850 3700
Wire Wire Line
	6150 4000 6150 3800
Connection ~ 6150 4000
Wire Wire Line
	5800 3700 5750 3700
Connection ~ 5800 3700
$Comp
L Device:R_Small R410
U 1 1 5CEC3AEA
P 5650 3700
F 0 "R410" V 5454 3700 50  0000 C CNN
F 1 "10" V 5545 3700 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 5650 3700 50  0001 C CNN
F 3 "~" H 5650 3700 50  0001 C CNN
	1    5650 3700
	0    1    1    0   
$EndComp
Text GLabel 5500 3700 0    50   Input ~ 0
OUT4
Wire Wire Line
	5550 3700 5500 3700
$Comp
L Connector_Generic:Conn_02x06_Odd_Even J409
U 1 1 5CEF71B9
P 1750 5700
F 0 "J409" H 1800 6117 50  0000 C CNN
F 1 "SERVO_OUT" H 1800 6026 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Angled_2x06" H 1750 5700 50  0001 C CNN
F 3 "~" H 1750 5700 50  0001 C CNN
	1    1750 5700
	1    0    0    -1  
$EndComp
$Comp
L dk_Transistors-FETs-MOSFETs-Single:IRLML6344TRPBF Q403
U 1 1 5CEFB1E1
P 8200 1700
F 0 "Q403" H 8307 1753 60  0000 L CNN
F 1 "IRLML6344TRPBF" H 8307 1647 60  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 8400 1900 60  0001 L CNN
F 3 "https://www.infineon.com/dgdl/irlml6344pbf.pdf?fileId=5546d462533600a4015356689c44262c" H 8400 2000 60  0001 L CNN
F 4 "IRLML6344TRPBFCT-ND" H 8400 2100 60  0001 L CNN "Digi-Key_PN"
F 5 "IRLML6344TRPBF" H 8400 2200 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 8400 2300 60  0001 L CNN "Category"
F 7 "Transistors - FETs, MOSFETs - Single" H 8400 2400 60  0001 L CNN "Family"
F 8 "https://www.infineon.com/dgdl/irlml6344pbf.pdf?fileId=5546d462533600a4015356689c44262c" H 8400 2500 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/infineon-technologies/IRLML6344TRPBF/IRLML6344TRPBFCT-ND/2538168" H 8400 2600 60  0001 L CNN "DK_Detail_Page"
F 10 "MOSFET N-CH 30V 5A SOT23" H 8400 2700 60  0001 L CNN "Description"
F 11 "Infineon Technologies" H 8400 2800 60  0001 L CNN "Manufacturer"
F 12 "Active" H 8400 2900 60  0001 L CNN "Status"
	1    8200 1700
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0404
U 1 1 5CEFB1E7
P 8200 950
F 0 "#PWR0404" H 8200 800 50  0001 C CNN
F 1 "VCC" H 8217 1123 50  0000 C CNN
F 2 "" H 8200 950 50  0001 C CNN
F 3 "" H 8200 950 50  0001 C CNN
	1    8200 950 
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J403
U 1 1 5CEFB1ED
P 8400 1200
F 0 "J403" H 8480 1192 50  0000 L CNN
F 1 "Conn_01x02" H 8480 1101 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Angled_1x02_Pitch2.54mm" H 8400 1200 50  0001 C CNN
F 3 "~" H 8400 1200 50  0001 C CNN
	1    8400 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	8200 1300 8200 1500
Wire Wire Line
	8200 950  8200 1200
$Comp
L power:GND #PWR0407
U 1 1 5CEFB1F5
P 8200 2150
F 0 "#PWR0407" H 8200 1900 50  0001 C CNN
F 1 "GND" H 8205 1977 50  0000 C CNN
F 2 "" H 8200 2150 50  0001 C CNN
F 3 "" H 8200 2150 50  0001 C CNN
	1    8200 2150
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R407
U 1 1 5CEFB1FB
P 7850 2000
F 0 "R407" H 7791 1954 50  0000 R CNN
F 1 "R_Small" H 7791 2045 50  0000 R CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 7850 2000 50  0001 C CNN
F 3 "~" H 7850 2000 50  0001 C CNN
	1    7850 2000
	1    0    0    1   
$EndComp
Wire Wire Line
	8200 2150 8200 2100
Wire Wire Line
	8200 2100 7850 2100
Wire Wire Line
	7850 1900 7850 1800
Wire Wire Line
	7850 1800 7900 1800
Wire Wire Line
	8200 2100 8200 1900
Connection ~ 8200 2100
Wire Wire Line
	7850 1800 7800 1800
Connection ~ 7850 1800
$Comp
L Device:R_Small R404
U 1 1 5CEFB209
P 7700 1800
F 0 "R404" V 7504 1800 50  0000 C CNN
F 1 "10" V 7595 1800 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 7700 1800 50  0001 C CNN
F 3 "~" H 7700 1800 50  0001 C CNN
	1    7700 1800
	0    1    1    0   
$EndComp
Text GLabel 7550 1800 0    50   Input ~ 0
OUT5
Wire Wire Line
	7600 1800 7550 1800
$Comp
L dk_Transistors-FETs-MOSFETs-Single:IRLML6344TRPBF Q407
U 1 1 5CEFB21A
P 8200 3600
F 0 "Q407" H 8307 3653 60  0000 L CNN
F 1 "IRLML6344TRPBF" H 8307 3547 60  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 8400 3800 60  0001 L CNN
F 3 "https://www.infineon.com/dgdl/irlml6344pbf.pdf?fileId=5546d462533600a4015356689c44262c" H 8400 3900 60  0001 L CNN
F 4 "IRLML6344TRPBFCT-ND" H 8400 4000 60  0001 L CNN "Digi-Key_PN"
F 5 "IRLML6344TRPBF" H 8400 4100 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 8400 4200 60  0001 L CNN "Category"
F 7 "Transistors - FETs, MOSFETs - Single" H 8400 4300 60  0001 L CNN "Family"
F 8 "https://www.infineon.com/dgdl/irlml6344pbf.pdf?fileId=5546d462533600a4015356689c44262c" H 8400 4400 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/infineon-technologies/IRLML6344TRPBF/IRLML6344TRPBFCT-ND/2538168" H 8400 4500 60  0001 L CNN "DK_Detail_Page"
F 10 "MOSFET N-CH 30V 5A SOT23" H 8400 4600 60  0001 L CNN "Description"
F 11 "Infineon Technologies" H 8400 4700 60  0001 L CNN "Manufacturer"
F 12 "Active" H 8400 4800 60  0001 L CNN "Status"
	1    8200 3600
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0411
U 1 1 5CEFB220
P 8200 2850
F 0 "#PWR0411" H 8200 2700 50  0001 C CNN
F 1 "VCC" H 8217 3023 50  0000 C CNN
F 2 "" H 8200 2850 50  0001 C CNN
F 3 "" H 8200 2850 50  0001 C CNN
	1    8200 2850
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J407
U 1 1 5CEFB226
P 8400 3100
F 0 "J407" H 8480 3092 50  0000 L CNN
F 1 "Conn_01x02" H 8480 3001 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Angled_1x02_Pitch2.54mm" H 8400 3100 50  0001 C CNN
F 3 "~" H 8400 3100 50  0001 C CNN
	1    8400 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	8200 3200 8200 3400
Wire Wire Line
	8200 2850 8200 3100
$Comp
L power:GND #PWR0415
U 1 1 5CEFB22E
P 8200 4050
F 0 "#PWR0415" H 8200 3800 50  0001 C CNN
F 1 "GND" H 8205 3877 50  0000 C CNN
F 2 "" H 8200 4050 50  0001 C CNN
F 3 "" H 8200 4050 50  0001 C CNN
	1    8200 4050
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R415
U 1 1 5CEFB234
P 7850 3900
F 0 "R415" H 7791 3854 50  0000 R CNN
F 1 "R_Small" H 7791 3945 50  0000 R CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 7850 3900 50  0001 C CNN
F 3 "~" H 7850 3900 50  0001 C CNN
	1    7850 3900
	1    0    0    1   
$EndComp
Wire Wire Line
	8200 4050 8200 4000
Wire Wire Line
	8200 4000 7850 4000
Wire Wire Line
	7850 3800 7850 3700
Wire Wire Line
	7850 3700 7900 3700
Wire Wire Line
	8200 4000 8200 3800
Connection ~ 8200 4000
Wire Wire Line
	7850 3700 7800 3700
Connection ~ 7850 3700
$Comp
L Device:R_Small R411
U 1 1 5CEFB242
P 7700 3700
F 0 "R411" V 7504 3700 50  0000 C CNN
F 1 "10" V 7595 3700 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 7700 3700 50  0001 C CNN
F 3 "~" H 7700 3700 50  0001 C CNN
	1    7700 3700
	0    1    1    0   
$EndComp
Text GLabel 7550 3700 0    50   Input ~ 0
OUT6
Wire Wire Line
	7600 3700 7550 3700
Wire Wire Line
	2100 5200 1500 5200
Connection ~ 1500 5200
Wire Wire Line
	1500 4900 1500 4950
Wire Wire Line
	1500 5150 1500 5200
$Comp
L Device:Jumper_NC_Small JP401
U 1 1 5CE95F20
P 1500 5050
F 0 "JP401" V 1546 5003 50  0000 R CNN
F 1 "Jumper_NC_Small" V 1455 5003 50  0000 R CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02" H 1500 5050 50  0001 C CNN
F 3 "~" H 1500 5050 50  0001 C CNN
	1    1500 5050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2150 5700 2150 5800
Wire Wire Line
	1450 5700 1450 5800
Wire Wire Line
	1550 5800 1450 5800
Connection ~ 1450 5800
Wire Wire Line
	1450 5800 1450 6100
Wire Wire Line
	2050 5800 2150 5800
Connection ~ 2150 5800
Wire Wire Line
	2150 5800 2150 6100
Wire Wire Line
	2050 6000 2350 6000
Wire Wire Line
	1550 6000 1200 6000
$EndSCHEMATC