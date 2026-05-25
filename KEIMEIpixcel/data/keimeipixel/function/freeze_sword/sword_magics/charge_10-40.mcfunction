tag @e[distance=..5,type=!player,type=!marker] add damaged_10-40
execute as @e[tag=damaged_10-40] run scoreboard players set @s effect_timer 0
scoreboard players reset @s charge_value
effect give @e[tag=damaged_10-40] slowness 5 3 false
playsound entity.breeze.shoot master @a ~ ~ ~ 10 1 0.5 