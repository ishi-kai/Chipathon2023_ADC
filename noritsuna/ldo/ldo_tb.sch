v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -130 -540 -130 -510 {
lab=VDD}
N -130 -450 -130 -410 {
lab=GND}
N -240 -530 -130 -530 {
lab=VDD}
N -240 -530 -240 -500 {
lab=VDD}
N -240 -460 -240 -430 {
lab=GND}
N -240 -430 -130 -430 {
lab=GND}
N -240 -480 -200 -480 {
lab=vout}
N -210 -480 -210 -390 {
lab=vout}
N -210 -330 -210 -300 {
lab=GND}
C {devices/code_shown.sym} 20 -640 0 0 {name=control only_toplevel=false value=".control
save all
dc Vdd 3 3.6 0.1
plot v(vout)
plot i(vcur)
dc temp -50 125 5
plot v(vout)
plot i(vcur)
.endc"}
C {devices/code.sym} 20 -390 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/sm141064.ngspice res_typical
.lib $::180MCU_MODELS/sm141064.ngspice cap_mim
.lib $::180MCU_MODELS/sm141064.ngspice moscap_typical
.lib $::180MCU_MODELS/sm141064.ngspice mimcap_typical
.lib $::180MCU_MODELS/sm141064.ngspice bjt_typical
* .lib $::180MCU_MODELS/sm141064.ngspice res_statistical
"}
C {devices/vdd.sym} -130 -540 0 0 {name=l2 lab=VDD}
C {devices/vsource.sym} -130 -480 0 0 {name=Vdd value=3.3 savecurrent=false}
C {devices/gnd.sym} -130 -410 0 0 {name=l3 lab=GND}
C {ldo.sym} -390 -480 0 0 {name=x1}
C {devices/lab_pin.sym} -200 -480 0 1 {name=p3 sig_type=std_logic lab=vout}
C {devices/ammeter.sym} -210 -360 0 0 {name=vcur savecurrent=true}
C {devices/gnd.sym} -210 -300 0 0 {name=l1 lab=GND}
