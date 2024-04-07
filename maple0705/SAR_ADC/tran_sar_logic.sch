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
lab=VDD}
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
N 1120 -350 1120 -260 {
lab=SDAC7}
N 1110 -330 1120 -330 {
lab=SDAC7}
N 1100 -350 1100 -260 {
lab=SDAC8}
N 1090 -330 1100 -330 {
lab=SDAC8}
N 1080 -350 1080 -260 {
lab=SC}
N 1070 -330 1080 -330 {
lab=SC}
N 1380 -490 1460 -490 {
lab=DIGITAL_OUT}
N 1380 -390 1460 -390 {
lab=COMP_CLK}
N 1480 -410 1480 -390 {
lab=COMP_CLK}
N 1460 -490 1500 -490 {
lab=DIGITAL_OUT}
N 1460 -390 1500 -390 {
lab=COMP_CLK}
N 1480 -510 1480 -490 {
lab=DIGITAL_OUT}
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
value=".include ~/design/klayout/sar_logic/user_proj_sarlogic_pex_extracted.spice
.control
save all
tran 100n 10u
plot v(vinp) v(VINN) v(CLK) v(VOUTP) v(VOUTN)
wrdata ~/design/xschem/sar_logic/tran_sar_adc.txt v(vinp) v(VINN) v(CLK) v(VOUTP) v(VOUTN)
write sar_adc_tran.raw
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
C {design/xschem/sar_logic/user_proj_sarlogic.sym} 1170 -440 0 0 {name=x_SAR_LOGIC prefix=user_proj_sarlogic}
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
C {devices/capa.sym} 1120 -230 0 0 {name=C7
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 1120 -200 0 0 {name=l12 lab=GND}
C {devices/lab_pin.sym} 1110 -330 3 0 {name=p17 sig_type=std_logic lab=SDAC7}
C {devices/capa.sym} 1100 -230 0 0 {name=C8
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 1100 -200 0 0 {name=l13 lab=GND}
C {devices/lab_pin.sym} 1090 -330 3 0 {name=p18 sig_type=std_logic lab=SDAC8}
C {devices/capa.sym} 1080 -230 0 0 {name=CSC
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 1080 -200 0 0 {name=l14 lab=GND}
C {devices/lab_pin.sym} 1070 -330 3 0 {name=p19 sig_type=std_logic lab=SC}
C {devices/capa.sym} 1500 -360 0 0 {name=C9
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 1500 -330 0 0 {name=l15 lab=GND}
C {devices/capa.sym} 1500 -460 0 0 {name=C10
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 1500 -430 0 0 {name=l17 lab=GND}
C {devices/lab_pin.sym} 1480 -410 0 0 {name=p20 sig_type=std_logic lab=COMP_CLK}
C {devices/lab_pin.sym} 1480 -510 0 0 {name=p21 sig_type=std_logic lab=DIGITAL_OUT}
