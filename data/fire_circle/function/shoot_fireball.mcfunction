execute as @e[type=minecraft:marker,tag=fire_circle_marker_new] at @s run tp @s ^ ^ ^0.5
execute as @e[type=minecraft:marker,tag=fire_circle_marker_new] at @s run particle minecraft:copper_fire_flame ~ ~ ~ 0 0 0 0 10
execute as @e[type=minecraft:marker,tag=fire_circle_marker,nbt={OnGround:1b}] run tag @s add fire_circle_marker_gnd
execute as @e[type=minecraft:marker,tag=fire_circle_marker_gnd] at @s run summon lightning_bolt ~ ~ ~
execute as @e[type=minecraft:marker,tag=fire_circle_marker_gnd] at @s run particle minecraft:large_smoke ~ ~0.1 ~ 0.2 0.2 0.2 0 20
execute at @e[type=minecraft:marker,tag=fire_circle_marker_gnd] run place template fire_circle:fire_circle ~-6 ~ ~-6 none none 0.4 0 strict 
execute as @e[type=minecraft:marker,tag=fire_circle_marker_gnd] run kill @s