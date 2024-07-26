#> tusb_remake:brazil/warp
# ブラジルワープ
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

## 職業がないときハローワークに飛ぶ
clear @s minecraft:white_wool 16
give @s[scores={Job=..0}] minecraft:white_wool 16
tp @s[scores={Job=..0}] -1786 113 -137 -90 0

## 職業があるとき通常世界
tp @s[scores={Job=1..}] 0 5 2 -90 -30
## スポナーにサイレントをつけて音バグ回避
execute at @s[scores={Job=1..}] in minecraft:overworld run schedule function tusb_remake:brazil/apply_silent 1s

# 追加部分
# jobについてるやつがいてかつ、gameスタートしてないならスタート処理
execute as @s[scores={Job=1..}] if score Start Game matches 0 run function time_limit:start