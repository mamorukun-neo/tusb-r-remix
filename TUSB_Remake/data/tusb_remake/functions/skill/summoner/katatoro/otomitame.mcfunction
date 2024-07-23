execute at @e[type=#tusb_remake:mob,distance=..30,tag=!FinalPoint] run playsound entity.lightning_bolt.impact master @a[distance=..30] ~ ~ ~ 1 0 0
execute at @e[type=#tusb_remake:mob,distance=..30,tag=!FinalPoint] run playsound item.totem.use master @a[distance=..30] ~ ~ ~ 0.2 2 0
execute at @e[type=#tusb_remake:mob,distance=..30,tag=!FinalPoint] run particle dragon_breath ~ ~1 ~ 0.6 0.8 0.6 0.5 30 force
execute at @e[type=#tusb_remake:mob,distance=..30,tag=!FinalPoint] run particle witch ~ ~4 ~ 0.25 7 0.25 0.0 100 force
execute at @e[type=#tusb_remake:mob,distance=..30,tag=!FinalPoint] as @a[distance=..30] run scoreboard players add @s HealCount 30
execute at @e[type=#tusb_remake:mob,distance=..30,tag=!FinalPoint] as @a[distance=..30] run function tusb_remake:player/clear_bad_effect
execute at @e[type=#tusb_remake:mob,distance=..30,tag=!FinalPoint] as @a[distance=..30] run scoreboard players add @a[distance=..30] MP 10
scoreboard players operation @a MP < @a MPMax