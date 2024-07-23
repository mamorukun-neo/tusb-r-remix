#
#   アイテムを渡すファイル2
#

# generatorを設置
summon armor_stand ~ ~ ~ {Tags:["item_generator"],Invisible:true,NoGravity:true,Marker:true}

# アイテムを持たせる
item replace entity @e[tag=item_generator] weapon.mainhand with iron_chestplate{display:{Name:'{"text":"§5§ks§9§kn§b§ks§a§ke§e§kk§6§ka§c§ki§d§kn§9§l§n§f§l§nアウターパーフェクト§d§l§n§d§ko§c§ky§6§ko§e§ka§a§kk§b§ke§9§kd§5§ka§r§r "}',Lore:['{"text":"§7魂の共鳴 enchantment.level.15"}']},RepairCost:99999,Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:15s},{id:"minecraft:fire_protection",lvl:15s},{id:"minecraft:feather_falling",lvl:15s},{id:"minecraft:blast_protection",lvl:15s},{id:"minecraft:projectile_protection",lvl:15s},{id:"minecraft:respiration",lvl:15s},{id:"minecraft:aqua_affinity",lvl:15s},{id:"minecraft:thorns",lvl:15s},{id:"minecraft:depth_strider",lvl:15s}],AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:0.25,Operation:2,UUID:[I;2075053488,-549696100,-2141843964,-1266333318],Slot:"chest"},{AttributeName:"generic.knockback_resistance",Name:"generic.knockback_resistance",Amount:1,Operation:0,UUID:[I;37387173,-1564849486,-1799240700,-515686927],Slot:"chest"},{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0.05,Operation:2,UUID:[I;1809872797,-1104132963,-1967361288,-1495517798],Slot:"chest"},{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:0.35,Operation:2,UUID:[I;385724390,544229089,-1667746098,-942320458],Slot:"chest"},{AttributeName:"generic.armor",Name:"generic.armor",Amount:0.35,Operation:2,UUID:[I;2024118281,-28620457,-1550627550,809024691],Slot:"chest"},{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:0.35,Operation:2,UUID:[I;-1845805088,419908037,-1345094596,-2025244560],Slot:"chest"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:0.40,Operation:2,UUID:[I;-1971862355,1436369755,-2085418626,1345627058],Slot:"chest"}]} 1

# 使用するUIDをセット
data modify storage test UID_setter set from storage test UID[9]

# UIDを付与する
item modify entity @e[tag=item_generator] weapon.mainhand main:uid_set

# 受け取り用アイテムを召喚
summon item ~ ~ ~ {PickupDelay:1,Item:{id:"minecraft:iron_chestplate",Count:1b}}

# データのコピー
data modify entity @e[type=item,nbt={Item:{id:"minecraft:iron_chestplate"}},sort=nearest,limit=1] Item.tag set from entity @e[tag=item_generator,limit=1] HandItems[].tag

# generatorをキル
kill @e[tag=item_generator]