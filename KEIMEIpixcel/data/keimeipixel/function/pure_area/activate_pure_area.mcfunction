scoreboard players add @s pure_area_charged_value 1
scoreboard players set @s pure_used 0
execute as @s[scores={pure_area_charged_value=1}] run summon armor_stand ~ ~ ~ {Tags:["pure_area_center"]}
execute as @s[scores={pure_area_charged_value=1..}] run tag @s add pure_area_user
execute as @e[type=armor_stand,tag=pure_area_center,scores={effect_timer=..100}] at @s run tp @s ~ ~ ~ ~3.6 ~
execute as @s[scores={pure_area_charged_value=100}] run scoreboard players reset @s pure_area_charged_value


advancement revoke @s only keimeipixel:use_pure_area