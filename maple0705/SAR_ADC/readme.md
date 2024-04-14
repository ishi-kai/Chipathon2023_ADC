- SW_CDAC.sch  
  https://github.com/ishi-kai/Chipathon2023_ADC/blob/main/transmission-gate/sw.sch  
  を流用。Vout端子にぶらさがっているNMOSのみが↑との差分。
- SW_CDAC.sym  
  .schに対応するシンボル
- user_proj_sarlogic.sym  
  https://github.com/ishi-kai/Chipathon2023_ADC/blob/main/maple0705/SAR%20Logic/caravel/openlane/user_proj_sarlogic_pex_extracted.spice  
  をsim.するのに使用するシンボル
- user_proj_sarlogic.sch  
  シンボル作成に使用した空箱
- tran_sar_logic.sch  
  SARロジック単体検証用回路図
- tran_sar_adc.sch  
  SAR A/D 統合検証テストベンチ(結果が下図)![スクリーンショット 2024-04-06 23 34 44](https://github.com/ishi-kai/Chipathon2023_ADC/assets/654720/e88be19a-a972-409c-b437-14064f13c3a3)
  他に必要な回路:  
  - SARロジック抽出 .spice  
    https://github.com/ishi-kai/Chipathon2023_ADC/blob/main/maple0705/SAR%20Logic/caravel/openlane/user_proj_sarlogic_pex_extracted.spice
  - 容量アレイ  
    https://github.com/ishi-kai/Chipathon2023_ADC/tree/cdac_tseng/cdac/mim_cap_array_8x8
  - ラッチ  
    https://github.com/ishi-kai/Chipathon2023_ADC/tree/main/latch  
    https://github.com/ishi-kai/Chipathon2023_ADC/tree/main/inverter
  - コンパレータ  
    https://github.com/ishi-kai/Chipathon2023_ADC/tree/creating-a-comparator-for-ADC/gitefu/comp_20240331
