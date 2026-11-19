# データパック
2026/11 開始のインスタンス Burning Desire には次の3つのオリジナルデータパック Petit Tweaks と More Easier、Quark Recipes を含む。

中身の趣旨や目的に明確な分類はないが、ここではフォルダに合わせて説明する。

## More Easier
次のアイテムのレシピの易化。
- `ae2:quartz_glass`
- `ae2:fluix_pearl`
- `ae2:charger`
- `ae2:growth_accelerator`
- `ae2:inscriber`
- `ae2:pattern_provider`
- `ae2:drive`
- `ae2:fluix_glass_cable`
- `ae2:crafting_unit`
- `ae2:molecular_assembler`
- `ae2:quartz_fiber`
- `ae2:terminal`
- `ae2:wireless_receiver`

### ストレージセルの大幅な易化
`ae2:cell_component_1k` のクラフトで一気に `ae2:cell_component_256k` が手に入るようにした。それに伴って、256k より下位のストレージセルはそれぞれ

- `ae2:cell_component_256k`
- `ae2:cell_component_64k`
- `ae2:cell_component_16k`
- `ae2:cell_component_4k`

を Create の Crashing Wheel で順々に手に入れられるようにした。

これにより、大規模に難易度が下がるが、MEGA Cells を導入しているので拡張の楽しみが完全に失われることはないと考える。

### Mekanism の一部ブロックの入手量倍化
以下のブロックは多く要求される(比較的大きいマルチブロック設備の建設など)ので、1回のクラフトによる入手量を **4 倍** にしている。

- `mekanism:induction_casing`
- `mekanism:thermal_evaporation_block`
- `mekanism:boiler_casing`
- `mekanism:dynamic_tank`
- `mekanism:pressure_disperser`
- `mekanism:sps_casing`
- `mekanism:steel_casing`
- `mekanismgenerators:fission_reactor_casing`
- `mekanismgenerators:fission_fuel_assembly`
- `mekanismgenerators:fusion_reactor_frame`
- `mekanismgenerators:reactor_glass`
- `mekanismgenerators:turbine_casing`
- `mekanismgenerators:turbine_vent`
- `mekanismgenerators:saturating_condenser`

### 焼き石の要求緩和
以下のアイテムはクラフトに焼き石を要求するが、閃緑岩や深層岩(ディープスレート)を代わりに用いることができるようにした。

- コンパレータ
- リピータ
- ストーンカッタ

### ロードストーンのレシピのバックポート
バニラの新しいバージョンでは、ロードストーンのレシピに調整が加わる。そのレシピをそのまま採用し、易化要素としている。

本来このバージョンではネザライトが要求されるが、鉄でクラフトできるようにしている。

### プリント基板の QOL レシピ
以下のアイテムは Create のデプロイヤを用いてクラフトできるようにした。1つのコンベアに並べて設置すると、これらのアイテムを1ラインでクラフトできる。

ユーモアレシピがたまたま QOL につながってしまった。

- `ae2:printed_calculation_processor`
- `ae2:printed_engineering_processor`
- `ae2:printed_logic_processor`
- `advanced_ae:printed_quantum_processor`
- `ae2:printed_silicon`

### Soph Storage の調整と易化
Sophisticated Storage は、デフォルトのゲームバランスに大きな問題がある。

この問題が最もよく表れるのは、アップグレードのクラフトコストである。

1段階ずつアップグレードする場合と、飛び級でアップグレードする場合とでは明らかなコストの違いがあり、その差は理不尽な域に達している。

このデータパックでは、1段階ずつのアップグレードを強制するとともに、アップグレードの無駄に高いコストを易化する。なお、狙って「易しめ」を目指しているので、易化の幅は大きく感じるかもしれない。

## Petit Tweaks

### 名前へ忠実に
火打石と打ち金は、"Flint and Steel" の名にふさわしいよう、**鉄の代わりに鋼鉄ナゲット** を要求するようにした。

このデータパックにおける唯一の難化である。

### 破壊適正
Mana And Artifice のいくつかのブロックに破壊適正を付与する。すべてのブロックを網羅しているわけではない。

- 斧適正
  - `mna:delegation_station`
  - `mna:ornate_table`
  - `mna:basic_table`
  - `mna:occulus`
- ツルハシ適正
  - `mna:manaweaving_altar`
  - `mna:manaweave_projector`
  - `mna:mana_resevoir`
  - `mna:particle_emitter`
  - `mna:redstone_trigger`
  - `mna:runeforge`
  - `mna:runic_anvil`
  - `mna:brazier`
  - `mna:seer_stone`
  - `mna:lodestar`
  - `mna:coffin`
  - `mna:slipstream_generator`
  - `mna:eldrin_matrix_arcane`
  - `mna:eldrin_matrix_ender`
  - `mna:eldrin_matrix_water`
  - `mna:eldrin_matrix_fire`
  - `mna:eldrin_matrix_earth`
  - `mna:eldrin_matrix_wind`
  - `mna:eldrin_altar`
  - `mna:eldrin_conduit_fire`
  - `mna:eldrin_conduit_water`
  - `mna:eldrin_conduit_earth`
  - `mna:eldrin_conduit_air`
  - `mna:eldrin_conduit_ender`
  - `mna:eldrin_conduit_arcane`

### QOL 易化
QOL を上げると同時に、易化をするレシピ。

- 燻製器で木炭を製錬
- 溶鉱炉でガラスを製錬
- Antiprotonic Nucureo Synsesizer で金をネザライトへ加工
- 溶鉱炉で焼き焼き石

### Soph Storage の修正
ストレージコントローラに特殊なアイテムが要求されており、おそらく不具合であるため、通常の樽やチェストで作成できるように修正。

### ユーモアレシピ
実用性度外視で、一部のアイテムにレシピを追加している。

Tinker's Construct で以下をクラフトできるように
- `create:brass_casing`
- `create:copper_casing`
- ジュークボックス

その他
- ピストンの上下反転レシピ
- 本と羽ペンの不定形レシピ

## Quark Recipes
Quark のバニラ QOL レシピをそのまま移植する。