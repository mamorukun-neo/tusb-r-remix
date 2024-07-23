execute at @e[tag=syawa_] if entity @e[tag=syawa_] run effect give @e[type=#tusb_remake:undead,distance=..10] instant_health 1 6 true
execute at @e[tag=syawa_] if entity @e[tag=syawa_] run effect give @e[type=#tusb_remake:living,distance=..10] instant_damage 1 6 true

execute as @e[tag=syawa_] at @s run function tusb_remake:skill/black_mage/syawa_/otomitame

execute if data storage tusb_remake: {_:true} in minecraft:overworld at @e[tag=syawa_] if entity @e[type=#tusb_remake:mob,distance=..10] run function tusb_remake:skill/black_mage/syawa_/player

execute if data storage tusb_remake: {_:true} in minecraft:overworld run schedule function tusb_remake:skill/black_mage/syawa_/apply 10t
