v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 1060 -880 1060 -840 {
lab=VDD}
N 1160 -880 1160 -840 {
lab=CLK}
N 1040 -440 1100 -440 {
lab=CLK}
N 1040 -420 1100 -420 {
lab=XRST}
N 1360 -880 1360 -840 {
lab=#net1}
N 1660 -880 1660 -840 {
lab=VIN}
N 1040 -460 1100 -460 {
lab=VIN}
N 1800 -470 1840 -470 {
lab=ADC_OUT[5]}
N 1800 -410 1840 -410 {
lab=ADC_OUT[4]}
N 1800 -350 1840 -350 {
lab=ADC_OUT[3]}
N 1800 -290 1840 -290 {
lab=ADC_OUT[2]}
N 1800 -230 1840 -230 {
lab=ADC_OUT[1]}
N 1800 -170 1840 -170 {
lab=ADC_OUT[0]}
N 1600 -490 1600 -480 {
lab=OUT[5]}
N 1600 -430 1600 -420 {
lab=OUT[4]}
N 1600 -370 1600 -360 {
lab=OUT[3]}
N 1600 -310 1600 -300 {
lab=OUT[2]}
N 1600 -250 1600 -240 {
lab=OUT[1]}
N 1600 -190 1600 -180 {
lab=OUT[0]}
N 1800 -110 1840 -110 {
lab=ADC_EOC}
N 1420 -120 1720 -120 {
lab=EOC}
N 1560 -480 1720 -480 {
lab=OUT[5]}
N 1560 -420 1720 -420 {
lab=OUT[4]}
N 1560 -360 1720 -360 {
lab=OUT[3]}
N 1560 -300 1720 -300 {
lab=OUT[2]}
N 1560 -240 1720 -240 {
lab=OUT[1]}
N 1560 -180 1720 -180 {
lab=OUT[0]}
N 1400 -410 1420 -410 {
lab=EOC}
N 1420 -410 1440 -410 {
lab=EOC}
N 1420 -410 1420 -120 {
lab=EOC}
N 1400 -510 1460 -510 {
lab=OUT[0]}
N 1460 -510 1460 -180 {
lab=OUT[0]}
N 1460 -180 1560 -180 {
lab=OUT[0]}
N 1400 -500 1470 -500 {
lab=OUT[1]}
N 1470 -500 1470 -240 {
lab=OUT[1]}
N 1470 -240 1560 -240 {
lab=OUT[1]}
N 1400 -490 1480 -490 {
lab=OUT[2]}
N 1480 -490 1480 -300 {
lab=OUT[2]}
N 1480 -300 1560 -300 {
lab=OUT[2]}
N 1400 -480 1490 -480 {
lab=OUT[3]}
N 1490 -480 1490 -360 {
lab=OUT[3]}
N 1490 -360 1560 -360 {
lab=OUT[3]}
N 1400 -470 1500 -470 {
lab=OUT[4]}
N 1500 -470 1500 -420 {
lab=OUT[4]}
N 1500 -420 1560 -420 {
lab=OUT[4]}
N 1400 -460 1560 -460 {
lab=OUT[5]}
N 1560 -480 1560 -460 {
lab=OUT[5]}
C {devices/vsource.sym} 1060 -810 0 0 {name=V1 value=3.3 savecurrent=false}
C {devices/vsource.sym} 1160 -810 0 0 {name=VPLL value="pulse(0 3.3 0 1n 1n 10n 20n)" savecurrent=false}
C {devices/gnd.sym} 1160 -780 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} 1060 -780 0 0 {name=l3 lab=GND}
C {devices/simulator_commands_shown.sym} 40 -630 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value=".include ~/adc/rc_check/SAR_TOP_pex_extracted_RC.spice
.temp 27
.control
save all
alter V1 3.3

let start_vin = 0.0515625 / 2
let stop_vin = 3.3
let delta_vin = 0.0515625
let vin_act = start_vin
alter V2 vin_act

while vin_act le stop_vin
	tran 100n 1u
	write sar_adc_tran.raw
	meas tran vin FIND v(VIN) WHEN v(ADC_EOC)=1.65 FALL=LAST
	meas tran vout5 FIND v(ADC_OUT[5]) WHEN v(ADC_EOC)=1.65 FALL=LAST
	meas tran vout4 FIND v(ADC_OUT[4]) WHEN v(ADC_EOC)=1.65 FALL=LAST
	meas tran vout3 FIND v(ADC_OUT[3]) WHEN v(ADC_EOC)=1.65 FALL=LAST
	meas tran vout2 FIND v(ADC_OUT[2]) WHEN v(ADC_EOC)=1.65 FALL=LAST
	meas tran vout1 FIND v(ADC_OUT[1]) WHEN v(ADC_EOC)=1.65 FALL=LAST
	meas tran vout0 FIND v(ADC_OUT[0]) WHEN v(ADC_EOC)=1.65 FALL=LAST
	print vin >> sar_adc_tran_out_typ.txt
	print vout5 >> sar_adc_tran_out_typ.txt
	print vout4 >> sar_adc_tran_out_typ.txt
	print vout3 >> sar_adc_tran_out_typ.txt
	print vout2 >> sar_adc_tran_out_typ.txt
	print vout1 >> sar_adc_tran_out_typ.txt
	print vout0 >> sar_adc_tran_out_typ.txt
	let vin_act = vin_act + delta_vin
	alter V2 vin_act
end

.endc
"}
C {devices/code_shown.sym} 40 -870 0 0 {name=s1 only_toplevel=false 
format="tcleval( @value )"
value=".include $::180MCU_MODELS/design.ngspice
.lib $180MCU_MODELS/sm141064.ngspice typical
.lib $180MCU_MODELS/sm141064.ngspice cap_mim
.lib $180MCU_MODELS/sm141064.ngspice bjt_typical
.lib $180MCU_MODELS/sm141064.ngspice res_typical
.lib $180MCU_MODELS/sm141064.ngspice moscap_typical
.lib $180MCU_MODELS/sm141064.ngspice mimcap_typical
.lib $180MCU_MODELS/sm141064.ngspice diode_typical
.include $::180MCU_STDCELLS/gf180mcu_fd_sc_mcu7t5v0.spice
.include ~/pdk/gf180mcuD/libs.ref/gf180mcu_fd_io/spice/gf180mcu_fd_io.spice"}
C {devices/lab_pin.sym} 1160 -880 0 0 {name=p2 sig_type=std_logic lab=CLK}
C {devices/lab_pin.sym} 1040 -440 0 0 {name=p5 sig_type=std_logic lab=CLK}
C {devices/lab_pin.sym} 1040 -420 0 0 {name=p7 sig_type=std_logic lab=XRST}
C {devices/lab_pin.sym} 1440 -880 2 0 {name=p9 sig_type=std_logic lab=XRST}
C {devices/gnd.sym} 1360 -780 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} 1360 -810 0 0 {name=V3 value="pwl(0 0 100n 0 101n 3.3)" savecurrent=false}
C {devices/vdd.sym} 1060 -880 0 0 {name=l12 lab=VDD}
C {devices/lab_pin.sym} 1660 -880 2 1 {name=p25 sig_type=std_logic lab=VIN}
C {devices/gnd.sym} 1660 -780 0 0 {name=l22 lab=GND}
C {devices/vsource.sym} 1660 -810 0 0 {name=V2 value=1 savecurrent=false}
C {devices/lab_pin.sym} 1040 -460 0 0 {name=p26 sig_type=std_logic lab=VIN}
C {devices/lab_pin.sym} 1440 -410 2 0 {name=p17 sig_type=std_logic lab=EOC}
C {io_bi_t.sym} 1760 -470 0 0 {name=x1 CS=0 DVDD=VDD DVSS=0 IE=0 OE=VDD PD=0 PDRV0=VDD PDRV1=VDD PU=0 SL=0 VDD=VDD VSS=0 prefix=gf180mcu_fd_io__}
C {devices/lab_pin.sym} 1840 -470 2 0 {name=p3 sig_type=std_logic lab=ADC_OUT[5]}
C {devices/lab_pin.sym} 1840 -410 2 0 {name=p4 sig_type=std_logic lab=ADC_OUT[4]}
C {devices/lab_pin.sym} 1840 -350 2 0 {name=p6 sig_type=std_logic lab=ADC_OUT[3]}
C {devices/lab_pin.sym} 1840 -290 2 0 {name=p8 sig_type=std_logic lab=ADC_OUT[2]}
C {devices/lab_pin.sym} 1840 -230 2 0 {name=p10 sig_type=std_logic lab=ADC_OUT[1]}
C {devices/lab_pin.sym} 1840 -170 2 0 {name=p11 sig_type=std_logic lab=ADC_OUT[0]}
C {devices/lab_pin.sym} 1600 -490 2 0 {name=p12 sig_type=std_logic lab=OUT[5]}
C {devices/lab_pin.sym} 1600 -430 2 0 {name=p13 sig_type=std_logic lab=OUT[4]}
C {devices/lab_pin.sym} 1600 -370 2 0 {name=p14 sig_type=std_logic lab=OUT[3]}
C {devices/lab_pin.sym} 1600 -310 2 0 {name=p15 sig_type=std_logic lab=OUT[2]}
C {devices/lab_pin.sym} 1600 -250 2 0 {name=p16 sig_type=std_logic lab=OUT[1]}
C {devices/lab_pin.sym} 1600 -190 2 0 {name=p18 sig_type=std_logic lab=OUT[0]}
C {devices/lab_pin.sym} 1840 -110 2 0 {name=p19 sig_type=std_logic lab=ADC_EOC}
C {io_dvdd.sym} 1020 -840 0 0 {name=x8 DVSS=DVSS VSS=0 prefix=gf180mcu_fd_io__ }
C {io_dvss.sym} 1020 -780 0 0 {name=x9 DVDD=DVDD VDD=VDD prefix=gf180mcu_fd_io__ }
C {io_in_c.sym} 1400 -880 0 0 {name=x10 DVDD=DVDD DVSS=DVSS PD=0 PU=0 VDD=VDD VSS=0 prefix=gf180mcu_fd_io__ }
C {io_asig_5p0.sym} 1620 -840 0 0 {name=x11 DVDD=DVDD DVSS=DVSS VDD=VDD VSS=0 prefix=gf180mcu_fd_io__ }
C {devices/vdd.sym} 1100 -500 0 0 {name=l4 lab=VDD}
C {devices/gnd.sym} 1100 -480 0 0 {name=l5 lab=GND}
C {io_bi_t.sym} 1760 -410 0 0 {name=x2 CS=0 DVDD=VDD DVSS=0 IE=0 OE=VDD PD=0 PDRV0=VDD PDRV1=VDD PU=0 SL=0 VDD=VDD VSS=0 prefix=gf180mcu_fd_io__}
C {io_bi_t.sym} 1760 -350 0 0 {name=x3 CS=0 DVDD=VDD DVSS=0 IE=0 OE=VDD PD=0 PDRV0=VDD PDRV1=VDD PU=0 SL=0 VDD=VDD VSS=0 prefix=gf180mcu_fd_io__}
C {io_bi_t.sym} 1760 -290 0 0 {name=x4 CS=0 DVDD=VDD DVSS=0 IE=0 OE=VDD PD=0 PDRV0=VDD PDRV1=VDD PU=0 SL=0 VDD=VDD VSS=0 prefix=gf180mcu_fd_io__}
C {io_bi_t.sym} 1760 -230 0 0 {name=x5 CS=0 DVDD=VDD DVSS=0 IE=0 OE=VDD PD=0 PDRV0=VDD PDRV1=VDD PU=0 SL=0 VDD=VDD VSS=0 prefix=gf180mcu_fd_io__}
C {io_bi_t.sym} 1760 -170 0 0 {name=x6 CS=0 DVDD=VDD DVSS=0 IE=0 OE=VDD PD=0 PDRV0=VDD PDRV1=VDD PU=0 SL=0 VDD=VDD VSS=0 prefix=gf180mcu_fd_io__}
C {io_bi_t.sym} 1760 -110 0 0 {name=x7 CS=0 DVDD=VDD DVSS=0 IE=0 OE=VDD PD=0 PDRV0=VDD PDRV1=VDD PU=0 SL=0 VDD=VDD VSS=0 prefix=gf180mcu_fd_io__}
C {SAR_TOP_RC.sym} 1100 -500 0 0 {name=x12 prefix=SAR_TOP}
