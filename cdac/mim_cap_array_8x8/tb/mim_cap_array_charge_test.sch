v {xschem version=3.4.5 file_version=1.2

* Copyright 2022 GlobalFoundries PDK Authors
*
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
*     https://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.

}
G {}
K {}
V {}
S {}
E {}
N 1230 -500 1230 -480 {
lab=GND}
N 1230 -480 1230 -460 {
lab=GND}
N 1230 -710 1230 -660 {
lab=c_dummy_net}
N 1560 -490 1560 -470 {
lab=GND}
N 1560 -470 1560 -450 {
lab=GND}
N 1910 -490 1910 -470 {
lab=GND}
N 1910 -470 1910 -450 {
lab=GND}
N 1910 -700 1910 -650 {
lab=c1_net}
N 2300 -490 2300 -470 {
lab=GND}
N 2300 -470 2300 -450 {
lab=GND}
N 2300 -700 2300 -650 {
lab=c2_net}
N 1230 -140 1230 -120 {
lab=GND}
N 1230 -120 1230 -100 {
lab=GND}
N 1230 -350 1230 -300 {
lab=c3_net}
N 1910 -150 1910 -130 {
lab=GND}
N 1910 -130 1910 -110 {
lab=GND}
N 1910 -360 1910 -310 {
lab=c5_net}
N 1230 -600 1230 -560 {
lab=vin_dummy}
N 1560 -590 1560 -550 {
lab=vin_c0}
N 1910 -590 1910 -550 {
lab=vin_c1}
N 2300 -590 2300 -550 {
lab=vin_c2}
N 1230 -240 1230 -200 {
lab=vin_c3}
N 1910 -250 1910 -210 {
lab=vin_c5}
N 490 -440 540 -440 {
lab=c0_net}
N 490 -420 490 -380 {
lab=c_dummy_net}
N 1560 -700 1560 -650 {
lab=c0_net}
N 540 -440 570 -440 {
lab=c0_net}
N 570 -440 570 -390 {
lab=c0_net}
N 490 -460 640 -460 {
lab=c1_net}
N 640 -460 640 -390 {
lab=c1_net}
N 490 -480 700 -480 {
lab=c2_net}
N 700 -480 730 -480 {
lab=c2_net}
N 730 -410 730 -390 {
lab=c2_net}
N 730 -480 730 -410 {
lab=c2_net}
N 810 -500 810 -390 {
lab=c3_net}
N 490 -500 810 -500 {
lab=c3_net}
N 980 -540 980 -390 {
lab=c5_net}
N 490 -540 980 -540 {
lab=c5_net}
N 490 -560 1040 -560 {
lab=GND}
N 1040 -560 1040 -400 {
lab=GND}
N 430 -560 490 -560 {
lab=GND}
N 430 -540 490 -540 {
lab=c5_net}
N 430 -500 490 -500 {
lab=c3_net}
N 430 -480 490 -480 {
lab=c2_net}
N 430 -460 490 -460 {
lab=c1_net}
N 430 -440 490 -440 {
lab=c0_net}
N 430 -420 490 -420 {
lab=c_dummy_net}
C {devices/code_shown.sym} 150 -1020 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/sm141064.ngspice cap_mim
.lib $::180MCU_MODELS/sm141064.ngspice res_typical
.lib $::180MCU_MODELS/sm141064.ngspice moscap_typical
.lib $::180MCU_MODELS/sm141064.ngspice mimcap_typical
* .lib $::180MCU_MODELS/sm141064.ngspice res_statistical
"}
C {devices/code_shown.sym} 160 -820 0 0 {name=NGSPICE only_toplevel=true
value="
.include ~/TOP_pex_extracted.spice
.control
save all
tran 0.1n 242n
write mim_cap_array_charge_test.raw
.endc
"}
C {devices/vsource.sym} 1230 -530 0 0 {name=Vdummy value="PULSE(0 1.8 0p 0 0 400p 800p 1)"}
C {devices/res.sym} 1230 -630 0 0 {name=R2
value=1k
footprint=1206
device=resistor
m=1}
C {devices/gnd.sym} 1230 -460 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} 1230 -710 0 0 {name=p1 sig_type=std_logic lab=c_dummy_net}
C {devices/vsource.sym} 1560 -520 0 0 {name=V0 value="PULSE(0 1.8 810p 0 0 400p 800p 1)"}
C {devices/res.sym} 1560 -620 0 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
C {devices/gnd.sym} 1560 -450 0 0 {name=l5 lab=GND}
C {devices/vsource.sym} 1910 -520 0 0 {name=V1 value="PULSE(0 1.8 1620p 0 0 800p 1600p 1)"}
C {devices/res.sym} 1910 -620 0 0 {name=R3
value=1k
footprint=1206
device=resistor
m=1}
C {devices/gnd.sym} 1910 -450 0 0 {name=l7 lab=GND}
C {devices/lab_pin.sym} 1910 -700 0 0 {name=p3 sig_type=std_logic lab=c1_net}
C {devices/vsource.sym} 2300 -520 0 0 {name=V2 value="PULSE(0 1.8 3230p 0 0 1600p 3200p 1)"}
C {devices/res.sym} 2300 -620 0 0 {name=R4
value=1k
footprint=1206
device=resistor
m=1}
C {devices/gnd.sym} 2300 -450 0 0 {name=l9 lab=GND}
C {devices/lab_pin.sym} 2300 -700 0 0 {name=p4 sig_type=std_logic lab=c2_net}
C {devices/vsource.sym} 1230 -170 0 0 {name=V3 value="PULSE(0 1,8 16440p 0 0 3200p 6400p 1)"}
C {devices/res.sym} 1230 -270 0 0 {name=R5
value=1k
footprint=1206
device=resistor
m=1}
C {devices/gnd.sym} 1230 -100 0 0 {name=l11 lab=GND}
C {devices/lab_pin.sym} 1230 -350 0 0 {name=p5 sig_type=std_logic lab=c3_net}
C {devices/vsource.sym} 1910 -180 0 0 {name=V5 value="PULSE(0 1.8 48460p 0 0 51200p 102400p 2)"}
C {devices/res.sym} 1910 -280 0 0 {name=R7
value=1k
footprint=1206
device=resistor
m=1}
C {devices/gnd.sym} 1910 -110 0 0 {name=l15 lab=GND}
C {devices/lab_pin.sym} 1910 -360 0 0 {name=p7 sig_type=std_logic lab=c5_net}
C {devices/gnd.sym} 1040 -400 0 0 {name=l4 lab=GND}
C {devices/lab_pin.sym} 1230 -580 0 0 {name=p2 sig_type=std_logic lab=vin_dummy}
C {devices/lab_pin.sym} 1560 -570 0 0 {name=p8 sig_type=std_logic lab=vin_c0}
C {devices/lab_pin.sym} 1560 -690 0 0 {name=p9 sig_type=std_logic lab=c0_net}
C {devices/lab_pin.sym} 1910 -570 0 0 {name=p10 sig_type=std_logic lab=vin_c1}
C {devices/lab_pin.sym} 2300 -570 0 0 {name=p11 sig_type=std_logic lab=vin_c2}
C {devices/lab_pin.sym} 1230 -220 0 0 {name=p12 sig_type=std_logic lab=vin_c3}
C {devices/lab_pin.sym} 1910 -230 0 0 {name=p14 sig_type=std_logic lab=vin_c5}
C {devices/lab_pin.sym} 490 -390 0 0 {name=p15 sig_type=std_logic lab=c_dummy_net}
C {devices/lab_pin.sym} 570 -390 0 0 {name=p16 sig_type=std_logic lab=c0_net}
C {devices/lab_pin.sym} 640 -390 0 0 {name=p17 sig_type=std_logic lab=c1_net}
C {devices/lab_pin.sym} 730 -390 0 0 {name=p18 sig_type=std_logic lab=c2_net}
C {devices/lab_pin.sym} 810 -390 0 0 {name=p19 sig_type=std_logic lab=c3_net}
C {devices/lab_pin.sym} 980 -390 0 0 {name=p21 sig_type=std_logic lab=c5_net}
C {advanced_mimcap_array8x8_15step.sym} 280 -490 0 0 {type=primitive
format="@name @@top_c5 @@top_c3 @@top_c2 @@top_c4 @@top_c0 @@top_c1 @@top_c_dummy @@common_bottom @prefix"
template="name=x1 prefix=TOP"
extra="prefix"
highlight=true}
