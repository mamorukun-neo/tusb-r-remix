#
#   アイテムを渡すファイル2
#

# generatorを設置
summon armor_stand ~ ~ ~ {Tags:["item_generator"],Invisible:true,NoGravity:true,Marker:true}

# アイテムを持たせる
item replace entity @e[tag=item_generator] weapon.mainhand with leather_horse_armor{display:{Name:'{"text":"神々の黄昏 遊馬","color":"#45FF83","bold":true,"italic":true,"underlined":true}',Lore:['{"text":"魂の共鳴I","color":"gray"}','{"text":"神々が作った遊具は死をも克服する","color":"#45FF83"}'],color:4587395},AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:8,Operation:0,UUID:[I;1184100265,1339703468,-1340164440,-1376226302],Slot:"offhand"},{AttributeName:"generic.knockback_resistance",Name:"generic.knockback_resistance",Amount:0.4,Operation:0,UUID:[I;361064405,207506366,-1275759086,-1562854228],Slot:"offhand"},{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:1,Operation:0,UUID:[I;2007271586,1303725700,-1115534657,-1042188444],Slot:"offhand"},{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:0.2,Operation:1,UUID:[I;-1122232481,1521437346,-1962238859,-544606268],Slot:"offhand"},{AttributeName:"generic.armor",Name:"generic.armor",Amount:0.15,Operation:0,UUID:[I;844670701,547897379,-1537578263,-699180119],Slot:"offhand"},{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:0.5,Operation:1,UUID:[I;746954206,-220836422,-1647283964,1040579290],Slot:"offhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:0.1,Operation:0,UUID:[I;-1533819625,558252225,-1716232738,-1722496327],Slot:"offhand"},{AttributeName:"generic.luck",Name:"generic.luck",Amount:0.1,Operation:0,UUID:[I;-1712598365,1424311305,-1368432272,-1751213812],Slot:"offhand"}]} 1

# 使用するUIDをセット
data modify storage test UID_setter set from storage test UID[15]

# UIDを付与する
item modify entity @e[tag=item_generator] weapon.mainhand main:uid_set

# 受け取り用アイテムを召喚
summon item ~ ~ ~ {PickupDelay:1,Item:{id:"minecraft:leather_horse_armor",Count:1b}}

# データのコピー
data modify entity @e[type=item,nbt={Item:{id:"minecraft:leather_horse_armor"}},sort=nearest,limit=1] Item.tag set from entity @e[tag=item_generator,limit=1] HandItems[].tag

# generatorをキル
kill @e[tag=item_generator]