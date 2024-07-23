execute as @a at @e[type=#tusb_remake:mob,distance=..10] run scoreboard players add @s[distance=..10] HealCount 5
execute as @a at @e[type=#tusb_remake:mob,distance=..10] run scoreboard players add @a[distance=..10] MP 1
execute as @a at @e[type=#tusb_remake:mob,distance=..10] run function tusb_remake:player/clear_bad_effect
execute as @a at @e[type=#tusb_remake:mob,distance=..10] run scoreboard players operation @a[distance=..10] MP < @a[distance=..10] MPMax