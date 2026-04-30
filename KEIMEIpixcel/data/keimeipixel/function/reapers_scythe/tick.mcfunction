scoreboard objectives add reapers_scythe_cd dummy
execute as @a[tag=reapers_scythe_cd] at @s run scoreboard players add @s reapers_scythe_cd 1

execute as @e[nbt={inGround:1b},tag=dash_arrow] run kill @s
execute as @e[tag=dash_arrow] at @s run particle minecraft:smoke ~ ~ ~ 0 0 0 0 1

execute as @a[predicate=keimeipixel:have_reapers_scythe] at @s run tag @s add having_reapers_scythe
execute as @a[predicate=!keimeipixel:have_reapers_scythe] at @s run tag @s remove having_reapers_scythe
function keimeipixel:players/countdown/3_second {predicate:have_reapers_scythe,score_board:reapers_scythe_cd}

execute as @a[scores={reapers_scythe_cd=60..99}] at @s run tag @s remove reapers_scythe_cd
execute as @a[scores={reapers_scythe_cd=60..99}] at @s run scoreboard players reset @s reapers_scythe_cd 