execute as @e[distance=..2.5,tag=!EnEx_Attacer] at @s run damage @s 8 minecraft:generic by @p
tag @e[distance=..5] remove EnEx_Attacer
particle minecraft:explosion ~ ~1 ~ 1 1 1 0.7 5 force @a
particle minecraft:poof ~ ~1 ~ 0 0 0 0.7 200 force @a
particle minecraft:smoke ~ ~1 ~ 0 0 0 0.7 100 force @a