#
#   アイテムを渡すファイル2
#

# generatorを設置
summon armor_stand ~ ~ ~ {Tags:["item_generator"],Invisible:true,NoGravity:true,Marker:true}

# アイテムを持たせる
item replace entity @e[tag=item_generator] weapon.mainhand with iron_leggings{display:{Name:'{"text":"§5§ks§9§kn§b§ks§a§ke§e§kk§6§ka§c§ki§d§kn§9§l§n§f§l§nアウターパーフェクト§d§l§n§d§ko§c§ky§6§ko§e§ka§a§kk§b§ke§9§kd§5§ka§r§r "}',Lore:['{"text":"§7魂の共鳴 enchantment.level.15"}']},RepairCost:99999,Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:15s},{id:"minecraft:fire_protection",lvl:15s},{id:"minecraft:feather_falling",lvl:15s},{id:"minecraft:blast_protection",lvl:15s},{id:"minecraft:projectile_protection",lvl:15s},{id:"minecraft:respiration",lvl:15s},{id:"minecraft:aqua_affinity",lvl:15s},{id:"minecraft:thorns",lvl:15s},{id:"minecraft:depth_strider",lvl:15s}],AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:0.25,Operation:2,UUID:[I;-898774615,780812837,-1883152039,-822299796],Slot:"legs"},{AttributeName:"generic.knockback_resistance",Name:"generic.knockback_resistance",Amount:1,Operation:0,UUID:[I;947356815,-201963669,-1957724024,820049952],Slot:"legs"},{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0.05,Operation:2,UUID:[I;-1998224527,1664632211,-1436820409,819257958],Slot:"legs"},{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:0.35,Operation:2,UUID:[I;-1596251471,-1986116086,-1917412767,-340133823],Slot:"legs"},{AttributeName:"generic.armor",Name:"generic.armor",Amount:0.35,Operation:2,UUID:[I;909319493,1805338150,-1816093889,-1267338057],Slot:"legs"},{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:0.35,Operation:2,UUID:[I;-1742534664,-884782324,-1545594303,-676998214],Slot:"legs"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:0.40,Operation:2,UUID:[I;1057333319,-523415582,-1716007389,95265991],Slot:"legs"}]} 1

# 使用するUIDをセット
data modify storage test UID_setter set from storage test UID[10]

# UIDを付与する
item modify entity @e[tag=item_generator] weapon.mainhand main:uid_set

# 受け取り用アイテムを召喚
summon item ~ ~ ~ {PickupDelay:1,Item:{id:"minecraft:iron_leggings",Count:1b}}

# データのコピー
data modify entity @e[type=item,nbt={Item:{id:"minecraft:iron_leggings"}},sort=nearest,limit=1] Item.tag set from entity @e[tag=item_generator,limit=1] HandItems[].tag

# generatorをキル
kill @e[tag=item_generator]