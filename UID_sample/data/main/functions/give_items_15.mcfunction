#
#   アイテムを渡すファイル2
#

# generatorを設置
summon armor_stand ~ ~ ~ {Tags:["item_generator"],Invisible:true,NoGravity:true,Marker:true}

# アイテムを持たせる
item replace entity @e[tag=item_generator] weapon.mainhand with book{display:{Name:'{"text":"忘却されし虚空への災禍-[魂の共鳴]-","color":"gray"}',Lore:['{"text":"人々は恐れたはるか先にある無を...","color":"gray"}','{"text":"それを何よりも恐れる故に忘却してめたのだった","color":"gray"}']},AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:15,Operation:0,UUID:[I;-1641155320,-1286910734,-1885448349,766544767],Slot:"offhand"},{AttributeName:"generic.knockback_resistance",Name:"generic.knockback_resistance",Amount:1,Operation:0,UUID:[I;1374425298,1458259199,-1860459654,-2147161986],Slot:"offhand"},{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0.15,Operation:0,UUID:[I;-17863852,-1199748496,-2129018642,-1340100311],Slot:"offhand"},{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:0.3,Operation:1,UUID:[I;-2103508714,568475935,-1546740509,-1451867879],Slot:"offhand"},{AttributeName:"generic.armor",Name:"generic.armor",Amount:20,Operation:0,UUID:[I;1652753769,-1666956224,-1649765383,-1752744663],Slot:"offhand"},{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:5,Operation:0,UUID:[I;-1503945754,-544979390,-2140061387,-1983295637],Slot:"offhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:0.25,Operation:1,UUID:[I;-1278567883,-632010406,-1875267101,-1703087316],Slot:"offhand"}]} 1

# 使用するUIDをセット
data modify storage test UID_setter set from storage test UID[14]

# UIDを付与する
item modify entity @e[tag=item_generator] weapon.mainhand main:uid_set

# 受け取り用アイテムを召喚
summon item ~ ~ ~ {PickupDelay:1,Item:{id:"minecraft:book",Count:1b}}

# データのコピー
data modify entity @e[type=item,nbt={Item:{id:"minecraft:book"}},sort=nearest,limit=1] Item.tag set from entity @e[tag=item_generator,limit=1] HandItems[].tag

# generatorをキル
kill @e[tag=item_generator]