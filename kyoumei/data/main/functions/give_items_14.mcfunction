#
#   アイテムを渡すファイル2
#

# generatorを設置
summon armor_stand ~ ~ ~ {Tags:["item_generator"],Invisible:true,NoGravity:true,Marker:true}

# アイテムを持たせる
item replace entity @e[tag=item_generator] weapon.mainhand with elytra{display:{Name:'{"text":"§5§ks§9§kn§b§ks§a§ke§e§kk§6§ka§c§ki§d§kn§9§l§n§f§l§n 虹色の翼 §d§l§n§d§ko§c§ky§6§ko§e§ka§a§kk§b§ke§9§kd§5§ka§r§r "}',Lore:['{"text":"§e七色§fの個性を持つ§bTUSBer§f達"}','{"text":"§f彼らの§c決意§fはどんな理不尽にも折れることはなく"}','{"text":"§f彼らの翼はどんな大空も§a自由§fに舞う"}','{"text":"§f=  §4決意 §5情熱 §d自信 §9経験 §3友情 §2高揚 §1矜持  §f="}','{"text":"§f万象、纏い。§e虹§fを成す。"}','{"text":"棘の鎧 VII","color":"gray","italic":false}','{"text":"§7魂の共鳴 VII","color":"gray","italic":false}','{"text":"虹の加護","color":"gray","italic":false}']},HideFlags:1,RepairCost:99999,Unbreakable:1b,CustomModelData:1,Enchantments:[{id:"minecraft:thorns",lvl:7s},{id:"minecraft:vanishing_curse",lvl:1s}]} 1
# 使用するUIDをセット
data modify storage test UID_setter set from storage test UID[13]

# UIDを付与する
item modify entity @e[tag=item_generator] weapon.mainhand main:uid_set

# 受け取り用アイテムを召喚
summon item ~ ~ ~ {PickupDelay:1,Item:{id:"minecraft:elytra",Count:1b},Tags:[niji]}

# データのコピー
data modify entity @e[type=item,nbt={Item:{id:"minecraft:elytra"}},sort=nearest,limit=1,tag=niji] Item.tag set from entity @e[tag=item_generator,limit=1] HandItems[].tag

# generatorをキル
kill @e[tag=item_generator]

