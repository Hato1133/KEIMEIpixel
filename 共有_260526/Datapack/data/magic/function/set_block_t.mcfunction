$tag @e[tag=$(Block_ID),type=marker] add $(y_rotation)
$tag @e[tag=$(Block_ID),type=marker] add $(x_rotation)
$execute as @e[tag=$(Block_ID),type=marker] at @s if block ~ ~ ~ air unless entity @e[distance=0.1..0.5] run setblock ~ ~ ~ light_gray_stained_glass
$execute as @e[tag=$(Block_ID),type=marker] at @s if block ~ ~ ~ water unless entity @e[distance=0.1..0.5] run setblock ~ ~ ~ light_gray_stained_glass
$execute as @e[tag=$(Block_ID),type=marker] at @s if block ~ ~ ~ light_gray_stained_glass run summon item_display ~ ~ ~ \
{Tags:[$(Block_ID)],item:{id:"minecraft:chicken_spawn_egg",components:{"minecraft:custom_model_data":{strings:[$(Block_ID)]}}}}
$execute as @e[tag=$(Block_ID),type=marker] at @s if entity @a[sort=nearest] run tp @s ~ ~ ~ 0 0
execute as @e[tag=y_90] at @s if entity @a[sort=nearest,y_rotation=-45..45] run tp @s ~ ~ ~ 0 ~
execute as @e[tag=y_90] at @s if entity @a[sort=nearest,y_rotation=45..135] run tp @s ~ ~ ~ 90 ~
execute as @e[tag=y_90] at @s if entity @a[sort=nearest,y_rotation=135..-135] run tp @s ~ ~ ~ 180 ~
execute as @e[tag=y_90] at @s if entity @a[sort=nearest,y_rotation=-135..-45] run tp @s ~ ~ ~ -90 ~
execute as @e[tag=x_90] at @s if entity @a[sort=nearest,x_rotation=70..90] run tp @s ~ ~ ~ ~ 90
execute as @e[tag=x_90] at @s if entity @a[sort=nearest,x_rotation=-90..-70] run tp @s ~ ~ ~ ~ -90
$execute as @e[type=item_display,tag=$(Block_ID)] at @s rotated as @e[tag=$(Block_ID),type=marker,sort=nearest,distance=..0.1] run tp @s ~ ~0.5 ~ ~ ~
$kill @e[tag=$(Block_ID),type=marker]
#kill_t_f
$execute as @e[type=item_display,tag=$(Block_ID)] at @s if block ~ ~ ~ air positioned ~ ~-0.5 ~ unless entity @e[type=minecraft:interaction,distance=..0.1] run kill @s
