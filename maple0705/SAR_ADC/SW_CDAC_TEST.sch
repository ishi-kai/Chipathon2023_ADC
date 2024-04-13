v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -270 300 -230 300 {
lab=A}
N -70 300 -30 300 {
lab=Q2}
N -260 130 -220 130 {
lab=A}
N -250 130 -220 130 {
lab=A}
N -60 130 -30 130 {
lab=Q}
C {devices/code_shown.sym} -290 -150 0 0 {name=MODLES1 only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/vsource.sym} -330 60 0 0 {name=V1 value=3.3 savecurrent=false}
C {devices/gnd.sym} -330 90 0 0 {name=l2 lab=GND}
C {devices/vdd.sym} -330 30 0 0 {name=l3 lab=VDD}
C {devices/ipin.sym} -260 130 0 0 {name=p3 lab=A

}
C {devices/opin.sym} -30 130 0 0 {name=p4 lab=Q
}
C {devices/vsource.sym} -250 160 0 0 {name=V2 value=3.3 savecurrent=false}
C {devices/simulator_commands_shown.sym} 20 0 0 0 {name=COMMANDS1
simulator=ngspice
only_toplevel=false 
value="
.include ~/Chipathon2023_ADC/maple0705/SAR_ADC/TOP_pex_extracted.spice
.control
save all
dc V2 0 3.3 0.05
plot v(a) v(q) v(q2)
write SW_CDAC_TEST.raw
.endc
"}
C {devices/gnd.sym} -30 360 0 0 {name=l1 lab=GND}
C {devices/vdd.sym} -230 320 3 0 {name=l4 lab=VDD}
C {devices/ipin.sym} -270 300 0 0 {name=p1 lab=A

}
C {devices/opin.sym} -30 300 0 0 {name=p2 lab=Q2
}
C {devices/res.sym} -30 330 0 0 {name=R2
value=100k
footprint=1206
device=resistor
m=1}
C {maple0705/SAR_ADC/SW_CDAC_NEW.sym} -220 110 0 0 {name=x1}
C {maple0705/SAR_ADC/SW_CDAC_NEW_RC.sym} -230 280 0 0 {name=x2 prefix=TOP}
C {devices/vdd.sym} -230 280 3 0 {name=l5 lab=VDD}
C {devices/res.sym} -30 160 0 0 {name=R1
value=100k
footprint=1206
device=resistor
m=1}
C {devices/vdd.sym} -220 150 3 0 {name=l6 lab=VDD}
C {devices/gnd.sym} -220 170 1 0 {name=l7 lab=GND}
C {devices/gnd.sym} -30 190 0 0 {name=l8 lab=GND}
C {devices/vdd.sym} -220 110 3 0 {name=l9 lab=VDD}
C {devices/gnd.sym} -250 190 0 0 {name=l10 lab=GND}
C {devices/gnd.sym} -230 340 0 0 {name=l11 lab=GND}
