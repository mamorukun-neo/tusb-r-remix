

#
#   アイテムを渡すファイル2
#

# generatorを設置
summon armor_stand ~ ~ ~ {Tags:["item_generator"],Invisible:true,NoGravity:true,Marker:true}

# アイテムを持たせる
item replace entity @e[tag=item_generator] weapon.mainhand with leather_chestplate{display:{Name:'{"text":"神々の黄昏 戯","color":"#45FF83","bold":true,"italic":true,"underlined":true}',Lore:['{"text":"魂の共鳴 I","color":"gray","italic":false}','{"text":"神々が作った遊具は死をも克服する","color":"#45FF83"}'],color:4587395},HideFlags:64,Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:4s},{id:"minecraft:fire_protection",lvl:4s},{id:"minecraft:feather_falling",lvl:4s},{id:"minecraft:blast_protection",lvl:4s},{id:"minecraft:projectile_protection",lvl:4s},{id:"minecraft:thorns",lvl:10s},{id:"minecraft:depth_strider",lvl:10s}],AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:0.15,Operation:1,UUID:[I;776150488,-1891613805,-1257839796,348401698],Slot:"chest"},{AttributeName:"generic.knockback_resistance",Name:"generic.knockback_resistance",Amount:0.1,Operation:1,UUID:[I;413672220,-1871822563,-1802978439,-928033025],Slot:"chest"},{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0.04,Operation:0,UUID:[I;101040971,-2131869219,-1468113897,1461601565],Slot:"chest"},{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:0.2,Operation:1,UUID:[I;410919680,209538957,-1374596176,-1701858744],Slot:"chest"},{AttributeName:"generic.armor",Name:"generic.armor",Amount:0.15,Operation:1,UUID:[I;8612648,1637564551,-1695304462,336068293],Slot:"chest"},{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:0.5,Operation:0,UUID:[I;939589575,-84455968,-1574332700,837189763],Slot:"chest"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:0.1,Operation:1,UUID:[I;-1827612804,1913736908,-1333479295,2125405343],Slot:"chest"},{AttributeName:"generic.luck",Name:"generic.luck",Amount:0.1,Operation:1,UUID:[I;447018108,1543324989,-2057644625,404959117],Slot:"chest"}]} 1

# 使用するUIDをセット
data modify storage test UID_setter set from storage test UID[4]

# UIDを付与する
item modify entity @e[tag=item_generator] weapon.mainhand main:uid_set

# 受け取り用アイテムを召喚
summon item ~ ~ ~ {PickupDelay:1,Item:{id:"minecraft:leather_chestplate",Count:1b}}

# データのコピー
data modify entity @e[type=item,nbt={Item:{id:"minecraft:leather_chestplate"}},sort=nearest,limit=1] Item.tag set from entity @e[tag=item_generator,limit=1] HandItems[].tag

# generatorをキル
kill @e[tag=item_generator]