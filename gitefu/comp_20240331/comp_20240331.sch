v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 70 -250 80 -250 {
lab=VDD}
N 80 -280 80 -250 {
lab=VDD}
N 70 -280 80 -280 {
lab=VDD}
N 70 -220 70 -180 {
lab=#net1}
N 280 -250 290 -250 {
lab=VDD}
N 280 -280 280 -250 {
lab=VDD}
N 280 -280 290 -280 {
lab=VDD}
N 290 -220 290 -180 {
lab=#net2}
N 70 -150 290 -150 {
lab=VSS}
N 70 -120 70 -110 {
lab=#net3}
N 70 -110 290 -110 {
lab=#net3}
N 290 -120 290 -110 {
lab=#net3}
N 180 -110 180 -100 {
lab=#net3}
N 180 -40 190 -40 {
lab=VSS}
N 190 -150 190 -40 {
lab=VSS}
N 180 -70 190 -70 {
lab=VSS}
N 20 -70 140 -70 {
lab=CLK}
N 20 -250 20 -70 {
lab=CLK}
N 20 -250 30 -250 {
lab=CLK}
N 330 -250 340 -250 {
lab=CLK}
N 340 -290 340 -250 {
lab=CLK}
N 20 -290 340 -290 {
lab=CLK}
N 20 -290 20 -250 {
lab=CLK}
N 680 -320 680 -290 {
lab=#net4}
N 680 -350 690 -350 {
lab=VDD}
N 690 -350 690 -300 {
lab=VDD}
N 670 -300 690 -300 {
lab=VDD}
N 670 -300 670 -260 {
lab=VDD}
N 670 -260 680 -260 {
lab=VDD}
N 470 -310 680 -310 {
lab=#net4}
N 470 -280 480 -280 {
lab=VSS}
N 430 -350 430 -280 {
lab=#net1}
N 430 -350 640 -350 {
lab=#net1}
N 430 -280 430 -150 {
lab=#net1}
N 470 -180 680 -180 {
lab=VOUTP}
N 680 -230 680 -180 {
lab=VOUTP}
N 720 -260 730 -260 {
lab=VOUTN}
N 720 -150 730 -150 {
lab=VOUTN}
N 730 -260 730 -150 {
lab=VOUTN}
N 680 -380 690 -380 {
lab=VDD}
N 690 -380 690 -350 {
lab=VDD}
N 900 -320 900 -290 {
lab=#net5}
N 890 -350 900 -350 {
lab=VDD}
N 890 -350 890 -300 {
lab=VDD}
N 890 -300 910 -300 {
lab=VDD}
N 910 -300 910 -260 {
lab=VDD}
N 900 -260 910 -260 {
lab=VDD}
N 900 -310 1110 -310 {
lab=#net5}
N 1100 -280 1110 -280 {
lab=VSS}
N 1150 -350 1150 -280 {
lab=#net2}
N 940 -350 1150 -350 {
lab=#net2}
N 1150 -280 1150 -150 {
lab=#net2}
N 900 -180 1110 -180 {
lab=VOUTN}
N 900 -230 900 -180 {
lab=VOUTN}
N 850 -260 860 -260 {
lab=VOUTP}
N 850 -150 860 -150 {
lab=VOUTP}
N 850 -260 850 -150 {
lab=VOUTP}
N 890 -380 900 -380 {
lab=VDD}
N 890 -380 890 -350 {
lab=VDD}
N 290 -190 1150 -190 {
lab=#net2}
N 70 -200 430 -200 {
lab=#net1}
N 180 -40 180 -30 {
lab=VSS}
N 1100 -280 1100 -30 {
lab=VSS}
N 1100 -250 1110 -250 {
lab=VSS}
N 1100 -150 1110 -150 {
lab=VSS}
N 900 -150 910 -150 {
lab=VSS}
N 910 -150 910 -30 {
lab=VSS}
N 900 -120 910 -120 {
lab=VSS}
N 670 -150 680 -150 {
lab=VSS}
N 670 -150 670 -30 {
lab=VSS}
N 670 -120 680 -120 {
lab=VSS}
N 480 -280 480 -30 {
lab=VSS}
N 470 -250 480 -250 {
lab=VSS}
N 470 -150 480 -150 {
lab=VSS}
N 470 -120 480 -120 {
lab=VSS}
N 900 -390 900 -380 {
lab=VDD}
N 0 -390 900 -390 {
lab=VDD}
N 0 -290 20 -290 {
lab=CLK}
N 330 -150 350 -150 {
lab=VINN}
N 350 -310 350 -150 {
lab=VINN}
N 350 -320 350 -310 {
lab=VINN}
N 0 -320 350 -320 {
lab=VINN}
N -0 -150 30 -150 {
lab=VINP}
N 0 -30 180 -30 {
lab=VSS}
N 680 -200 850 -200 {
lab=VOUTP}
N 850 -200 1160 -200 {
lab=VOUTP}
N 900 -220 1160 -220 {
lab=VOUTN}
N 730 -220 900 -220 {
lab=VOUTN}
N 1100 -120 1110 -120 {
lab=VSS}
N 180 -30 1100 -30 {
lab=VSS}
N 290 -390 290 -280 {
lab=VDD}
N 70 -390 70 -280 {
lab=VDD}
N 680 -390 680 -380 {
lab=VDD}
C {symbols/nfet_03v3.sym} 160 -70 0 0 {name=M1
L=0.28u
W=2.80u
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
C {symbols/nfet_03v3.sym} 50 -150 0 0 {name=M2
L=0.28u
W=2.80u
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
C {symbols/pfet_03v3.sym} 50 -250 0 0 {name=M4
L=0.28u
W=2.80u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3_dn
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 660 -350 0 0 {name=M6
L=0.28u
W=2.80u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3_dn
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 700 -260 0 1 {name=M7
L=0.28u
W=2.80u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3_dn
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 450 -280 0 0 {name=M8
L=0.28u
W=2.80u
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
C {symbols/nfet_03v3.sym} 450 -150 0 0 {name=M9
L=0.28u
W=2.80u
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
C {symbols/nfet_03v3.sym} 700 -150 0 1 {name=M10
L=0.28u
W=2.80u
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
C {symbols/nfet_03v3.sym} 310 -150 0 1 {name=M3
L=0.28u
W=2.80u
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
C {symbols/pfet_03v3.sym} 310 -250 0 1 {name=M5
L=0.28u
W=2.80u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3_dn
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 920 -350 0 1 {name=M11
L=0.28u
W=2.80u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3_dn
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 880 -260 0 0 {name=M12
L=0.28u
W=2.80u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3_dn
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 1130 -280 0 1 {name=M13
L=0.28u
W=2.80u
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
C {symbols/nfet_03v3.sym} 1130 -150 0 1 {name=M14
L=0.28u
W=2.80u
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
C {symbols/nfet_03v3.sym} 880 -150 0 0 {name=M15
L=0.28u
W=2.80u
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
C {devices/ipin.sym} 0 -390 0 0 {name=p1 lab=VDD}
C {devices/ipin.sym} 0 -290 0 0 {name=p2 lab=CLK}
C {devices/ipin.sym} 0 -150 0 0 {name=p3 lab=VINP}
C {devices/ipin.sym} 0 -320 0 0 {name=p4 lab=VINN}
C {devices/ipin.sym} 0 -30 0 0 {name=p5 lab=VSS}
C {devices/opin.sym} 1160 -200 0 0 {name=p6 lab=VOUTP}
C {devices/opin.sym} 1160 -220 0 0 {name=p7 lab=VOUTN}
