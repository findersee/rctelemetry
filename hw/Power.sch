EESchema Schematic File Version 4
LIBS:Telemetry-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 4
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
L Misc:RT6200 U202
U 1 1 5CE222A1
P 3100 5650
F 0 "U202" H 3100 6149 50  0000 C CNN
F 1 "RT6200" H 3100 6065 40  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-23-6_Handsoldering" H 3100 5650 50  0001 C CNN
F 3 "https://www.richtek.com/assets/product_file/RT6200/DS6200-04.pdf" H 3100 5650 50  0001 C CNN
	1    3100 5650
	1    0    0    -1  
$EndComp
$Comp
L Device:C C205
U 1 1 5CE223A1
P 2000 5600
F 0 "C205" H 2115 5646 50  0000 L CNN
F 1 "1u" H 2115 5555 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 2038 5450 50  0001 C CNN
F 3 "~" H 2000 5600 50  0001 C CNN
	1    2000 5600
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C203
U 1 1 5CE2245D
P 3650 5400
F 0 "C203" V 3421 5400 50  0000 C CNN
F 1 "100n" V 3512 5400 50  0000 C CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 3650 5400 50  0001 C CNN
F 3 "~" H 3650 5400 50  0001 C CNN
	1    3650 5400
	0    1    1    0   
$EndComp
$Comp
L Device:L L201
U 1 1 5CE224B5
P 4050 5550
F 0 "L201" V 4240 5550 50  0000 C CNN
F 1 " SPN30304R7MPTE" V 4150 5450 50  0000 C CNN
F 2 "Inductors:Inductor_Taiyo-Yuden_MD-3030" H 4050 5550 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/1901081516_Darfon-Elec-SPN30304R7MPTE_C359291.pdf" H 4050 5550 50  0001 C CNN
F 4 "C359291" V 4050 5550 50  0001 C CNN "LCSC Part-number"
	1    4050 5550
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small R207
U 1 1 5CE2253D
P 4400 5700
F 0 "R207" H 4459 5746 50  0000 L CNN
F 1 "75k" H 4459 5655 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 4400 5700 50  0001 C CNN
F 3 "~" H 4400 5700 50  0001 C CNN
	1    4400 5700
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R208
U 1 1 5CE22595
P 4400 6000
F 0 "R208" H 4459 6046 50  0000 L CNN
F 1 "24k" H 4459 5955 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 4400 6000 50  0001 C CNN
F 3 "~" H 4400 6000 50  0001 C CNN
	1    4400 6000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0213
U 1 1 5CE22647
P 4400 6200
F 0 "#PWR0213" H 4400 5950 50  0001 C CNN
F 1 "GND" H 4405 6027 50  0000 C CNN
F 2 "" H 4400 6200 50  0001 C CNN
F 3 "" H 4400 6200 50  0001 C CNN
	1    4400 6200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0211
U 1 1 5CE22669
P 2700 6200
F 0 "#PWR0211" H 2700 5950 50  0001 C CNN
F 1 "GND" H 2705 6027 50  0000 C CNN
F 2 "" H 2700 6200 50  0001 C CNN
F 3 "" H 2700 6200 50  0001 C CNN
	1    2700 6200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 5800 2700 5800
Wire Wire Line
	2700 5800 2700 6200
Wire Wire Line
	4400 5800 4400 5850
Wire Wire Line
	4400 6100 4400 6200
Wire Wire Line
	3900 5550 3800 5550
Wire Wire Line
	3800 5400 3750 5400
Wire Wire Line
	3800 5400 3800 5550
Connection ~ 3800 5550
Wire Wire Line
	3800 5550 3600 5550
Wire Wire Line
	3550 5400 3450 5400
Wire Wire Line
	3450 5800 4250 5800
Wire Wire Line
	4250 5800 4250 5850
Wire Wire Line
	4250 5850 4400 5850
Connection ~ 4400 5850
Wire Wire Line
	4400 5850 4400 5900
$Comp
L power:GND #PWR0212
U 1 1 5CE229A8
P 5000 6200
F 0 "#PWR0212" H 5000 5950 50  0001 C CNN
F 1 "GND" H 5005 6027 50  0000 C CNN
F 2 "" H 5000 6200 50  0001 C CNN
F 3 "" H 5000 6200 50  0001 C CNN
	1    5000 6200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 5900 5000 6200
$Comp
L Device:C C206
U 1 1 5CE225D6
P 5000 5750
F 0 "C206" H 5115 5796 50  0000 L CNN
F 1 "2u2" H 5115 5705 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 5038 5600 50  0001 C CNN
F 3 "~" H 5000 5750 50  0001 C CNN
	1    5000 5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 5550 4400 5550
Wire Wire Line
	5000 5550 5000 5600
Wire Wire Line
	4400 5600 4400 5550
Connection ~ 4400 5550
Wire Wire Line
	4400 5550 5000 5550
Text GLabel 5200 5550 2    50   Output ~ 0
+3V3
Wire Wire Line
	5200 5550 5000 5550
Connection ~ 5000 5550
Wire Wire Line
	2000 5400 2000 5450
Wire Wire Line
	1550 5400 1550 5450
Connection ~ 2000 5400
$Comp
L power:GND #PWR0210
U 1 1 5CE237D9
P 2000 6200
F 0 "#PWR0210" H 2000 5950 50  0001 C CNN
F 1 "GND" H 2005 6027 50  0000 C CNN
F 2 "" H 2000 6200 50  0001 C CNN
F 3 "" H 2000 6200 50  0001 C CNN
	1    2000 6200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 5750 2000 6200
$Comp
L power:GND #PWR0209
U 1 1 5CE23A47
P 1550 6200
F 0 "#PWR0209" H 1550 5950 50  0001 C CNN
F 1 "GND" H 1555 6027 50  0000 C CNN
F 2 "" H 1550 6200 50  0001 C CNN
F 3 "" H 1550 6200 50  0001 C CNN
	1    1550 6200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1550 5750 1550 6200
Connection ~ 1550 5400
Wire Wire Line
	1550 5400 1750 5400
$Comp
L power:+BATT #PWR0208
U 1 1 5CE24C07
P 950 5350
F 0 "#PWR0208" H 950 5200 50  0001 C CNN
F 1 "+BATT" H 965 5523 50  0000 C CNN
F 2 "" H 950 5350 50  0001 C CNN
F 3 "" H 950 5350 50  0001 C CNN
	1    950  5350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R206
U 1 1 5CE25764
P 2550 5600
F 0 "R206" V 2450 5600 50  0000 C CNN
F 1 "10k" V 2550 5600 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 2480 5600 50  0001 C CNN
F 3 "~" H 2550 5600 50  0001 C CNN
	1    2550 5600
	0    1    1    0   
$EndComp
Wire Wire Line
	2750 5600 2700 5600
Wire Wire Line
	2400 5600 2350 5600
Wire Wire Line
	2350 5600 2350 5400
Connection ~ 2350 5400
Wire Wire Line
	2350 5400 2000 5400
$Comp
L power:+BATT #PWR0201
U 1 1 5CE285ED
P 1700 1800
F 0 "#PWR0201" H 1700 1650 50  0001 C CNN
F 1 "+BATT" H 1715 1973 50  0000 C CNN
F 2 "" H 1700 1800 50  0001 C CNN
F 3 "" H 1700 1800 50  0001 C CNN
	1    1700 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 1850 2950 1850
Wire Wire Line
	2600 1850 2600 1900
Connection ~ 2600 1850
$Comp
L power:GND #PWR0204
U 1 1 5CE2A7DA
P 2600 2250
F 0 "#PWR0204" H 2600 2000 50  0001 C CNN
F 1 "GND" H 2605 2077 50  0000 C CNN
F 2 "" H 2600 2250 50  0001 C CNN
F 3 "" H 2600 2250 50  0001 C CNN
	1    2600 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 2200 2600 2250
$Comp
L Device:R R201
U 1 1 5CE2B122
P 3150 2000
F 0 "R201" V 3050 2000 50  0000 C CNN
F 1 "10k" V 3150 2000 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 3080 2000 50  0001 C CNN
F 3 "~" H 3150 2000 50  0001 C CNN
	1    3150 2000
	0    1    1    0   
$EndComp
Wire Wire Line
	3000 2000 2950 2000
Wire Wire Line
	2950 2000 2950 1850
Connection ~ 2950 1850
Wire Wire Line
	2950 1850 2600 1850
$Comp
L power:GND #PWR0203
U 1 1 5CE2C59B
P 4100 2450
F 0 "#PWR0203" H 4100 2200 50  0001 C CNN
F 1 "GND" H 4105 2277 50  0000 C CNN
F 2 "" H 4100 2450 50  0001 C CNN
F 3 "" H 4100 2450 50  0001 C CNN
	1    4100 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 2150 4100 2150
Wire Wire Line
	4100 2150 4100 2450
Wire Wire Line
	6450 1900 6450 1850
Wire Wire Line
	6450 1850 6300 1850
$Comp
L Device:R_Small R202
U 1 1 5CE2DDDB
P 6000 2000
F 0 "R202" H 6059 2046 50  0000 L CNN
F 1 "24k" H 6059 1955 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 6000 2000 50  0001 C CNN
F 3 "~" H 6000 2000 50  0001 C CNN
	1    6000 2000
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R204
U 1 1 5CE2DFB1
P 6000 2300
F 0 "R204" H 6059 2346 50  0000 L CNN
F 1 "5k6" H 6059 2255 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 6000 2300 50  0001 C CNN
F 3 "~" H 6000 2300 50  0001 C CNN
	1    6000 2300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0206
U 1 1 5CE2E0B5
P 6000 2450
F 0 "#PWR0206" H 6000 2200 50  0001 C CNN
F 1 "GND" H 6005 2277 50  0000 C CNN
F 2 "" H 6000 2450 50  0001 C CNN
F 3 "" H 6000 2450 50  0001 C CNN
	1    6000 2450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0205
U 1 1 5CE2E0F9
P 6450 2450
F 0 "#PWR0205" H 6450 2200 50  0001 C CNN
F 1 "GND" H 6455 2277 50  0000 C CNN
F 2 "" H 6450 2450 50  0001 C CNN
F 3 "" H 6450 2450 50  0001 C CNN
	1    6450 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	6000 1850 6000 1900
Connection ~ 6000 1850
Wire Wire Line
	6000 2100 6000 2150
Wire Wire Line
	6000 2400 6000 2450
Wire Wire Line
	6450 2200 6450 2450
Wire Wire Line
	5900 2150 5900 2000
Wire Wire Line
	5900 2000 5100 2000
Text GLabel 7150 1850 2    50   Output ~ 0
VCC
Wire Wire Line
	6450 1850 6900 1850
Connection ~ 6450 1850
Connection ~ 6000 2150
$Comp
L Device:R_Small R203
U 1 1 5CE41333
P 1700 2050
F 0 "R203" H 1759 2096 50  0000 L CNN
F 1 "68k" H 1759 2005 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 1700 2050 50  0001 C CNN
F 3 "~" H 1700 2050 50  0001 C CNN
	1    1700 2050
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R205
U 1 1 5CE413A7
P 1700 2350
F 0 "R205" H 1759 2396 50  0000 L CNN
F 1 "12k" H 1759 2305 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 1700 2350 50  0001 C CNN
F 3 "~" H 1700 2350 50  0001 C CNN
	1    1700 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 1850 1700 1800
Wire Wire Line
	2600 1850 1700 1850
$Comp
L power:GND #PWR0207
U 1 1 5CE449A9
P 1700 2600
F 0 "#PWR0207" H 1700 2350 50  0001 C CNN
F 1 "GND" H 1705 2427 50  0000 C CNN
F 2 "" H 1700 2600 50  0001 C CNN
F 3 "" H 1700 2600 50  0001 C CNN
	1    1700 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 1850 1700 1900
Connection ~ 1700 1850
Wire Wire Line
	1700 2150 1700 2200
Wire Wire Line
	1700 2450 1700 2600
Wire Wire Line
	1700 2200 1850 2200
Connection ~ 1700 2200
Wire Wire Line
	1700 2200 1700 2250
Text GLabel 1850 2200 2    50   Output ~ 0
BAT_VOLTAGE
$Comp
L Connector_Generic:Conn_01x02 J201
U 1 1 5CE72878
P 1000 2000
F 0 "J201" H 920 1675 50  0000 C CNN
F 1 "Conn_01x02" H 920 1766 50  0000 C CNN
F 2 "PCBDecals:2Pin_4mm" H 1000 2000 50  0001 C CNN
F 3 "~" H 1000 2000 50  0001 C CNN
	1    1000 2000
	-1   0    0    1   
$EndComp
Connection ~ 1700 1900
Wire Wire Line
	1700 1900 1700 1950
$Comp
L power:GND #PWR0202
U 1 1 5CE75410
P 1300 2050
F 0 "#PWR0202" H 1300 1800 50  0001 C CNN
F 1 "GND" H 1305 1877 50  0000 C CNN
F 2 "" H 1300 2050 50  0001 C CNN
F 3 "" H 1300 2050 50  0001 C CNN
	1    1300 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	1300 2050 1300 2000
Wire Wire Line
	1300 2000 1200 2000
Wire Wire Line
	6000 2150 6000 2200
$Comp
L Device:D_Schottky D201
U 1 1 5CEAE459
P 3600 6000
F 0 "D201" V 3554 6079 50  0000 L CNN
F 1 "SS54" V 3645 6079 50  0000 L CNN
F 2 "Diodes_SMD:D_SMA_Handsoldering" H 3600 6000 50  0001 C CNN
F 3 "https://www.farnell.com/datasheets/1441695.pdf" H 3600 6000 50  0001 C CNN
	1    3600 6000
	0    1    1    0   
$EndComp
Wire Wire Line
	3600 5850 3600 5550
Connection ~ 3600 5550
Wire Wire Line
	3600 5550 3450 5550
$Comp
L power:GND #PWR0214
U 1 1 5CEAFBEB
P 3600 6200
F 0 "#PWR0214" H 3600 5950 50  0001 C CNN
F 1 "GND" H 3605 6027 50  0000 C CNN
F 2 "" H 3600 6200 50  0001 C CNN
F 3 "" H 3600 6200 50  0001 C CNN
	1    3600 6200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 6150 3600 6200
Text Notes 5500 2900 0    50   ~ 0
Voltage Set to 6.5\n\n
$Comp
L Device:CP C202
U 1 1 5CEBF3D6
P 6450 2050
F 0 "C202" H 6568 2096 50  0000 L CNN
F 1 "22u" H 6568 2005 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Radial_D7.5_L11.2_P2.5" H 6488 1900 50  0001 C CNN
F 3 "~" H 6450 2050 50  0001 C CNN
	1    6450 2050
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C201
U 1 1 5CEBF5AB
P 2600 2050
F 0 "C201" H 2718 2096 50  0000 L CNN
F 1 "22u" H 2718 2005 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Radial_D7.5_L11.2_P2.5" H 2638 1900 50  0001 C CNN
F 3 "~" H 2600 2050 50  0001 C CNN
	1    2600 2050
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C204
U 1 1 5CEBF61F
P 1550 5600
F 0 "C204" H 1668 5646 50  0000 L CNN
F 1 "22u" H 1668 5555 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Radial_D7.5_L11.2_P2.5" H 1588 5450 50  0001 C CNN
F 3 "~" H 1550 5600 50  0001 C CNN
	1    1550 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	1200 1900 1700 1900
$Comp
L Device:CP C208
U 1 1 5CF27FB6
P 6900 2050
F 0 "C208" H 7018 2096 50  0000 L CNN
F 1 "22u" H 7018 2005 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Radial_D7.5_L11.2_P2.5" H 6938 1900 50  0001 C CNN
F 3 "~" H 6900 2050 50  0001 C CNN
	1    6900 2050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0124
U 1 1 5CF29509
P 6900 2450
F 0 "#PWR0124" H 6900 2200 50  0001 C CNN
F 1 "GND" H 6905 2277 50  0000 C CNN
F 2 "" H 6900 2450 50  0001 C CNN
F 3 "" H 6900 2450 50  0001 C CNN
	1    6900 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 1900 6900 1850
Connection ~ 6900 1850
Wire Wire Line
	6900 1850 7150 1850
Wire Wire Line
	6900 2200 6900 2450
$Comp
L dk_Transistors-FETs-MOSFETs-Single:AO3401A Q201
U 1 1 5CF36B07
P 1350 4450
F 0 "Q201" V 1617 4450 60  0000 C CNN
F 1 "AO3401A" V 1511 4450 60  0001 C CNN
F 2 "digikey-footprints:SOT-23-3" H 1550 4650 60  0001 L CNN
F 3 "http://aosmd.com/res/data_sheets/AO3401A.pdf" H 1550 4750 60  0001 L CNN
F 4 "785-1001-1-ND" H 1550 4850 60  0001 L CNN "Digi-Key_PN"
F 5 "AO3401A" H 1550 4950 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 1550 5050 60  0001 L CNN "Category"
F 7 "Transistors - FETs, MOSFETs - Single" H 1550 5150 60  0001 L CNN "Family"
F 8 "http://aosmd.com/res/data_sheets/AO3401A.pdf" H 1550 5250 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/alpha-omega-semiconductor-inc/AO3401A/785-1001-1-ND/1855943" H 1550 5350 60  0001 L CNN "DK_Detail_Page"
F 10 "MOSFET P-CH 30V 4A SOT23" H 1550 5450 60  0001 L CNN "Description"
F 11 "Alpha & Omega Semiconductor Inc." H 1550 5550 60  0001 L CNN "Manufacturer"
F 12 "Active" H 1550 5650 60  0001 L CNN "Status"
	1    1350 4450
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small R209
U 1 1 5CF36D51
P 1450 4950
F 0 "R209" H 1509 4996 50  0000 L CNN
F 1 "100k" H 1509 4905 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 1450 4950 50  0001 C CNN
F 3 "~" H 1450 4950 50  0001 C CNN
	1    1450 4950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0219
U 1 1 5CF36E27
P 1450 5100
F 0 "#PWR0219" H 1450 4850 50  0001 C CNN
F 1 "GND" H 1455 4927 50  0000 C CNN
F 2 "" H 1450 5100 50  0001 C CNN
F 3 "" H 1450 5100 50  0001 C CNN
	1    1450 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 4750 1450 4800
Wire Wire Line
	1450 5050 1450 5100
Wire Wire Line
	1150 4450 1100 4450
$Comp
L power:+BATT #PWR0218
U 1 1 5CF3EA9B
P 1000 4700
F 0 "#PWR0218" H 1000 4550 50  0001 C CNN
F 1 "+BATT" H 1015 4873 50  0000 C CNN
F 2 "" H 1000 4700 50  0001 C CNN
F 3 "" H 1000 4700 50  0001 C CNN
	1    1000 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 4800 1000 4800
Wire Wire Line
	1000 4800 1000 4700
Connection ~ 1450 4800
Wire Wire Line
	1450 4800 1450 4850
Wire Wire Line
	5900 2150 6000 2150
$Comp
L Device:L L202
U 1 1 5CF4DE61
P 5400 1850
F 0 "L202" V 5650 1900 50  0000 C CNN
F 1 " BCRH1212Y-680M" V 5550 1900 50  0000 C CNN
F 2 "PCBDecals:12x12_inductor" H 5400 1850 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Bao-Cheng-Elec-BC-BCRH1212Y-680M_C238002.pdf" H 5400 1850 50  0001 C CNN
F 4 " C238002" H 5400 1850 50  0001 C CNN "LCSC Part-number"
	1    5400 1850
	0    -1   -1   0   
$EndComp
$Comp
L Device:D_Schottky D202
U 1 1 5CF53AD6
P 5150 2200
F 0 "D202" V 5104 2279 50  0000 L CNN
F 1 "SS54" V 5195 2279 50  0000 L CNN
F 2 "Diodes_SMD:D_SMA_Handsoldering" H 5150 2200 50  0001 C CNN
F 3 "https://www.farnell.com/datasheets/1441695.pdf" H 5150 2200 50  0001 C CNN
	1    5150 2200
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0216
U 1 1 5CF53B71
P 5150 2450
F 0 "#PWR0216" H 5150 2200 50  0001 C CNN
F 1 "GND" H 5155 2277 50  0000 C CNN
F 2 "" H 5150 2450 50  0001 C CNN
F 3 "" H 5150 2450 50  0001 C CNN
	1    5150 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5150 2050 5150 1850
Wire Wire Line
	5100 1850 5150 1850
Connection ~ 5150 1850
Wire Wire Line
	5150 2350 5150 2450
Wire Wire Line
	950  5400 950  5350
$Comp
L power:VBUS #PWR0223
U 1 1 5CEF4C73
P 1100 4150
F 0 "#PWR0223" H 1100 4000 50  0001 C CNN
F 1 "VBUS" H 1115 4323 50  0000 C CNN
F 2 "" H 1100 4150 50  0001 C CNN
F 3 "" H 1100 4150 50  0001 C CNN
	1    1100 4150
	1    0    0    -1  
$EndComp
$Comp
L dk_Transistors-FETs-MOSFETs-Single:AO3401A Q202
U 1 1 5CEF50AC
P 5750 950
F 0 "Q202" V 6017 950 60  0000 C CNN
F 1 "AO3401A" V 5911 950 60  0000 C CNN
F 2 "digikey-footprints:SOT-23-3" H 5950 1150 60  0001 L CNN
F 3 "http://aosmd.com/res/data_sheets/AO3401A.pdf" H 5950 1250 60  0001 L CNN
F 4 "785-1001-1-ND" H 5950 1350 60  0001 L CNN "Digi-Key_PN"
F 5 "AO3401A" H 5950 1450 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 5950 1550 60  0001 L CNN "Category"
F 7 "Transistors - FETs, MOSFETs - Single" H 5950 1650 60  0001 L CNN "Family"
F 8 "http://aosmd.com/res/data_sheets/AO3401A.pdf" H 5950 1750 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/alpha-omega-semiconductor-inc/AO3401A/785-1001-1-ND/1855943" H 5950 1850 60  0001 L CNN "DK_Detail_Page"
F 10 "MOSFET P-CH 30V 4A SOT23" H 5950 1950 60  0001 L CNN "Description"
F 11 "Alpha & Omega Semiconductor Inc." H 5950 2050 60  0001 L CNN "Manufacturer"
F 12 "Active" H 5950 2150 60  0001 L CNN "Status"
	1    5750 950 
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5550 950  5450 950 
Wire Wire Line
	5450 950  5450 850 
$Comp
L power:VBUS #PWR0215
U 1 1 5CEF50B5
P 5450 850
F 0 "#PWR0215" H 5450 700 50  0001 C CNN
F 1 "VBUS" H 5465 1023 50  0000 C CNN
F 2 "" H 5450 850 50  0001 C CNN
F 3 "" H 5450 850 50  0001 C CNN
	1    5450 850 
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R210
U 1 1 5CEF717D
P 5850 1450
F 0 "R210" H 5909 1496 50  0000 L CNN
F 1 "100k" H 5909 1405 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 5850 1450 50  0001 C CNN
F 3 "~" H 5850 1450 50  0001 C CNN
	1    5850 1450
	1    0    0    -1  
$EndComp
$Comp
L power:+BATT #PWR0217
U 1 1 5CEF71E5
P 5400 1250
F 0 "#PWR0217" H 5400 1100 50  0001 C CNN
F 1 "+BATT" H 5415 1423 50  0000 C CNN
F 2 "" H 5400 1250 50  0001 C CNN
F 3 "" H 5400 1250 50  0001 C CNN
	1    5400 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 1250 5850 1300
Wire Wire Line
	5850 1300 5400 1300
Wire Wire Line
	5400 1300 5400 1250
Connection ~ 5850 1300
Wire Wire Line
	5850 1300 5850 1350
$Comp
L power:GND #PWR0220
U 1 1 5CEFD851
P 5850 1600
F 0 "#PWR0220" H 5850 1350 50  0001 C CNN
F 1 "GND" H 5855 1427 50  0000 C CNN
F 2 "" H 5850 1600 50  0001 C CNN
F 3 "" H 5850 1600 50  0001 C CNN
	1    5850 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 1550 5850 1600
Wire Wire Line
	6300 1850 6300 950 
Wire Wire Line
	6300 950  5950 950 
Connection ~ 6300 1850
Wire Wire Line
	6300 1850 6000 1850
Wire Wire Line
	950  5400 1550 5400
$Comp
L Misc:AP1501-K5 U201
U 1 1 5CE284E9
P 4500 1950
F 0 "U201" H 4625 2275 50  0000 C CNN
F 1 "AP1501-K5" H 4625 2184 50  0000 C CNN
F 2 "TO_SOT_Packages_SMD:TO-263-5_TabPin3" H 4500 1950 50  0001 C CNN
F 3 "https://www.diodes.com/assets/Datasheets/AP1501.pdf" H 4500 1950 50  0001 C CNN
	1    4500 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 2000 3500 2000
Wire Wire Line
	1100 4150 1100 4450
Wire Wire Line
	1550 4450 1750 4450
$Comp
L dk_Transistors-FETs-MOSFETs-Single:IRLML6344TRPBF Q203
U 1 1 5CF39E77
P 3500 2750
F 0 "Q203" H 3607 2803 60  0000 L CNN
F 1 "IRLML6344TRPBF" H 3607 2697 60  0001 L CNN
F 2 "digikey-footprints:SOT-23-3" H 3700 2950 60  0001 L CNN
F 3 "https://www.infineon.com/dgdl/irlml6344pbf.pdf?fileId=5546d462533600a4015356689c44262c" H 3700 3050 60  0001 L CNN
F 4 "IRLML6344TRPBFCT-ND" H 3700 3150 60  0001 L CNN "Digi-Key_PN"
F 5 "IRLML6344TRPBF" H 3700 3250 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 3700 3350 60  0001 L CNN "Category"
F 7 "Transistors - FETs, MOSFETs - Single" H 3700 3450 60  0001 L CNN "Family"
F 8 "https://www.infineon.com/dgdl/irlml6344pbf.pdf?fileId=5546d462533600a4015356689c44262c" H 3700 3550 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/infineon-technologies/IRLML6344TRPBF/IRLML6344TRPBFCT-ND/2538168" H 3700 3650 60  0001 L CNN "DK_Detail_Page"
F 10 "MOSFET N-CH 30V 5A SOT23" H 3700 3750 60  0001 L CNN "Description"
F 11 "Infineon Technologies" H 3700 3850 60  0001 L CNN "Manufacturer"
F 12 "Active" H 3700 3950 60  0001 L CNN "Status"
	1    3500 2750
	1    0    0    -1  
$EndComp
$Comp
L dk_Transistors-FETs-MOSFETs-Single:IRLML6344TRPBF Q204
U 1 1 5CF39F1F
P 2850 3350
F 0 "Q204" H 2957 3403 60  0000 L CNN
F 1 "IRLML6344TRPBF" H 2957 3297 60  0001 L CNN
F 2 "digikey-footprints:SOT-23-3" H 3050 3550 60  0001 L CNN
F 3 "https://www.infineon.com/dgdl/irlml6344pbf.pdf?fileId=5546d462533600a4015356689c44262c" H 3050 3650 60  0001 L CNN
F 4 "IRLML6344TRPBFCT-ND" H 3050 3750 60  0001 L CNN "Digi-Key_PN"
F 5 "IRLML6344TRPBF" H 3050 3850 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 3050 3950 60  0001 L CNN "Category"
F 7 "Transistors - FETs, MOSFETs - Single" H 3050 4050 60  0001 L CNN "Family"
F 8 "https://www.infineon.com/dgdl/irlml6344pbf.pdf?fileId=5546d462533600a4015356689c44262c" H 3050 4150 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/infineon-technologies/IRLML6344TRPBF/IRLML6344TRPBFCT-ND/2538168" H 3050 4250 60  0001 L CNN "DK_Detail_Page"
F 10 "MOSFET N-CH 30V 5A SOT23" H 3050 4350 60  0001 L CNN "Description"
F 11 "Infineon Technologies" H 3050 4450 60  0001 L CNN "Manufacturer"
F 12 "Active" H 3050 4550 60  0001 L CNN "Status"
	1    2850 3350
	1    0    0    -1  
$EndComp
$Comp
L power:VBUS #PWR0221
U 1 1 5CF3C6BB
P 2500 2700
F 0 "#PWR0221" H 2500 2550 50  0001 C CNN
F 1 "VBUS" H 2515 2873 50  0000 C CNN
F 2 "" H 2500 2700 50  0001 C CNN
F 3 "" H 2500 2700 50  0001 C CNN
	1    2500 2700
	1    0    0    -1  
$EndComp
$Comp
L power:+BATT #PWR0224
U 1 1 5CF3C6FE
P 2150 3350
F 0 "#PWR0224" H 2150 3200 50  0001 C CNN
F 1 "+BATT" H 2165 3523 50  0000 C CNN
F 2 "" H 2150 3350 50  0001 C CNN
F 3 "" H 2150 3350 50  0001 C CNN
	1    2150 3350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0226
U 1 1 5CF41727
P 2850 3900
F 0 "#PWR0226" H 2850 3650 50  0001 C CNN
F 1 "GND" H 2855 3727 50  0000 C CNN
F 2 "" H 2850 3900 50  0001 C CNN
F 3 "" H 2850 3900 50  0001 C CNN
	1    2850 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 2550 3500 2000
Connection ~ 3500 2000
Wire Wire Line
	3500 2000 4150 2000
$Comp
L power:GND #PWR0222
U 1 1 5CF53AC4
P 3500 3150
F 0 "#PWR0222" H 3500 2900 50  0001 C CNN
F 1 "GND" H 3505 2977 50  0000 C CNN
F 2 "" H 3500 3150 50  0001 C CNN
F 3 "" H 3500 3150 50  0001 C CNN
	1    3500 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 2950 3500 3150
$Comp
L Device:R_Small R212
U 1 1 5CF56439
P 3150 3000
F 0 "R212" H 3209 3046 50  0000 L CNN
F 1 "100k" H 3209 2955 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 3150 3000 50  0001 C CNN
F 3 "~" H 3150 3000 50  0001 C CNN
	1    3150 3000
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3150 3100 3150 3150
Wire Wire Line
	3150 3150 3500 3150
Connection ~ 3500 3150
Wire Wire Line
	3150 2900 3150 2850
Wire Wire Line
	3150 2850 3200 2850
Connection ~ 3150 2850
Wire Wire Line
	1750 5400 1750 4450
Connection ~ 1750 5400
Wire Wire Line
	1750 5400 2000 5400
Wire Wire Line
	2350 5400 2750 5400
Wire Wire Line
	2850 2850 2850 3150
Wire Wire Line
	2850 2850 3150 2850
$Comp
L Device:R_Small R213
U 1 1 5CF6A8D0
P 2350 3450
F 0 "R213" V 2154 3450 50  0000 C CNN
F 1 "10k" V 2245 3450 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 2350 3450 50  0001 C CNN
F 3 "~" H 2350 3450 50  0001 C CNN
	1    2350 3450
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R211
U 1 1 5CF6AAD4
P 2700 2850
F 0 "R211" V 2504 2850 50  0000 C CNN
F 1 "10k" V 2595 2850 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 2700 2850 50  0001 C CNN
F 3 "~" H 2700 2850 50  0001 C CNN
	1    2700 2850
	0    1    1    0   
$EndComp
Wire Wire Line
	2850 2850 2800 2850
Connection ~ 2850 2850
Wire Wire Line
	2600 2850 2500 2850
Wire Wire Line
	2500 2850 2500 2700
Wire Wire Line
	2550 3450 2500 3450
Wire Wire Line
	2250 3450 2150 3450
Wire Wire Line
	2150 3450 2150 3350
$Comp
L Device:R_Small R214
U 1 1 5CF77375
P 2500 3700
F 0 "R214" H 2559 3746 50  0000 L CNN
F 1 "100k" H 2559 3655 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 2500 3700 50  0001 C CNN
F 3 "~" H 2500 3700 50  0001 C CNN
	1    2500 3700
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2850 3550 2850 3850
Wire Wire Line
	2850 3850 2500 3850
Wire Wire Line
	2500 3850 2500 3800
Connection ~ 2850 3850
Wire Wire Line
	2850 3850 2850 3900
Wire Wire Line
	2500 3600 2500 3450
Connection ~ 2500 3450
Wire Wire Line
	2500 3450 2450 3450
Wire Wire Line
	5550 1850 6000 1850
Wire Wire Line
	5150 1850 5250 1850
$EndSCHEMATC
