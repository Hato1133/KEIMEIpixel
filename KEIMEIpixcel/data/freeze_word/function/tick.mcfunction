execute as @e[advancements={keimeipixel:use_freezesword=true},predicate=keimeipixel:have_freezesword] run say @a components
execute as @e[advancements={keimeipixel:use_firecircle=true},predicate=!keimeipixel:have_freezesword] run advancement revoke @s only keimeipixel:use_freezesword

scoreboard players remove @a[scores={useingtime=1..}] useingtime 1
scoreboard players add @a[scores={useingtime=1}] charge_value 1

execute as @a if score @s charge_value matches 2..5 as @s run title @s actionbar [{"text":"チャージ中: ","color":"gray"},{"text":"□□□□|□□□□|□","color":"gray"}]
execute as @a if score @s charge_value matches 6..10 as @s run title @s actionbar [{"text":"チャージ中: ","color":"aqua"},{"text":"▉□□□|□□□□|□","color":"aqua"}]
execute as @a if score @s charge_value matches 11..20 as @s run title @s actionbar [{"text":"チャージ中: ","color":"aqua"},{"text":"▉▉□□|□□□□|□","color":"aqua"}]
execute as @a if score @s charge_value matches 21..30 as @s run title @s actionbar [{"text":"チャージ中: ","color":"aqua"},{"text":"▉▉▉□|□□□□|□","color":"aqua"}]
execute as @a if score @s charge_value matches 31..40 as @s run title @s actionbar [{"text":"チャージ中: ","color":"aqua"},{"text":"▉▉▉▉|□□□□|□","color":"aqua"}]
execute as @a if score @s charge_value matches 41..50 as @s run title @s actionbar [{"text":"チャージ中: ","color":"yellow"},{"text":"▉▉▉▉|▉□□□|□","color":"yellow"}]
execute as @a if score @s charge_value matches 51..60 as @s run title @s actionbar [{"text":"チャージ中: ","color":"yellow"},{"text":"▉▉▉▉|▉▉□□|□","color":"yellow"}]
execute as @a if score @s charge_value matches 61..70 as @s run title @s actionbar [{"text":"チャージ中: ","color":"yellow"},{"text":"▉▉▉▉|▉▉▉□|□","color":"yellow"}]
execute as @a if score @s charge_value matches 71..140 as @s run title @s actionbar [{"text":"チャージ中: ","color":"yellow"},{"text":"▉▉▉▉|▉▉▉▉|□","color":"yellow"}]
execute as @a if score @s charge_value matches 141.. as @s run title @s actionbar [{"text":"チャージ中: ","color":"red"},{"text":"▉▉▉▉|▉▉▉▉|▉","color":"red"}]
execute as @a if score @s charge_value matches ..3 as @s run title @s clear


scoreboard objectives add effect_timer dummy

#charge_10-40
execute as @a[scores={useingtime=0}] at @s if score @s charge_value matches 10..40 run function freeze_word:sword_magics/charge_10-40
execute as @e[tag=damaged_10-40] run scoreboard players add @s effect_timer 1
execute as @e[tag=damaged_10-40,type=!marker] at @s run particle minecraft:snowflake ~ ~1 ~ 0.3 0.3 0.3 0.01 5 force @a
execute as @e[tag=damaged_10-40] at @s run tag @s remove damaged_10-40
execute as @e[tag=damaged_10-40] if score @s effect_timer matches 100.. run scoreboard players set @s effect_timer 0

#charge_41-80
execute as @a[scores={useingtime=0}] at @s if score @s charge_value matches 41..80 run function freeze_word:sword_magics/charge_41-80
execute as @e[tag=damaged_41-80] run scoreboard players add @s effect_timer 1
execute as @e[tag=damaged_41-80,type=!marker] at @s run particle minecraft:snowflake ~ ~1 ~ 0.3 0.3 0.3 0.01 5 force @a
execute as @e[tag=damaged_41-80] if score @s effect_timer matches 160.. at @s run tag @s remove damaged_41-80
execute as @e[tag=damaged_41-80] if score @s effect_timer matches 160.. run scoreboard players set @s effect_timer 0

#charge_81-140
execute as @a[scores={useingtime=0}] at @s if score @s charge_value matches 81..140 run function freeze_word:sword_magics/charge_81-140
execute as @e[tag=damaged_81-140] run scoreboard players add @s effect_timer 1
execute as @e[tag=damaged_81-140,type=!marker] at @s run particle minecraft:snowflake ~ ~1 ~ 0.3 0.3 0.3 0.01 5 force @a
execute as @e[tag=damaged_81-140] if score @s effect_timer matches 100.. run tag @s remove damaged_81-140
execute as @e[tag=damaged_81-140] if score @s effect_timer matches 100.. run scoreboard players set @s effect_timer 0
execute as @e[tag=freeze_sword_ice_marker,type=marker] run scoreboard players add @s effect_timer 1
execute as @e[tag=freeze_sword_ice_marker,type=marker] at @s if score @s effect_timer matches 200.. run fill ~ ~ ~ ~ ~2 ~ minecraft:air replace minecraft:blue_ice
execute as @e[tag=freeze_sword_ice_marker,type=marker,scores={effect_timer=200..}] run kill @s

#overload
execute as @a[scores={useingtime=0}] at @s if score @s charge_value matches 141.. run function freeze_word:sword_magics/charge_overload
execute as @e[tag=damaged_overload] run scoreboard players add @s effect_timer 1
execute as @a[tag=damaged_overload] at @s run particle minecraft:snowflake ~ ~1 ~ 0.5 0.5 0.5 0.02 10 force @a
execute as @e[tag=damaged_overload] if score @s effect_timer matches 100.. at @s run tag @s remove damaged_overload
execute as @e[tag=damaged_overload] if score @s effect_timer matches 100.. run scoreboard players set @s effect_timer 0