#
#   アイテムを渡すファイル2
#

# generatorを設置
summon armor_stand ~ ~ ~ {Tags:["item_generator"],Invisible:true,NoGravity:true,Marker:true}

# アイテムを持たせる
item replace entity @e[tag=item_generator] weapon.mainhand with diamond_sword{display:{Name:'{"text":"§b§ks§9疾風の剣§cR§b§ks","bold":true,"italic":false,"underlined":true}',Lore:['{"text":"攻撃性能が大幅に上昇した疾風の剣","color":"white","italic":false}','{"text":"虫特攻 X","color":"gray","italic":false}','{"text":"火属性 V","color":"gray","italic":false}','{"text":"ノックバック V","color":"gray","italic":false}','{"text":"ドロップ増加 V","color":"gray","italic":false}','{"text":"ダメージ増加 enchantment.level.15","color":"gray","italic":false}','{"text":"アンデット特攻 X","color":"gray","italic":false}','{"text":"範囲ダメージ増加 enchantment.level.20","color":"gray","italic":false}','{"text":"§7魂の共鳴 X","color":"gray","italic":false}']},HideFlags:1,RepairCost:99999,Unbreakable:1b,Damage:25,Enchantments:[{id:"minecraft:sharpness",lvl:15s},{id:"minecraft:smite",lvl:10s},{id:"minecraft:bane_of_arthropods",lvl:10s},{id:"minecraft:knockback",lvl:5s},{id:"minecraft:fire_aspect",lvl:5s},{id:"minecraft:looting",lvl:5s},{id:"minecraft:sweeping",lvl:20s},{id:"minecraft:vanishing_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:15,Operation:0,UUID:[I;1807161671,-939507256,-1187789326,19327359],Slot:"mainhand"},{AttributeName:"generic.knockback_resistance",Name:"generic.knockback_resistance",Amount:0.5,Operation:0,UUID:[I;267440660,-1543287411,-2076396243,-405139862],Slot:"mainhand"},{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0.2,Operation:0,UUID:[I;-988834625,-344961214,-1939241546,1802731552],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-1.3,Operation:0,UUID:[I;-1613842901,1029849180,-1973657073,-1284413720],Slot:"mainhand"}]} 1
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