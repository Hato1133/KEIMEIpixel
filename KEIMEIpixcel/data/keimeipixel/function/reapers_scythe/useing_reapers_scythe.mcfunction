advancement revoke @s only reapers_scythe:dash_trigger

# 空中かつクールダウンなしの場合のみダッシュ実行
execute if entity @s[nbt={OnGround:0b}] unless entity @s[tag=!reapers_scythe_cd] run function reapers_scythe:dash_execute