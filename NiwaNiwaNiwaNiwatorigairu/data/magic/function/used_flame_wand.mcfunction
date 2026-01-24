execute as @e[distance=0.1..5] at @s run damage @s 6 minecraft:generic by @a[limit=1,sort=nearest]
particle minecraft:flame ~ ~-0.5 ~ 4 1 4 0.3 3000 force @a
particle minecraft:lava ~ ~-0.5 ~ 4 1 4 0.3 1000 force @a
playsound minecraft:entity.generic.explode player @s ~ ~1 ~
effect give @s fire_resistance 20 1

advancement revoke @s only magic:used_flame_wand
