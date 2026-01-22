execute as @e[advancements={freeze_word:use_freezesword=true},nbt={SelectedItem:{components:{"minecraft:custom_data":{ib:{Id:"freeze_sword"}}}}}] run say @a components
execute as @e[advancements={freeze_word:use_freezesword=true},nbt=!{SelectedItem:{components:{"minecraft:custom_data":{ib:{Id:"freeze_sword"}}}}}] run advancement revoke @s only freeze_word:use_freezesword
scoreboard players remove @a[scores={useingtime=1..}] useingtime 1
scoreboard players remove @a[scores={charge_value=1..,useingtime=0}] charge_value 2
scoreboard players add @a[scores={useingtime=1,charge_value=0..100}] charge_value 1

execute as @a[scores={charge_value=2..9}] run title @s[scores={charge_value=2..9}] actionbar [{"text":"チャージ中: ","color":"gray"},{"text":"□□□□□□","color":"gray"}]
execute as @a[scores={charge_value=10..20}] run title @s[scores={charge_value=10..20}] actionbar [{"text":"チャージ中: ","color":"aqua"},{"text":"▉□□□□□","color":"aqua"}]
execute as @a[scores={charge_value=21..40}] run title @s[scores={charge_value=21..40}] actionbar [{"text":"チャージ中: ","color":"aqua"},{"text":"▉▉□□□□","color":"aqua"}]
execute as @a[scores={charge_value=41..60}] run title @s[scores={charge_value=41..60}] actionbar [{"text":"チャージ中: ","color":"aqua"},{"text":"▉▉▉□□□","color":"aqua"}]
execute as @a[scores={charge_value=61..80}] run title @s[scores={charge_value=61..80}] actionbar [{"text":"チャージ中: ","color":"yellow"},{"text":"▉▉▉▉□□","color":"yellow"}]
execute as @a[scores={charge_value=81..100}] run title @s[scores={charge_value=81..100}] actionbar [{"text":"チャージ中: ","color":"yellow"},{"text":"▉▉▉▉▉","color":"yellow"},{"text":"最大チャージ","color":"yellow","bold":true}]
execute as @a[scores={charge_value=101..120}] run title @s[scores={charge_value=101..120}] actionbar [{"text":"チャージ中: ","color":"yellow"},{"text":"▉▉▉▉▉▉","color":"yellow"},{"text":"最大チャージ","color":"yellow","bold":true}]
execute as @a[scores={charge_value=121..140}] run title @s[scores={charge_value=121..140}] actionbar [{"text":"チャージ中: ","color":"red"},{"text":"▉▉▉▉▉▉▉","color":"red"},{"text":"危険！オーバーロード","color":"red","bold":true}]
execute as @a[scores={charge_value=..3}] run title @s clear