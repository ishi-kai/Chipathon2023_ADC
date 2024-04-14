v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 940 -490 960 -490 {
lab=VDD}
N 940 -470 960 -470 {
lab=GND}
N 60 -300 60 -260 {
lab=VDD}
N 940 -390 960 -390 {
lab=GND}
N 160 -300 160 -260 {
lab=CLK}
N 940 -430 960 -430 {
lab=CLK}
N 940 -450 960 -450 {
lab=XRST}
N 420 -300 420 -260 {
lab=XRST}
N 1260 -350 1260 -260 {
lab=SDAC0}
N 1250 -330 1260 -330 {
lab=SDAC0}
N 1240 -350 1240 -260 {
lab=SDAC1}
N 1230 -330 1240 -330 {
lab=SDAC1}
N 1220 -350 1220 -260 {
lab=SDAC2}
N 1210 -330 1220 -330 {
lab=SDAC2}
N 1200 -350 1200 -260 {
lab=SDAC3}
N 1190 -330 1200 -330 {
lab=SDAC3}
N 1180 -350 1180 -260 {
lab=SDAC4}
N 1170 -330 1180 -330 {
lab=SDAC4}
N 1160 -350 1160 -260 {
lab=SDAC5}
N 1150 -330 1160 -330 {
lab=SDAC5}
N 1140 -350 1140 -260 {
lab=SDAC6}
N 1130 -330 1140 -330 {
lab=SDAC6}
N 1100 -350 1100 -260 {
lab=SC}
N 1090 -330 1100 -330 {
lab=SC}
N 1380 -390 1460 -390 {
lab=COMP_CLK}
N 1480 -410 1480 -390 {
lab=COMP_CLK}
N 1460 -390 1500 -390 {
lab=COMP_CLK}
N 1140 -690 1140 -550 {
lab=DIGITAL_OUT[5]}
N 1120 -670 1140 -670 {
lab=DIGITAL_OUT[5]}
N 1120 -650 1160 -650 {
lab=DIGITAL_OUT[4]}
N 1120 -630 1180 -630 {
lab=DIGITAL_OUT[3]}
N 1120 -610 1200 -610 {
lab=DIGITAL_OUT[2]}
N 1120 -590 1220 -590 {
lab=DIGITAL_OUT[1]}
N 1120 -570 1240 -570 {
lab=DIGITAL_OUT[0]}
N 1160 -690 1160 -550 {
lab=DIGITAL_OUT[4]}
N 1180 -690 1180 -550 {
lab=DIGITAL_OUT[3]}
N 1200 -690 1200 -550 {
lab=DIGITAL_OUT[2]}
N 1220 -690 1220 -550 {
lab=DIGITAL_OUT[1]}
N 1240 -690 1240 -550 {
lab=DIGITAL_OUT[0]}
N 1260 -690 1260 -550 {
lab=EOC}
C {devices/capa.sym} 1260 -230 0 0 {name=C0
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/vsource.sym} 60 -230 0 0 {name=V1 value=3.3 savecurrent=false}
C {devices/vsource.sym} 160 -230 0 0 {name=VPLL value="pulse(0 3.3 0 1n 1n 10n 20n)" savecurrent=false}
C {devices/gnd.sym} 160 -200 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} 60 -200 0 0 {name=l3 lab=GND}
C {devices/gnd.sym} 1260 -200 0 0 {name=l6 lab=GND}
C {devices/lab_pin.sym} 60 -300 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 940 -490 0 0 {name=p3 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 940 -470 0 0 {name=p4 sig_type=std_logic lab=GND}
C {devices/lab_pin.sym} 940 -390 0 0 {name=p8 sig_type=std_logic lab=GND}
C {devices/simulator_commands_shown.sym} 40 -850 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value=".include ~/design/Git/Chipathon2023/maple0705/SAR_Logic/klayout/user_proj_sarlogic_pex_extracted.spice
.control
save all
tran 100n 100n
write sar_logic_tran.raw
meas tran out0 FIND v(DIGITAL_OUT[0]) WHEN v(EOC)=1.65 FALL=LAST
meas tran out1 FIND v(DIGITAL_OUT[1]) WHEN v(EOC)=1.65 FALL=LAST
meas tran out2 FIND v(DIGITAL_OUT[2]) WHEN v(EOC)=1.65 FALL=LAST
meas tran out3 FIND v(DIGITAL_OUT[3]) WHEN v(EOC)=1.65 FALL=LAST
meas tran out4 FIND v(DIGITAL_OUT[4]) WHEN v(EOC)=1.65 FALL=LAST
meas tran out5 FIND v(DIGITAL_OUT[5]) WHEN v(EOC)=1.65 FALL=LAST
print yeval >> test.txt
.endc
"}
C {devices/code_shown.sym} 1000 -850 0 0 {name=s1 only_toplevel=false 
format="tcleval( @value )"
value=".include $::180MCU_MODELS/design.ngspice
.lib $180MCU_MODELS/sm141064.ngspice typical
.lib $180MCU_MODELS/sm141064.ngspice cap_mim
.lib $180MCU_MODELS/sm141064.ngspice bjt_typical
.lib $180MCU_MODELS/sm141064.ngspice res_typical
.lib $180MCU_MODELS/sm141064.ngspice moscap_typical
.lib $180MCU_MODELS/sm141064.ngspice mimcap_typical
.lib $180MCU_MODELS/sm141064.ngspice diode_typical
.include $::180MCU_STDCELLS/gf180mcu_fd_sc_mcu7t5v0.spice"}
C {design/Git/Chipathon2023/maple0705/SAR_Logic/xschem/user_proj_sarlogic.sym} 1170 -440 0 0 {name=x_SAR_LOGIC prefix=user_proj_sarlogic}
C {devices/lab_pin.sym} 160 -300 0 0 {name=p2 sig_type=std_logic lab=CLK}
C {devices/lab_pin.sym} 940 -430 0 0 {name=p5 sig_type=std_logic lab=CLK}
C {devices/lab_pin.sym} 940 -450 0 0 {name=p7 sig_type=std_logic lab=XRST}
C {devices/lab_pin.sym} 420 -300 0 0 {name=p9 sig_type=std_logic lab=XRST}
C {devices/gnd.sym} 420 -200 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} 420 -230 0 0 {name=V3 value="pwl(0 0 100n 0 101n 3.3)" savecurrent=false}
C {devices/lab_pin.sym} 1250 -330 3 0 {name=p10 sig_type=std_logic lab=SDAC0}
C {devices/capa.sym} 1240 -230 0 0 {name=C1
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 1240 -200 0 0 {name=l5 lab=GND}
C {devices/lab_pin.sym} 1230 -330 3 0 {name=p11 sig_type=std_logic lab=SDAC1}
C {devices/capa.sym} 1220 -230 0 0 {name=C2
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 1220 -200 0 0 {name=l7 lab=GND}
C {devices/lab_pin.sym} 1210 -330 3 0 {name=p12 sig_type=std_logic lab=SDAC2}
C {devices/capa.sym} 1200 -230 0 0 {name=C3
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 1200 -200 0 0 {name=l8 lab=GND}
C {devices/lab_pin.sym} 1190 -330 3 0 {name=p13 sig_type=std_logic lab=SDAC3}
C {devices/capa.sym} 1180 -230 0 0 {name=C4
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 1180 -200 0 0 {name=l9 lab=GND}
C {devices/lab_pin.sym} 1170 -330 3 0 {name=p14 sig_type=std_logic lab=SDAC4}
C {devices/capa.sym} 1160 -230 0 0 {name=C5
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 1160 -200 0 0 {name=l10 lab=GND}
C {devices/lab_pin.sym} 1150 -330 3 0 {name=p15 sig_type=std_logic lab=SDAC5}
C {devices/capa.sym} 1140 -230 0 0 {name=C6
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 1140 -200 0 0 {name=l11 lab=GND}
C {devices/lab_pin.sym} 1130 -330 3 0 {name=p16 sig_type=std_logic lab=SDAC6}
C {devices/capa.sym} 1100 -230 0 0 {name=CSC
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 1100 -200 0 0 {name=l14 lab=GND}
C {devices/lab_pin.sym} 1090 -330 3 0 {name=p19 sig_type=std_logic lab=SC}
C {devices/lab_pin.sym} 1480 -410 0 0 {name=p20 sig_type=std_logic lab=COMP_CLK}
C {devices/lab_pin.sym} 1120 -670 0 0 {name=p18 sig_type=std_logic lab=DIGITAL_OUT[5]}
C {devices/lab_pin.sym} 1120 -650 0 0 {name=p6 sig_type=std_logic lab=DIGITAL_OUT[4]}
C {devices/lab_pin.sym} 1120 -630 0 0 {name=p40 sig_type=std_logic lab=DIGITAL_OUT[3]}
C {devices/lab_pin.sym} 1120 -610 0 0 {name=p41 sig_type=std_logic lab=DIGITAL_OUT[2]}
C {devices/lab_pin.sym} 1120 -590 0 0 {name=p42 sig_type=std_logic lab=DIGITAL_OUT[1]}
C {devices/lab_pin.sym} 1120 -570 0 0 {name=p43 sig_type=std_logic lab=DIGITAL_OUT[0]}
C {devices/lab_pin.sym} 1260 -570 2 0 {name=p17 sig_type=std_logic lab=EOC}
