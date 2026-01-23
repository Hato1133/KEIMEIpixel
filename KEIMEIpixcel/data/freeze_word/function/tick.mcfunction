execute as @e[advancements={freeze_word:use_freezesword=true},nbt={SelectedItem:{components:{"minecraft:custom_data":{ib:{Id:"freeze_sword"}}}}}] run say @a components
execute as @e[advancements={freeze_word:use_freezesword=true},nbt=!{SelectedItem:{components:{"minecraft:custom_data":{ib:{Id:"freeze_sword"}}}}}] run advancement revoke @s only freeze_word:use_freezesword

scoreboard players remove @a[scores={useingtime=1..}] useingtime 1
scoreboard players add @a[scores={useingtime=1}] charge_value 1

execute as @a[scores={charge_value=2..9}] run title @s[scores={charge_value=2..9}] actionbar [{"text":"チャージ中: ","color":"gray"},{"text":"□□□□□□","color":"gray"}]
execute as @a[scores={charge_value=10..20}] run title @s[scores={charge_value=10..20}] actionbar [{"text":"チャージ中: ","color":"aqua"},{"text":"▉□□□□□","color":"aqua"}]
execute as @a[scores={charge_value=21..40}] run title @s[scores={charge_value=21..40}] actionbar [{"text":"チャージ中: ","color":"aqua"},{"text":"▉▉□□□□","color":"aqua"}]
execute as @a[scores={charge_value=41..60}] run title @s[scores={charge_value=41..60}] actionbar [{"text":"チャージ中: ","color":"aqua"},{"text":"▉▉▉□□□","color":"aqua"}]
execute as @a[scores={charge_value=61..80}] run title @s[scores={charge_value=61..80}] actionbar [{"text":"チャージ中: ","color":"yellow"},{"text":"▉▉▉▉□□","color":"yellow"}]
execute as @a[scores={charge_value=81..100}] run title @s[scores={charge_value=81..140}] actionbar [{"text":"チャージ中: ","color":"yellow"},{"text":"▉▉▉▉▉","color":"yellow"},{"text":"最大チャージ",color:"yellow"}]
execute as @a[scores={charge_value=141..}] run title @s[scores={charge_value=141..}] actionbar [{"text":"チャージ中: ","color":"red"},{"text":"▉▉▉▉▉▉","color":"red"},{"text":"危険！オーバーロード","color":"red","bold":true}]
execute as @a[scores={charge_value=..3}] run title @s clear


scoreboard objectives add effect_timer dummy

#charge_10-40
execute as @a[scores={useingtime=0,charge_value=10..40}] at @s[scores={useingtime=0,charge_value=10..40}] run function freeze_word:sword_magics/charge_10-40
execute as @e[tag=damaged_10-40] run scoreboard players add @s effect_timer 1
execute as @e[tag=damaged_10-40] at @s run particle minecraft:snowflake ~ ~1 ~ 0.3 0.3 0.3 0.01 5 force @a
execute as @e[tag=damaged_10-40,scores={effect_timer=100..}] at @s run tag @s remove damaged_10-40
execute as @e[tag=damaged_10-40,scores={effect_timer=100..}] run scoreboard players set @s effect_timer 0

#charge_41-80
execute as @a[scores={useingtime=0,charge_value=41..80}] at @s[scores={useingtime=0,charge_value=41..80}] run function freeze_word:sword_magics/charge_41-80
execute as @e[tag=damaged_41-80] run scoreboard players add @s effect_timer 1
execute as @e[tag=damaged_41-80] at @s run particle minecraft:snowflake ~ ~1 ~ 0.3 0.3 0.3 0.01 5 force @a
execute as @e[tag=damaged_41-80,scores={effect_timer=160..}] at @s run tag @s remove damaged_41-80
execute as @e[tag=damaged_41-80,scores={effect_timer=160..}] run scoreboard players set @s effect_timer 0

#charge_81-140
execute as @a[scores={useingtime=0,charge_value=81..140}] at @s[scores={useingtime=0,charge_value=81..140}] run function freeze_word:sword_magics/charge_81-140
execute as @e[tag=damaged_81-140] run scoreboard players add @s effect_timer 1
execute as @e[tag=damaged_81-140] at @s run particle minecraft:snowflake ~ ~1 ~ 0.3 0.3 0.3 0.01 5 force @a
execute as @e[tag=damaged_81-140,scores={effect_timer=100..}] at @s run tag @s remove damaged_81-140
execute as @e[tag=damaged_81-140,scores={effect_timer=100..}] run scoreboard players set @s effect_timer 0
execute as @e[tag=freeze_sword_ice_marker,type=marker] run scoreboard players add @s effect_timer 1
execute as @e[tag=freeze_sword_ice_marker,type=marker,scores={effect_timer=200..}] at @s run fill ~ ~ ~ ~ ~2 ~ minecraft:air replace minecraft:blue_ice
execute as @e[tag=freeze_sword_ice_marker,type=marker,scores={effect_timer=200..}] run kill @s

#overload
execute as @a[scores={useingtime=0,charge_value=141..}] at @s run function freeze_word:sword_magics/charge_overload
execute as @e[tag=damaged_overload] run scoreboard players add @s effect_timer 1
execute as @a[tag=damaged_overload] at @s run particle minecraft:snowflake ~ ~1 ~ 0.5 0.5 0.5 0.02 10 force @a
execute as @e[tag=damaged_overload,scores={effect_timer=100..}] at @s run tag @s remove damaged_overload
execute as @e[tag=damaged_overload,scores={effect_timer=100..}] run scoreboard players set @s effect_timer 0
execute as @a[scores={charge_value=81..100}] run title @s[scores={charge_value=81..100}] actionbar [{"text":"チャージ中: ","color":"yellow"},{"text":"▉▉▉▉▉","color":"yellow"},{"text":"最大チャージ","color":"yellow","bold":true}]
execute as @a[scores={charge_value=101..120}] run title @s[scores={charge_value=101..120}] actionbar [{"text":"チャージ中: ","color":"yellow"},{"text":"▉▉▉▉▉▉","color":"yellow"},{"text":"最大チャージ","color":"yellow","bold":true}]
execute as @a[scores={charge_value=121..140}] run title @s[scores={charge_value=121..140}] actionbar [{"text":"チャージ中: ","color":"red"},{"text":"▉▉▉▉▉▉▉","color":"red"},{"text":"危険！オーバーロード","color":"red","bold":true}]
execute as @a[scores={charge_value=..3}] run title @s clear
