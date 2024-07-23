#> tusb_remake:skill/ninja/choyaku/apply
### 跳躍発動時の処理
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

scoreboard players add @s seiyou 1
scoreboard players set @s NinjaTime 3

execute if score _ ActivatedSkill matches 2260..2269 if score @s seiyou matches 31.. run scoreboard players set @s seiyou 30

playsound entity.ender_dragon.flap master @a[distance=..16] ~ ~ ~ 1 1.8 0
particle enchanted_hit ~ ~ ~ 2.0 0 2.0 0 100 force
playsound minecraft:entity.experience_orb.pickup master @a[distance=..16] ~ ~ ~ 1.0 0.75 0.0


title @s times 0 70 10
title @s subtitle {"translate":"                            %1$s Charge!","with":[{"score":{"name":"*","objective":"seiyou"}}],"color":"green","italic":true,"bold":true}
title @s title {"text":""}


