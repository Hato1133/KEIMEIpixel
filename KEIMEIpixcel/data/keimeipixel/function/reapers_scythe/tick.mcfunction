scoreboard objectives add reapers_scythe_cd dummy
execute as @a[tag=reapers_scythe_cd] at @s run scoreboard players add @s reapers_scythe_cd 1

execute as @e[nbt={inGround:1b},tag=dash_arrow] run kill @s
execute as @e[tag=dash_arrow] at @s run particle minecraft:smoke ~ ~ ~ 0 0 0 0 1

execute as @a[predicate=keimeipixel:have_reapers_scythe] at @s run tag @s add having_reapers_scythe
execute as @a[predicate=!keimeipixel:have_reapers_scythe] at @s run tag @s remove having_reapers_scythe

execute as @a[predicate=!keimeipixel:have_reapers_scythe,scores={reapers_scythe_cd=1..}] at @s run title @s actionbar [{"text":""}]

execute as @a[predicate=keimeipixel:have_reapers_scythe,scores={reapers_scythe_cd=1..2}] at @s run title @s actionbar [{"text":"|||||||||||||||||||||||||","color":"green"}]
execute as @a[predicate=keimeipixel:have_reapers_scythe,scores={reapers_scythe_cd=3..5}] at @s run title @s actionbar [{"text":"|||||||||||||||||||||||","color":"green"},{"text":"|","color":"gray"}]
execute as @a[predicate=keimeipixel:have_reapers_scythe,scores={reapers_scythe_cd=6..8}] at @s run title @s actionbar [{"text":"||||||||||||||||||||||","color":"green"},{"text":"||","color":"gray"}]
execute as @a[predicate=keimeipixel:have_reapers_scythe,scores={reapers_scythe_cd=9..10}] at @s run title @s actionbar [{"text":"|||||||||||||||||||||","color":"green"},{"text":"|||","color":"gray"}]
execute as @a[predicate=keimeipixel:have_reapers_scythe,scores={reapers_scythe_cd=11..12}] at @s run title @s actionbar [{"text":"||||||||||||||||||||","color":"green"},{"text":"||||","color":"gray"}]
execute as @a[predicate=keimeipixel:have_reapers_scythe,scores={reapers_scythe_cd=13..15}] at @s run title @s actionbar [{"text":"|||||||||||||||||||","color":"green"},{"text":"|||||","color":"gray"}]
execute as @a[predicate=keimeipixel:have_reapers_scythe,scores={reapers_scythe_cd=16..17}] at @s run title @s actionbar [{"text":"||||||||||||||||||","color":"green"},{"text":"||||||","color":"gray"}]
execute as @a[predicate=keimeipixel:have_reapers_scythe,scores={reapers_scythe_cd=18..20}] at @s run title @s actionbar [{"text":"|||||||||||||||||","color":"green"},{"text":"|||||||","color":"gray"}]
execute as @a[predicate=keimeipixel:have_reapers_scythe,scores={reapers_scythe_cd=21..22}] at @s run title @s actionbar [{"text":"||||||||||||||||","color":"green"},{"text":"||||||||","color":"gray"}]
execute as @a[predicate=keimeipixel:have_reapers_scythe,scores={reapers_scythe_cd=23..25}] at @s run title @s actionbar [{"text":"|||||||||||||||","color":"green"},{"text":"|||||||||","color":"gray"}]
execute as @a[predicate=keimeipixel:have_reapers_scythe,scores={reapers_scythe_cd=26..27}] at @s run title @s actionbar [{"text":"||||||||||||||","color":"green"},{"text":"||||||||||","color":"gray"}]
execute as @a[predicate=keimeipixel:have_reapers_scythe,scores={reapers_scythe_cd=28..30}] at @s run title @s actionbar [{"text":"|||||||||||||","color":"green"},{"text":"|||||||||||","color":"gray"}]
execute as @a[predicate=keimeipixel:have_reapers_scythe,scores={reapers_scythe_cd=31..32}] at @s run title @s actionbar [{"text":"||||||||||||","color":"green"},{"text":"||||||||||||","color":"gray"}]
execute as @a[predicate=keimeipixel:have_reapers_scythe,scores={reapers_scythe_cd=33..35}] at @s run title @s actionbar [{"text":"|||||||||||","color":"green"},{"text":"|||||||||||||","color":"gray"}]
execute as @a[predicate=keimeipixel:have_reapers_scythe,scores={reapers_scythe_cd=36..37}] at @s run title @s actionbar [{"text":"||||||||||","color":"green"},{"text":"||||||||||||||","color":"gray"}]
execute as @a[predicate=keimeipixel:have_reapers_scythe,scores={reapers_scythe_cd=38..40}] at @s run title @s actionbar [{"text":"|||||||||","color":"green"},{"text":"|||||||||||||||","color":"gray"}]
execute as @a[predicate=keimeipixel:have_reapers_scythe,scores={reapers_scythe_cd=41..42}] at @s run title @s actionbar [{"text":"||||||||","color":"green"},{"text":"||||||||||||||||","color":"gray"}]
execute as @a[predicate=keimeipixel:have_reapers_scythe,scores={reapers_scythe_cd=43..45}] at @s run title @s actionbar [{"text":"|||||||","color":"green"},{"text":"|||||||||||||||||","color":"gray"}]
execute as @a[predicate=keimeipixel:have_reapers_scythe,scores={reapers_scythe_cd=46..47}] at @s run title @s actionbar [{"text":"||||||","color":"green"},{"text":"||||||||||||||||||","color":"gray"}]
execute as @a[predicate=keimeipixel:have_reapers_scythe,scores={reapers_scythe_cd=48..50}] at @s run title @s actionbar [{"text":"|||||","color":"green"},{"text":"|||||||||||||||||||","color":"gray"}]
execute as @a[predicate=keimeipixel:have_reapers_scythe,scores={reapers_scythe_cd=51..52}] at @s run title @s actionbar [{"text":"||||","color":"green"},{"text":"||||||||||||||||||||","color":"gray"}]
execute as @a[predicate=keimeipixel:have_reapers_scythe,scores={reapers_scythe_cd=53..55}] at @s run title @s actionbar [{"text":"|||","color":"green"},{"text":"|||||||||||||||||||||","color":"gray"}]
execute as @a[predicate=keimeipixel:have_reapers_scythe,scores={reapers_scythe_cd=56..57}] at @s run title @s actionbar [{"text":"||","color":"green"},{"text":"||||||||||||||||||||||","color":"gray"}]
execute as @a[predicate=keimeipixel:have_reapers_scythe,scores={reapers_scythe_cd=58..59}] at @s run title @s actionbar [{"text":"|","color":"green"},{"text":"|||||||||||||||||||||||","color":"gray"}]
execute as @a[predicate=keimeipixel:have_reapers_scythe,scores={reapers_scythe_cd=60..99}] at @s run title @s actionbar [{"text":"|||||||||||||||||||||||","color":"gray"}]
execute as @a[predicate=keimeipixel:have_reapers_scythe,scores={reapers_scythe_cd=60..99}] at @s run title @s actionbar [{"text":""}]
execute as @a[scores={reapers_scythe_cd=60..99}] at @s run tag @s remove reapers_scythe_cd
execute as @a[scores={reapers_scythe_cd=60..99}] at @s run scoreboard players reset @s reapers_scythe_cd 