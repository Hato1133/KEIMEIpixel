$execute as @e[tag=$(Block_ID),type=marker] at @s if block ~ ~ ~ air unless entity @e[distance=0.1..0.5,type=item_display] run summon interaction ~ ~ ~ {width:$(width),height:$(height),Tags:[$(Block_ID)]}
$execute as @e[tag=$(Block_ID),type=marker] at @s if block ~ ~ ~ air unless entity @e[distance=0.1..0.5,type=item_display] run summon item_display ~ ~ ~ \
{Tags:[$(Block_ID)],id:"minecraft:item_display",item:{id:"minecraft:chicken_spawn_egg",components:{"minecraft:custom_model_data":{strings:[$(Block_ID)]}}}}
$execute as @e[tag=$(Block_ID),type=marker] at @s if entity @a[sort=nearest,y_rotation=-45..45] run tp @s ~ ~ ~ 0 0
$execute as @e[tag=$(Block_ID),type=marker] at @s if entity @a[sort=nearest,y_rotation=45..135] run tp @s ~ ~ ~ 90 0
$execute as @e[tag=$(Block_ID),type=marker] at @s if entity @a[sort=nearest,y_rotation=135..-135] run tp @s ~ ~ ~ 180 0
$execute as @e[tag=$(Block_ID),type=marker] at @s if entity @a[sort=nearest,y_rotation=-135..-45] run tp @s ~ ~ ~ -90 0
$execute as @e[type=item_display,tag=$(Block_ID)] at @s rotated as @e[tag=$(Block_ID),type=marker,sort=nearest,distance=..0.1] run tp @s ~ ~0.5 ~ ~ ~
$kill @e[tag=$(Block_ID),type=marker]
$execute as @e[tag=$(Block_ID),type=interaction] at @s if data entity @s attack run kill @s
$execute as @e[type=item_display,tag=$(Block_ID)] at @s if block ~ ~ ~ air positioned ~ ~-0.5 ~ unless entity @e[type=minecraft:interaction,distance=..0.1] run kill @s
