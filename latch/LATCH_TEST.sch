v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -180 -20 -50 -20 {
lab=#net1}
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
C {devices/vsource.sym} -180 10 0 0 {name=V1 value=3.3 savecurrent=false}
C {devices/gnd.sym} -180 60 0 0 {name=l1 lab=GND}
C {devices/res.sym} 280 30 0 0 {name=R1
value=100k
footprint=1206
device=resistor
m=1}
C {devices/gnd.sym} 280 60 0 0 {name=l2 lab=GND}
C {devices/opin.sym} 320 0 0 0 {name=p1 lab=Q}
C {devices/ipin.sym} -70 0 0 0 {name=p2 lab=R}
C {devices/ipin.sym} -70 20 0 0 {name=p3 lab=S}
C {devices/opin.sym} 320 -20 0 0 {name=p4 lab=Qn}
C {devices/code_shown.sym} -190 -130 0 0 {name=MODLES1 only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/simulator_commands_shown.sym} 360 -140 0 0 {name=COMMANDS1
simulator=ngspice
only_toplevel=false 
value="
vr R 0 pulse(0 3.3 0n 1p 1p 10n 20n)
vs S 0 pulse(0 3.3 0n 1p 1p 20n 40n)
.control
save all
tran 100ps 80ns 
plot v(R) v(S) v(Q)
write LATCH.raw
.endc
"}
C {latch/LATCH.sym} 100 10 0 0 {name=x1}
