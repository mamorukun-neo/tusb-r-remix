#
#   アイテムを渡すファイル
#

# generatorを設置
 summon armor_stand ~ ~ ~ {Tags:["item_generator"],Invisible:true,NoGravity:true,Marker:true}

# アイテムを持たせる
item replace entity @e[tag=item_generator] weapon.mainhand with leather_boots{display:{Name:'{"text":"§a§l§n§o神々の黄昏 戯"}',Lore:['{"text":"爆発耐性 IV","color":"gray","italic":false}','{"text":"水中歩行 X","color":"gray","italic":false}','{"text":"落下耐性  IV","color":"gray","italic":false}','{"text":"火炎耐性 IV","color":"gray","italic":false}','{"text":"飛び道具耐性 IV","color":"gray","italic":false}','{"text":"ダメージ軽減 IV","color":"gray","italic":false}','{"text":"棘の鎧 X","color":"gray","italic":false}','{"text":"魂の共鳴 I","color":"gray","italic":false}','{"text":"神々が作った遊具は死をも克服する","color":"#45FF83"}'],color:4587395},HideFlags:65,RepairCost:99999,Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:4s},{id:"minecraft:fire_protection",lvl:4s},{id:"minecraft:feather_falling",lvl:4s},{id:"minecraft:blast_protection",lvl:4s},{id:"minecraft:projectile_protection",lvl:4s},{id:"minecraft:thorns",lvl:10s},{id:"minecraft:depth_strider",lvl:10s},{id:"minecraft:vanishing_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:0.15,Operation:1,UUID:[I;844558249,1500597659,-1540655866,-1600272319],Slot:"feet"},{AttributeName:"generic.knockback_resistance",Name:"generic.knockback_resistance",Amount:0.1,Operation:1,UUID:[I;-1401717830,1372078751,-1516092921,1156076190],Slot:"feet"},{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0.04,Operation:0,UUID:[I;-2062235824,1682850520,-1903587263,-1154612109],Slot:"feet"},{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:0.2,Operation:1,UUID:[I;1382833995,1850363048,-1530515891,2118167492],Slot:"feet"},{AttributeName:"generic.armor",Name:"generic.armor",Amount:0.15,Operation:1,UUID:[I;1965973993,-962114459,-1632233025,139444129],Slot:"feet"},{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:0.5,Operation:0,UUID:[I;-1594706145,-1222161172,-1348509791,1526347674],Slot:"feet"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:0.1,Operation:1,UUID:[I;-796145806,1151092568,-1872400819,1795193636],Slot:"feet"},{AttributeName:"generic.luck",Name:"generic.luck",Amount:0.1,Operation:1,UUID:[I;2076703664,-1100856279,-1233220780,-251206162],Slot:"feet"}]} 1

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




