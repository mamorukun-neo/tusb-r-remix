#
#   アイテムを渡すファイル2
#

# generatorを設置
execute as @s at @s run summon armor_stand ~ ~ ~ {Tags:["item_generator"],Invisible:true,NoGravity:true,Marker:true}

# アイテムを持たせる
execute as @s at @s run item replace entity @e[tag=item_generator] weapon.mainhand with leather_horse_armor{display:{Name:'{"text":"神々の黄昏 遊馬","color":"#45FF83","bold":true,"italic":true,"underlined":true}',Lore:['{"text":"魂の共鳴 I","color":"gray"}','{"text":"神々が作った遊具は死をも克服する","color":"#45FF83"}'],color:4587395},HideFlags:65,Enchantments:[{id:"minecraft:silk_touch",lvl:1s},{id:"minecraft:vanishing_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:8,Operation:0,UUID:[I;-608239051,712593038,-1456291026,52841402],Slot:"offhand"},{AttributeName:"generic.knockback_resistance",Name:"generic.knockback_resistance",Amount:0.4,Operation:0,UUID:[I;1045707117,349719692,-1585061235,931709495],Slot:"offhand"},{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:1,Operation:0,UUID:[I;2093847116,-1964880706,-1656876239,1335819834],Slot:"offhand"},{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:0.2,Operation:1,UUID:[I;-1061590442,-1062647821,-2038488704,1704473821],Slot:"offhand"},{AttributeName:"generic.armor",Name:"generic.armor",Amount:0.15,Operation:0,UUID:[I;1244807161,227950609,-1410382832,-1770458098],Slot:"offhand"},{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:0.5,Operation:1,UUID:[I;-725573839,-1974648682,-1350045289,-911681964],Slot:"offhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:0.1,Operation:0,UUID:[I;-1389512896,-1662304197,-1293210307,1336597253],Slot:"offhand"},{AttributeName:"generic.luck",Name:"generic.luck",Amount:0.1,Operation:0,UUID:[I;1344407823,-1548925143,-1358179560,-1041653820],Slot:"offhand"}]} 1
# 使用するUIDをセット
execute as @s at @s run data modify storage test UID_setter set from storage test UID[15]

# UIDを付与する
execute as @s at @s run item modify entity @e[tag=item_generator] weapon.mainhand main:uid_set

# 受け取り用アイテムを召喚
execute as @s at @s run summon item ~ ~ ~ {PickupDelay:1,Item:{id:"minecraft:leather_horse_armor",Count:1b}}

# データのコピー
execute as @s at @s run data modify entity @e[type=item,nbt={Item:{id:"minecraft:leather_horse_armor"}},sort=nearest,limit=1] Item.tag set from entity @e[tag=item_generator,limit=1] HandItems[].tag

# generatorをキル
kill @e[tag=item_generator]