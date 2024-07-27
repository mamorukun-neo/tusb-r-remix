#> tusb_remake:skill/ninja/choyaku/jump
#
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

playsound entity.experience_orb.pickup master @a[distance=..16] ~ ~ ~ 0.35 0.75 0
particle witch ~ ~ ~ 0.05 0.2 0.05 0 100

execute if score @s seiyou matches 1..19 run data modify storage score_damage: Argument set value {Damage:100.00,DamageType:"Projectile"}
execute if score @s seiyou matches 20..29 run data modify storage score_damage: Argument set value {Damage:200.00,DamageType:"Projectile"}
execute if score @s seiyou matches 30.. run data modify storage score_damage: Argument set value {Damage:300.00,DamageType:"Projectile"}

execute if score @s seiyou matches 1..19 as @e[distance=..25,type=#tusb_remake:mob,tag=Enemy] run function score_damage:api/attack
execute if score @s seiyou matches 20..29 as @e[distance=..35,type=#tusb_remake:mob,tag=Enemy] run function score_damage:api/attack
execute if score @s seiyou matches 30.. as @e[distance=..45,type=#tusb_remake:mob,tag=Enemy] run function score_damage:api/attack
