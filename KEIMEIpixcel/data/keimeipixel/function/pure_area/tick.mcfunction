scoreboard objectives add pure_area_charged_value dummy
scoreboard objectives add pure_used dummy
execute as @e[type=armor_stand,tag=pure_area_center] at @s run scoreboard players add @s effect_timer 1
execute as @e[type=marker,tag=pure_area_effect_marker] at @s run scoreboard players add @s effect_timer 1
execute as @e[type=armor_stand,tag=pure_area_center,scores={effect_timer=..100}] at @s run summon marker ^ ^ ^2.5 {Tags:["pure_area_effect_marker"]}
execute as @e[type=armor_stand,tag=pure_area_center,scores={effect_timer=101}] at @s run tag @e[type=marker,tag=pure_area_effect_marker,distance=..2.6] add summon_success
execute as @e[type=marker,tag=pure_area_effect_marker] at @s run particle happy_villager ~ ~1 ~ 0 0 0 5 1 force @a
execute as @e[type=armor_stand,tag=pure_area_center,scores={effect_timer=100..300}] at @s run effect give @a[distance=..2.5] minecraft:regeneration 1 2 true
execute as @e[type=armor_stand,tag=pure_area_center,scores={effect_timer=100..300}] at @s run particle composter ~ ~ ~ 0 20 0 5 1 force @a
execute as @e[type=armor_stand,tag=pure_area_center,scores={effect_timer=300}] at @s run kill @s 
scoreboard players add @a[scores={pure_used=0..}] pure_used 1
execute as @a if score @s pure_used matches 2.. run function keimeipixel:pure_area/reset
execute as @e[type=marker,tag=pure_area_effect_marker,scores={effect_timer=300..}] run kill @s