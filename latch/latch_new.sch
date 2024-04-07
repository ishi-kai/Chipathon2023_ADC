v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 50 -90 50 140 {
lab=Qn}
N 50 -90 90 -90 {
lab=Qn}
N 50 60 90 60 {
lab=Qn}
N 220 -90 220 140 {
lab=Q}
N 210 -90 220 -90 {
lab=Q}
N 210 60 220 60 {
lab=Q}
N 0 -90 50 -90 {
lab=Qn}
N 220 -90 270 -90 {
lab=Q}
N 50 200 70 200 {
lab=GND}
N 70 170 70 200 {
lab=GND}
N 50 170 70 170 {
lab=GND}
N 190 60 210 60 {
lab=Q}
N 200 170 200 200 {
lab=GND}
N 200 170 220 170 {
lab=GND}
N 50 200 50 220 {
lab=GND}
N 50 220 220 220 {
lab=GND}
N 220 200 220 220 {
lab=GND}
N 140 220 140 240 {
lab=GND}
N 130 -160 130 -130 {
lab=VDD}
N 190 -90 210 -90 {
lab=Q}
N -110 170 -90 170 {
lab=S}
N 360 170 380 170 {
lab=R}
N 200 200 220 200 {
lab=GND}
N -90 170 10 170 {
lab=S}
N 260 170 360 170 {
lab=R}
C {inverter/inv.sym} 110 -210 0 0 {name=x1 prefix=TOP}
C {inverter/inv.sym} 170 -60 0 1 {name=x2 prefix=TOP}
C {symbols/nfet_03v3.sym} 30 170 0 0 {name=M1
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
C {symbols/nfet_03v3.sym} 240 170 0 1 {name=M2
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
C {devices/lab_wire.sym} 150 20 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {devices/opin.sym} 270 -90 0 0 {name=p2 lab=Q}
C {devices/opin.sym} 0 -90 0 1 {name=p3 lab=Qn}
C {devices/ipin.sym} 140 240 0 0 {name=p9 lab=GND}
C {devices/lab_wire.sym} 150 100 0 0 {name=p10 sig_type=std_logic lab=GND}
C {devices/ipin.sym} 130 -160 0 0 {name=p11 lab=VDD}
C {devices/ipin.sym} -110 170 0 0 {name=p12 lab=S}
C {devices/ipin.sym} 380 170 0 1 {name=p13 lab=R}
C {devices/lab_wire.sym} 130 -50 0 0 {name=p4 sig_type=std_logic lab=GND}
