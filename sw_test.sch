v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -220 -30 -150 -30 {
lab=VDD}
N -280 -30 -280 30 {
lab=VDD}
N -280 -30 -220 -30 {
lab=VDD}
N -280 90 -280 140 {
lab=GND}
N -280 140 -220 140 {
lab=GND}
N -220 140 -150 140 {
lab=GND}
N -200 70 -190 70 {
lab=A}
N -210 70 -200 70 {
lab=A}
N -210 70 -210 80 {
lab=A}
N -280 30 -190 30 {
lab=VDD}
N -150 -30 -140 -30 {
lab=VDD}
N -140 -30 -140 -10 {
lab=VDD}
N -150 140 -140 140 {
lab=GND}
N -140 110 -140 140 {
lab=GND}
N -30 30 -30 80 {
lab=Q}
N -140 140 -30 140 {
lab=GND}
N -220 220 -150 220 {
lab=VDD}
N -280 220 -280 280 {
lab=VDD}
N -280 220 -220 220 {
lab=VDD}
N -220 390 -150 390 {
lab=GND}
N -200 320 -190 320 {
lab=A}
N -210 320 -200 320 {
lab=A}
N -280 280 -190 280 {
lab=VDD}
N -150 220 -140 220 {
lab=VDD}
N -140 220 -140 240 {
lab=VDD}
N -150 390 -140 390 {
lab=GND}
N -140 360 -140 390 {
lab=GND}
N -30 280 -30 330 {
lab=Q2}
N -140 390 -30 390 {
lab=GND}
C {devices/code_shown.sym} -290 -150 0 0 {name=MODLES1 only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/vsource.sym} -280 60 0 0 {name=V1 value=3.3 savecurrent=false}
C {devices/gnd.sym} -220 140 0 0 {name=l2 lab=GND}
C {devices/vdd.sym} -220 -30 0 0 {name=l3 lab=VDD}
C {devices/ipin.sym} -210 70 0 0 {name=p3 lab=A

}
C {devices/opin.sym} -30 30 0 0 {name=p4 lab=Q
}
C {devices/vsource.sym} -210 110 0 0 {name=V2 value=3.3 savecurrent=false}
C {devices/simulator_commands_shown.sym} 20 0 0 0 {name=COMMANDS1
simulator=ngspice
only_toplevel=false 
value="
.include ~/TOP_pex_extracted.spice
.control
save all
dc V2 0 3.3 0.05
plot v(a) v(q) v(q2)
wrdata ~/inv_dc.txt v(q)
write inv_dc.raw
.endc
"}
C {sw.sym} -40 50 0 0 {name=x1}
C {devices/res.sym} -30 110 0 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
C {devices/gnd.sym} -220 390 0 0 {name=l1 lab=GND}
C {devices/vdd.sym} -140 220 0 0 {name=l4 lab=VDD}
C {devices/ipin.sym} -210 320 0 0 {name=p1 lab=A

}
C {devices/opin.sym} -30 280 0 0 {name=p2 lab=Q2
}
C {devices/res.sym} -30 360 0 0 {name=R2
value=1k
footprint=1206
device=resistor
m=1}
C {sw_rc.sym} -150 290 0 0 {name=x2 prefix=TOP}
