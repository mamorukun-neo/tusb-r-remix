#
#   アイテムを渡すファイル2
#

# generatorを設置
summon armor_stand ~ ~ ~ {Tags:["item_generator"],Invisible:true,NoGravity:true,Marker:true}

# アイテムを持たせる
item replace entity @e[tag=item_generator] weapon.mainhand with bow{display:{Name:'{"text":"§f§ks§a世界樹の弓§f§ks","italic":false,"strikethrough":false,"obfuscated":false}',Lore:['{"text":"§f世界樹の力を宿した§e聖なる弓","italic":false}','{"text":"フレイム enchantment.level.20","color":"gray","italic":false}','{"text":"無限 X","color":"gray","italic":false}','{"text":"ノックバック II","color":"gray","italic":false}','{"text":"射撃ダメージ増加 enchantment.level.20","color":"gray","italic":false}','{"text":"パンチ II","color":"gray","italic":false}','{"text":"ダメージ増加 V","color":"gray","italic":false}','{"text":"アンデット特攻 V","color":"gray","italic":false}','{"text":"魂の共鳴 X","color":"gray","italic":false}']},HideFlags:1,RepairCost:99999,Unbreakable:1b,Enchantments:[{id:"minecraft:sharpness",lvl:5s},{id:"minecraft:smite",lvl:5s},{id:"minecraft:knockback",lvl:2s},{id:"minecraft:power",lvl:20s},{id:"minecraft:punch",lvl:2s},{id:"minecraft:flame",lvl:20s},{id:"minecraft:infinity",lvl:10s},{id:"minecraft:vanishing_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:5,Operation:0,UUID:[I;1604266128,1510623694,-2011015462,-2075971355],Slot:"mainhand"},{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:5,Operation:0,UUID:[I;2114369497,1071662578,-2096373717,1886315430],Slot:"mainhand"},{AttributeName:"generic.armor",Name:"generic.armor",Amount:5,Operation:0,UUID:[I;2011996568,-1624554474,-1697276731,-2139370650],Slot:"mainhand"},{AttributeName:"generic.knockback_resistance",Name:"generic.knockback_resistance",Amount:0.3,Operation:0,UUID:[I;-2659063,-257865861,-1159475429,-746703528],Slot:"mainhand"},{AttributeName:"generic.luck",Name:"generic.luck",Amount:30,Operation:0,UUID:[I;559889101,403852563,-1994468469,-777736711],Slot:"mainhand"},{AttributeName:"generic.armor",Name:"generic.armor",Amount:7,Operation:0,UUID:[I;-817540293,1710900420,-1971743699,-1492188928],Slot:"offhand"},{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:7,Operation:0,UUID:[I;-368200274,-933936767,-1278057852,1307695073],Slot:"offhand"},{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:7,Operation:0,UUID:[I;-1196458583,-441758275,-1161010761,-1120085092],Slot:"offhand"}]} 1

# 使用するUIDをセット
data modify storage test UID_setter set from storage test UID[7]

# UIDを付与する
item modify entity @e[tag=item_generator] weapon.mainhand main:uid_set

# 受け取り用アイテムを召喚
summon item ~ ~ ~ {PickupDelay:1,Item:{id:"minecraft:bow",Count:1b}}

# データのコピー
data modify entity @e[type=item,nbt={Item:{id:"minecraft:bow"}},sort=nearest,limit=1] Item.tag set from entity @e[tag=item_generator,limit=1] HandItems[].tag

# generatorをキル
kill @e[tag=item_generator]