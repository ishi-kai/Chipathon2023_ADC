v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -860 -420 -740 -420 {
lab=#net1}
N -700 -260 -700 -210 {
lab=vss}
N -490 -260 -490 -210 {
lab=vss}
N -700 -390 -700 -320 {
lab=#net2}
N -700 -580 -700 -450 {
lab=#net3}
N -490 -580 -490 -320 {
lab=vout}
N -660 -610 -530 -610 {
lab=#net3}
N -700 -700 -700 -640 {
lab=vdd}
N -490 -700 -490 -640 {
lab=vdd}
N -630 -610 -630 -550 {
lab=#net3}
N -700 -550 -630 -550 {
lab=#net3}
N -740 -610 -700 -610 {
lab=vdd}
N -740 -670 -740 -610 {
lab=vdd}
N -740 -670 -700 -670 {
lab=vdd}
N -490 -670 -450 -670 {
lab=vdd}
N -450 -670 -450 -610 {
lab=vdd}
N -490 -610 -450 -610 {
lab=vdd}
N -510 -290 -510 -240 {
lab=vss}
N -510 -240 -490 -240 {
lab=vss}
N -720 -290 -720 -230 {
lab=vss}
N -720 -230 -700 -230 {
lab=vss}
N -490 -460 -410 -460 {
lab=vout}
N -700 -420 -670 -420 {
lab=#net2}
N -670 -420 -670 -370 {
lab=#net2}
N -700 -370 -670 -370 {
lab=#net2}
N -1170 -700 -490 -700 {
lab=vdd}
N -1170 -700 -1170 -500 {
lab=vdd}
N -920 -700 -920 -480 {
lab=vdd}
N -1110 -460 -980 -460 {
lab=#net4}
N -1170 -340 -1170 -210 {
lab=vss}
N -1170 -210 -860 -210 {
lab=vss}
N -920 -360 -920 -210 {
lab=vss}
N -1010 -400 -980 -400 {
lab=#net2}
N -1010 -400 -1010 -340 {
lab=#net2}
N -1010 -340 -700 -340 {
lab=#net2}
N -860 -210 -490 -210 {
lab=vss}
N -1340 -340 -1340 -210 {
lab=vss}
N -1340 -210 -1170 -210 {
lab=vss}
N -1340 -700 -1340 -500 {
lab=vdd}
N -1340 -700 -1170 -700 {
lab=vdd}
N -1280 -460 -1260 -460 {
lab=#net5}
N -1260 -460 -1260 -290 {
lab=#net5}
N -1260 -290 -1060 -290 {
lab=#net5}
N -1060 -440 -1060 -290 {
lab=#net5}
N -1060 -440 -980 -440 {
lab=#net5}
N -490 -700 -420 -700 {
lab=vdd}
N -490 -210 -410 -210 {
lab=vss}
C {symbols/pfet_03v3.sym} -680 -610 0 1 {name=M3
L=1u
W=10u
nf=1
m=8
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} -510 -610 0 0 {name=M4
L=1u
W=10u
nf=1
m=800
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/ppolyf_u.sym} -700 -290 0 0 {name=R1
W=0.8e-6
L=50e-6
model=ppolyf_u
spiceprefix=X
m=1}
C {symbols/nfet_03v3.sym} -720 -420 0 0 {name=M2
L=1u
W=10u
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
C {symbols/ppolyf_u.sym} -490 -290 0 0 {name=R2
W=0.8e-6
L=50e-6
model=ppolyf_u
spiceprefix=X
m=1}
C {opamp.sym} -960 -420 0 0 {name=X1}
C {cs_vthref_3ho.sym} -1250 -320 0 0 {name=X2}
C {bgr_diode.sym} -1400 -320 0 0 {name=X3}
C {devices/iopin.sym} -420 -700 0 0 {name=p5 lab=vdd}
C {devices/iopin.sym} -410 -210 0 0 {name=p8 lab=vss}
C {devices/opin.sym} -410 -460 0 0 {name=p7 lab=vout}
