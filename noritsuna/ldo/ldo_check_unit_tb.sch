v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -860 -210 90 -210 {
lab=GND}
N 90 -350 90 -210 {
lab=GND}
N 70 -210 70 -160 {
lab=GND}
N -700 -260 -700 -210 {
lab=GND}
N -490 -260 -490 -210 {
lab=GND}
N -700 -390 -700 -320 {
lab=#net1}
N -700 -580 -700 -450 {
lab=#net2}
N -490 -580 -490 -320 {
lab=Vout}
N -660 -610 -530 -610 {
lab=#net2}
N -700 -700 -700 -640 {
lab=VDD}
N -700 -700 90 -700 {
lab=VDD}
N 90 -700 90 -410 {
lab=VDD}
N 70 -750 70 -700 {
lab=VDD}
N -490 -700 -490 -640 {
lab=VDD}
N -630 -610 -630 -550 {
lab=#net2}
N -700 -550 -630 -550 {
lab=#net2}
N -740 -610 -700 -610 {
lab=VDD}
N -740 -670 -740 -610 {
lab=VDD}
N -740 -670 -700 -670 {
lab=VDD}
N -490 -670 -450 -670 {
lab=VDD}
N -450 -670 -450 -610 {
lab=VDD}
N -490 -610 -450 -610 {
lab=VDD}
N -510 -290 -510 -240 {
lab=GND}
N -510 -240 -490 -240 {
lab=GND}
N -720 -290 -720 -230 {
lab=GND}
N -720 -230 -700 -230 {
lab=GND}
N -490 -460 -410 -460 {
lab=Vout}
N -700 -420 -670 -420 {
lab=#net1}
N -670 -420 -670 -370 {
lab=#net1}
N -700 -370 -670 -370 {
lab=#net1}
N -840 -700 -840 -480 {
lab=VDD}
N -840 -700 -700 -700 {
lab=VDD}
N -840 -360 -840 -210 {
lab=GND}
N -780 -420 -740 -420 {
lab=#net3}
N -900 -400 -900 -330 {
lab=#net1}
N -900 -330 -700 -330 {
lab=#net1}
N -1000 -260 -1000 -210 {
lab=GND}
N -1000 -210 -860 -210 {
lab=GND}
N -1080 -460 -900 -460 {
lab=#net4}
N -1140 -700 -1140 -500 {
lab=VDD}
N -1140 -700 -840 -700 {
lab=VDD}
N -1140 -340 -1140 -210 {
lab=GND}
N -1140 -210 -1000 -210 {
lab=GND}
N -1000 -700 -1000 -420 {
lab=VDD}
N -940 -440 -940 -380 {
lab=#net5}
N -940 -440 -900 -440 {
lab=#net5}
N -440 -460 -440 -420 {
lab=Vout}
N -440 -360 -440 -210 {
lab=GND}
C {devices/code_shown.sym} 530 -580 0 0 {name=control only_toplevel=false value=".control
save all
dc Vdd 3 3.6 0.1
plot v(vout)
plot i(vcur)
dc temp -50 125 5
plot v(vout)
plot i(vcur)
.endc"}
C {devices/vdd.sym} 70 -750 0 0 {name=l2 lab=VDD}
C {devices/vsource.sym} 90 -380 0 0 {name=Vdd value=3.3 savecurrent=false}
C {devices/gnd.sym} 70 -160 0 0 {name=l3 lab=GND}
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
C {devices/lab_pin.sym} -410 -460 0 1 {name=p1 sig_type=std_logic lab=Vout}
C {opamp.sym} -880 -420 0 0 {name=X1}
C {cs_vthref_3ho.sym} -1220 -320 0 0 {name=X2}
C {devices/code.sym} 530 -330 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/sm141064.ngspice res_typical
.lib $::180MCU_MODELS/sm141064.ngspice cap_mim
.lib $::180MCU_MODELS/sm141064.ngspice moscap_typical
.lib $::180MCU_MODELS/sm141064.ngspice mimcap_typical
.lib $::180MCU_MODELS/sm141064.ngspice bjt_typical
* .lib $::180MCU_MODELS/sm141064.ngspice res_statistical
"}
C {bgr_diode.sym} -1060 -240 0 0 {name=X3}
C {devices/ammeter.sym} -440 -390 0 0 {name=Vcur savecurrent=true}
