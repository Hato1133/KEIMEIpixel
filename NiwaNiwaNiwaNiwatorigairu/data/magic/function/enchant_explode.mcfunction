execute as @e[distance=0.1..2.5] at @s run damage @s 8 minecraft:generic by @a[limit=1,sort=nearest]
particle minecraft:explosion ~ ~1 ~ 1 1 1 0.7 5 force @a
particle minecraft:poof ~ ~1 ~ 0 0 0 0.7 200 force @a
particle minecraft:smoke ~ ~1 ~ 0 0 0 0.7 100 force @a
