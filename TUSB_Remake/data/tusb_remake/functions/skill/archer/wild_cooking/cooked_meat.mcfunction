#> tusb_remake:skill/archer/wild_cooking/cooked_meat
# 焼肉を焼く
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

execute store result score _ TUSB run clear @s #tusb_remake:cooked_meat 1
execute if score _ TUSB matches 1.. run give @s minecraft:rotten_flesh{display:{Name:'"§r焼き過ぎた肉"'}} 1
execute if score _ TUSB matches 1.. run data modify storage tusb_remake: cooked_state set value "bad"
