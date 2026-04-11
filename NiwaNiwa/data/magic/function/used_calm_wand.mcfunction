particle white_ash ~ ~ ~ 4 3 4 0 10000 force @a
particle warped_spore ~ ~ ~ 4 3 4 0 1000 force @a
playsound minecraft:entity.generic.explode player @s ~ ~ ~
effect give @s speed 7 0
execute as @e[distance=0.1..6] at @s run scoreboard players set @s Ca_Wand 1

advancement revoke @s only magic:used_calm_wand
