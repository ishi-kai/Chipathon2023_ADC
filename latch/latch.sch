v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -30 -40 -30 190 {
lab=Qn}
N -30 -40 10 -40 {
lab=Qn}
N -30 110 10 110 {
lab=Qn}
N 140 -40 140 190 {
lab=Q}
N 130 -40 140 -40 {
lab=Q}
N 130 110 140 110 {
lab=Q}
N -80 -40 -30 -40 {
lab=Qn}
N 140 -40 190 -40 {
lab=Q}
N -30 250 -10 250 {
lab=GND}
N -10 220 -10 250 {
lab=GND}
N -30 220 -10 220 {
lab=GND}
N 110 110 130 110 {
lab=Q}
N 120 220 120 250 {
lab=GND}
N 120 220 140 220 {
lab=GND}
N -30 250 -30 270 {
lab=GND}
N -30 270 140 270 {
lab=GND}
N 140 250 140 270 {
lab=GND}
N 60 270 60 290 {
lab=GND}
N 50 -110 50 -80 {
lab=VDD}
N 110 -40 130 -40 {
lab=Q}
N -190 220 -170 220 {
lab=S}
N 280 220 300 220 {
lab=R}
N 120 250 140 250 {
lab=GND}
C {inverter/inv.sym} 30 -160 0 0 {name=x1 prefix=TOP}
C {inverter/inv.sym} 90 -10 0 1 {name=x2 prefix=TOP}
C {symbols/nfet_03v3.sym} -50 220 0 0 {name=M1
L=0.28u
W=2.8u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 160 220 0 1 {name=M2
L=0.28u
W=2.8u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {devices/lab_wire.sym} 70 70 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {inverter/inv.sym} 260 100 0 1 {name=x3 prefix=TOP}
C {inverter/inv.sym} -150 100 0 0 {name=x4 prefix=TOP}
C {devices/opin.sym} 190 -40 0 0 {name=p2 lab=Q}
C {devices/opin.sym} -80 -40 0 1 {name=p3 lab=Qn}
C {devices/lab_wire.sym} -130 260 0 0 {name=p5 sig_type=std_logic lab=GND}
C {devices/lab_wire.sym} 240 260 0 0 {name=p6 sig_type=std_logic lab=GND}
C {devices/lab_wire.sym} -130 180 0 0 {name=p7 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 240 180 0 0 {name=p8 sig_type=std_logic lab=VDD}
C {devices/ipin.sym} 60 290 0 0 {name=p9 lab=GND}
C {devices/lab_wire.sym} 70 150 0 0 {name=p10 sig_type=std_logic lab=GND}
C {devices/ipin.sym} 50 -110 0 0 {name=p11 lab=VDD}
C {devices/ipin.sym} -190 220 0 0 {name=p12 lab=S}
C {devices/ipin.sym} 300 220 0 1 {name=p13 lab=R}
C {devices/lab_wire.sym} 50 0 0 0 {name=p4 sig_type=std_logic lab=GND}
