effect give @s[tag=!eartharmor_user] slowness 10 3 true
effect give @s[tag=!eartharmor_user] resistance 10 3 true
execute as @s[tag=eartharmor_user,scores={eartharmor_replace=10..}] at @s run tellraw @s [{"text":"クールダウン中","color":"red"}]
advancement revoke @s only keimeipixel:use_eartharmor
tag @s add eartharmor_user
scoreboard players set @s[tag=!eartharmor_user] eartharmor_replace 0
