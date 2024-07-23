#> tusb_remake:skill/summoner/heat_basin/schedule/fly
### あつあつタライが飛んでいる演出
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

data modify storage tusb_remake: hit set value false
execute positioned ~-0.5 ~ ~-0.5 as @e[dy=0,type=#tusb_remake:mob,tag=Enemy,nbt=!{ActiveEffects:[{Id:23}]}] at @s run function tusb_remake:skill/summoner/heat_basin/schedule/hit

### 当たっていたらタライを消す
execute if data storage tusb_remake: {hit:true} run kill @s

data modify storage tusb_remake: _ set value true
