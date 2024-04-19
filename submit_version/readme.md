# Submission files
- [GDSII for tapeout](https://github.com/ishi-kai/Chipathon2023_ADC/blob/main/submit_version/klayout/SAR_TOP.gds)
- [Schematic file for LVS](https://github.com/ishi-kai/Chipathon2023_ADC/blob/main/submit_version/klayout/sar_adc_lvs.sch)

  ![Parts Layout](./images/layout.jpg)  
  ![Block Figs](./images/PnR.png)  
  ![Pins Layout](./images/layout_pin_placement.png)  

# Descriptoin of each desgin file
- SW_CDAC.sch  
  - Purpose/Function: switch component for each CDAC bit which is based the https://github.com/ishi-kai/Chipathon2023_ADC/blob/main/transmission-gate/sw.sch
  - Remark: The only difference from the base sw.sch above is the NMOS connected to the Vout port
- SW_CDAC.sym  
  - Purpose/Function: symbol file made from the Sw_CDAC.sch
- user_proj_sarlogic.sym  
  - Purpose/Function: symbol file used for the simulatin of https://github.com/ishi-kai/Chipathon2023_ADC/blob/main/maple0705/SAR%20Logic/caravel/openlane/user_proj_sarlogic_pex_extracted.spice 
- user_proj_sarlogic.sch  
  - Purpose/Function: black box for making the symbol file of user_proj_sarlogic
- tran_sar_logic.sch  
  - Purpose/Function: schematic file for the unit-level verification of SAR logic.
- tran_sar_adc.sch
  - Purpose/Function:  testbench for the integration of the overalll SAR A/D converter as shown in the figure below
   ![スクリーンショット 2024-04-06 23 34 44](https://github.com/ishi-kai/Chipathon2023_ADC/assets/654720/e88be19a-a972-409c-b437-14064f13c3a3)

## Miscellaneous:  
  - PEX extraction of SAR logic (*.spice file)  
    - https://github.com/ishi-kai/Chipathon2023_ADC/blob/main/maple0705/SAR%20Logic/caravel/openlane/user_proj_sarlogic_pex_extracted.spice
  - Design of the MIM capacitor array  
    - https://github.com/ishi-kai/Chipathon2023_ADC/tree/cdac_tseng/cdac/mim_cap_array_8x8
  - Design of the latch component
    - https://github.com/ishi-kai/Chipathon2023_ADC/tree/main/latch  
    - https://github.com/ishi-kai/Chipathon2023_ADC/tree/main/inverter
  - Design of the comparator
    - https://github.com/ishi-kai/Chipathon2023_ADC/tree/creating-a-comparator-for-ADC/gitefu/comp_20240331
  - Unused/Tentative design material
      - LDO: https://github.com/ishi-kai/Chipathon2023_ADC/tree/main/noritsuna/ldo
