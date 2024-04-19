# Submission files
- [GDSII for tapeout](https://github.com/ishi-kai/Chipathon2023_ADC/blob/main/submit_version/klayout/SAR_TOP.gds)
- [Schematic file for LVS](https://github.com/ishi-kai/Chipathon2023_ADC/blob/main/submit_version/xschem/sar_adc_lvs.sch)

  - Layout and the contributor of each subblock/subsystem
  ![Parts Layout](./images/layout.jpg)

  - Block Diagram
  ![Block Figs](./images/PnR.png)

  - Interface and area
  ![Pins Layout](./images/layout_pin_placement.png)  

---

# Descriptoin of each design file
| File | Purpose/Function | Remark |
| --- | --- | --- |
|SW_CDAC.sch|switch component for each CDAC bit which is based on the https://github.com/ishi-kai/Chipathon2023_ADC/blob/main/transmission-gate/sw.sch|The only difference from the base sw.sch is the NMOS connected to the Vout port|
|SW_CDAC.sym|symbol file made from the Sw_CDAC.sch||
|user_proj_sarlogic.sym|symbol file used for the simulation of [user_proj_sarlogic_pex_extracted.spice](https://github.com/ishi-kai/Chipathon2023_ADC/blob/main/maple0705/SAR_Logic/caravel/openlane/user_proj_sarlogic.gds)||
|user_proj_sarlogic.sch|blackbox module for making the symbol file of user_proj_sarlogic||
|tran_sar_logic.sch|schematic file for the unit-level verification of SAR logic||
|tran_sar_adc.sch|Testbench for the integration of the overall SAR A/D converter as shown in the figure below||

![SAR-ADC Spec](./images/sar_adc_operating_waveform.png) 

---

## Miscellaneous:  
  - Top-level schematic of the A/D converter integrating all subblocks 
    -https://github.com/ishi-kai/Chipathon2023_ADC/tree/main/maple0705/SAR_Logic/caravel/openlane
    - ![SAR_TOP_LVS](./images/SAR_TOP_LVS.png)  
  - Design of the MIM capacitor array  
    - https://github.com/ishi-kai/Chipathon2023_ADC/tree/cdac_tseng/cdac/mim_cap_array_8x8
    - ![CDAC](./images/advanced_mimcap_array8x8_15step.png)  
  - Design of the latch component
    - https://github.com/ishi-kai/Chipathon2023_ADC/tree/main/latch  
    - https://github.com/ishi-kai/Chipathon2023_ADC/tree/main/inverter
    - ![LATCH](./images/LATCH.png)  
    - ![Inv](./images/Inv.png)  
  - Design of the comparator
    - https://github.com/ishi-kai/Chipathon2023_ADC/tree/main/gitefu/comp_20240331
    - ![Comparator](./images/comp_20240331.png)  
  - Unused/Tentative design material
      - LDO: https://github.com/ishi-kai/Chipathon2023_ADC/tree/main/noritsuna/ldo
      - ![LDO](./images/ldo.png)  
