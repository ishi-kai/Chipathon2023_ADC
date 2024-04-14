v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 330 -320 330 -140 {
lab=Vin}
N 390 -320 390 -140 {
lab=Vout}
N 180 -390 180 -330 {
lab=Vctrl}
N 220 -360 360 -360 {
lab=#net1}
N 100 -360 180 -360 {
lab=Vctrl}
N 140 -360 140 -100 {
lab=Vctrl}
N 140 -100 360 -100 {
lab=Vctrl}
N 270 -230 330 -230 {
lab=Vin}
N 390 -230 600 -230 {
lab=Vout}
N 220 -390 230 -390 {
lab=VDD}
N 230 -420 230 -390 {
lab=VDD}
N 220 -420 230 -420 {
lab=VDD}
N 220 -330 230 -330 {
lab=GND}
N 230 -330 230 -300 {
lab=GND}
N 220 -300 230 -300 {
lab=GND}
N 220 -300 220 -280 {
lab=GND}
N 220 -440 220 -420 {
lab=VDD}
N 360 -320 360 -290 {
lab=VDD}
N 360 -170 360 -140 {
lab=GND}
N 500 -230 500 -190 {
lab=Vout}
N 500 -130 500 -100 {
lab=GND}
N 360 -360 540 -360 {
lab=#net1}
N 540 -360 540 -160 {
lab=#net1}
N 480 -160 500 -160 {}
N 480 -160 480 -130 {}
N 480 -130 500 -130 {}
C {symbols/pfet_03v3.sym} 360 -340 1 0 {name=M1
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
C {symbols/nfet_03v3.sym} 360 -120 3 0 {name=M2
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
C {symbols/pfet_03v3.sym} 200 -390 0 0 {name=M3
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
C {symbols/nfet_03v3.sym} 200 -330 0 0 {name=M4
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
C {devices/ipin.sym} 100 -360 0 0 {name=p1 lab=Vctrl}
C {devices/ipin.sym} 270 -230 0 0 {name=p2 lab=Vin}
C {devices/opin.sym} 600 -230 0 0 {name=p3 lab=Vout}
C {devices/ipin.sym} 220 -440 0 0 {name=p4 lab=VDD}
C {devices/ipin.sym} 220 -280 0 0 {name=p5 lab=GND}
C {devices/lab_wire.sym} 360 -290 3 0 {name=p8 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 360 -170 1 0 {name=p6 sig_type=std_logic lab=GND}
C {symbols/nfet_03v3.sym} 520 -160 0 1 {name=M5
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
C {devices/lab_wire.sym} 500 -100 3 0 {name=p7 sig_type=std_logic lab=GND}
