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
B 2 750 -540 1340 -80 {flags=graph
y1=3.3
y2=6.59957
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=5.3584152e-08
x2=1.826142e-07
divx=5
subdivx=1



unitx=1
dataset=-1
color="4 7"
node="in
p"}
B 2 750 -1000 1340 -540 {flags=graph
y1=-100e-1

ypos1=0
ypos2=2


unity=1
x1=5.3584152e-08
x2=1.826142e-07





unitx=1

color=4
node="\\"Capac; i(v1) p deriv() /\\""

digital=0
rainbow=0
; i(v1).06032e-12"; i(v1) .06032e-12"; i(v1) p.06032e-12"; i(v1) p .06032e-12"; i(v1) p d.06032e-12"; i(v1) p de.06032e-12"; i(v1) p der.06032e-12"; i(v1) p deri.06032e-12"; i(v1) p deriv.06032e-12"; i(v1) p deriv(.06032e-12"; i(v1) p deriv().06032e-12"; i(v1) p deriv() .06032e-12"; i(v1) p deriv() /.06032e-12"; i(v1) p deriv() /".06032e-12"; i(v1) p deriv() /".06032e-12"

divx=5
divy=5
subdivy=5
subdivy=10
subdivy=10
subdivy=10
subdivy=1
subdivy=5
subdivy=1
subdivy=10
subdivy=10
subdivy=101
subdivy=101.
subdivy=101.7
subdivy=101.75
subdivy="101.75 "
subdivy=4
sim_type=tran}
N 210 -340 390 -340 {
lab=P}
N 210 -180 210 -160 {
lab=GND}
N 210 -160 390 -160 {
lab=GND}
N 210 -280 210 -240 {
lab=IN}
N 390 -160 390 -140 {
lab=GND}
N 490 -560 540 -560 {
lab=GND}
N 490 -500 540 -500 {
lab=P}
N 630 -560 630 -350 {
lab=GND}
N 540 -560 630 -560 {
lab=GND}
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
C {devices/code_shown.sym} 160 -780 0 0 {name=NGSPICE only_toplevel=true
value="
.include ~/TOP_pex_extracted.spice
.control
save all
meas tran P MAX 
tran 0.1n 200n
write mim_cap_array_tb.raw
.endc
"}
C {devices/title.sym} 160 -30 0 0 {name=l5 author="GlobalFoundries PDK Authors"}
C {devices/launcher.sym} 195 -615 0 0 {name=h1
descr="Click left mouse button here with control key
pressed to load/unload waveforms in graph."
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw
"
}
C {devices/vsource.sym} 210 -210 0 0 {name=V1 value="pwl 0 0 200n 3.3"}
C {devices/res.sym} 210 -310 0 0 {name=R2
value=100k
footprint=1206
device=resistor
m=1}
C {devices/lab_pin.sym} 210 -260 0 0 {name=l1 sig_type=std_logic lab=IN}
C {devices/gnd.sym} 390 -140 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} 390 -340 0 1 {name=l3 sig_type=std_logic lab=P}
C {devices/lab_pin.sym} 540 -500 0 1 {name=l4 sig_type=std_logic lab=P}
C {devices/gnd.sym} 630 -350 0 0 {name=l6 lab=GND}
C {advanced_mimcap_array8x8_15step.sym} 340 -490 0 0 {type=primitive
format="@name @@top_c4 @@top_c3 @@top_c2 @@top_c_dummy @@top_c0 @@top_c1 @@common_bottom @prefix"
template="name=x1 prefix=TOP"
extra="prefix"
highlight=true}
