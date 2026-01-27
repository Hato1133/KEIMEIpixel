scoreboard objectives add pure_area_timer dummy
scoreboard objectives add pure_area_charged_value dummy
execute as @a[tag=pure_area_user] run scoreboard players add @s pure_area_timer 1
execute as @e[type=armor_stand,tag=pure_area_center] at @s run scoreboard players add @s effect_timer 1
execute as @e[type=marker,tag=summon_success] run scoreboard players add @s effect_timer 1
execute as @e[type=armor_stand,tag=pure_area_center,scores={effect_timer=101}] at @s run tag @e[type=marker,tag=pure_area_effect_marker,distance=..2.6] add summon_success
execute as @e[type=armor_stand,tag=pure_area_center,scores={effect_timer=100}] run tag @s remove pure_area_center
execute as @e[type=marker,tag=summon_success,scores={effect_timer=200..}] run kill @s
execute as @e[type=armor_stand,tag=pure_area_center,scores={effect_timer=..100}] at @s run summon marker ^ ^ ^2.5 {Tags:["pure_area_effect_marker"]}
execute as @e[type=marker,tag=pure_area_effect_marker] at @s run particle happy_villager ~ ~1 ~ 0 0 0 5 1 force @a
execute as @e[type=armor_stand,tag=pure_area_center,scores={effect_timer=100..300}] at @s run effect give @a[distance=..2.5] minecraft:regeneration 1 2 true
execute as @e[type=armor_stand,tag=pure_area_center,scores={effect_timer=100..300}] at @s run particle composter ~ ~ ~ 0 20 0 5 1 force @a
execute as @e[type=armor_stand,tag=pure_area_center,scores={effect_timer=300}] at @s run kill @s 
