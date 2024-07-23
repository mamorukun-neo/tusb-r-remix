#
#   アイテムを渡すファイル2
#

# generatorを設置
summon armor_stand ~ ~ ~ {Tags:["item_generator"],Invisible:true,NoGravity:true,Marker:true}

# アイテムを持たせる
item replace entity @e[tag=item_generator] weapon.mainhand with diamond_sword{display:{Name:'{"text":"§b§ks§9疾風の剣§cR§b§ks","bold":true,"italic":false,"underlined":true}',Lore:['{"text":"§7魂の共鳴 X"}','{"text":"攻撃性能が大幅に上昇した疾風の剣","color":"white","italic":false}']},RepairCost:99999,Unbreakable:1b,Damage:25,Enchantments:[{id:"minecraft:sharpness",lvl:15s},{id:"minecraft:smite",lvl:10s},{id:"minecraft:bane_of_arthropods",lvl:10s},{id:"minecraft:knockback",lvl:5s},{id:"minecraft:fire_aspect",lvl:5s},{id:"minecraft:looting",lvl:5s},{id:"minecraft:sweeping",lvl:20s}],AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:15,Operation:0,UUID:[I;-2035540911,1451050214,-1123901289,-75069678],Slot:"mainhand"},{AttributeName:"generic.knockback_resistance",Name:"generic.knockback_resistance",Amount:0.5,Operation:0,UUID:[I;-1295343975,-602323336,-1549795949,-115570224],Slot:"mainhand"},{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0.2,Operation:0,UUID:[I;1829537704,-425047658,-1285255052,-979906304],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-1.3,Operation:0,UUID:[I;660169263,-1507177805,-1227561685,239051685],Slot:"mainhand"}]} 1

# 使用するUIDをセット
data modify storage test UID_setter set from storage test UID[6]

# UIDを付与する
item modify entity @e[tag=item_generator] weapon.mainhand main:uid_set

# 受け取り用アイテムを召喚
summon item ~ ~ ~ {PickupDelay:1,Item:{id:"minecraft:diamond_sword",Count:1b}}

# データのコピー
data modify entity @e[type=item,nbt={Item:{id:"minecraft:diamond_sword"}},sort=nearest,limit=1] Item.tag set from entity @e[tag=item_generator,limit=1] HandItems[].tag

# generatorをキル
kill @e[tag=item_generator]