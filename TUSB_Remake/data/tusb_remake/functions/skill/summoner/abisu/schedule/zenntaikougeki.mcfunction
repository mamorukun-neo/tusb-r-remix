effect give @a[distance=..20] haste 15 4 true
effect give @a[distance=..20] strength 15 35 true
scoreboard players add @a[distance=..20] HealCount 200
execute as @a[distance=..20] run function tusb_remake:player/clear_bad_effect
execute as @e[type=#tusb_remake:mob,distance=..3,limit=1,sort=nearest] run data modify storage score_damage: Argument set value {Damage:307.00,DamageType:"None"}
execute as @e[type=#tusb_remake:mob,distance=..20,limit=1,sort=nearest] run function score_damage:api/attack