
#
#   アイテムを渡すファイル2
#

# generatorを設置
summon armor_stand ~ ~ ~ {Tags:["item_generator"],Invisible:true,NoGravity:true,Marker:true}

# アイテムを持たせる
item replace entity @e[tag=item_generator] weapon.mainhand with leather_leggings{display:{Name:'{"text":"神々の黄昏 戯","color":"#45FF83","bold":true,"italic":true,"underlined":true}',Lore:['{"text":"魂の共鳴 I","color":"gray","italic":false}','{"text":"神々が作った遊具は死をも克服する","color":"#45FF83"}'],color:4587395},HideFlags:64,Unbreakable:1b,RepairCost:99999,Enchantments:[{id:"minecraft:protection",lvl:4s},{id:"minecraft:fire_protection",lvl:4s},{id:"minecraft:feather_falling",lvl:4s},{id:"minecraft:blast_protection",lvl:4s},{id:"minecraft:projectile_protection",lvl:4s},{id:"minecraft:thorns",lvl:10s},{id:"minecraft:depth_strider",lvl:10s}],AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:0.15,Operation:1,UUID:[I;-969959646,1652706230,-1571732536,311706331],Slot:"legs"},{AttributeName:"generic.knockback_resistance",Name:"generic.knockback_resistance",Amount:0.1,Operation:1,UUID:[I;-1990488228,-1364045986,-1449542233,1856165695],Slot:"legs"},{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0.04,Operation:0,UUID:[I;1396538869,766592661,-1545103228,-1808757642],Slot:"legs"},{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:0.2,Operation:1,UUID:[I;-1568221228,-1686878188,-1337273623,-1948847229],Slot:"legs"},{AttributeName:"generic.armor",Name:"generic.armor",Amount:0.15,Operation:1,UUID:[I;1406246651,-1042987920,-1104770058,-1284726665],Slot:"legs"},{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:0.5,Operation:0,UUID:[I;991913716,374752313,-1953015195,105076870],Slot:"legs"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:0.1,Operation:1,UUID:[I;1298228640,1833847424,-1855053917,-1369729548],Slot:"legs"},{AttributeName:"generic.luck",Name:"generic.luck",Amount:0.1,Operation:1,UUID:[I;883175176,1280131722,-1173363625,-1259881773],Slot:"legs"}]} 1

# 使用するUIDをセット
data modify storage test UID_setter set from storage test UID[3]

# UIDを付与する
item modify entity @e[tag=item_generator] weapon.mainhand main:uid_set

# 受け取り用アイテムを召喚
summon item ~ ~ ~ {PickupDelay:1,Item:{id:"minecraft:leather_leggings",Count:1b}}

# データのコピー
data modify entity @e[type=item,nbt={Item:{id:"minecraft:leather_leggings"}},sort=nearest,limit=1] Item.tag set from entity @e[tag=item_generator,limit=1] HandItems[].tag

# generatorをキル
kill @e[tag=item_generator]