# gf180_comp_mc
Mismatch and Montecarlo simulation examples

# モンテカルロシミュレーション
コーナーをランダムに設定してシミュレーションを行います。

通常のシミュレーションでは”ダイ”の特性は最も平均的なもの(=typical)が設定されており、
コーナーではベスト(=ff)とワースト(ss)を見る事ができます。

これに対して、モンテカルロシミュレーションではベスト－ティピカル－ワーストの間を
確率的に（ランダムに）設定して特性をみることができます。

尚、モンテカルロシミュレーションで変更されるパラメータは酸化膜厚とチャネル長／幅のオフセット等です。

例えばMOSFETでは以下のパラメータが変更されます。
```
vth0 - Long channel threshold voltage at Vbs = 0
tox - Oxide thickness (toxp=toxe=tox)
xl - Channel length offset due to mask/etch effect
xw - Channel width offset due to mask/etch effect
xj - Junction depth
rdsw - Zero bias LDD resistance per unit width
```

モデルを読み込む際はコーナー```statistical```を適用します。
ダイオードとMOSCAPは対応していません。
```
.lib $::180MCU_MODELS/sm141064.ngspice statistical
.lib $::180MCU_MODELS/sm141064.ngspice bjt_statistical
.lib $::180MCU_MODELS/sm141064.ngspice res_statistical
.lib $::180MCU_MODELS/sm141064.ngspice mimcap_statistical

.lib $::180MCU_MODELS/sm141064.ngspice cap_mim
.lib $::180MCU_MODELS/sm141064.ngspice diode_typical
.lib $::180MCU_MODELS/sm141064.ngspice moscap_typical
```

# ミスマッチシミュレーション
各素子の特性を確率的に（ランダムに）振ってシミュレーションを行います。

コーナーシミュレーションではモンテカルロシミュレーションでは全体の特性を変更しているだけで、
各素子間のばらつきは一様（つまりばらつきなし）としています。

しかし、実際は隣接する素子ですら特性は異なっています。そのためのミスマッチシミュレーションです。

ミスマッチではMOSFET、抵抗、BJTの特性が変わります。

MOSFETでは各素子に対して```delvto```がランダムに設定され、Vthが変動します。また、Vthが変動したことでgmなどのパラメータも併せて変動します。

# ミスマッチ付きモンテカルロシミュレーション
両方組み合わせてより現実に近いばらつきを考慮してシミュレーションを行う事も可能です。

# 例
例として、２個のPFETの動作点解析を見てみますす。

モンテカルロシミュレーションであってミスマッチシミュレーションでない場合、
2個のPFETは同じ特性です。

```
 BSIM4v5: Berkeley Short Channel IGFET Model-4
     device              m.xm2.m0              m.xm1.m0
      model           pfet_03v3.4           pfet_03v3.4
          l               2.8e-07               2.8e-07
          w                 1e-06                 1e-06
          m                     1                     1
         nf                     1                     1
         sa                     0                     0
         sb                     0                     0
         sd                     0                     0
        sca                     0                     0
        scb                     0                     0
        scc                     0                     0
         sc                     0                     0
        min                     0                     0
         ad               1.8e-13               1.8e-13
         as               1.8e-13               1.8e-13
         pd              2.36e-06              2.36e-06
         ps              2.36e-06              2.36e-06
        nrd                  0.18                  0.18
        nrs                  0.18                  0.18
        off                     0                     0
       rbdb                    50                    50
       rbsb                    50                    50
       rbpb                    50                    50
       rbps                    50                    50
       rbpd                    50                    50
     delvto                     0                     0
      mulu0                     1                     1
        xgw                     0                     0
      ngcon                     1                     1
   trnqsmod                     0                     0
   acnqsmod                     0                     0
   rbodymod                     0                     0
   rgatemod                     0                     0
     geomod                     0                     0
    rgeomod                     0                     0
       gmbs           4.91256e-05           4.91256e-05
         gm           0.000130725           0.000130725
        gds           1.31696e-05           1.31696e-05
      vdsat               2.02446               2.02446
        vth              0.555569              0.555569
         id           0.000275164           0.000275164
        ibd           -3.3026e-12           -3.3026e-12
        ibs          -3.46729e-16          -3.46729e-16
        gbd           1.00326e-12           1.00326e-12
        gbs           1.00006e-12           1.00006e-12
       isub           4.31245e-13           4.31245e-13
      igidl                     0                     0
      igisl                     0                     0
        igs                     0                     0
        igd                     0                     0
        igb                     0                     0
       igcs                     0                     0
       igcd                     0                     0
        vbs          -0.000346707          -0.000346707
        vgs               3.29965               3.29965
        vds               3.29931               3.29931
        cgg           9.46979e-16           9.46979e-16
        cgs          -7.85285e-16          -7.85285e-16
        cgd           6.86937e-18           6.86937e-18
        cbg          -1.55994e-16          -1.55994e-16
        cbd           2.79381e-18           2.79381e-18
        cbs          -2.66831e-16          -2.66831e-16
        cdg          -3.16524e-16          -3.16524e-16
        cdd          -3.71566e-18          -3.71566e-18
        cds           4.20869e-16           4.20869e-16
        csg           -4.7446e-16           -4.7446e-16
        csd          -5.94753e-18          -5.94753e-18
        css           6.31247e-16           6.31247e-16
        cgb          -1.68563e-16          -1.68563e-16
        cdb          -1.00629e-16          -1.00629e-16
        csb          -1.50839e-16          -1.50839e-16
        cbb           4.20031e-16           4.20031e-16
      capbd           6.09241e-16           6.09241e-16
      capbs           8.55644e-16           8.55644e-16
         qg           3.60157e-15           3.60157e-15
         qb          -1.32473e-15          -1.32473e-15
         qd          -9.10864e-16          -9.10864e-16
         qs          -1.36597e-15          -1.36597e-15
       qinv           2.22374e-15           2.22374e-15
       qdef                    -0                    -0
       gcrg                     0                     0
       gtau                     0                     0

```

しかし、二度と同じシミュレーション結果は得られず、もう一度シミュレーションを実行すると異なる結果を得ます。
```
 BSIM4v5: Berkeley Short Channel IGFET Model-4
     device              m.xm2.m0              m.xm1.m0
      model           pfet_03v3.4           pfet_03v3.4
          l               2.8e-07               2.8e-07
          w                 1e-06                 1e-06
          m                     1                     1
         nf                     1                     1
         sa                     0                     0
         sb                     0                     0
         sd                     0                     0
        sca                     0                     0
        scb                     0                     0
        scc                     0                     0
         sc                     0                     0
        min                     0                     0
         ad               1.8e-13               1.8e-13
         as               1.8e-13               1.8e-13
         pd              2.36e-06              2.36e-06
         ps              2.36e-06              2.36e-06
        nrd                  0.18                  0.18
        nrs                  0.18                  0.18
        off                     0                     0
       rbdb                    50                    50
       rbsb                    50                    50
       rbpb                    50                    50
       rbps                    50                    50
       rbpd                    50                    50
     delvto                     0                     0
      mulu0                     1                     1
        xgw                     0                     0
      ngcon                     1                     1
   trnqsmod                     0                     0
   acnqsmod                     0                     0
   rbodymod                     0                     0
   rgatemod                     0                     0
     geomod                     0                     0
    rgeomod                     0                     0
       gmbs           4.67432e-05           4.67432e-05
         gm           0.000127395           0.000127395
        gds           1.18633e-05           1.18633e-05
      vdsat               1.98312               1.98312
        vth              0.644887              0.644887
         id           0.000255119           0.000255119
        ibd          -3.30262e-12          -3.30262e-12
        ibs           -3.2147e-16           -3.2147e-16
        gbd           1.00326e-12           1.00326e-12
        gbs           1.00006e-12           1.00006e-12
       isub           8.07056e-13           8.07056e-13
      igidl                     0                     0
      igisl                     0                     0
        igs                     0                     0
        igd                     0                     0
        igb                     0                     0
       igcs                     0                     0
       igcd                     0                     0
        vbs           -0.00032145           -0.00032145
        vgs               3.29968               3.29968
        vds               3.29936               3.29936
        cgg            9.5986e-16            9.5986e-16
        cgs          -7.99238e-16          -7.99238e-16
        cgd           6.61274e-18           6.61274e-18
        cbg          -1.57767e-16          -1.57767e-16
        cbd           2.61262e-18           2.61262e-18
        cbs          -2.65415e-16          -2.65415e-16
        cdg          -3.20957e-16          -3.20957e-16
        cdd          -3.55562e-18          -3.55562e-18
        cds           4.25886e-16           4.25886e-16
        csg          -4.81136e-16          -4.81136e-16
        csd          -5.66974e-18          -5.66974e-18
        css           6.38767e-16           6.38767e-16
        cgb          -1.67235e-16          -1.67235e-16
        cdb          -1.01373e-16          -1.01373e-16
        csb          -1.51961e-16          -1.51961e-16
        cbb           4.20569e-16           4.20569e-16
      capbd           6.07105e-16           6.07105e-16
      capbs           8.51828e-16           8.51828e-16
         qg           3.55011e-15           3.55011e-15
         qb          -1.31318e-15          -1.31318e-15
         qd          -8.94889e-16          -8.94889e-16
         qs          -1.34204e-15          -1.34204e-15
       qinv           2.18247e-15           2.18247e-15
       qdef                    -0                    -0
       gcrg                     0                     0
       gtau                     0                     0
```

ミスマッチシミュレーションでは、```delvto```というパラメータを各素子毎にランダムに割り当てており、
シミュレーション内部でvthを変更しているため、素子毎にランダムな特性を得ます。

```
 BSIM4v5: Berkeley Short Channel IGFET Model-4
     device              m.xm2.m0              m.xm1.m0
      model           nfet_03v3.4           pfet_03v3.4
          l               2.8e-07               2.8e-07
          w                 1e-06                 1e-06
          m                     1                     1
         nf                     1                     1
         sa                     0                     0
         sb                     0                     0
         sd                     0                     0
        sca                     0                     0
        scb                     0                     0
        scc                     0                     0
         sc                     0                     0
        min                     0                     0
         ad               1.8e-13               1.8e-13
         as               1.8e-13               1.8e-13
         pd              2.36e-06              2.36e-06
         ps              2.36e-06              2.36e-06
        nrd                  0.18                  0.18
        nrs                  0.18                  0.18
        off                     0                     0
       rbdb                    50                    50
       rbsb                    50                    50
       rbpb                    50                    50
       rbps                    50                    50
       rbpd                    50                    50
     delvto           -0.00549974           -0.00313691
      mulu0                     1                     1
        xgw                     0                     0
      ngcon                     1                     1
   trnqsmod                     0                     0
   acnqsmod                     0                     0
   rbodymod                     0                     0
   rgatemod                     0                     0
     geomod                     0                     0
    rgeomod                     0                     0
       gmbs           5.36564e-12           5.90406e-13
         gm           1.99504e-11           8.59029e-13
        gds           5.80229e-13           0.000217128
      vdsat             0.0490242               1.93854
        vth              0.584236              0.723194
         id            7.1456e-13           4.03523e-12
        ibd              -3.3e-12          -1.85908e-20
        ibs          -9.00361e-25          -5.08914e-24
        gbd                 1e-12           1.00006e-12
        gbs           1.00002e-12           1.00006e-12
       isub           2.29339e-14           2.66363e-36
      igidl           1.69541e-16                     0
      igisl                     0                     0
        igs                     0                     0
        igd                     0                     0
        igb                     0                     0
       igcs                     0                     0
       igcd                     0                     0
        vbs          -9.00346e-13          -5.08882e-12
        vgs          -9.00346e-13                   3.3
        vds                   3.3           1.85845e-08
        cgg           3.57166e-16           1.19814e-15
        cgs          -5.26727e-19          -4.65973e-16
        cgd           3.23849e-21          -6.08578e-16
        cbg          -3.56961e-16          -7.90103e-19
        cbd           1.14929e-21          -3.95062e-16
        cbs           2.56585e-19          -1.40167e-16
        cdg          -8.22127e-20          -5.98676e-16
        cdd          -1.75505e-21           6.71545e-16
        cds           1.08061e-19           1.33345e-16
        csg          -1.23312e-19          -5.98676e-16
        csd          -2.63273e-21           3.32095e-16
        css           1.62082e-19           4.72795e-16
        cgb          -3.56643e-16          -1.23591e-16
        cdb          -2.40929e-20          -2.06214e-16
        csb          -3.61371e-20          -2.06214e-16
        cbb           3.56703e-16            5.3602e-16
      capbd           6.29804e-16           8.55771e-16
      capbs           9.88066e-16           8.55771e-16
         qg           4.18939e-16           4.14517e-15
         qb          -4.18924e-16          -9.01508e-16
         qd          -5.91073e-21          -1.62183e-15
         qs          -8.86557e-21          -1.62183e-15
       qinv           1.45573e-23            3.1602e-15
       qdef                     0                    -0
       gcrg                     0                     0
       gtau                     0                     0


```
