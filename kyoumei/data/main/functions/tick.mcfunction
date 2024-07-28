#   常時実行ファイル

execute as @a at @s if predicate main:konton run function main:konton
execute as @a at @s if predicate main:nizi run function main:nizi


# アイテム検知

#神々の黄昏 戯(靴)
tag @s remove tkutu1
execute as @a at @s if predicate main:1 run tag @s add tkutu1

#大賢者の杖
tag @s remove dtue1
execute as @a at @s if predicate main:2 run tag @s add dtue1

#混沌翼
tag @s remove konton1
execute as @a at @s if predicate main:3 run tag @s add konton1

#神々の黄昏 戯(脚)
tag @s remove tasi1
execute as @a at @s if predicate main:4 run tag @s add tasi1

#神々の黄昏 戯(胸)
tag @s remove tmune1
execute as @a at @s if predicate main:5 run tag @s add tmune1

#神々の黄昏 戯(頭)
tag @s remove tatama1
execute as @a at @s if predicate main:6 run tag @s add tatama1

#疾風の剣R
tag @s remove sken1
execute as @a at @s if predicate main:7 run tag @s add sken1

#世界樹の弓
tag @s remove syumi1
execute as @a at @s if predicate main:8 run tag @s add syumi1

#アウターパーフェクト(頭)
tag @s remove patama1
execute as @a at @s if predicate main:9 run tag @s add patama1

#アウターパーフェクト(胸)
tag @s remove pmune1
execute as @a at @s if predicate main:10 run tag @s add pmune1

#アウターパーフェクト(脚)
tag @s remove pasi1
execute as @a at @s if predicate main:11 run tag @s add pasi1

#アウターパーフェクト(靴)
tag @s remove pkutu1
execute as @a at @s if predicate main:12 run tag @s add pkutu1

#不滅
tag @s remove humetu1
execute as @a at @s if predicate main:13 run tag @s add humetu1

#虹
tag @s remove nizi1
execute as @a at @s if predicate main:14 run tag @s add nizi1

#忘却されし虚空への災禍-[魂の共鳴]
tag @s remove bsaiuzu1
execute as @a at @s if predicate main:15 run tag @s add bsaiuzu1

#黄昏馬鎧
tag @s remove tuma1
execute as @a at @s if predicate main:16 run tag @s add tuma1
