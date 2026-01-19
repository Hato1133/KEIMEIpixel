#soul
effect give @e[tag=soul] invisibility 1 1 true
execute as @e[tag=soul] at @s run particle minecraft:soul_fire_flame ~ ~0.5 ~
effect give @e[tag=soul] strength 1 0 true
execute as @e[tag=soul] at @s run attribute @s follow_range base set 24

#loot_table/devastated_ruins
execute as @e[tag=devastated_ruins] at @s run data modify block ~ ~-1 ~ LootTable set value "magic:devastated_ruins"
kill @e[tag=devastated_ruins]
