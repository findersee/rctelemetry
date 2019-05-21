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
P 3050 3900
F 0 "U202" H 3050 4399 50  0000 C CNN
F 1 "RT6200" H 3050 4315 40  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-23-6_Handsoldering" H 3050 3900 50  0001 C CNN
F 3 "https://www.richtek.com/assets/product_file/RT6200/DS6200-04.pdf" H 3050 3900 50  0001 C CNN
	1    3050 3900
	1    0    0    -1  
$EndComp
$Comp
L Device:C C205
U 1 1 5CE223A1
P 1950 3850
F 0 "C205" H 2065 3896 50  0000 L CNN
F 1 "1u" H 2065 3805 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 1988 3700 50  0001 C CNN
F 3 "~" H 1950 3850 50  0001 C CNN
	1    1950 3850
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C203
U 1 1 5CE2245D
P 3600 3650
F 0 "C203" V 3371 3650 50  0000 C CNN
F 1 "100n" V 3462 3650 50  0000 C CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 3600 3650 50  0001 C CNN
F 3 "~" H 3600 3650 50  0001 C CNN
	1    3600 3650
	0    1    1    0   
$EndComp
$Comp
L Device:L L201
U 1 1 5CE224B5
P 4000 3800
F 0 "L201" V 4190 3800 50  0000 C CNN
F 1 "4u7" V 4099 3800 50  0000 C CNN
F 2 "Inductors_NEOSID:Neosid_Inductor_SM-NE56_SMD2220" H 4000 3800 50  0001 C CNN
F 3 "~" H 4000 3800 50  0001 C CNN
	1    4000 3800
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small R207
U 1 1 5CE2253D
P 4350 3950
F 0 "R207" H 4409 3996 50  0000 L CNN
F 1 "75k" H 4409 3905 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 4350 3950 50  0001 C CNN
F 3 "~" H 4350 3950 50  0001 C CNN
	1    4350 3950
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R208
U 1 1 5CE22595
P 4350 4250
F 0 "R208" H 4409 4296 50  0000 L CNN
F 1 "24k" H 4409 4205 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 4350 4250 50  0001 C CNN
F 3 "~" H 4350 4250 50  0001 C CNN
	1    4350 4250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0213
U 1 1 5CE22647
P 4350 4400
F 0 "#PWR0213" H 4350 4150 50  0001 C CNN
F 1 "GND" H 4355 4227 50  0000 C CNN
F 2 "" H 4350 4400 50  0001 C CNN
F 3 "" H 4350 4400 50  0001 C CNN
	1    4350 4400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0211
U 1 1 5CE22669
P 2650 4150
F 0 "#PWR0211" H 2650 3900 50  0001 C CNN
F 1 "GND" H 2655 3977 50  0000 C CNN
F 2 "" H 2650 4150 50  0001 C CNN
F 3 "" H 2650 4150 50  0001 C CNN
	1    2650 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 4050 2650 4050
Wire Wire Line
	2650 4050 2650 4150
Wire Wire Line
	4350 4050 4350 4100
Wire Wire Line
	4350 4350 4350 4400
Wire Wire Line
	3850 3800 3750 3800
Wire Wire Line
	3750 3650 3700 3650
Wire Wire Line
	3750 3650 3750 3800
Connection ~ 3750 3800
Wire Wire Line
	3750 3800 3550 3800
Wire Wire Line
	3500 3650 3400 3650
Wire Wire Line
	3400 4050 4200 4050
Wire Wire Line
	4200 4050 4200 4100
Wire Wire Line
	4200 4100 4350 4100
Connection ~ 4350 4100
Wire Wire Line
	4350 4100 4350 4150
$Comp
L power:GND #PWR0212
U 1 1 5CE229A8
P 4950 4200
F 0 "#PWR0212" H 4950 3950 50  0001 C CNN
F 1 "GND" H 4955 4027 50  0000 C CNN
F 2 "" H 4950 4200 50  0001 C CNN
F 3 "" H 4950 4200 50  0001 C CNN
	1    4950 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 4150 4950 4200
$Comp
L Device:C C206
U 1 1 5CE225D6
P 4950 4000
F 0 "C206" H 5065 4046 50  0000 L CNN
F 1 "2u2" H 5065 3955 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 4988 3850 50  0001 C CNN
F 3 "~" H 4950 4000 50  0001 C CNN
	1    4950 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 3800 4350 3800
Wire Wire Line
	4950 3800 4950 3850
Wire Wire Line
	4350 3850 4350 3800
Connection ~ 4350 3800
Wire Wire Line
	4350 3800 4950 3800
Text GLabel 5150 3800 2    50   Output ~ 0
+3V3
Wire Wire Line
	5150 3800 4950 3800
Connection ~ 4950 3800
Wire Wire Line
	2700 3650 2650 3650
Wire Wire Line
	1950 3650 1950 3700
Wire Wire Line
	1500 3650 1500 3700
Connection ~ 1950 3650
$Comp
L power:GND #PWR0210
U 1 1 5CE237D9
P 1950 4050
F 0 "#PWR0210" H 1950 3800 50  0001 C CNN
F 1 "GND" H 1955 3877 50  0000 C CNN
F 2 "" H 1950 4050 50  0001 C CNN
F 3 "" H 1950 4050 50  0001 C CNN
	1    1950 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 4000 1950 4050
$Comp
L power:GND #PWR0209
U 1 1 5CE23A47
P 1500 4050
F 0 "#PWR0209" H 1500 3800 50  0001 C CNN
F 1 "GND" H 1505 3877 50  0000 C CNN
F 2 "" H 1500 4050 50  0001 C CNN
F 3 "" H 1500 4050 50  0001 C CNN
	1    1500 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 4000 1500 4050
Connection ~ 1500 3650
Wire Wire Line
	1500 3650 1950 3650
$Comp
L power:+BATT #PWR0208
U 1 1 5CE24C07
P 900 3600
F 0 "#PWR0208" H 900 3450 50  0001 C CNN
F 1 "+BATT" H 915 3773 50  0000 C CNN
F 2 "" H 900 3600 50  0001 C CNN
F 3 "" H 900 3600 50  0001 C CNN
	1    900  3600
	1    0    0    -1  
$EndComp
$Comp
L Device:R R206
U 1 1 5CE25764
P 2500 3850
F 0 "R206" V 2400 3850 50  0000 C CNN
F 1 "10k" V 2500 3850 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 2430 3850 50  0001 C CNN
F 3 "~" H 2500 3850 50  0001 C CNN
	1    2500 3850
	0    1    1    0   
$EndComp
Wire Wire Line
	2700 3850 2650 3850
Wire Wire Line
	2350 3850 2300 3850
Wire Wire Line
	2300 3850 2300 3650
Connection ~ 2300 3650
Wire Wire Line
	2300 3650 1950 3650
$Comp
L Misc:AP1501-K5 U201
U 1 1 5CE284E9
P 3750 1550
F 0 "U201" H 3875 1875 50  0000 C CNN
F 1 "AP1501-K5" H 3875 1784 50  0000 C CNN
F 2 "TO_SOT_Packages_SMD:TO-263-5_TabPin3" H 3750 1550 50  0001 C CNN
F 3 "https://www.diodes.com/assets/Datasheets/AP1501.pdf" H 3750 1550 50  0001 C CNN
	1    3750 1550
	1    0    0    -1  
$EndComp
$Comp
L power:+BATT #PWR0201
U 1 1 5CE285ED
P 1700 1400
F 0 "#PWR0201" H 1700 1250 50  0001 C CNN
F 1 "+BATT" H 1715 1573 50  0000 C CNN
F 2 "" H 1700 1400 50  0001 C CNN
F 3 "" H 1700 1400 50  0001 C CNN
	1    1700 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 1450 2950 1450
Wire Wire Line
	2600 1450 2600 1500
Connection ~ 2600 1450
$Comp
L power:GND #PWR0204
U 1 1 5CE2A7DA
P 2600 1850
F 0 "#PWR0204" H 2600 1600 50  0001 C CNN
F 1 "GND" H 2605 1677 50  0000 C CNN
F 2 "" H 2600 1850 50  0001 C CNN
F 3 "" H 2600 1850 50  0001 C CNN
	1    2600 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 1800 2600 1850
$Comp
L Device:R R201
U 1 1 5CE2B122
P 3150 1600
F 0 "R201" V 3050 1600 50  0000 C CNN
F 1 "10k" V 3150 1600 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 3080 1600 50  0001 C CNN
F 3 "~" H 3150 1600 50  0001 C CNN
	1    3150 1600
	0    1    1    0   
$EndComp
Wire Wire Line
	3400 1600 3300 1600
Wire Wire Line
	3000 1600 2950 1600
Wire Wire Line
	2950 1600 2950 1450
Connection ~ 2950 1450
Wire Wire Line
	2950 1450 2600 1450
$Comp
L power:GND #PWR0203
U 1 1 5CE2C59B
P 3350 1800
F 0 "#PWR0203" H 3350 1550 50  0001 C CNN
F 1 "GND" H 3355 1627 50  0000 C CNN
F 2 "" H 3350 1800 50  0001 C CNN
F 3 "" H 3350 1800 50  0001 C CNN
	1    3350 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 1750 3350 1750
Wire Wire Line
	3350 1750 3350 1800
Wire Wire Line
	5700 1500 5700 1450
Wire Wire Line
	5700 1450 5250 1450
$Comp
L Device:R_Small R202
U 1 1 5CE2DDDB
P 5250 1600
F 0 "R202" H 5309 1646 50  0000 L CNN
F 1 "24k" H 5309 1555 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 5250 1600 50  0001 C CNN
F 3 "~" H 5250 1600 50  0001 C CNN
	1    5250 1600
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R204
U 1 1 5CE2DFB1
P 5250 1900
F 0 "R204" H 5309 1946 50  0000 L CNN
F 1 "5k6" H 5309 1855 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 5250 1900 50  0001 C CNN
F 3 "~" H 5250 1900 50  0001 C CNN
	1    5250 1900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0206
U 1 1 5CE2E0B5
P 5250 2050
F 0 "#PWR0206" H 5250 1800 50  0001 C CNN
F 1 "GND" H 5255 1877 50  0000 C CNN
F 2 "" H 5250 2050 50  0001 C CNN
F 3 "" H 5250 2050 50  0001 C CNN
	1    5250 2050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0205
U 1 1 5CE2E0F9
P 5700 1850
F 0 "#PWR0205" H 5700 1600 50  0001 C CNN
F 1 "GND" H 5705 1677 50  0000 C CNN
F 2 "" H 5700 1850 50  0001 C CNN
F 3 "" H 5700 1850 50  0001 C CNN
	1    5700 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 1450 5250 1500
Connection ~ 5250 1450
Wire Wire Line
	5250 1700 5250 1750
Wire Wire Line
	5250 2000 5250 2050
Wire Wire Line
	5700 1800 5700 1850
Wire Wire Line
	5150 1750 5150 1600
Wire Wire Line
	5150 1600 4350 1600
Text GLabel 6400 1450 2    50   Output ~ 0
VCC
Wire Wire Line
	5700 1450 6150 1450
Connection ~ 5700 1450
Connection ~ 5250 1750
$Comp
L Device:R_Small R203
U 1 1 5CE41333
P 1700 1650
F 0 "R203" H 1759 1696 50  0000 L CNN
F 1 "68k" H 1759 1605 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 1700 1650 50  0001 C CNN
F 3 "~" H 1700 1650 50  0001 C CNN
	1    1700 1650
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R205
U 1 1 5CE413A7
P 1700 1950
F 0 "R205" H 1759 1996 50  0000 L CNN
F 1 "12k" H 1759 1905 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 1700 1950 50  0001 C CNN
F 3 "~" H 1700 1950 50  0001 C CNN
	1    1700 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 1450 1700 1400
Wire Wire Line
	2600 1450 1700 1450
$Comp
L power:GND #PWR0207
U 1 1 5CE449A9
P 1700 2200
F 0 "#PWR0207" H 1700 1950 50  0001 C CNN
F 1 "GND" H 1705 2027 50  0000 C CNN
F 2 "" H 1700 2200 50  0001 C CNN
F 3 "" H 1700 2200 50  0001 C CNN
	1    1700 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 1450 1700 1500
Connection ~ 1700 1450
Wire Wire Line
	1700 1750 1700 1800
Wire Wire Line
	1700 2050 1700 2200
Wire Wire Line
	1700 1800 1850 1800
Connection ~ 1700 1800
Wire Wire Line
	1700 1800 1700 1850
Text GLabel 1850 1800 2    50   Output ~ 0
BAT_VOLTAGE
$Comp
L Connector_Generic:Conn_01x02 J201
U 1 1 5CE72878
P 1000 1600
F 0 "J201" H 920 1275 50  0000 C CNN
F 1 "Conn_01x02" H 920 1366 50  0000 C CNN
F 2 "Connect:JWT_Vertical_A3963-RM3.96mm-2" H 1000 1600 50  0001 C CNN
F 3 "~" H 1000 1600 50  0001 C CNN
	1    1000 1600
	-1   0    0    1   
$EndComp
Connection ~ 1700 1500
Wire Wire Line
	1700 1500 1700 1550
$Comp
L power:GND #PWR0202
U 1 1 5CE75410
P 1300 1650
F 0 "#PWR0202" H 1300 1400 50  0001 C CNN
F 1 "GND" H 1305 1477 50  0000 C CNN
F 2 "" H 1300 1650 50  0001 C CNN
F 3 "" H 1300 1650 50  0001 C CNN
	1    1300 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	1300 1650 1300 1600
Wire Wire Line
	1300 1600 1200 1600
Wire Wire Line
	5250 1750 5250 1800
$Comp
L Device:D_Schottky D201
U 1 1 5CEAE459
P 3550 4250
F 0 "D201" V 3504 4329 50  0000 L CNN
F 1 "D_Schottky" V 3595 4329 50  0000 L CNN
F 2 "Diodes_SMD:D_SOD-123" H 3550 4250 50  0001 C CNN
F 3 "~" H 3550 4250 50  0001 C CNN
	1    3550 4250
	0    1    1    0   
$EndComp
Wire Wire Line
	3550 4100 3550 3800
Connection ~ 3550 3800
Wire Wire Line
	3550 3800 3400 3800
$Comp
L power:GND #PWR0214
U 1 1 5CEAFBEB
P 3550 4450
F 0 "#PWR0214" H 3550 4200 50  0001 C CNN
F 1 "GND" H 3555 4277 50  0000 C CNN
F 2 "" H 3550 4450 50  0001 C CNN
F 3 "" H 3550 4450 50  0001 C CNN
	1    3550 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 4400 3550 4450
Text Notes 5350 2250 0    50   ~ 0
Voltage Set to 6.5\n\n
$Comp
L Device:CP C202
U 1 1 5CEBF3D6
P 5700 1650
F 0 "C202" H 5818 1696 50  0000 L CNN
F 1 "22u" H 5818 1605 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Radial_D7.5_L11.2_P2.5" H 5738 1500 50  0001 C CNN
F 3 "~" H 5700 1650 50  0001 C CNN
	1    5700 1650
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C201
U 1 1 5CEBF5AB
P 2600 1650
F 0 "C201" H 2718 1696 50  0000 L CNN
F 1 "22u" H 2718 1605 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Radial_D7.5_L11.2_P2.5" H 2638 1500 50  0001 C CNN
F 3 "~" H 2600 1650 50  0001 C CNN
	1    2600 1650
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C204
U 1 1 5CEBF61F
P 1500 3850
F 0 "C204" H 1618 3896 50  0000 L CNN
F 1 "22u" H 1618 3805 50  0000 L CNN
F 2 "" H 1538 3700 50  0001 C CNN
F 3 "~" H 1500 3850 50  0001 C CNN
	1    1500 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	1300 3650 1500 3650
Wire Wire Line
	1200 1500 1700 1500
$Comp
L Device:C C207
U 1 1 5CF22A27
P 1450 2000
F 0 "C207" H 1565 2046 50  0000 L CNN
F 1 "100n" H 1565 1955 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 1488 1850 50  0001 C CNN
F 3 "~" H 1450 2000 50  0001 C CNN
	1    1450 2000
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR0215
U 1 1 5CF23E97
P 1450 2200
F 0 "#PWR0215" H 1450 1950 50  0001 C CNN
F 1 "GND" H 1455 2027 50  0000 C CNN
F 2 "" H 1450 2200 50  0001 C CNN
F 3 "" H 1450 2200 50  0001 C CNN
	1    1450 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 2150 1450 2200
Wire Wire Line
	1450 1850 1700 1850
Connection ~ 1700 1850
$Comp
L Device:CP C208
U 1 1 5CF27FB6
P 6150 1650
F 0 "C208" H 6268 1696 50  0000 L CNN
F 1 "22u" H 6268 1605 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Radial_D7.5_L11.2_P2.5" H 6188 1500 50  0001 C CNN
F 3 "~" H 6150 1650 50  0001 C CNN
	1    6150 1650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0124
U 1 1 5CF29509
P 6150 1850
F 0 "#PWR0124" H 6150 1600 50  0001 C CNN
F 1 "GND" H 6155 1677 50  0000 C CNN
F 2 "" H 6150 1850 50  0001 C CNN
F 3 "" H 6150 1850 50  0001 C CNN
	1    6150 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	6150 1500 6150 1450
Connection ~ 6150 1450
Wire Wire Line
	6150 1450 6400 1450
Wire Wire Line
	6150 1800 6150 1850
$Comp
L dk_Transistors-FETs-MOSFETs-Single:AO3401A Q201
U 1 1 5CF36B07
P 2200 2700
F 0 "Q201" V 2467 2700 60  0000 C CNN
F 1 "AO3401A" V 2361 2700 60  0000 C CNN
F 2 "digikey-footprints:SOT-23-3" H 2400 2900 60  0001 L CNN
F 3 "http://aosmd.com/res/data_sheets/AO3401A.pdf" H 2400 3000 60  0001 L CNN
F 4 "785-1001-1-ND" H 2400 3100 60  0001 L CNN "Digi-Key_PN"
F 5 "AO3401A" H 2400 3200 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 2400 3300 60  0001 L CNN "Category"
F 7 "Transistors - FETs, MOSFETs - Single" H 2400 3400 60  0001 L CNN "Family"
F 8 "http://aosmd.com/res/data_sheets/AO3401A.pdf" H 2400 3500 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/alpha-omega-semiconductor-inc/AO3401A/785-1001-1-ND/1855943" H 2400 3600 60  0001 L CNN "DK_Detail_Page"
F 10 "MOSFET P-CH 30V 4A SOT23" H 2400 3700 60  0001 L CNN "Description"
F 11 "Alpha & Omega Semiconductor Inc." H 2400 3800 60  0001 L CNN "Manufacturer"
F 12 "Active" H 2400 3900 60  0001 L CNN "Status"
	1    2200 2700
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small R209
U 1 1 5CF36D51
P 2300 3200
F 0 "R209" H 2359 3246 50  0000 L CNN
F 1 "R_Small" H 2359 3155 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 2300 3200 50  0001 C CNN
F 3 "~" H 2300 3200 50  0001 C CNN
	1    2300 3200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0219
U 1 1 5CF36E27
P 2300 3350
F 0 "#PWR0219" H 2300 3100 50  0001 C CNN
F 1 "GND" H 2305 3177 50  0000 C CNN
F 2 "" H 2300 3350 50  0001 C CNN
F 3 "" H 2300 3350 50  0001 C CNN
	1    2300 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 3000 2300 3050
Wire Wire Line
	2300 3300 2300 3350
Wire Wire Line
	2400 2700 2650 2700
Wire Wire Line
	2650 2700 2650 3650
Connection ~ 2650 3650
Wire Wire Line
	2650 3650 2300 3650
Wire Wire Line
	2000 2700 1900 2700
Wire Wire Line
	1900 2700 1900 2600
$Comp
L power:VCC #PWR0217
U 1 1 5CF3E9FF
P 1900 2600
F 0 "#PWR0217" H 1900 2450 50  0001 C CNN
F 1 "VCC" H 1917 2773 50  0000 C CNN
F 2 "" H 1900 2600 50  0001 C CNN
F 3 "" H 1900 2600 50  0001 C CNN
	1    1900 2600
	1    0    0    -1  
$EndComp
$Comp
L power:+BATT #PWR0218
U 1 1 5CF3EA9B
P 1850 2950
F 0 "#PWR0218" H 1850 2800 50  0001 C CNN
F 1 "+BATT" H 1865 3123 50  0000 C CNN
F 2 "" H 1850 2950 50  0001 C CNN
F 3 "" H 1850 2950 50  0001 C CNN
	1    1850 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 3050 1850 3050
Wire Wire Line
	1850 3050 1850 2950
Connection ~ 2300 3050
Wire Wire Line
	2300 3050 2300 3100
Wire Wire Line
	5150 1750 5250 1750
$Comp
L pspice:INDUCTOR L202
U 1 1 5CF4DE61
P 4700 1450
F 0 "L202" H 4700 1665 50  0000 C CNN
F 1 "47u" H 4700 1574 50  0000 C CNN
F 2 "Inductors_NEOSID:Neosid_Inductor_SM-NE127" H 4700 1450 50  0001 C CNN
F 3 "" H 4700 1450 50  0001 C CNN
	1    4700 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 1450 5250 1450
$Comp
L Device:D_Schottky D202
U 1 1 5CF53AD6
P 4400 1800
F 0 "D202" V 4354 1879 50  0000 L CNN
F 1 "D_Schottky" V 4445 1879 50  0000 L CNN
F 2 "Diodes_SMD:D_SMA_Handsoldering" H 4400 1800 50  0001 C CNN
F 3 "~" H 4400 1800 50  0001 C CNN
	1    4400 1800
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0216
U 1 1 5CF53B71
P 4400 2000
F 0 "#PWR0216" H 4400 1750 50  0001 C CNN
F 1 "GND" H 4405 1827 50  0000 C CNN
F 2 "" H 4400 2000 50  0001 C CNN
F 3 "" H 4400 2000 50  0001 C CNN
	1    4400 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 1650 4400 1450
Wire Wire Line
	4350 1450 4400 1450
Connection ~ 4400 1450
Wire Wire Line
	4400 1450 4450 1450
Wire Wire Line
	4400 1950 4400 2000
$Comp
L Device:D_Schottky D?
U 1 1 5CF6D61D
P 1150 3650
F 0 "D?" V 1104 3729 50  0000 L CNN
F 1 "D_Schottky" V 1195 3729 50  0000 L CNN
F 2 "Diodes_SMD:D_SOD-123" H 1150 3650 50  0001 C CNN
F 3 "~" H 1150 3650 50  0001 C CNN
	1    1150 3650
	-1   0    0    1   
$EndComp
Wire Wire Line
	1000 3650 900  3650
Wire Wire Line
	900  3650 900  3600
$EndSCHEMATC
