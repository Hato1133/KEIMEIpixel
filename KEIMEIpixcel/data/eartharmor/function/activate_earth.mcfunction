tellraw @s {"text":"cooltime is 20s","color":"yellow"}
effect give @s slowness 10 3 true
effect give @s resistance 10 3 true
advancement revoke @s only eartharmor:use_eartharmor
scoreboard players set @s eartharmor_replace 0
tag @s add eartharmor_user
