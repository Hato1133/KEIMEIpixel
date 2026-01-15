execute as @e[tag=fire_circle_marker_new] at @s run tp @s ^ ^ ^0.5
execute as @e[tag=fire_circle_marker_new] at @s run particle minecraft:copper_fire_flame ~ ~ ~ 0 0 0 0 10
execute as @e[tag=fire_circle_marker_new] at @s unless block ~ ~-0.6 ~ #minecraft:air run tag @s add fire_circle_marker_gnd
execute as @e[tag=fire_circle_marker_gnd] at @s run summon lightning_bolt ~ ~ ~
execute as @e[tag=fire_circle_marker_gnd] at @s run particle minecraft:large_smoke ~ ~0.1 ~ 0.2 0.2 0.2 0 20
execute as @e[tag=fire_circle_marker_gnd] at @s run place template fire_circle:fire_circle ~-6.5 ~ ~-6.5 none none 0.4 0
execute as @e[tag=fire_circle_marker_gnd] at @s run kill @s