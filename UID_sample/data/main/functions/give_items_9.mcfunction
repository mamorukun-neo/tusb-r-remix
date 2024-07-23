#
#   アイテムを渡すファイル2
#

# generatorを設置
summon armor_stand ~ ~ ~ {Tags:["item_generator"],Invisible:true,NoGravity:true,Marker:true}

# アイテムを持たせる
item replace entity @e[tag=item_generator] weapon.mainhand with iron_helmet{display:{Name:'{"text":"§5§ks§9§kn§b§ks§a§ke§e§kk§6§ka§c§ki§d§kn§9§l§n§f§l§nアウターパーフェクト§d§l§n§d§ko§c§ky§6§ko§e§ka§a§kk§b§ke§9§kd§5§ka§r§r "}',Lore:['{"text":"§7魂の共鳴 enchantment.level.15"}']},RepairCost:99999,Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:15s},{id:"minecraft:fire_protection",lvl:15s},{id:"minecraft:feather_falling",lvl:15s},{id:"minecraft:blast_protection",lvl:15s},{id:"minecraft:projectile_protection",lvl:15s},{id:"minecraft:respiration",lvl:15s},{id:"minecraft:aqua_affinity",lvl:15s},{id:"minecraft:thorns",lvl:15s},{id:"minecraft:depth_strider",lvl:15s}],AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:0.25,Operation:2,UUID:[I;854997119,-433303999,-1796968865,-535890122],Slot:"head"},{AttributeName:"generic.knockback_resistance",Name:"generic.knockback_resistance",Amount:1,Operation:0,UUID:[I;1558294253,-1036759996,-1616800962,672063634],Slot:"head"},{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0.05,Operation:2,UUID:[I;664868912,1780371439,-1237407726,837637947],Slot:"head"},{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:0.35,Operation:2,UUID:[I;859653385,518015884,-1720865044,1780303698],Slot:"head"},{AttributeName:"generic.armor",Name:"generic.armor",Amount:0.35,Operation:2,UUID:[I;-778885203,-743420722,-2116183268,1031262940],Slot:"head"},{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:0.35,Operation:2,UUID:[I;170686660,-59621358,-2103109894,-1593601684],Slot:"head"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:0.40,Operation:2,UUID:[I;-739817466,1188579266,-1128383931,989054485],Slot:"head"}]} 1

# 使用するUIDをセット
data modify storage test UID_setter set from storage test UID[8]

# UIDを付与する
item modify entity @e[tag=item_generator] weapon.mainhand main:uid_set

# 受け取り用アイテムを召喚
summon item ~ ~ ~ {PickupDelay:1,Item:{id:"minecraft:iron_helmet",Count:1b}}

# データのコピー
data modify entity @e[type=item,nbt={Item:{id:"minecraft:iron_helmet"}},sort=nearest,limit=1] Item.tag set from entity @e[tag=item_generator,limit=1] HandItems[].tag

# generatorをキル
kill @e[tag=item_generator]