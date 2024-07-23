#> tusb_remake:skill/black_mage/drain/player
# ドレインで吸う側
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### 


execute if score _ ActivatedSkill matches 5260..5269 run scoreboard players add @s HealCount 40
execute if score _ ActivatedSkill matches 5260..5269 run scoreboard players add @s MP 100
