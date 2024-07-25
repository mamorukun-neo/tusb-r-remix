
#
#   アイテムを渡すファイル2
#

# generatorを設置
summon armor_stand ~ ~ ~ {Tags:["item_generator"],Invisible:true,NoGravity:true,Marker:true}

# アイテムを持たせる
item replace entity @e[tag=item_generator] weapon.mainhand with elytra{display:{Name:'{"text":"§5§ks§9§kn§b§ks§a§ke§e§kk§6§ka§c§ki§d§kn§9§l§n §9§l§n混沌を制する翼 §d§l§n§d§ko§c§ky§6§ko§e§ka§a§kk§b§ke§9§kd§5§ka§r§r "}',Lore:['{"text":"§7水中採掘 enchantment.level.15","color":"gray","italic":false}','{"text":"§7爆発耐性 enchantment.level.15","italic":false}','{"text":"§7水中歩行 enchantment.level.15","italic":false}','{"text":"§7落下耐性 enchantment.level.15","italic":false}','{"text":"§7火炎耐性 enchantment.level.15","italic":false}','{"text":"§7飛び道具耐性 enchantment.level.15","italic":false}','{"text":"§7ダメージ軽減 enchantment.level.15","italic":false}','{"text":"§7水中呼吸 enchantment.level.15","italic":false}','{"text":"§7棘の鎧 enchantment.level.15","italic":false}','{"text":"§7魂の共鳴 enchantment.level.15","color":"gray","italic":false}','{"text":"§5§ks§9§kn§b§ks§a§ke§e§kk§6§ka§c§ki§d§kn§9§l§n§7 虹の加護 ∞ §d§l§n§d§ko§c§ky§6§ko§e§ka§a§kk§b§ke§9§kd§5§ka§r§r ","italic":false}']},HideFlags:1,RepairCost:99999,Unbreakable:1b,CustomModelData:2,Enchantments:[{id:"minecraft:protection",lvl:15s},{id:"minecraft:fire_protection",lvl:15s},{id:"minecraft:feather_falling",lvl:15s},{id:"minecraft:blast_protection",lvl:15s},{id:"minecraft:projectile_protection",lvl:15s},{id:"minecraft:respiration",lvl:15s},{id:"minecraft:aqua_affinity",lvl:15s},{id:"minecraft:thorns",lvl:15s},{id:"minecraft:depth_strider",lvl:15s},{id:"minecraft:vanishing_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:0.25,Operation:2,UUID:[I;-1629963137,-1398648864,-1203821494,-536672752],Slot:"chest"},{AttributeName:"generic.knockback_resistance",Name:"generic.knockback_resistance",Amount:1,Operation:0,UUID:[I;1451716827,-1149549545,-1809657298,-2127354342],Slot:"chest"},{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0.05,Operation:2,UUID:[I;-1920631902,1679902187,-1490366577,-989328073],Slot:"chest"},{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:0.35,Operation:2,UUID:[I;-1247850920,1217350089,-1629401522,-1959129218],Slot:"chest"},{AttributeName:"generic.armor",Name:"generic.armor",Amount:0.35,Operation:2,UUID:[I;1128642422,-641840233,-1760194867,1402489496],Slot:"chest"},{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:0.35,Operation:2,UUID:[I;505859733,-2087762769,-1785582467,1852002106],Slot:"chest"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:0.40,Operation:2,UUID:[I;563976127,129778950,-1158131808,167512504],Slot:"chest"}]} 1

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