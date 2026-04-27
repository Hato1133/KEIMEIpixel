advancement revoke @s only keimeipixel:reapers_scythe

# 空中かつクールダウンなしの場合のみダッシュ実行
execute if entity @s[nbt={OnGround:0b},tag=!reapers_scythe_cd] run function keimeipixel:reapers_scythe/dash_execute