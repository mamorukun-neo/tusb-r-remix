#
#   アイテムを渡すファイル2
#

# generatorを設置
execute as @s at @s run summon armor_stand ~ ~ ~ {Tags:["item_generator"],Invisible:true,NoGravity:true,Marker:true}

# アイテムを持たせる
execute as @s at @s run item replace entity @e[tag=item_generator] weapon.mainhand with elytra{display:{Name:'{"text":"不滅の翼","color":"yellow","bold":true,"italic":false}',Lore:['{"text":"死をもってしても残るその翼は","color":"yellow"}','{"text":"まさに不滅といえる","color":"yellow","italic":true}','{"text":"魂の共鳴 I","color":"gray","italic":false}']},HideFlags:1,RepairCost:100000,Unbreakable:1b,Enchantments:[{id:"minecraft:vanishing_curse",lvl:1s}]} 1
# 使用するUIDをセット
execute as @s at @s run data modify storage test UID_setter set from storage test UID[12]

# UIDを付与する
execute as @s at @s run item modify entity @e[tag=item_generator] weapon.mainhand main:uid_set

# 受け取り用アイテムを召喚
execute as @s at @s run summon item ~ ~ ~ {PickupDelay:1,Item:{id:"minecraft:elytra",Count:1b}}

# データのコピー
execute as @s at @s run data modify entity @e[type=item,nbt={Item:{id:"minecraft:elytra"}},sort=nearest,limit=1] Item.tag set from entity @e[tag=item_generator,limit=1] HandItems[].tag

# generatorをキル
kill @e[tag=item_generator]