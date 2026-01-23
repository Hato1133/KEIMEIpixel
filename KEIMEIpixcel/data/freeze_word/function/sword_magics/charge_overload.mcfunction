execute as @a[scores={useingtime=0}] at @s run tag @s add damaged_overload
scoreboard players set @a charge_value 0
effect give @e[tag=damaged_overload] slowness 8 5 false
damage @s 6 freeze by @s
playsound entity.breeze.wind_burst master @a ~ ~ ~ 10 1 0.5