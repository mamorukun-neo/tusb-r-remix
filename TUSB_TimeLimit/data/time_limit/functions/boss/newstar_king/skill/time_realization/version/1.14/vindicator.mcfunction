#> time_limit:boss/newstar_king/skill/time_realization/version/1.14/vindicator


#summon vindicator ~ ~ ~ {Health:200f,HandItems:[{id:"minecraft:iron_axe",Count:1b},{id:"minecraft:carrot_on_a_stick",Count:1b}],HandDropChances:[0.000F,0.000F],Attributes:[{Name:"generic.max_health",Base:200},{Name:"generic.follow_range",Base:60},{Name:"generic.knockback_resistance",Base:1},{Name:"generic.attack_damage",Base:20}]}

execute at @s run summon spawner_minecart ~ ~2 ~ {Invulnerable:1b,SpawnCount:3,SpawnRange:5,Delay:0,MaxNearbyEntities:10,RequiredPlayerRange:100,MinSpawnDelay:20,MaxSpawnDelay:20,SpawnData:{entity:{id:"minecraft:vindicator",DeathLootTable:"time_limit:noloot/no_loot",Health:350f,HandItems:[{id:"minecraft:iron_axe",Count:1b},{id:"minecraft:carrot_on_a_stick",Count:1b}],HandDropChances:[0.000F,0.000F],ArmorItems:[{},{},{},{id:"minecraft:iron_helmet",Count:1b}],ArmorDropChances:[0.085F,0.085F,0.085F,0.000F],Attributes:[{Name:"generic.max_health",Base:350},{Name:"generic.follow_range",Base:60},{Name:"generic.knockback_resistance",Base:1},{Name:"generic.attack_damage",Base:15}]},custom_spawn_rules:{sky_light_limit:{min_inclusive:0,max_inclusive:15},block_light_limit:{min_inclusive:0,max_inclusive:15}}}}