execute as @s at @s anchored eyes run summon minecraft:marker ^ ^ ^ {OnGround:0b,Tags:["fire_circle_marker_new"]}
execute as @e[tag=fire_circle_marker_new,limit=1,sort=nearest] run data modify entity @s Rotation set from entity @p Rotation
advancement revoke @s only keimeipixel:use_firecircle
tag @s add fire_user
scoreboard players set @s fire_circle_load 0