scoreboard objectives add reapers_scythe_cd dummy
execute as @a[tag=reapers_scythe_cd] at @s run scoreboard players add @s reapers_scythe_cd 1
execute as @a[scores={reapers_scythe_cd=0..}] at @s run tag @s remove reapers_scythe_cd
execute as @a[scores={reapers_scythe_cd=5..}] at @s run scoreboard players reset @s reapers_scythe_cd 
execute as @e[nbt={inGround:1b},tag=dash_arrow] run kill @s
