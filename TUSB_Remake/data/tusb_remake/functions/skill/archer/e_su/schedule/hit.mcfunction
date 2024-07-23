#> tusb_remake:skill/white_mage/holy/schedule/hit
# ホーリーが当たった時
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### マルチヒット防止のエフェクト
effect give @s minecraft:saturation 10 127 true

execute if entity @s[type=#tusb_remake:undead,distance=..32] run effect give @s minecraft:instant_health 3 5 true
execute if entity @s[type=#tusb_remake:living,distance=..32] run effect give @s minecraft:instant_damage 3 5 true
execute at @s[type=#tusb_remake:mob,distance=..32] run playsound minecraft:block.beacon.ambient master @a[distance=..32] ~ ~ ~ 1.0 2 0.0
execute at @s[type=#tusb_remake:mob,distance=..32] run particle happy_villager ~ ~ ~ 1 1 1 0.25 100 force
execute at @s run effect give @e[distance=..0.5,type=#tusb_remake:living] instant_damage 3 3
execute at @s run effect give @e[distance=..0.5,type=#tusb_remake:undead] instant_health 3 3
