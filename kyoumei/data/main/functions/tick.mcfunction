#   常時実行ファイル

execute as @a at @s if predicate main:konton run function main:konton
execute as @a at @s if predicate main:nizi run function main:nizi


# アイテム検知

#神々の黄昏 戯(頭)
execute as @a at @s if predicate main:6 run tag @s add tatama


#神々の黄昏 戯(胸)
execute as @a at @s if predicate main:5 run tag @s add tmune


#神々の黄昏 戯(脚)
execute as @a at @s if predicate main:4 run tag @s add tasi


#神々の黄昏 戯(靴)
execute as @a at @s if predicate main:1 run tag @s add tkutu


#アウターパーフェクト(頭)
execute as @a at @s if predicate main:9 run tag @s add patama


#アウターパーフェクト(胸)
execute as @a at @s if predicate main:10 run tag @s add pmune


#アウターパーフェクト(脚)
execute as @a at @s if predicate main:11 run tag @s add pasi


#アウターパーフェクト(靴)
execute as @a at @s if predicate main:12 run tag @s add pkutu


#疾風の剣R
execute as @a at @s if predicate main:7 run tag @s add sken


#世界樹の弓
execute as @a at @s if predicate main:8 run tag @s add syumi


#大賢者の杖
execute as @a at @s if predicate main:2 run tag @s add dtue


#不滅
execute as @a at @s if predicate main:13 run tag @s add humetu


#虹
execute as @a at @s if predicate main:14 run tag @s add nizi


#混沌翼
execute as @a at @s if predicate main:3 run tag @s add konton


#黄昏馬鎧
execute as @a at @s if predicate main:16 run tag @s add tuma


#忘却されし虚空への災禍-[魂の共鳴]
execute as @a at @s if predicate main:15 run tag @s add bsaiuzu



# アイテム検知タグ消し

#神々の黄昏 戯(頭)
execute as @a at @s unless predicate main:6 run tag @s remove tatama


#神々の黄昏 戯(胸)
execute as @a at @s unless predicate main:5 run tag @s remove tmune


#神々の黄昏 戯(脚)
execute as @a at @s unless predicate main:4 run tag @s remove tasi


#神々の黄昏 戯(靴)
execute as @a at @s unless predicate main:1 run tag @s remove tkutu


#アウターパーフェクト(頭)
execute as @a at @s unless predicate main:9 run tag @s remove patama


#アウターパーフェクト(胸)
execute as @a at @s unless predicate main:10 run tag @s remove pmune


#アウターパーフェクト(脚)
execute as @a at @s unless predicate main:11 run tag @s remove pasi


#アウターパーフェクト(靴)
execute as @a at @s unless predicate main:12 run tag @s remove pkutu


#疾風の剣R
execute as @a at @s unless predicate main:7 run tag @s remove sken


#世界樹の弓
execute as @a at @s unless predicate main:8 run tag @s remove syumi


#大賢者の杖
execute as @a at @s unless predicate main:2 run tag @s remove dtue


#不滅
execute as @a at @s unless predicate main:13 run tag @s remove humetu


#虹
execute as @a at @s unless predicate main:14 run tag @s remove nizi


#混沌翼
execute as @a at @s unless predicate main:3 run tag @s remove konton


#黄昏馬鎧
execute as @a at @s unless predicate main:16 run tag @s remove tuma


#忘却されし虚空への災禍-[魂の共鳴]
execute as @a at @s unless predicate main:15 run tag @s remove bsaiuzu






