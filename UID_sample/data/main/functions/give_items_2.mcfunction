#
#   アイテムを渡すファイル2
#

# generatorを設置
summon armor_stand ~ ~ ~ {Tags:["item_generator"],Invisible:true,NoGravity:true,Marker:true}

# アイテムを持たせる
item replace entity @e[tag=item_generator] weapon.mainhand with carrot_on_a_stick{display:{Name:'{"text":"§6§ks§e大賢者の杖§6§ks","bold":true,"italic":false,"underlined":true}',Lore:['{"text":"§7魂の共鳴 X"}','{"text":"§f古の杖が§c覚醒§fした姿"}','{"text":"§f古代の賢者達の力知識を結集して作られた杖。"}','{"text":"§a利き手§fに持ってもその性能を発揮できるようになった。"}']},HideFlags:7,RepairCost:99999,Unbreakable:1b,Enchantments:[{id:"minecraft:fortune",lvl:10s}],AttributeModifiers:[{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0.1,Operation:0,UUID:[I;466475199,777405759,-1459275491,161891852],Slot:"offhand"},{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:10,Operation:0,UUID:[I;-1380794230,219236387,-1499910370,-262999305],Slot:"offhand"},{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:25,Operation:0,UUID:[I;1551997175,-1970059453,-1085759912,-1475660618],Slot:"offhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-0.9,Operation:0,UUID:[I;-1964618836,-833729670,-1315388870,-711145219],Slot:"offhand"},{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0.1,Operation:0,UUID:[I;1298981833,1163479703,-1863270748,-2025643913],Slot:"mainhand"},{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:15,Operation:0,UUID:[I;-2110437034,1191266496,-1497357310,2085539627],Slot:"mainhand"},{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:20,Operation:0,UUID:[I;1356491740,-925152060,-1623989087,1250236110],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-0.9,Operation:0,UUID:[I;251647476,-2058271400,-1415571234,-1414781614],Slot:"mainhand"}]} 1

# 使用するUIDをセット
data modify storage test UID_setter set from storage test UID[1]

# UIDを付与する
item modify entity @e[tag=item_generator] weapon.mainhand main:uid_set

# 受け取り用アイテムを召喚
summon item ~ ~ ~ {PickupDelay:1,Item:{id:"minecraft:carrot_on_a_stick",Count:1b}}

# データのコピー
data modify entity @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick"}},sort=nearest,limit=1] Item.tag set from entity @e[tag=item_generator,limit=1] HandItems[].tag

# generatorをキル
kill @e[tag=item_generator]