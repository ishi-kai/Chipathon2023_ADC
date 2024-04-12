v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -80 -10 -80 80 {
lab=A}
N -40 -60 -40 -40 {
lab=VDD}
N -40 80 -30 80 {
lab=GND}
N -30 80 -30 110 {
lab=GND}
N -40 20 -40 50 {
lab=Q}
N -40 -10 -30 -10 {
lab=VDD}
N -30 -40 -30 -10 {
lab=VDD}
N -40 -40 -30 -40 {
lab=VDD}
N -90 40 -80 40 {
lab=A}
N -40 40 -20 40 {
lab=Q}
N -100 40 -90 40 {
lab=A}
N -40 110 -30 110 {
lab=GND}
N -40 110 -40 140 {
lab=GND}
C {devices/ipin.sym} -100 40 0 0 {name=p1 lab=A

}
C {devices/opin.sym} -20 40 0 0 {name=p2 lab=Q
}
C {devices/iopin.sym} -40 -60 0 0 {name=p3 lab=VDD
}
C {devices/iopin.sym} -40 140 0 0 {name=p4 lab=GND
}
C {symbols/pfet_03v3.sym} -60 -10 0 0 {name=M1
L=0.28u
W=28u
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
C {symbols/nfet_03v3.sym} -60 80 0 0 {name=M2
L=0.28u
W=28u
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
