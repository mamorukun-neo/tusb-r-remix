
#
#   アイテムを渡すファイル2
#

# generatorを設置
summon armor_stand ~ ~ ~ {Tags:["item_generator"],Invisible:true,NoGravity:true,Marker:true}

# アイテムを持たせる
item replace entity @e[tag=item_generator] weapon.mainhand with leather_helmet{display:{Name:'{"text":"神々の黄昏 戯","color":"#45FF83","bold":true,"italic":true,"underlined":true}',Lore:['{"text":"魂の共鳴 I","color":"gray","italic":false}','{"text":"神々が作った遊具は死をも克服する","color":"#45FF83"}'],color:4587395},HideFlags:64,Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:4s},{id:"minecraft:fire_protection",lvl:4s},{id:"minecraft:feather_falling",lvl:4s},{id:"minecraft:blast_protection",lvl:4s},{id:"minecraft:projectile_protection",lvl:4s},{id:"minecraft:thorns",lvl:10s},{id:"minecraft:depth_strider",lvl:10s}],AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:0.15,Operation:1,UUID:[I;424481025,360925372,-2123711775,-522486870],Slot:"head"},{AttributeName:"generic.knockback_resistance",Name:"generic.knockback_resistance",Amount:0.1,Operation:1,UUID:[I;1727098753,-600947635,-1100643714,-1990453068],Slot:"head"},{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0.04,Operation:0,UUID:[I;-1378979392,-1507701764,-1157900733,-968581377],Slot:"head"},{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:0.2,Operation:1,UUID:[I;-1076043388,1785548273,-2020265334,-1289711915],Slot:"head"},{AttributeName:"generic.armor",Name:"generic.armor",Amount:0.15,Operation:1,UUID:[I;1663730378,-623358726,-1961826525,1717914082],Slot:"head"},{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:0.5,Operation:0,UUID:[I;1000515405,829112860,-1678997155,-1945415712],Slot:"head"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:0.1,Operation:1,UUID:[I;-213839093,2704389,-1752782103,1824958874],Slot:"head"},{AttributeName:"generic.luck",Name:"generic.luck",Amount:0.1,Operation:1,UUID:[I;-749199396,-311669105,-2118492034,1410037084],Slot:"head"}]} 1

# 使用するUIDをセット
data modify storage test UID_setter set from storage test UID[5]

# UIDを付与する
item modify entity @e[tag=item_generator] weapon.mainhand main:uid_set

# 受け取り用アイテムを召喚
summon item ~ ~ ~ {PickupDelay:1,Item:{id:"minecraft:leather_helmet",Count:1b}}

# データのコピー
data modify entity @e[type=item,nbt={Item:{id:"minecraft:leather_helmet"}},sort=nearest,limit=1] Item.tag set from entity @e[tag=item_generator,limit=1] HandItems[].tag

# generatorをキル
kill @e[tag=item_generator]