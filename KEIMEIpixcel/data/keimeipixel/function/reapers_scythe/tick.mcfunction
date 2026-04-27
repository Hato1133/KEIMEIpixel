scoreboard objectives add reapers_scythe_cd dummy
execute as @a[tag=reapers_scythe_cd] at @s run scoreboard players add @s reapers_scythe_cd 1
execute as @a[scores={reapers_scythe_cd=80..}] at @s run tag @s remove reapers_scythe_cd
execute as @a[scores={reapers_scythe_cd=85..}] at @s run scoreboard players reset @s reapers_scythe_cd 
