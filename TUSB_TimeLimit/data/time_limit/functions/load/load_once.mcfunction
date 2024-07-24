#> time_limit:load/load_once
# 初回ロード時にやりたい処理

# scoreboard作成
function time_limit:load/scoreboard_make

# スキル説明変更
# TLEは一部スキルに調節がはいっているため
function time_limit:load/change_description

# forceload
# same tickだとforceload無視されてそうなのでonoff関わらず先に
# 王スポナー
# ここは消すと不都合が起こるのであとで
execute in the_end run forceload add -1388 9 -1388 9
# ボス特設
execute in the_end run forceload add 454 454 545 545
# 超作業台
execute in overworld run forceload add -2727 -374 -2721 -372
# 職業島
execute in overworld run forceload add -52 17 -52 17
# 初期スポーン(通常世界)
execute in overworld run forceload add 2 2 2 2

# わこからさんの場所をforceload
execute in overworld run forceload add -2800 -360 -2800 -360

# エンドボス色々用アマスタ
# ここだけは設定の有無に関わらず設置する
execute in the_end run kill @e[type=armor_stand,tag=Boss_Marker]
execute in the_end run summon armor_stand 500.0 100.0 500.0 {NoGravity:1b,Silent:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["Boss_Marker"],DisabledSlots:4144959}

# ロゴをplace

# チュートリアル建築書き換え
# これすでにあるもの書き換えてるから看板とか花/種などのアイテムもkillしないといけないだろうねぇー今までと違って




# 通常世界スポーン位置の真下にアイテムを置く
setblock 0 2 2 dispenser[facing=up]{Items:[{Slot:0b,id:"minecraft:clock",Count:1b},{Slot:1b,id:"minecraft:cooked_mutton",Count:16b},{Slot:2b,id:"minecraft:clock",Count:1b},{Slot:3b,id:"minecraft:torch",Count:32b},{Slot:4b,id:"minecraft:written_book",Count:8b,tag:{generation: 0, author: "オー・ネンネ", display: {Name: '{"text":"超・作業台交易キットガイド","color":"gold","bold":true,"italic":false}', Lore: ['[{"text":"交易やクラフトに時間を割けない！","color":"dark_purple","bold":false,"italic":false},{"text":"という声を受け","color":"aqua","bold":false,"italic":false}]', '[{"text":"とある人物","color":"gold","bold":true,"italic":false},{"text":"が制作した限定レシピ本。","color":"aqua","bold":false,"italic":false}]', '{"text":"時間に追われてない人も必見！！","color":"dark_red","bold":false,"italic":false}']}, title: "超・作業台交易キットガイド", resolved: 1b,pages:['{"extra":[{"bold":true,"color":"gray","text":"⬢"},{"bold":true,"color": "green","text":"取引"},{"bold":true, "color":"dark_gray","text":"の印判("},{"bold":true,"color":"#C39143","text":"ﾄﾗｯﾌﾟﾁｪｽﾄ "},{"bold":true,"color":"dark_gray","text":"ｶﾏﾄﾞ"},{"bold":true,"color":"dark_gray","text":" → "},{"bold":true,"color":"dark_aqua","text":"ｴﾝﾊﾟ"},{"bold":true,"color":"dark_gray","text":")"},{"color":"reset","text":"\\n"},{"bold":true,"strikethrough":true,"color":"dark_gray","text":"                      "},{"color":"reset","text":"\\n"},{"color":"dark_aqua","text":"█"},{"color":"dark_gray","text":"エンダーパール・・・16"},{"color":"reset","text":"\\n"},{"color":"green","text":"█"},{"color":"dark_gray","text":"エメラルドブロック・32"},{"color":"reset","text":"\\n"},{"color":"aqua","text":"█"},{"color":"dark_gray","text":"ダイヤモンドブロック16"},{"color":"reset","text":"\\n\\n\\n\\n"},{"bold":true,"strikethrough":true,"color":"dark_gray","text":"                      "},{"color":"reset","text":"\\n"},{"color":"dark_gray","text":"⬧ 作り方"},{"color":"reset","text":"\\n          "},{"color":"dark_aqua","text":"█"},{"color":"green","text":"█"},{"color":"dark_aqua","text":"█"},{"color":"reset","text":"\\n          "},{"color":"green","text":"█"},{"color":"aqua","text":"█"},{"color":"green","text":"█"},{"color":"reset","text":"\\n          "},{"color":"dark_aqua","text":"█"},{"color":"green","text":"█"},{"color":"dark_aqua","text":"█"}],"text":""}','{"extra":[{"bold":true,"color":"gray","text":"⬢"},{"bold":true,"color": "green","text":"取引"},{"bold":true, "color":"dark_gray","text":"の印判("},{"bold":true,"color":"green","text":"ｴﾒﾗﾙﾄﾞ "},{"bold":true,"color":"#C39143","text":"作業台"},{"bold":true,"color":"dark_gray","text":" → "},{"bold":true,"color":"gold","text":"お楽しみセット"},{"bold":true,"color":"dark_gray","text":")"},{"color":"reset","text":"\\n"},{"bold":true,"strikethrough":true,"color":"dark_gray","text":"                      "},{"color":"reset","text":"\\n"},{"color":"#C39143","text":"█"},{"color":"dark_gray","text":"作業台・・・・・・・64"},{"color":"reset","text":"\\n"},{"color":"green","text":"█"},{"color":"dark_gray","text":"エメラルドブロック・32"},{"color":"reset","text":"\\n"},{"color":"aqua","text":"█"},{"color":"dark_gray","text":"ダイヤモンドブロック16"},{"color":"reset","text":"\\n\\n\\n"},{"bold":true,"strikethrough":true,"color":"dark_gray","text":"                      "},{"color":"reset","text":"\\n"},{"color":"dark_gray","text":"⬧ 作り方"},{"color":"reset","text":"\\n          "},{"color":"#C39143","text":"█"},{"color":"green","text":"█"},{"color":"#C39143","text":"█"},{"color":"reset","text":"\\n          "},{"color":"green","text":"█"},{"color":"aqua","text":"█"},{"color":"green","text":"█"},{"color":"reset","text":"\\n          "},{"color":"#C39143","text":"█"},{"color":"green","text":"█"},{"color":"#C39143","text":"█"}],"text":""}','{"extra":[{"bold":true,"color":"gray","text":"⬢"},{"bold":true,"color": "green","text":"取引"},{"bold":true, "color":"dark_gray","text":"の印判("},{"bold":true,"color":"#C39143","text":"ﾁｪｽﾄ "},{"bold":true,"color":"green","text":"ｴﾒﾗﾙﾄﾞ"},{"bold":true,"color":"dark_gray","text":" → "},{"bold":true,"color":"#C39143","text":"ﾄﾗｯﾌﾟﾁｪｽﾄ"},{"bold":true,"color":"dark_gray","text":")"},{"color":"reset","text":"\\n"},{"bold":true,"strikethrough":true,"color":"dark_gray","text":"                      "},{"color":"reset","text":"\\n"},{"color":"#C39143","text":"█"},{"color":"dark_gray","text":"トラップチェスト・・32"},{"color":"reset","text":"\\n"},{"color":"green","text":"█"},{"color":"dark_gray","text":"エメラルドブロック・8"},{"color":"reset","text":"\\n"},{"color":"red","text":"█"},{"color":"dark_gray","text":"RSブロック・・・・・32"},{"color":"reset","text":"\\n\\n\\n\\n"},{"bold":true,"strikethrough":true,"color":"dark_gray","text":"                      "},{"color":"reset","text":"\\n"},{"color":"dark_gray","text":"⬧ 作り方"},{"color":"reset","text":"\\n          "},{"color":"#C39143","text":"█"},{"color":"green","text":"█"},{"color":"#C39143","text":"█"},{"color":"reset","text":"\\n          "},{"color":"green","text":"█"},{"color":"red","text":"█"},{"color":"green","text":"█"},{"color":"reset","text":"\\n          "},{"color":"#C39143","text":"█"},{"color":"green","text":"█"},{"color":"#C39143","text":"█"}],"text":""}','{"extra":[{"bold":true,"color":"gray","text":"⬢"},{"bold":true,"color": "green","text":"取引"},{"bold":true, "color":"dark_gray","text":"の印判("},{"bold":true,"color":"#734E30","text":"原木"},{"bold":true,"color":"dark_gray","text":" → "},{"bold":true,"color":"#C39143","text":"チェスト"},{"bold":true,"color":"dark_gray","text":")"},{"color":"reset","text":"\\n"},{"bold":true,"strikethrough":true,"color":"dark_gray","text":"                      "},{"color":"reset","text":"\\n"},{"color":"#C39143","text":"█"},{"color":"dark_gray","text":"チェスト・・・・・・32"},{"color":"reset","text":"\\n"},{"color":"green","text":"█"},{"color":"dark_gray","text":"エメラルドブロック・16"},{"color":"reset","text":"\\n"},{"color":"yellow","text":"█"},{"color":"dark_gray","text":"金ブロック・・・・・16"},{"color":"reset","text":"\\n\\n\\n\\n"},{"bold":true,"strikethrough":true,"color":"dark_gray","text":"                      "},{"color":"reset","text":"\\n"},{"color":"dark_gray","text":"⬧ 作り方"},{"color":"reset","text":"\\n          "},{"color":"#C39143","text":"█"},{"color":"green","text":"█"},{"color":"#C39143","text":"█"},{"color":"reset","text":"\\n          "},{"color":"green","text":"█"},{"color":"yellow","text":"█"},{"color":"green","text":"█"},{"color":"reset","text":"\\n          "},{"color":"#C39143","text":"█"},{"color":"green","text":"█"},{"color":"#C39143","text":"█"}],"text":""}','{"extra":[{"bold":true,"color":"gray","text":"⬢"},{"bold":true,"color": "green","text":"取引"},{"bold":true, "color":"dark_gray","text":"の印判("},{"bold":true,"color":"gray","text":"丸石"},{"bold":true,"color":"dark_gray","text":" → "},{"bold":true,"color":"dark_gray","text":"かまど"},{"bold":true,"color":"dark_gray","text":")"},{"color":"reset","text":"\\n"},{"bold":true,"strikethrough":true,"color":"dark_gray","text":"                      "},{"color":"reset","text":"\\n"},{"color":"dark_gray","text":"█"},{"color":"dark_gray","text":"かまど・・・・・・・32"},{"color":"reset","text":"\\n"},{"color":"green","text":"█"},{"color":"dark_gray","text":"エメラルドブロック・16"},{"color":"reset","text":"\\n"},{"color":"gray","text":"█"},{"color":"dark_gray","text":"鉄ブロック・・・・・16"},{"color":"reset","text":"\\n\\n\\n\\n"},{"bold":true,"strikethrough":true,"color":"dark_gray","text":"                      "},{"color":"reset","text":"\\n"},{"color":"dark_gray","text":"⬧ 作り方"},{"color":"reset","text":"\\n          "},{"color":"dark_gray","text":"█"},{"color":"green","text":"█"},{"color":"dark_gray","text":"█"},{"color":"reset","text":"\\n          "},{"color":"green","text":"█"},{"color":"gray","text":"█"},{"color":"green","text":"█"},{"color":"reset","text":"\\n          "},{"color":"dark_gray","text":"█"},{"color":"green","text":"█"},{"color":"dark_gray","text":"█"}],"text":""}','{"extra":[{"bold":true,"color":"gray","text":"⬢"},{"bold":true,"color": "green","text":"取引"},{"bold":true, "color":"dark_gray","text":"の印判("},{"bold":true,"color":"#734E30","text":"原木"},{"bold":true,"color":"dark_gray","text":" → "},{"bold":true,"color":"#C39143","text":"額縁"},{"bold":true,"color":"dark_gray","text":")"},{"color":"reset","text":"\\n"},{"bold":true,"strikethrough":true,"color":"dark_gray","text":"                      "},{"color":"reset","text":"\\n"},{"color":"#C39143","text":"█"},{"color":"dark_gray","text":"額縁・・・・・・・・8"},{"color":"reset","text":"\\n"},{"color":"green","text":"█"},{"color":"dark_gray","text":"エメラルドブロック・8"},{"color":"reset","text":"\\n"},{"color":"blue","text":"█"},{"color":"dark_gray","text":"ラピスラズリブロック16"},{"color":"reset","text":"\\n\\n\\n\\n"},{"bold":true,"strikethrough":true,"color":"dark_gray","text":"                      "},{"color":"reset","text":"\\n"},{"color":"dark_gray","text":"⬧ 作り方"},{"color":"reset","text":"\\n          "},{"color":"#C39143","text":"█"},{"color":"green","text":"█"},{"color":"#C39143","text":"█"},{"color":"reset","text":"\\n          "},{"color":"green","text":"█"},{"color":"blue","text":"█"},{"color":"green","text":"█"},{"color":"reset","text":"\\n          "},{"color":"#C39143","text":"█"},{"color":"green","text":"█"},{"color":"#C39143","text":"█"}],"text":""}','{"extra":[{"bold":true,"color":"gray","text":"⬢"},{"bold":true,"color": "green","text":"取引"},{"bold":true, "color":"dark_gray","text":"の印判("},{"bold":true,"color":"#734E30","text":"原木"},{"bold":true,"color":"dark_gray","text":" → "},{"bold":true,"color":"#C39143","text":"作業台"},{"bold":true,"color":"dark_gray","text":")"},{"color":"reset","text":"\\n"},{"bold":true,"strikethrough":true,"color":"dark_gray","text":"                      "},{"color":"reset","text":"\\n"},{"color":"#C39143","text":"█"},{"color":"dark_gray","text":"作業台・・・・・・・32"},{"color":"reset","text":"\\n"},{"color":"green","text":"█"},{"color":"dark_gray","text":"エメラルドブロック・16"},{"color":"reset","text":"\\n"},{"color":"black","text":"█"},{"color":"dark_gray","text":"石炭ブロック・・・・16"},{"color":"reset","text":"\\n\\n\\n\\n"},{"bold":true,"strikethrough":true,"color":"dark_gray","text":"                      "},{"color":"reset","text":"\\n"},{"color":"dark_gray","text":"⬧ 作り方"},{"color":"reset","text":"\\n          "},{"color":"#C39143","text":"█"},{"color":"green","text":"█"},{"color":"#C39143","text":"█"},{"color":"reset","text":"\\n          "},{"color":"green","text":"█"},{"color":"black","text":"█"},{"color":"green","text":"█"},{"color":"reset","text":"\\n          "},{"color":"#C39143","text":"█"},{"color":"green","text":"█"},{"color":"#C39143","text":"█"}],"text":""}','{"extra":[{"bold":true,"color":"gray","text":"⬢"},{"bold":true,"color":"reset","text":" "},{"bold":true,"obfuscated":true,"color":"light_purple","hoverEvent":{"action":"show_text","value":{"text":"常に文字が蠢いている...読み取れない箇所がある..."}},"text":"M"},{"bold":true,"obfuscated":true,"color":"red","hoverEvent":{"action":"show_text","value":{"text":"常に文字が蠢いている...読み取れない箇所がある..."}},"text":"y"},{"bold":true,"obfuscated":true,"color":"gold","hoverEvent":{"action":"show_text","value":{"text":"常に文字が蠢いている...読み取れない箇所がある..."}},"text":"s"},{"bold":true,"obfuscated":true,"color":"yellow","hoverEvent":{"action":"show_text","value":{"text":"常に文字が蠢いている...読み取れない箇所がある..."}},"text":"t"},{"bold":true,"obfuscated":true,"color":"green","hoverEvent":{"action":"show_text","value":{"text":"常に文字が蠢いている...読み取れない箇所がある..."}},"text":"i"},{"bold":true,"obfuscated":true,"color":"aqua","hoverEvent":{"action":"show_text","value":{"text":"常に文字が蠢いている...読み取れない箇所がある..."}},"text":"c"},{"bold":true,"obfuscated":true,"color":"dark_aqua","hoverEvent":{"action":"show_text","value":{"text":"常に文字が蠢いている...読み取れない箇所がある..."}},"text":"a"},{"bold":true,"obfuscated":true,"color":"blue","hoverEvent":{"action":"show_text","value":{"text":"常に文字が蠢いている...読み取れない箇所がある..."}},"text":"l"},{"bold":true,"obfuscated":true,"color":"dark_purple","hoverEvent":{"action":"show_text","value":{"text":"常に文字が蠢いている...読み取れない箇所がある..."}},"text":"?"},{"bold":true,"color":"reset","hoverEvent":{"action":"show_text","value":{"text":"常に文字が蠢いている...読み取れない箇所がある..."}},"text":" "},{"bold":true,"obfuscated":true,"color":"light_purple","hoverEvent":{"action":"show_text","value":{"text":"常に文字が蠢いている...読み取れない箇所がある..."}},"text":"A"},{"bold":true,"obfuscated":true,"color":"red","hoverEvent":{"action":"show_text","value":{"text":"常に文字が蠢いている...読み取れない箇所がある..."}},"text":"r"},{"bold":true,"obfuscated":true,"color":"gold","hoverEvent":{"action":"show_text","value":{"text":"常に文字が蠢いている...読み取れない箇所がある..."}},"text":"m"},{"bold":true,"obfuscated":true,"color":"yellow","hoverEvent":{"action":"show_text","value":{"text":"常に文字が蠢いている...読み取れない箇所がある..."}},"text":"o"},{"bold":true,"obfuscated":true,"color":"green","hoverEvent":{"action":"show_text","value":{"text":"常に文字が蠢いている...読み取れない箇所がある..."}},"text":"r"},{"bold":true,"obfuscated":true,"color":"aqua","hoverEvent":{"action":"show_text","value":{"text":"常に文字が蠢いている...読み取れない箇所がある..."}},"text":"s"},{"bold":true,"obfuscated":true,"color":"dark_aqua","hoverEvent":{"action":"show_text","value":{"text":"常に文字が蠢いている...読み取れない箇所がある..."}},"text":"!"},{"bold":true,"obfuscated":true,"color":"blue","hoverEvent":{"action":"show_text","value":{"text":"常に文字が蠢いている...読み取れない箇所がある..."}},"text":"?"},{"bold":true,"obfuscated":true,"color":"dark_purple","hoverEvent":{"action":"show_text","value":{"text":"常に文字が蠢いている...読み取れない箇所がある..."}},"text":"?"},{"color":"reset","text":"\\n"},{"bold":true,"strikethrough":true,"color":"gray","text":"                      "},{"color":"reset","text":"\\n"},{"color":"light_purple","text":"█"},{"obfuscated":true,"color":"reset","hoverEvent":{"action":"show_text","value":{"text":"高█発ま█ら"}},"text":"Material"},{"color":"reset","text":"…2 "},{"color":"red","text":"█"},{"obfuscated":true,"color":"reset","hoverEvent":{"action":"show_text","value":{"text":"エ█████サー"}},"text":"Material"},{"color":"reset","text":"…1\\n"},{"color":"gold","text":"█"},{"obfuscated":true,"color":"reset","hoverEvent":{"action":"show_text","value":{"text":"ネビュ█・ロッ█"}},"text":"Material"},{"color":"reset","text":"…1 "},{"color":"yellow","text":"█"},{"obfuscated":true,"color":"reset","hoverEvent":{"action":"show_text","value":{"text":"サン"}},"text":"Material"},{"color":"reset","text":"…2\\n"},{"color":"aqua","text":"█"},{"obfuscated":true,"color":"reset","hoverEvent":{"action":"show_text","value":{"text":"エスト█ーヤ"}},"text":"Material"},{"color":"reset","text":"…2 "},{"color":"green","text":"█"},{"obfuscated":true,"color":"reset","hoverEvent":{"action":"show_text","value":{"text":"ムー█"}},"text":"Material"},{"color":"reset","text":"…2\\n"},{"color":"dark_aqua","text":"█"},{"obfuscated":true,"color":"reset","hoverEvent":{"action":"show_text","value":{"text":"███ナ█弁当"}},"text":"Material"},{"color":"reset","text":"…1 "},{"color":"blue","text":"█"},{"obfuscated":true,"color":"reset","hoverEvent":{"action":"show_text","value":{"text":"禁断の██酒"}},"text":"Material"},{"color":"reset","text":"…1\\n"},{"color":"dark_purple","text":"█"},{"obfuscated":true,"color":"reset","hoverEvent":{"action":"show_text","value":{"text":"幸█の矢"}},"text":"Material"},{"color":"reset","text":"…4 \\n\\n"},{"bold":true,"strikethrough":true,"color":"gray","text":"                      "},{"color":"reset","text":"\\n"},{"color":"light_purple","text":"⬧ "},{"obfuscated":true,"color":"light_purple","text":"craft"},{"color":"reset","text":"\\n          "},{"color":"light_purple","text":"█"},{"color":"red","text":"█"},{"color":"gold","text":"█"},{"color":"reset","text":"\\n          "},{"color":"yellow","text":"█"},{"color":"aqua","text":"█"},{"color":"green","text":"█"},{"color":"reset","text":"\\n          "},{"color":"dark_aqua","text":"█"},{"color":"blue","text":"█"},{"color":"dark_purple","text":"█"}],"text":""}']}},{Slot:5b,id:"minecraft:torch",Count:32b},{Slot:6b,id:"minecraft:clock",Count:1b},{Slot:7b,id:"minecraft:cooked_mutton",Count:16b},{Slot:8b,id:"minecraft:clock",Count:1b}]} replace

# ゲームスタート検知値を初期値に
scoreboard players set Start Game 0

# 初期設定では追加設定がすべてonになってるのでonにしたときの設定を反映させる
# 時計島仕様変更による月島night固定無効化

# 時送りの盾give村人spawn
# debug時とかバグったりするんでkill


# タイマー用ボスバーどーん

# 発光用team(デフォルトで使ってるチームの色を変える)
team modify FriendlyTeam color red

# 時送りの盾初期データset
# player_item_tunner使うんで必要な量だけでいいです
data modify storage time_limit:storage shield_data set value {tag:{version:1,Enchantments: [{lvl: 0s, id: "minecraft:unbreaking"}, {lvl: 0s, id: "minecraft:knockback"}, {lvl: 0s, id: "minecraft:sharpness"}],AttributeModifiers: [{Amount: 0.00d, Slot: "offhand", AttributeName: "generic.max_health", Operation: 2, UUID: [I; 0, 2, 0, 1], Name: "HP"}, {Amount: 0.0d, Slot: "offhand", AttributeName: "generic.movement_speed", Operation: 2, UUID: [I; 0, 2, 0, 2], Name: "SPD"}, {Amount: 0.00d, Slot: "offhand", AttributeName: "generic.knockback_resistance", Operation: 2, UUID: [I; 0, 2, 0, 3], Name: "KB"}, {Amount: 0.00d, Slot: "offhand", AttributeName: "generic.attack_damage", Operation: 2, UUID: [I; 0, 2, 0, 4], Name: "ATK"}, {Amount: 0.00d, Slot: "offhand", AttributeName: "generic.armor", Operation: 2, UUID: [I; 0, 2, 0, 5], Name: "AMR"}, {Amount: 0.00d, Slot: "offhand", AttributeName: "generic.attack_speed", Operation: 2, UUID: [I; 0, 2, 0, 6], Name: "ATS"}, {Amount: 0.00d, Slot: "mainhand", AttributeName: "generic.max_health", Operation: 2, UUID: [I; 0, 1, 0, 7], Name: "HP"}, {Amount: 0.00d, Slot: "mainhand", AttributeName: "generic.movement_speed", Operation: 2, UUID: [I; 0, 1, 0, 8], Name: "SPD"}, {Amount: 0.00d, Slot: "mainhand", AttributeName: "generic.knockback_resistance", Operation: 2, UUID: [I; 0, 1, 0, 9], Name: "KB"}, {Amount: 0.00d, Slot: "mainhand", AttributeName: "generic.attack_damage", Operation: 2, UUID: [I; 0, 1, 0, 10], Name: "ATK"}, {Amount: 0.00d, Slot: "mainhand", AttributeName: "generic.armor", Operation: 2, UUID: [I; 0, 1, 0, 11], Name: "AMR"}, {Amount: 0.00d, Slot: "mainhand", AttributeName: "generic.attack_speed", Operation: 2, UUID: [I; 0, 1, 0, 12], Name: "ATS"}]}}
# data modify storage time_limit:storage shield_data set value {tag:{version:1,Enchantments: [{lvl: 0s, id: "minecraft:unbreaking"}, {lvl: 0s, id: "minecraft:knockback"}, {lvl: 0s, id: "minecraft:sharpness"}],AttributeModifiers: [{Amount: 0.00d, Slot: "offhand", AttributeName: "generic.max_health", Operation: 2, UUID: [I; 0, 12, 0, 1], Name: "HP"}, {Amount: 0.0d, Slot: "offhand", AttributeName: "generic.movement_speed", Operation: 2, UUID: [I; 0, 12, 0, 2], Name: "SPD"}, {Amount: 0.00d, Slot: "offhand", AttributeName: "generic.knockback_resistance", Operation: 2, UUID: [I; 0, 12, 0, 3], Name: "KB"}, {Amount: 0.00d, Slot: "offhand", AttributeName: "generic.attack_damage", Operation: 2, UUID: [I; 0, 12, 0, 4], Name: "ATK"}, {Amount: 0.00d, Slot: "offhand", AttributeName: "generic.armor", Operation: 2, UUID: [I; 0, 12, 0, 5], Name: "AMR"}, {Amount: 0.00d, Slot: "offhand", AttributeName: "generic.attack_speed", Operation: 2, UUID: [I; 0, 12, 0, 6], Name: "ATS"}, {Amount: 0.00d, Slot: "mainhand", AttributeName: "generic.max_health", Operation: 2, UUID: [I; 0, 11, 0, 7], Name: "HP"}, {Amount: 0.00d, Slot: "mainhand", AttributeName: "generic.movement_speed", Operation: 2, UUID: [I; 0, 11, 0, 8], Name: "SPD"}, {Amount: 0.00d, Slot: "mainhand", AttributeName: "generic.knockback_resistance", Operation: 2, UUID: [I; 0, 11, 0, 9], Name: "KB"}, {Amount: 0.00d, Slot: "mainhand", AttributeName: "generic.attack_damage", Operation: 2, UUID: [I; 0, 11, 0, 10], Name: "ATK"}, {Amount: 0.00d, Slot: "mainhand", AttributeName: "generic.armor", Operation: 2, UUID: [I; 0, 11, 0, 11], Name: "AMR"}, {Amount: 0.00d, Slot: "mainhand", AttributeName: "generic.attack_speed", Operation: 2, UUID: [I; 0, 11, 0, 12], Name: "ATS"}]}}

# tagが多分必要、、、? 
# msg
function time_limit:load/msg
# ここでdisableするとmsgでひっかかってわろた
datapack disable "TUSB_TimeLimit"
datapack enable "TUSB_TimeLimit" first