#> tusb_remake:skill/black_mage/drain/player
# ドレインで吸う側
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### 
execute as @e[type=#tusb_remake:mob] at @e[tag=taisosinnyo] run tag @s[distance=..10] add taisotarget
execute at @e[tag=taisotarget] run playsound entity.zombie.attack_iron_door master @a[distance=..16] ~ ~ ~ 0.5 1.4 0
execute at @e[tag=taisotarget] run particle happy_villager ~ ~ ~ 0.1 10.0 0.1 0.0 50 force @a
execute at @e[tag=taisosinnyo] if score _ ActivatedSkill matches 2250..2259 run scoreboard players add @s[distance=..20] HealCount 16
execute as @a at @e[tag=taisosinnyo,distance=..10] run function tusb_remake:player/clear_bad_effect
execute at @e[tag=taisosinnyo] run scoreboard players add @a[distance=..10] MP 1
execute at @e[tag=taisosinnyo] run effect give @e[tag=taisotarget,distance=..10,type=#tusb_remake:living] instant_damage 5 2 true
execute at @e[tag=taisosinnyo] run effect give @e[tag=taisotarget,distance=..10,type=#tusb_remake:undead] instant_health 5 2 true

execute if data storage tusb_remake: {_:true} in minecraft:overworld run schedule function tusb_remake:skill/ninja/taiso/player 0.5s