#> tusb_remake:skill/knight/reactive_heal/heal
### リアクティブヒールの効果
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

playsound entity.player.levelup master @a[distance=..16] ~ ~ ~ 1 1.88 0
particle heart ~ ~1 ~ 0.5 0.5 0.5 0 30 force

execute if score @s ActivatedSkill matches 1260..1269 run scoreboard players add @s HealCount 150
