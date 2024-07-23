
#
#   アイテムを渡すファイル2
#

# generatorを設置
summon armor_stand ~ ~ ~ {Tags:["item_generator"],Invisible:true,NoGravity:true,Marker:true}

# アイテムを持たせる
item replace entity @e[tag=item_generator] weapon.mainhand with elytra{display:{Name:'{"text":"§5§ks§9§kn§b§ks§a§ke§e§kk§6§ka§c§ki§d§kn§9§l§n §9§l§n混沌を制する翼 §d§l§n§d§ko§c§ky§6§ko§e§ka§a§kk§b§ke§9§kd§5§ka§r§r "}',Lore:['{"text":"§7魂の共鳴 enchantment.level.15"}','{"text":"§5§ks§9§kn§b§ks§a§ke§e§kk§6§ka§c§ki§d§kn§9§l§n§7 虹の加護 ∞ §d§l§n§d§ko§c§ky§6§ko§e§ka§a§kk§b§ke§9§kd§5§ka§r§r "}']},RepairCost:99999,Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:15s},{id:"minecraft:fire_protection",lvl:15s},{id:"minecraft:feather_falling",lvl:15s},{id:"minecraft:blast_protection",lvl:15s},{id:"minecraft:projectile_protection",lvl:15s},{id:"minecraft:respiration",lvl:15s},{id:"minecraft:aqua_affinity",lvl:15s},{id:"minecraft:thorns",lvl:15s},{id:"minecraft:depth_strider",lvl:15s}],AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:0.25,Operation:2,UUID:[I;-198083510,2125218471,-1233076700,545542978],Slot:"chest"},{AttributeName:"generic.knockback_resistance",Name:"generic.knockback_resistance",Amount:1,Operation:0,UUID:[I;783994165,1382892345,-1698118120,-1671644992],Slot:"chest"},{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0.05,Operation:2,UUID:[I;158417750,984499254,-1648746625,1025352996],Slot:"chest"},{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:0.35,Operation:2,UUID:[I;957932979,-314620460,-1458056753,1366030833],Slot:"chest"},{AttributeName:"generic.armor",Name:"generic.armor",Amount:0.35,Operation:2,UUID:[I;655385217,1679838414,-1548075062,456102891],Slot:"chest"},{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:0.35,Operation:2,UUID:[I;214936405,-408859321,-1361907711,555191080],Slot:"chest"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:0.40,Operation:2,UUID:[I;-1242029848,408440050,-1960577798,-2066171465],Slot:"chest"}]} 1

# 使用するUIDをセット
data modify storage test UID_setter set from storage test UID[2]

# UIDを付与する
item modify entity @e[tag=item_generator] weapon.mainhand main:uid_set

# 受け取り用アイテムを召喚
summon item ~ ~ ~ {PickupDelay:1,Item:{id:"minecraft:elytra",Count:1b}}

# データのコピー
data modify entity @e[type=item,nbt={Item:{id:"minecraft:elytra"}},sort=nearest,limit=1] Item.tag set from entity @e[tag=item_generator,limit=1] HandItems[].tag

# generatorをキル
kill @e[tag=item_generator]