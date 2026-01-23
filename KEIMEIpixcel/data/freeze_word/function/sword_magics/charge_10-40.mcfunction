execute as @a[scores={useingtime=0}] at @s run tag @e[distance=..5,type=!player] add damaged_10-40
execute as @e[tag=damaged_10-40] run scoreboard players set @s effect_timer 0
scoreboard players set @a charge_value 0
effect give @e[tag=damaged_10-40] slowness 5 3 false
playsound entity.breeze.shoot master @a ~ ~ ~ 10 1 0.5 