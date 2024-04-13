v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {S} 520 130 2 0 0.4 0.4 {}
T {R} 520 10 2 0 0.4 0.4 {}
T {Q} 720 110 2 1 0.4 0.4 {}
N 70 50 80 50 {
lab=CLK}
N -40 10 80 10 {
lab=VDD}
N 40 90 80 90 {
lab=GND}
N 70 70 80 70 {
lab=VIN}
N 0 30 80 30 {
lab=VINN}
N 30 70 70 70 {
lab=VIN}
N -240 -80 -190 -80 {
lab=VIN}
N 30 -80 30 70 {
lab=VIN}
N -190 -80 30 -80 {
lab=VIN}
N 600 50 720 110 {
lab=OUT}
N 600 90 720 30 {
lab=#net1}
N 460 10 520 10 {
lab=VOUTN}
N 460 130 520 130 {
lab=VOUTP}
N 720 110 780 110 {
lab=OUT}
N 420 10 460 10 {
lab=VOUTN}
N 420 -100 420 10 {
lab=VOUTN}
N 400 130 460 130 {
lab=VOUTP}
N 400 -80 400 130 {
lab=VOUTP}
N 380 30 400 30 {
lab=VOUTP}
N 380 10 420 10 {
lab=VOUTN}
N 400 -80 430 -80 {
lab=VOUTP}
N 420 -100 430 -100 {
lab=VOUTN}
N -140 30 0 30 {
lab=VINN}
C {devices/simulator_commands_shown.sym} 430 -530 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
.include /media/tomoakitanaka/Documents/MyDocuments/personal/ISHIKAI/2024/Chipathon2023_ADC/gitefu/comp_20240331/TOP_pex_extracted.spice
VPW VDD 0 dc 3.3
VCL CLK 0 pulse (0 3.3 0 40p 40p 62.5n 125n) dc 0
VIN VIN 0 pwl(0 0 0.01m 3.3) dc 0
VCO VINN 0 pwl(0 3.3 0.01m 0) dc 0
.control
set wr_vecnames
set wr_singlescale
let count=0
dowhile count < 10
  save VINN VIN OUT
  tran 10n 0.01m
  write VOUT_EXT.raw
  set appendwrite
  reset
  let count = count + 1
end
.endc
"}
C {devices/code_shown.sym} -180 -730 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.include $::180MCU_STDCELLS/gf180mcu_fd_sc_mcu7t5v0.spice
.param
+  sw_stat_global = 0
+  sw_stat_mismatch = 1
**
********* Default mc skew value *********
**
+ mc_skew = 3
+ res_mc_skew = 3
+ cap_mc_skew = 3
**
****** Default flicker noise corner switch *****
**
+  fnoicor = 0
"}
C {devices/ipin.sym} -240 -80 0 0 {name=p2 lab=VIN}
C {devices/ipin.sym} -140 30 0 0 {name=p3 lab=VINN}
C {devices/ipin.sym} 70 50 0 0 {name=p7 lab=CLK}
C {devices/gnd.sym} 40 90 0 0 {name=l7 lab=GND}
C {../comp_20240331/comp_20240331.sym} 230 50 0 0 {name=x6 prefix=TOP}
C {devices/opin.sym} 430 -100 0 0 {name=p8 lab=VOUTN}
C {devices/opin.sym} 430 -80 0 0 {name=p9 lab=VOUTP}
C {devices/opin.sym} 780 110 0 0 {name=p13 lab=OUT}
C {./nand2_1.sym} 660 30 0 0 {name=x7 VDD=VDD VNW=VDD VPW=0 VSS=0 prefix=gf180mcu_fd_sc_mcu7t5v0__ }
C {./nand2_1.sym} 660 110 0 0 {name=x8 VDD=VDD VNW=VDD VPW=0 VSS=0 prefix=gf180mcu_fd_sc_mcu7t5v0__ }
C {./clkinv_1.sym} 560 130 0 0 {name=x9 VDD=VDD VNW=VDD VPW=0 VSS=0 prefix=gf180mcu_fd_sc_mcu7t5v0__ }
C {./clkinv_1.sym} 560 10 0 0 {name=x10 VDD=VDD VNW=VDD VPW=0 VSS=0 prefix=gf180mcu_fd_sc_mcu7t5v0__ }
C {devices/vdd.sym} -40 10 0 0 {name=l1 lab=VDD}
