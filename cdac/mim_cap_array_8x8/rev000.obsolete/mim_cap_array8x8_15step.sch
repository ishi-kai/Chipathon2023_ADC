v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -0 -80 0 -60 {
lab=common_bottom}
N 0 -80 1570 -80 {
lab=common_bottom}
N 240 -80 240 -60 {
lab=common_bottom}
N 460 -80 460 -60 {
lab=common_bottom}
N 680 -80 680 -60 {
lab=common_bottom}
N 910 -80 910 -60 {
lab=common_bottom}
N 1140 -80 1140 -60 {
lab=common_bottom}
N 1370 -80 1370 -60 {
lab=common_bottom}
N 1370 0 1370 20 {
lab=top_c5}
N 1370 20 1570 20 {
lab=top_c5}
N 1140 50 1560 50 {
lab=top_c4}
N 1140 -0 1140 50 {
lab=top_c4}
N 910 80 1560 80 {
lab=top_c3}
N 910 -0 910 80 {
lab=top_c3}
N 680 110 1560 110 {
lab=top_c2}
N 680 -0 680 110 {
lab=top_c2}
N 460 140 1560 140 {
lab=top_c1}
N 460 -0 460 140 {
lab=top_c1}
N 240 170 1560 170 {
lab=top_c0}
N 240 0 240 170 {
lab=top_c0}
N -0 200 1560 200 {
lab=top_c_dummy}
N -0 -0 -0 200 {
lab=top_c_dummy}
C {symbols/cap_mim_2p0fF.sym} 0 -30 0 0 {name=C1
W=7e-6
L=7e-6
model=cap_mim_2f0_m4m5_noshield}
C {symbols/cap_mim_2p0fF.sym} 240 -30 0 0 {name=C2
W=7e-6
L=7e-6
model=cap_mim_2f0_m4m5_noshield}
C {symbols/cap_mim_2p0fF.sym} 460 -30 0 0 {name=C3
W=14e-6
L=7e-6
model=cap_mim_2f0_m4m5_noshield}
C {symbols/cap_mim_2p0fF.sym} 680 -30 0 0 {name=C4
W=28e-6
L=7e-6
model=cap_mim_2f0_m4m5_noshield}
C {symbols/cap_mim_2p0fF.sym} 910 -30 0 0 {name=C5
W=56e-6
L=7e-6
model=cap_mim_2f0_m4m5_noshield}
C {symbols/cap_mim_2p0fF.sym} 1140 -30 0 0 {name=C6
W=112e-6
L=7e-6
model=cap_mim_2f0_m4m5_noshield}
C {symbols/cap_mim_2p0fF.sym} 1370 -30 0 0 {name=C7
W=224e-6
L=7e-6
model=cap_mim_2f0_m4m5_noshield}
C {devices/iopin.sym} 1560 -80 0 0 {name=p1 lab=common_bottom}
C {devices/iopin.sym} 1560 20 0 0 {name=p2 lab=top_c5}
C {devices/iopin.sym} 1560 50 0 0 {name=p3 lab=top_c4}
C {devices/iopin.sym} 1560 80 0 0 {name=p4 lab=top_c3}
C {devices/iopin.sym} 1560 110 0 0 {name=p5 lab=top_c2}
C {devices/iopin.sym} 1560 140 0 0 {name=p6 lab=top_c1}
C {devices/iopin.sym} 1560 170 0 0 {name=p7 lab=top_c0}
C {devices/iopin.sym} 1560 200 0 0 {name=p8 lab=top_c_dummy}
