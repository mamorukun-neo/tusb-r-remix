#
#   アイテムを渡すファイル2
#

# generatorを設置
execute as @s at @s run summon armor_stand ~ ~ ~ {Tags:["item_generator"],Invisible:true,NoGravity:true,Marker:true}

# アイテムを持たせる
execute as @s at @s run item replace entity @e[tag=item_generator] weapon.mainhand with carrot_on_a_stick{display:{Name:'{"text":"§6§ks§e大賢者の杖§6§ks","bold":true,"italic":false,"underlined":true}',Lore:['{"text":"§7魂の共鳴 X"}','{"text":"§f古の杖が§c覚醒§fした姿"}','{"text":"§f古代の賢者達の力知識を結集して作られた杖。"}','{"text":"§a利き手§fに持ってもその性能を発揮できるようになった。"}']},HideFlags:7,RepairCost:99999,Unbreakable:1b,Enchantments:[{id:"minecraft:fortune",lvl:10s},{id:"minecraft:vanishing_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0.1,Operation:0,UUID:[I;-73215507,243613724,-1894283699,335804586],Slot:"offhand"},{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:10,Operation:0,UUID:[I;1359428096,-1944698681,-1358494601,2095306695],Slot:"offhand"},{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:25,Operation:0,UUID:[I;1173040770,1446594821,-2007814019,277989291],Slot:"offhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-0.9,Operation:0,UUID:[I;1088711056,366562525,-1565778452,-1940591242],Slot:"offhand"},{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0.1,Operation:0,UUID:[I;-139288582,775701902,-1674045628,770899337],Slot:"mainhand"},{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:15,Operation:0,UUID:[I;-2064685494,-1276686890,-1717858652,1995655454],Slot:"mainhand"},{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:20,Operation:0,UUID:[I;-1090268164,-1542435049,-1474441184,655585262],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-0.9,Operation:0,UUID:[I;-1171061251,1395409663,-1778680537,-1680439663],Slot:"mainhand"}]} 1
# 使用するUIDをセット
execute as @s at @s run data modify storage test UID_setter set from storage test UID[1]

# UIDを付与する
execute as @s at @s run item modify entity @e[tag=item_generator] weapon.mainhand main:uid_set

# 受け取り用アイテムを召喚
execute as @s at @s run summon item ~ ~ ~ {PickupDelay:1,Item:{id:"minecraft:carrot_on_a_stick",Count:1b}}

# データのコピー
execute as @s at @s run data modify entity @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick"}},sort=nearest,limit=1] Item.tag set from entity @e[tag=item_generator,limit=1] HandItems[].tag

# generatorをキル
kill @e[tag=item_generator]