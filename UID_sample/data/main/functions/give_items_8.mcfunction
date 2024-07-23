#
#   アイテムを渡すファイル2
#

# generatorを設置
summon armor_stand ~ ~ ~ {Tags:["item_generator"],Invisible:true,NoGravity:true,Marker:true}

# アイテムを持たせる
item replace entity @e[tag=item_generator] weapon.mainhand with bow{display:{Name:'{"text":"§f§ks§a世界樹の弓§f§ks","italic":false,"strikethrough":false,"obfuscated":false}',Lore:['{"text":"§7魂の共鳴 X"}','{"text":"§f世界樹の力を宿した§e聖なる弓","italic":false}']},RepairCost:99999,Unbreakable:1b,Enchantments:[{id:"minecraft:sharpness",lvl:5s},{id:"minecraft:smite",lvl:5s},{id:"minecraft:knockback",lvl:2s},{id:"minecraft:power",lvl:20s},{id:"minecraft:punch",lvl:2s},{id:"minecraft:flame",lvl:20s},{id:"minecraft:infinity",lvl:10s}],AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:5,Operation:0,UUID:[I;-1579758759,951471926,-1960313652,907521368],Slot:"mainhand"},{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:5,Operation:0,UUID:[I;1701984067,-693090136,-2134159112,-1530379113],Slot:"mainhand"},{AttributeName:"generic.armor",Name:"generic.armor",Amount:5,Operation:0,UUID:[I;-201986410,300436773,-1609213630,-1407641649],Slot:"mainhand"},{AttributeName:"generic.knockback_resistance",Name:"generic.knockback_resistance",Amount:0.3,Operation:0,UUID:[I;-55681589,-2018357306,-2085484077,1154442320],Slot:"mainhand"},{AttributeName:"generic.luck",Name:"generic.luck",Amount:30,Operation:0,UUID:[I;-1070401289,-801356518,-1445207044,1852026430],Slot:"mainhand"},{AttributeName:"generic.armor",Name:"generic.armor",Amount:7,Operation:0,UUID:[I;142941680,1773161027,-1706296557,391404357],Slot:"offhand"},{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:7,Operation:0,UUID:[I;115389307,-1989394408,-1390860180,-141199495],Slot:"offhand"},{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:7,Operation:0,UUID:[I;-913694840,-630831096,-1520226126,1294040827],Slot:"offhand"}]} 1

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