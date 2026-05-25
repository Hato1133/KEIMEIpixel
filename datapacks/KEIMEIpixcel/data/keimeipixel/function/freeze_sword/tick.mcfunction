# freeze_sword tick function

# advancement cleanup
execute as @e[advancements={keimeipixel:use_freezesword=true},predicate=keimeipixel:have_freezesword] run say @a components
execute as @e[advancements={keimeipixel:use_firecircle=true},predicate=!keimeipixel:have_freezesword] run advancement revoke @s only keimeipixel:use_freezesword

# 使用中チャージ処理
scoreboard players remove @a[scores={useingtime=1..}] useingtime 1
scoreboard players add @a[scores={useingtime=1}] charge_value 1

# チャージ量に応じたアクションバー表示
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

# effect_timer 追跡用
scoreboard objectives add effect_timer dummy

# charge_10-40
execute as @a[scores={useingtime=0,charge_value=10..40}] at @s if score @s charge_value matches 10..40 run function keimeipixel:freeze_sword/sword_magics/charge_10-40
execute as @e[tag=damaged_10-40] run scoreboard players add @s effect_timer 1
execute as @e[tag=damaged_10-40,type=!marker] at @s run particle minecraft:snowflake ~ ~1 ~ 0.3 0.3 0.3 0.01 5 force @a
execute as @e[tag=damaged_41-80] if score @s effect_timer matches 160.. run function keimeipixel:freeze_sword/timer_reset/charge_10-40_end

# charge_41-80
execute as @a[scores={useingtime=0,charge_value=41..80}] at @s if score @s charge_value matches 41..80 run function keimeipixel:freeze_sword/sword_magics/charge_41-80
execute as @e[tag=damaged_41-80] run scoreboard players add @s effect_timer 1
execute as @e[tag=damaged_41-80,type=!marker] at @s run particle minecraft:snowflake ~ ~1 ~ 0.3 0.3 0.3 0.01 5 force @a
execute as @e[tag=damaged_41-80] if score @s effect_timer matches 160.. run function keimeipixel:freeze_sword/timer_reset/charge_41-80_end


# charge_81-140
execute as @a[scores={useingtime=0,charge_value=81..140}] at @s if score @s charge_value matches 81..140 run function keimeipixel:freeze_sword/sword_magics/charge_81-140
execute as @e[tag=damaged_81-140] run scoreboard players add @s effect_timer 1
execute as @e[tag=damaged_81-140,type=!marker] at @s run particle minecraft:snowflake ~ ~1 ~ 0.3 0.3 0.3 0.01 5 force @a
execute as @e[tag=damaged_81-140] if score @s effect_timer matches 100.. run function keimeipixel:freeze_sword/timer_reset/charge_81-140_end


# ice marker cleanup
execute as @e[tag=freeze_sword_ice_marker] run scoreboard players add @s effect_timer 1
execute as @e[tag=freeze_sword_ice_marker] at @s if score @s effect_timer matches 200.. run fill ~ ~ ~ ~ ~2 ~ minecraft:air replace minecraft:ice
execute as @e[tag=freeze_sword_ice_marker,scores={effect_timer=200..}] run kill @s

# overload
execute as @a[scores={useingtime=0,charge_value=141..}] at @s if score @s charge_value matches 141.. run function keimeipixel:freeze_sword/sword_magics/charge_overload
execute as @e[tag=damaged_overload] run scoreboard players add @s effect_timer 1
execute as @e[tag=damaged_overload] at @s run particle minecraft:snowflake ~ ~1 ~ 0.5 0.5 0.5 0.02 10 force @a[distance=..12]
execute as @e[tag=damaged_overload] if score @s effect_timer matches 100.. at @s run tag @s remove damaged_overload
execute as @e[tag=damaged_overload] if score @s effect_timer matches 100.. run scoreboard players reset @s effect_timer