* Model of unit capacitor: model=cap_mim_2f0_m4m5_noshield, with W=7um, L=7um
* The structure of the capacitor array designed herein is a 8x8 matrix where every two neighbouring unit capacitors are 15 steps apart from each other.

| Design File | Release Location | Remark |
| --- | --- | --- |
|MIM Cap. array schematic|[rev001/advanced_mimcap_array8x8_15step.sch](https://github.com/ishi-kai/Chipathon2023_ADC/blob/main/cdac/mim_cap_array_8x8/rev001/advanced_mimcap_array8x8_15step.sch)||
|MIM Cap. array symbol|[rev001/advanced_mimcap_array8x8_15step.sym](https://github.com/ishi-kai/Chipathon2023_ADC/blob/main/cdac/mim_cap_array_8x8/rev001/advanced_mimcap_array8x8_15step.sym)||
|PEX file (RC extraction)|[rev001/TOP_pex_extracted.spice](https://github.com/ishi-kai/Chipathon2023_ADC/blob/main/cdac/mim_cap_array_8x8/rev001/TOP_pex_extracted.spice)||
|GDSII (flatten)|[rev001/gds/flatten/advanced_mimcap_array8x8_15step.gds](https://github.com/ishi-kai/Chipathon2023_ADC/blob/main/cdac/mim_cap_array_8x8/rev001/gds/flatten/advanced_mimcap_array8x8_15step.gds)|The follows are passed: <ul><li>Caravel DRC</li><li>Caravel DRC</li><li>Magic DRC</li><li>Full DRC</li><li>KLayout LVS</li></ul>|
|GDSII (not flatten)|[rev001/gds/no_flatten/advanced_mimcap_array8x8_15step.gds](https://github.com/ishi-kai/Chipathon2023_ADC/blob/main/cdac/mim_cap_array_8x8/rev001/gds/no_flatten/advanced_mimcap_array8x8_15step.gds)|
|Testbench env. 1|[tb/mim_cap_array_charge_test.sch](https://github.com/ishi-kai/Chipathon2023_ADC/blob/main/cdac/mim_cap_array_8x8/tb/mim_cap_array_charge_test.sch)|RC charging circuit|
|Testbench env. 2|[tb/test_cap_mim_2f0fF.sch](https://github.com/ishi-kai/Chipathon2023_ADC/blob/main/cdac/mim_cap_array_8x8/tb/test_cap_mim_2f0fF.sch)|Capacitance measurement|
