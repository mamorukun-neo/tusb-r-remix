execute as @s at @e[type=#tusb_remake:mob,distance=..30,limit=1,sort=nearest] run summon creeper ~ ~ ~ {Tags:["CooldownRequired","TypeChecked","FinalPoint"],powered:0b,PortalCooldown:220,ExplosionRadius:0,Fuse:20,NoAI:1b,Silent:1b,Glowing:1b,Team:"FriendlyTeam",Invulnerable:1b,ActiveEffects:[{Id:14,Amplifier:127,Duration:20000,ShowParticles:0b}]}
execute as @e[tag=FinalPoint] at @e[type=#tusb_remake:mob,distance=..30] run schedule function tusb_remake:skill/summoner/katatoro/hit 1s