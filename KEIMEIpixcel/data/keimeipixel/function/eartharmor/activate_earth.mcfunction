tellraw @s {"text":"cooltime is 20s","color":"yellow"}
effect give @s slowness 10 3 true
effect give @s resistance 10 3 true
advancement revoke @s only keimeipixel:use_eartharmor
tag @s add eartharmor_user
scoreboard players set @s eartharmor_replace 0
