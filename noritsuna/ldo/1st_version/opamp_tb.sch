v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 220 -260 330 -260 {
lab=in}
N 220 -260 220 -250 {
lab=in}
N 80 -350 390 -350 {
lab=#net1}
N 80 -60 390 -60 {
lab=GND}
N 80 -60 80 -40 {
lab=GND}
N 450 -240 490 -240 {
lab=out}
N 490 -240 490 -220 {
lab=out}
N 490 -160 490 -110 {
lab=GND}
N 390 -180 390 -100 {
lab=GND}
N 390 -350 390 -300 {
lab=#net1}
N 390 -60 490 -60 {
lab=GND}
N 270 -150 290 -150 {
lab=#net2}
N 270 -220 270 -190 {
lab=#net2}
N 270 -220 330 -220 {
lab=#net2}
N 270 -70 270 -60 {
lab=GND}
N 470 -240 470 -170 {
lab=out}
N 270 -190 270 -150 {
lab=#net2}
N 270 -150 270 -130 {
lab=#net2}
N 350 -150 470 -150 {
lab=out}
N 470 -170 470 -150 {
lab=out}
N 490 -110 490 -60 {
lab=GND}
N 390 -100 390 -60 {
lab=GND}
N 220 -190 220 -60 {
lab=GND}
N 180 -280 330 -280 {
lab=#net3}
N 120 -350 120 -320 {
lab=#net1}
N 120 -160 120 -60 {
lab=GND}
N 20 -200 20 -60 {
lab=GND}
N 20 -60 80 -60 {
lab=GND}
N 20 -350 20 -260 {
lab=#net1}
N 20 -350 80 -350 {
lab=#net1}
C {devices/code_shown.sym} -470 -300 0 0 {name=control only_toplevel=false value=".option savecurrent
.control
set units=degree
op
save all
ac dec 20 1e2 1e10
plot vdb(out)
plot vp(out)
.endc"}
C {devices/vsource.sym} 20 -230 0 0 {name=Vdd value=3.3}
C {devices/vsource.sym} 220 -220 0 0 {name=Vinp value="DC 1.65 AC 1"}
C {devices/gnd.sym} 80 -40 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} 490 -240 0 1 {name=p1 sig_type=std_logic lab=out}
C {devices/code_shown.sym} -470 -80 0 0 {name=measure only_toplevel=false value=".measure ac gain find vdb(out) at=1e3
.measure ac ugf when vdb(out)=0
.measure ac phase find vp(out) at=30.8e6"}
C {devices/capa.sym} 490 -190 0 0 {name=C1
m=1
value=10p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 220 -260 0 0 {name=p2 sig_type=std_logic lab=in}
C {devices/res.sym} 320 -150 1 0 {name=R1
value=100Meg
footprint=1206
device=resistor
m=1}
C {devices/capa.sym} 270 -100 0 0 {name=C2
m=1
value=1
footprint=1206
device="ceramic capacitor"}
C {opamp.sym} 350 -240 0 0 {name=X1}
C {devices/code.sym} -480 -470 0 0 {name=MODELS only_toplevel=true
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
C {cs_vthref.sym} 40 -140 0 0 {name=X2}
