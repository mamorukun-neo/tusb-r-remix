execute as @e[tag=FinalPoint] at @s run particle portal ~ ~ ~ 4 4 4 0.1 80 force
execute as @e[tag=FinalPoint] at @s run function tusb_remake:skill/summoner/katatoro/otomitame
execute at @e[tag=FinalPoint] run effect give @e[type=#tusb_remake:undead,distance=..30] instant_health 10 6 true
execute at @e[tag=FinalPoint] run effect give @e[type=#tusb_remake:living,distance=..30] minecraft:instant_damage 10 6 true
execute if data storage tusb_remake: {_:true} in minecraft:overworld run schedule function tusb_remake:skill/summoner/katatoro/hit 10t
