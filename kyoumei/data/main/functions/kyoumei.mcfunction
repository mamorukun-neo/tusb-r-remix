

execute as @s at @s if entity @s[tag=tatama] run tag @s add tatama1
execute as @s at @s if entity @s[tag=tatama1] run schedule function main:give_items_6 5t
execute as @a[tag=tkutu1,limit=1,sort=nearest] at @s run tag @s remove tkutu1


execute as @s at @s if entity @s[tag=tmune] run tag @s add tmune1
execute as @s at @s if entity @s[tag=tmune1] run schedule function main:give_items_5 5t
execute as @a[tag=dtue1,limit=1,sort=nearest] at @s run tag @s remove dtue1


execute as @s at @s if entity @s[tag=tasi] run tag @s add tasi1
execute as @s at @s if entity @s[tag=tasi1] run schedule function main:give_items_4 5t
execute as @a[tag=konton1,limit=1,sort=nearest] at @s run tag @s remove konton1


execute as @s at @s if entity @s[tag=tkutu] run tag @s add tkutu1
execute as @s at @s if entity @s[tag=tkutu1] run schedule function main:give_items_1 5t
execute as @a[tag=tasi1,limit=1,sort=nearest] at @s run tag @s remove tasi1


execute as @s at @s if entity @s[tag=patama] run tag @s add patama1
execute as @s at @s if entity @s[tag=patama1] run schedule function main:give_items_9 5t
execute as @a[tag=tmune1,limit=1,sort=nearest] at @s run tag @s remove tmune1


execute as @s at @s if entity @s[tag=pmune] run tag @s add pmune1
execute as @s at @s if entity @s[tag=pmune1] run schedule function main:give_items_10 5t
tag @a[tag=tatama1,sort=nearest,limit=1] remove tatama1


execute as @s at @s if entity @s[tag=pasi] run tag @s add pasi1
execute as @s at @s if entity @s[tag=pasi1] run schedule function main:give_items_11 5t
tag @a[tag=sken1,sort=nearest,limit=1] remove sken1


execute as @s at @s if entity @s[tag=pkutu] run tag @s add pkutu1
execute as @s at @s if entity @s[tag=pkutu1] run schedule function main:give_items_12 5t
tag @a[tag=syumi1,sort=nearest,limit=1] remove syumi1


execute as @s at @s if entity @s[tag=sken] run tag @s add sken1
execute as @s at @s if entity @s[tag=sken1] run schedule function main:give_items_7 5t
tag @a[tag=patama1,sort=nearest,limit=1] remove patama1


execute as @s at @s if entity @s[tag=syumi] run tag @s add syumi1
execute as @s at @s if entity @s[tag=syumi1] run schedule function main:give_items_8 5t
tag @a[tag=pmune1,sort=nearest,limit=1] remove pmune1


execute as @s at @s if entity @s[tag=dtue] run tag @s add dtue1
execute as @s at @s if entity @s[tag=dtue1] run schedule function main:give_items_2 5t
tag @a[tag=pasi1,sort=nearest,limit=1] remove pasi1


execute as @s at @s if entity @s[tag=humetu] run tag @s add humetu1
execute as @s at @s if entity @s[tag=humetu1] run schedule function main:give_items_13 5t
tag @a[tag=pkutu1,sort=nearest,limit=1] remove pkutu1


execute as @s at @s if entity @s[tag=nizi] run tag @s add nizi1
execute as @s at @s if entity @s[tag=nizi1] run schedule function main:give_items_14 5t
tag @a[tag=humetu1,sort=nearest,limit=1] remove humetu1


execute as @s at @s if entity @s[tag=konton] run tag @s add konton1
execute as @s at @s if entity @s[tag=konton1] run schedule function main:give_items_3 5t
tag @a[tag=nizi1,sort=nearest,limit=1] remove nizi1


execute as @s at @s if entity @s[tag=bsaiuzu] run tag @s add bsaiuzu1
execute as @s at @s if entity @s[tag=bsaiuzu1] run schedule function main:give_items_15 5t
tag @a[tag=bsaiuzu1,sort=nearest,limit=1] remove bsaiuzu1

execute as @s at @s if entity @s[tag=tuma] run tag @s add tuma1
execute as @s at @s if entity @s[tag=tuma1] run schedule function main:give_items_16 5t
tag @a[tag=tuma1,sort=nearest,limit=1] remove tuma1


advancement revoke @s only tusb_remake:kyoumei
