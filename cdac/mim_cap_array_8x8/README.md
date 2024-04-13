* Model of unit capacitor: model=cap_mim_2f0_m4m5_noshield, with W=7um, L=7um
* The structure of the capacitor array designed herein is a 8x8 matrix where every two neighbouring unit capacitors are 15 steps apart from each other.

<pre>
 ├ ─ ─  TOP_pex_extracted.spice : PEX file
 ├ ─ ─  figures
 │    └ ─ ─  mim_cap_array_charge_1kohm_3v3.png : waveform of charging test over all six capacitors in order to measure their latencies
 ├ ─ ─  mim_cap_array8x8_15step.sch : .sch file for LVS of overall capacitory array
 ├ ─ ─  mim_cap_array8x8_15step.sym : LVS symbol file for each unit capacitor
 ├ ─ ─  mim_cap_array8x8_15step_noflatten.gds : GDS2 file w/o flattening the hierarchy
 ├ ─ ─  mim_cap_array8x8_15step.gds : GDS2 file of 8x8 capacitory array in which the hierarchy is flattened into the "TOP" cell
 └ ─ ─  mim_cap_array_tb.sch : testbench
 </pre>