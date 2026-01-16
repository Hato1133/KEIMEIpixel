# 爆発 (ExplosionRadius調整可、gamerule mobGriefing falseでブロック無傷)
summon creeper ~ ~ ~ {Fuse:0b,ExplosionRadius:4b,ignited:1b,Silent:1b,NoGravity:1b,Invulnerable:1b}
particle minecraft:explosion ~ ~1 ~ 2 2 2 0.1 20
playsound minecraft:entity.generic.explode master @a ~ ~ ~ 1 1
kill @s