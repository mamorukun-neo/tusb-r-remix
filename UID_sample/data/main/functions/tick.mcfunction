#
#   常時実行ファイル
#
execute as @a at @s if predicate main:konton run function main:konton
execute as @a at @s if predicate main:nizi run function main:nizi

execute as @a at @s unless predicate main:1_uid if score @s kyoumei matches 0 run tag @s remove tkutu
execute as @a at @s unless predicate main:2_uid if score @s kyoumei matches 0 run tag @s remove dtue
execute as @a at @s unless predicate main:3_uid if score @s kyoumei matches 0 run tag @s remove konton
execute as @a at @s unless predicate main:4_uid if score @s kyoumei matches 0 run tag @s remove tasi
execute as @a at @s unless predicate main:5_uid if score @s kyoumei matches 0 run tag @s remove tmune
execute as @a at @s unless predicate main:6_uid if score @s kyoumei matches 0 run tag @s remove tatama
execute as @a at @s unless predicate main:7_uid if score @s kyoumei matches 0 run tag @s remove sken
execute as @a at @s unless predicate main:8_uid if score @s kyoumei matches 0 run tag @s remove syumi
execute as @a at @s unless predicate main:9_uid if score @s kyoumei matches 0 run tag @s remove patama
execute as @a at @s unless predicate main:10_uid if score @s kyoumei matches 0 run tag @s remove pmune
execute as @a at @s unless predicate main:11_uid if score @s kyoumei matches 0 run tag @s remove pasi
execute as @a at @s unless predicate main:12_uid if score @s kyoumei matches 0 run tag @s remove pkutu
execute as @a at @s unless predicate main:13_uid if score @s kyoumei matches 0 run tag @s remove humetu
execute as @a at @s unless predicate main:14_uid if score @s kyoumei matches 0 run tag @s remove nizi
execute as @a at @s unless predicate main:15_uid if score @s kyoumei matches 0 run tag @s remove bsaiuzu
execute as @a at @s unless predicate main:16_uid if score @s kyoumei matches 0 run tag @s remove tuma


#神々の黄昏 戯(頭)
execute as @a at @s if predicate main:6_uid run tag @s add tatama

execute as @a at @s if entity @s[tag=tatama] if score @s kyoumei matches 1.. run schedule function main:give_items_6 1t

#神々の黄昏 戯(胸)
execute as @a at @s if predicate main:5_uid run tag @s add tmune

execute as @a at @s if entity @s[tag=tmune] if score @s kyoumei matches 1.. run schedule function main:give_items_5 1t

#神々の黄昏 戯(脚)
execute as @a at @s if predicate main:4_uid run tag @s add tasi

execute as @a at @s if entity @s[tag=tasi] if score @s kyoumei matches 1.. run schedule function main:give_items_4 1t

# アイテム検知
#神々の黄昏 戯(靴)
execute as @a at @s if predicate main:1_uid run tag @s add tkutu

execute as @a at @s if entity @s[tag=tkutu] if score @s kyoumei matches 1.. run schedule function main:give_items_1 1t

#アウターパーフェクト(頭)
execute as @a at @s if predicate main:9_uid run tag @s add patama

execute as @a at @s if entity @s[tag=patama] if score @s kyoumei matches 1.. run schedule function main:give_items_9 1t

#アウターパーフェクト(胸)
execute as @a at @s if predicate main:10_uid run tag @s add pmune

execute as @a at @s if entity @s[tag=pmune] if score @s kyoumei matches 1.. run schedule function main:give_items_10 1t

#アウターパーフェクト(脚)
execute as @a at @s if predicate main:11_uid run tag @s add pasi

execute as @a at @s if entity @s[tag=pasi] if score @s kyoumei matches 1.. run schedule function main:give_items_11 1t

#アウターパーフェクト(靴)
execute as @a at @s if predicate main:12_uid run tag @s add pkutu

execute as @a at @s if entity @s[tag=pkutu] if score @s kyoumei matches 1.. run schedule function main:give_items_12 1t

#疾風の剣R
execute as @a at @s if predicate main:7_uid run tag @s add sken

execute as @a at @s if entity @s[tag=sken] if score @s kyoumei matches 1.. run schedule function main:give_items_7 1t

#世界樹の弓
execute as @a at @s if predicate main:8_uid run tag @s add syumi

execute as @a at @s if entity @s[tag=syumi] if score @s kyoumei matches 1.. run schedule function main:give_items_8 1t

#大賢者の杖
execute as @a at @s if predicate main:2_uid run tag @s add dtue

execute as @a at @s if entity @s[tag=dtue] if score @s kyoumei matches 1.. run schedule function main:give_items_2 1t

#不滅
execute as @a at @s if predicate main:13_uid run tag @s add humetu

execute as @a at @s if entity @s[tag=humetu] if score @s kyoumei matches 1.. run schedule function main:give_items_13 1t

#虹
execute as @a at @s if predicate main:14_uid run tag @s add nizi

execute as @a at @s if entity @s[tag=nizi] if score @s kyoumei matches 1.. run schedule function main:give_items_14 2t

#混沌翼
execute as @a at @s if predicate main:3_uid run tag @s add konton

execute as @a at @s if entity @s[tag=konton] if score @s kyoumei matches 1.. run schedule function main:give_items_3 3t

#黄昏馬鎧
execute as @a at @s if predicate main:16_uid run tag @s add tuma

execute as @a at @s if entity @s[tag=tuma] if score @s kyoumei matches 1.. run schedule function main:give_items_16 1t

#忘却されし虚空への災禍-[魂の共鳴]
execute as @a at @s if predicate main:15_uid run tag @s add bsaiuzu

execute as @a at @s if entity @s[tag=bsaiuzu] if score @s kyoumei matches 1.. run schedule function main:give_items_15 1t











execute as @a at @s if score @s kyoumei matches 1.. run scoreboard players set @s kyoumei 0
