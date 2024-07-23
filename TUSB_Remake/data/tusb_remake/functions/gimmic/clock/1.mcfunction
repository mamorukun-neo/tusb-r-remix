#> tusb_remake:gimmic/clock/1
# 時計島第１形態
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### 達成率が11~40
### 時計の針襲撃スポナーを修正
execute in minecraft:overworld positioned -58 23 22 if block ~ ~ ~ minecraft:spawner run data merge block ~ ~ ~ {SpawnData:{entity:{id:"minecraft:villager",Health:0f,DeathTime:19s,Passengers:[{id:"minecraft:enderman",CustomName:'"秒針"',DeathLootTable:"usb:entities/clock",Health:50f,Attributes:[{Name:"minecraft:generic.max_health",Base:50d},{Name:"minecraft:generic.movement_speed",Base:0.45d},{Name:"minecraft:generic.attack_damage",Base:6d}],carriedBlockState:{Name:"minecraft:water"}}]}}}
execute in minecraft:overworld positioned -58 23 22 if block ~ ~ ~ minecraft:spawner run data merge block ~ ~ ~ {RequiredPlayerRange:32s,Delay:100s}
execute in minecraft:overworld positioned -58 23 22 if block ~ ~ ~ minecraft:spawner run data remove block ~ ~ ~ SpawnPotentials

### 時計島変身
execute in minecraft:overworld positioned 4001 47 4001 run function tusb_remake:gimmic/clock/clone

### 時計島の段階を記録
data modify storage tusb_remake: clock_stage set value 1
