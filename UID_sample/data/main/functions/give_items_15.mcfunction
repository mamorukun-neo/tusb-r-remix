#
#   アイテムを渡すファイル2
#

# generatorを設置
summon armor_stand ~ ~ ~ {Tags:["item_generator"],Invisible:true,NoGravity:true,Marker:true}

# アイテムを持たせる
item replace entity @e[tag=item_generator] weapon.mainhand with book{display:{Name:'{"text":"忘却されし虚空への災禍-[魂の共鳴]-","color":"gray"}',Lore:['{"text":"人々は恐れたはるか先にある無を...","color":"gray"}','{"text":"それを何よりも恐れる故に忘却してめたのだった","color":"gray"}']},HideFlags:1,Enchantments:[{id:"minecraft:vanishing_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:15,Operation:0,UUID:[I;-1476216346,2094813078,-1649322358,-1173259984],Slot:"offhand"},{AttributeName:"generic.knockback_resistance",Name:"generic.knockback_resistance",Amount:1,Operation:0,UUID:[I;1548481993,-495434686,-1640020212,-1115591648],Slot:"offhand"},{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0.15,Operation:0,UUID:[I;574328871,-458996562,-2089075409,-63343658],Slot:"offhand"},{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:0.3,Operation:1,UUID:[I;1398150980,-1371320878,-1655649572,-411260058],Slot:"offhand"},{AttributeName:"generic.armor",Name:"generic.armor",Amount:20,Operation:0,UUID:[I;828407445,1192313127,-1691483551,399387250],Slot:"offhand"},{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:5,Operation:0,UUID:[I;-239113580,-1530639576,-2121198677,-1420822468],Slot:"offhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:0.25,Operation:1,UUID:[I;402326445,-104970606,-1222912587,-98253134],Slot:"offhand"}]} 1
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