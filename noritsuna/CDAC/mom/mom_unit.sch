v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 500 -510 1090 -50 {flags=graph
y1=-2.8e-14
y2=0
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=2e-07
divx=5
subdivx=1



unitx=1
dataset=-1
color=4
node="\\"Capac; i(v1) p deriv() /\\""}
N 60 -100 60 -70 {
lab=P}
N 60 -140 60 -100 {
lab=P}
N 60 -10 60 40 {
lab=GND}
N -260 -140 60 -140 {
lab=P}
N -260 -80 -260 -10 {
lab=#net1}
N -260 50 60 50 {
lab=GND}
N 60 40 60 50 {
lab=GND}
C {devices/code_shown.sym} -570 -450 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/sm141064.ngspice cap_mim
.lib $::180MCU_MODELS/sm141064.ngspice res_typical
.lib $::180MCU_MODELS/sm141064.ngspice moscap_typical
.lib $::180MCU_MODELS/sm141064.ngspice mimcap_typical
* .lib $::180MCU_MODELS/sm141064.ngspice res_statistical
"}
C {devices/code_shown.sym} 100 -450 0 0 {name=NGSPICE only_toplevel=true
value="
*.option temp=25
*.option tnom=25
.include ~/TOP_pex_extracted.spice
.control
save all
tran 0.1n 200n
write mom_unit.raw
.endc
"}
C {devices/res.sym} -260 -110 0 0 {name=R2
value=100k
footprint=1206
device=resistor
m=1}
C {devices/vsource.sym} -260 20 0 0 {name=V1 value="pwl 0 0 200n 3.3"}
C {devices/gnd.sym} 60 50 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} 60 -140 0 1 {name=l3 sig_type=std_logic lab=P}
C {devices/launcher.sym} 475 -565 0 0 {name=h1
descr="Click left mouse button here with control key
pressed to load/unload waveforms in graph."
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw
"
}
C {mom_unit.sym} 0 -40 0 0 {name=x1 prefix=TOP}
