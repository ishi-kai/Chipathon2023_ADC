v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -180 -20 -50 -20 {
lab=VDD}
N -180 40 -50 40 {
lab=GND}
N -180 40 -180 60 {
lab=GND}
N 250 -0 290 0 {
lab=Q}
N 290 -0 320 0 {
lab=Q}
N -70 -0 -50 -0 {
lab=R}
N -70 20 -50 20 {
lab=S}
N 250 -20 320 -20 {
lab=Qn}
N 250 140 290 140 {
lab=Q2}
N 290 140 320 140 {
lab=Q2}
N 250 120 320 120 {
lab=Qn2}
N -70 140 -50 140 {
lab=R}
N -70 120 -50 120 {
lab=VDD}
N -70 160 -50 160 {
lab=S}
N -70 180 -50 180 {
lab=GND}
N 280 60 320 60 {
lab=GND}
N 280 200 320 200 {
lab=GND}
C {devices/vsource.sym} -180 10 0 0 {name=V1 value=3.3 savecurrent=false}
C {devices/gnd.sym} -180 60 0 0 {name=l1 lab=GND}
C {devices/res.sym} 280 30 0 0 {name=R1
value=100k
footprint=1206
device=resistor
m=1}
C {devices/gnd.sym} 300 60 0 0 {name=l2 lab=GND}
C {devices/opin.sym} 320 0 0 0 {name=p1 lab=Q}
C {devices/ipin.sym} -70 0 0 0 {name=p2 lab=R}
C {devices/ipin.sym} -70 20 0 0 {name=p3 lab=S}
C {devices/opin.sym} 320 -20 0 0 {name=p4 lab=Qn}
C {devices/code_shown.sym} 410 150 0 0 {name=MODLES1 only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/simulator_commands_shown.sym} 400 -90 0 0 {name=COMMANDS1
simulator=ngspice
only_toplevel=false 
value="
.include ~/Chipathon2023_ADC/latch/TOP_pex_extracted.spice
vr R 0 pulse(0 3.3 0n 1p 1p 10n 20n)
vs S 0 pulse(0 3.3 0n 1p 1p 20n 40n)
.control
save all
tran 100ps 40ns 
plot v(R) v(S) v(Q) v(Q2)
write LATCH.raw
.endc
"}
C {devices/res.sym} 280 170 0 0 {name=R2
value=100k
footprint=1206
device=resistor
m=1}
C {devices/gnd.sym} 300 200 0 0 {name=l3 lab=GND}
C {devices/opin.sym} 320 140 0 0 {name=p5 lab=Q2}
C {devices/opin.sym} 320 120 0 0 {name=p6 lab=Qn2}
C {devices/lab_wire.sym} -70 120 0 0 {name=p7 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} -70 140 0 0 {name=p8 sig_type=std_logic lab=R}
C {devices/lab_wire.sym} -70 160 0 0 {name=p9 sig_type=std_logic lab=S}
C {devices/lab_wire.sym} -70 180 0 0 {name=p10 sig_type=std_logic lab=GND}
C {devices/lab_wire.sym} -110 -20 0 0 {name=p11 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} -110 40 0 0 {name=p12 sig_type=std_logic lab=GND}
C {latch/LATCH.sym} 100 10 0 0 {name=x1}
C {latch/LATCH_RC.sym} 100 150 0 0 {name=x2 prefix=TOP}
C {devices/capa.sym} 320 30 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 320 170 0 0 {name=C2
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
