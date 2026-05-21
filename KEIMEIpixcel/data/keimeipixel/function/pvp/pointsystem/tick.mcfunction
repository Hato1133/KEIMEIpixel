execute as @e[nbt={Item:{components:{"minecraft:custom_data":{ib:{Id:"iron_ingot_normal"}}}}}] if entity @e[tag=red_gole] run scoreboard players add @s red_teampoints 1
execute as @e[nbt={Item:{components:{"minecraft:custom_data":{ib:{Id:"iron_ingot_normal"}}}}}] if entity @e[tag=red_gole]run kill @s

