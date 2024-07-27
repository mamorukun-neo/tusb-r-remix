
#
#   アイテムを渡すファイル2
#

# generatorを設置
summon armor_stand ~ ~ ~ {Tags:["item_generator"],Invisible:true,NoGravity:true,Marker:true}

# アイテムを持たせる
item replace entity @e[tag=item_generator] weapon.mainhand with leather_leggings{display:{Name:'{"text":"§a§l§n§o神々の黄昏 戯"}',Lore:['{"text":"爆発耐性 IV","color":"gray","italic":false}','{"text":"水中歩行 X","color":"gray","italic":false}','{"text":"落下耐性  IV","color":"gray","italic":false}','{"text":"火炎耐性 IV","color":"gray","italic":false}','{"text":"飛び道具耐性 IV","color":"gray","italic":false}','{"text":"ダメージ軽減 IV","color":"gray","italic":false}','{"text":"棘の鎧 X","color":"gray","italic":false}','{"text":"魂の共鳴 I","color":"gray","italic":false}','{"text":"神々が作った遊具は死をも克服する","color":"#45FF83"}'],color:4587395},HideFlags:65,RepairCost:99999,Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:4s},{id:"minecraft:fire_protection",lvl:4s},{id:"minecraft:feather_falling",lvl:4s},{id:"minecraft:blast_protection",lvl:4s},{id:"minecraft:projectile_protection",lvl:4s},{id:"minecraft:thorns",lvl:10s},{id:"minecraft:depth_strider",lvl:10s},{id:"minecraft:vanishing_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:0.15,Operation:1,UUID:[I;367835688,-1597878431,-1391508822,-1140003475],Slot:"feet"},{AttributeName:"generic.knockback_resistance",Name:"generic.knockback_resistance",Amount:0.1,Operation:1,UUID:[I;-1290558144,-2128199466,-1936172502,1867953655],Slot:"feet"},{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0.04,Operation:0,UUID:[I;-1010341532,-1138669166,-1559089497,-1104157610],Slot:"feet"},{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:0.2,Operation:1,UUID:[I;2137501727,1511538939,-1120697461,1709926228],Slot:"feet"},{AttributeName:"generic.armor",Name:"generic.armor",Amount:0.15,Operation:1,UUID:[I;1835423791,-1517469066,-1329883940,994777637],Slot:"feet"},{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:0.5,Operation:0,UUID:[I;-504387589,862863952,-1481837152,1858187786],Slot:"feet"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:0.1,Operation:1,UUID:[I;652502238,2021477173,-1275197432,2017829671],Slot:"feet"},{AttributeName:"generic.luck",Name:"generic.luck",Amount:0.1,Operation:1,UUID:[I;-259235999,142560629,-1640163277,1034341934],Slot:"feet"}]} 1 

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