v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -30 -30 -30 150 {
lab=Vin}
N 30 -30 30 150 {
lab=Vout}
N -150 -100 -150 -40 {
lab=Vctrl}
N -110 -70 0 -70 {
lab=#net1}
N -210 -70 -150 -70 {
lab=Vctrl}
N -180 -70 -180 190 {
lab=Vctrl}
N -180 190 0 190 {
lab=Vctrl}
N -60 60 -30 60 {
lab=Vin}
N 30 60 60 60 {
lab=Vout}
N -110 -100 -100 -100 {
lab=VDD}
N -100 -130 -100 -100 {
lab=VDD}
N -110 -130 -100 -130 {
lab=VDD}
N -110 -40 -100 -40 {
lab=GND}
N -100 -40 -100 -10 {
lab=GND}
N -110 -10 -100 -10 {
lab=GND}
N -110 -10 -110 10 {
lab=GND}
N -110 -150 -110 -130 {
lab=VDD}
N -0 -30 0 -0 {
lab=VDD}
N 0 120 0 150 {
lab=GND}
C {symbols/pfet_03v3.sym} 0 -50 1 0 {name=M1
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
model=pfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 0 170 3 0 {name=M2
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
C {symbols/pfet_03v3.sym} -130 -100 0 0 {name=M3
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
model=pfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} -130 -40 0 0 {name=M4
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
C {devices/ipin.sym} -210 -70 0 0 {name=p1 lab=Vctrl}
C {devices/ipin.sym} -60 60 0 0 {name=p2 lab=Vin}
C {devices/opin.sym} 60 60 0 0 {name=p3 lab=Vout}
C {devices/ipin.sym} -110 -150 0 0 {name=p4 lab=VDD}
C {devices/ipin.sym} -110 10 0 0 {name=p5 lab=GND}
C {devices/lab_wire.sym} 0 0 3 0 {name=p8 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 0 120 1 0 {name=p6 sig_type=std_logic lab=GND}
