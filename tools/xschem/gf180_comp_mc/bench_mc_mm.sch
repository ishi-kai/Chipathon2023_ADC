v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {S} 640 -210 2 0 0.4 0.4 {}
T {R} 640 -330 2 0 0.4 0.4 {}
T {Q} 840 -230 2 1 0.4 0.4 {}
T {Real Simulation example
(MonteCarlo and MisMatch)} 100 -480 0 0 0.4 0.4 {}
N 120 -280 160 -280 {
lab=VDD}
N 120 -320 120 -280 {
lab=VDD}
N 120 -200 160 -200 {
lab=GND}
N 120 -200 120 -160 {
lab=GND}
N 460 -260 580 -260 {
lab=VOUTP}
N 460 -280 580 -280 {
lab=VOUTN}
N 120 -260 160 -260 {
lab=VCOMP}
N 120 -220 160 -220 {
lab=VIN}
N 120 -240 160 -240 {
lab=CLK}
N 720 -290 840 -230 {
lab=OUT}
N 720 -250 840 -310 {
lab=#net1}
N 580 -320 580 -280 {
lab=VOUTN}
N 580 -260 580 -220 {
lab=VOUTP}
N 580 -330 580 -320 {
lab=VOUTN}
N 580 -330 640 -330 {
lab=VOUTN}
N 580 -220 580 -210 {
lab=VOUTP}
N 580 -210 640 -210 {
lab=VOUTP}
N 840 -230 900 -230 {
lab=OUT}
C {gf180_comp_mc/comp_20240331.sym} 310 -240 0 0 {name=x1 prefix=TOP}
C {devices/vdd.sym} 120 -320 0 0 {name=l1 lab=VDD}
C {devices/gnd.sym} 120 -160 0 0 {name=l2 lab=GND}
C {devices/simulator_commands_shown.sym} 80 -810 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
VPW VDD 0 dc 3.3
VCL CLK 0 pulse (0 3.3 0 40p 40p 62.5n 125n) dc 0
VIN VIN 0 pwl(0 0 0.01m 3.3) dc 0
VCO VCOMP 0 pwl(0 3.3 0.01m 0) dc 0
.control
set wr_vecnames
set wr_singlescale
let count=0
dowhile count < 10
  save VCOMP VIN OUT
  tran 10n 0.01m
  write VOUT_EXT.raw
  set appendwrite
  reset
  let count = count + 1
end
.endc
"}
C {devices/opin.sym} 540 -280 3 0 {name=p1 lab=VOUTN}
C {devices/opin.sym} 540 -260 1 0 {name=p2 lab=VOUTP}
C {devices/ipin.sym} 120 -260 0 0 {name=p3 lab=VCOMP}
C {devices/ipin.sym} 120 -220 0 0 {name=p4 lab=VIN}
C {devices/ipin.sym} 120 -240 0 0 {name=p5 lab=CLK}
C {devices/opin.sym} 900 -230 0 0 {name=p6 lab=OUT}
C {gf180_comp_mc/nand2_1.sym} 780 -310 0 0 {name=x2 VDD=VDD VNW=VDD VPW=0 VSS=0 prefix=gf180mcu_fd_sc_mcu7t5v0__ }
C {gf180_comp_mc/nand2_1.sym} 780 -230 0 0 {name=x3 VDD=VDD VNW=VDD VPW=0 VSS=0 prefix=gf180mcu_fd_sc_mcu7t5v0__ }
C {gf180_comp_mc/clkinv_1.sym} 680 -210 0 0 {name=x4 VDD=VDD VNW=VDD VPW=0 VSS=0 prefix=gf180mcu_fd_sc_mcu7t5v0__ }
C {gf180_comp_mc/clkinv_1.sym} 680 -330 0 0 {name=x5 VDD=VDD VNW=VDD VPW=0 VSS=0 prefix=gf180mcu_fd_sc_mcu7t5v0__ }
C {devices/code_shown.sym} 1060 -730 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.lib $::180MCU_MODELS/sm141064.ngspice statistical
.include $::180MCU_STDCELLS/gf180mcu_fd_sc_mcu7t5v0.spice
.param
+  sw_stat_global = 1
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
