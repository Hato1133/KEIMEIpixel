execute as @a[scores={useingtime=0}] at @s run tag @e[distance=..8,type=!player] add damaged_81-140
execute as @e[tag=damaged_81-140,distance=..8,type=!player] run scoreboard players set @s effect_timer 0
scoreboard players set @a charge_value 0
effect give @e[tag=damaged_81-140,distance=..8,type=!player] slowness 5 20 false
execute as @e[tag=damaged_81-140,distance=..8,type=!player] run damage @s 10 freeze at ~ ~ ~
execute as @e[tag=damaged_81-140,distance=..8,type=!player] at @s run fill ~ ~ ~ ~ ~2 ~ minecraft:ice keep
execute as @e[tag=damaged_81-140,distance=..8,type=!player] at @s run summon marker ~ ~ ~ {Tags:["freeze_sword_ice_marker"]}
playsound entity.breeze.wind_burst master @a ~ ~ ~ 10 1 0.5 
playsound block.glass.break master @a ~ ~ ~ 10 1 0.5