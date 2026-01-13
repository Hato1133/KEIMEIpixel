summon minecraft:marker ^ ^1.75 ^1 {OnGround:0b,Tags:["fire_circle_marker_new"]}
execute as @e[tag=fire_circle_marker_new,limit=1,sort=nearest] run data modify entity @s Rotation set from entity @p Rotation
schedule function fire_circle:activate_fire2 20t
advancement revoke @s only fire_circle:use_firecircle