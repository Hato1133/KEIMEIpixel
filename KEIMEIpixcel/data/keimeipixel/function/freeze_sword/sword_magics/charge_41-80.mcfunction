execute as @a[scores={useingtime=0}] at @s run tag @e[distance=..8,type=!player] add damaged_41-80
execute as @e[tag=damaged_41-80,distance=..8,type=!player] run scoreboard players set @s effect_timer 0
scoreboard players set @a charge_value 0
effect give @e[tag=damaged_41-80,distance=..8,type=!player] slowness 8 3 false
execute as @e[tag=damaged_41-80,distance=..8,type=!player] run damage @s 6 freeze by @s
playsound entity.breeze.shoot master @a ~ ~ ~ 10 1 0.5 