summon minecraft:marker ^ ^1.75 ^ {OnGround:0b,Tags:["fire_circle_marker_new"]}
execute as @e[tag=fire_circle_marker_new,limit=1,sort=nearest] run data modify entity @s Rotation set from entity @p Rotation
advancement revoke @s only fire_circle:use_firecircle
tag @s add fire_user
scoreboard players set @s fire_circle_load 0