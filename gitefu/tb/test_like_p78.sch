v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 10 -70 20 -70 {
lab=CLK}
N -100 -110 20 -110 {
lab=#net1}
N -100 -110 -100 -100 {
lab=#net1}
N -100 -40 -100 -30 {
lab=GND}
N -170 -120 -170 -100 {
lab=#net2}
N -170 -120 -50 -120 {
lab=#net2}
N -170 -40 -170 -30 {
lab=GND}
N -20 -30 20 -30 {
lab=GND}
N 10 -50 20 -50 {
lab=VIN}
N 10 -90 20 -90 {
lab=#net2}
N 10 -120 10 -90 {
lab=#net2}
N -50 -120 10 -120 {
lab=#net2}
C {devices/ipin.sym} 10 -70 0 0 {name=p1 lab=CLK}
C {devices/code_shown.sym} 420 -320 0 0 {name=MODLES only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/simulator_commands_shown.sym} 430 -200 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
VDD CLK 0 pulse (0 3.3 0 40p 40p 62.5n 125n) dc 0v
VIN_wave VIN 0 pulse (0 1.5 0 40p 40p 125n 250n) dc 0v
.control
save all
tran 1p 300n
plot v(CLK) v(VOUTP) v(VOUTN)
write VOUT.raw
.endc
"}
C {devices/vsource.sym} -100 -70 0 0 {name=V1 value=3.3 savecurrent=false}
C {devices/vsource.sym} -170 -70 0 0 {name=V2 value=0.7 savecurrent=false}
C {devices/gnd.sym} -100 -30 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} -170 -30 0 0 {name=l2 lab=GND}
C {devices/opin.sym} 320 -110 0 0 {name=p4 lab=VOUTN}
C {devices/opin.sym} 320 -90 0 0 {name=p5 lab=VOUTP}
C {devices/gnd.sym} -20 -30 0 0 {name=l3 lab=GND}
C {devices/ipin.sym} 10 -50 0 0 {name=p2 lab=VIN}
C {/media/tomoakitanaka/Documents/MyDocuments/personal/ISHIKAI/2024/Chipathon2023_ADC/gitefu/comp_20240331/comp_20240331.sym} 170 -70 0 0 {name=x1}
