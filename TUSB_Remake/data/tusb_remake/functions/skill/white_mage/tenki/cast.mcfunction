#> tusb_remake:skill/white_mage/cure/cast
# ケアルを詠唱(420X)
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.
execute at @s run scoreboard players set @a[distance=..12] HealCount 512
execute at @s run scoreboard players add @a[distance=..12] MP 50
playsound block.beacon.activate master @a[distance=..12] ~ ~ ~ 4 1.5 0
execute at @s run particle end_rod ~ ~ ~ 0.5 0.5 0.5 0.1 30 force
execute at @s run summon area_effect_cloud ~ ~4 ~ {NoGravity:1b,WaitTime:60,Color:16711680,Passengers:[{id:"minecraft:spawner_minecart",SpawnCount:2,Delay:10,MinSpawnDelay:10,MaxSpawnDelay:10,SpawnData:{entity:{id:"minecraft:potion",Item:{id:"minecraft:splash_potion",Count:1b,tag:{CustomPotionColor:16711680,CustomPotionEffects:[{Id:6,Amplifier:1b,Duration:1}]}}},custom_spawn_rules:{sky_light_limit:{min_inclusive:0,max_inclusive:15},block_light_limit:{min_inclusive:0,max_inclusive:15}}}}]}