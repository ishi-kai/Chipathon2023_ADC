- user_proj_sarlogic.gds  
  Openlaneにより合成されたSARロジックのGDS
- user_proj_sarlogic_pex.gds  
  user_proj_sarlogic.gds をFlattenし、Metal1のLabelを全て削除(PEX対策)
- user_proj_sarlogic_pex_extracted.spice  
  user_proj_sarlogic_pex.gds から抽出したnetlist。ただし、RCは両方とも抽出していない。
  (詳しくは、https://github.com/3zki/wsl_osic/tree/main/gf180mcu/macros)
