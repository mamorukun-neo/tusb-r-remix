#
#   アイテムを渡すファイル
#

# generatorを設置
summon armor_stand ~ ~ ~ {Tags:["item_generator"],Invisible:true,NoGravity:true,Marker:true}

# アイテムを持たせる
item replace entity @e[tag=item_generator] weapon.mainhand with leather_boots{display:{Name:'{"text":"§a§l§n§o神々の黄昏 戯"}',Lore:['{"text":"魂の共鳴 I","color":"gray","italic":false}','{"text":"神々が作った遊具は死をも克服する","color":"#45FF83"}'],color:4587395},HideFlags:64,Unbreakable:1b,RepairCost:99999,Enchantments:[{id:"minecraft:protection",lvl:4s},{id:"minecraft:fire_protection",lvl:4s},{id:"minecraft:feather_falling",lvl:4s},{id:"minecraft:blast_protection",lvl:4s},{id:"minecraft:projectile_protection",lvl:4s},{id:"minecraft:thorns",lvl:10s},{id:"minecraft:depth_strider",lvl:10s}],AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:0.15,Operation:1,UUID:[I;592799096,276643984,-1252508097,-2015560165],Slot:"feet"},{AttributeName:"generic.knockback_resistance",Name:"generic.knockback_resistance",Amount:0.1,Operation:1,UUID:[I;-1848419020,623789140,-1219316816,1460057049],Slot:"feet"},{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0.04,Operation:0,UUID:[I;771743932,-793621953,-1732237736,-126708672],Slot:"feet"},{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:0.2,Operation:1,UUID:[I;1149528017,-1580842381,-1379625123,892610220],Slot:"feet"},{AttributeName:"generic.armor",Name:"generic.armor",Amount:0.15,Operation:1,UUID:[I;1792405418,-601210715,-1739522156,494636264],Slot:"feet"},{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:0.5,Operation:0,UUID:[I;-101098298,-1498984481,-1912979408,-218546627],Slot:"feet"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:0.1,Operation:1,UUID:[I;1044669791,-403878591,-1243560798,1868345387],Slot:"feet"},{AttributeName:"generic.luck",Name:"generic.luck",Amount:0.1,Operation:1,UUID:[I;-975878545,-1906555374,-1229236008,-724224820],Slot:"feet"}]} 1

# 使用するUIDをセット
data modify storage test UID_setter set from storage test UID[0]

# UIDを付与する
item modify entity @e[tag=item_generator] weapon.mainhand main:uid_set

# 受け取り用アイテムを召喚
summon item ~ ~ ~ {PickupDelay:1,Item:{id:"minecraft:leather_boots",Count:1b}}

# データのコピー
data modify entity @e[type=item,nbt={Item:{id:"minecraft:leather_boots"}},sort=nearest,limit=1] Item.tag set from entity @e[tag=item_generator,limit=1] HandItems[].tag

# generatorをキル
kill @e[tag=item_generator]

