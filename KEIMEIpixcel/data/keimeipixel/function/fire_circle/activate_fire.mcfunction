execute as @s[tag=!fire_user] at @s anchored eyes run summon minecraft:marker ^ ^ ^ {OnGround:0b,Tags:["fire_circle_marker_new"]}
execute as @e[tag=fire_circle_marker_new,limit=1,sort=nearest] run data modify entity @s Rotation set from entity @p Rotation
execute as @s[tag=fire_user,scores={replace_timer=10..}] at @s run tellraw @s [{"text":"クールダウン中","color":"red"}]
advancement revoke @s only keimeipixel:use_firecircle
tag @s add fire_user