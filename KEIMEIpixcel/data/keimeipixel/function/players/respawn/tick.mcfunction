# 死亡したプレイヤーを検知してスペクテイターにしタイマーセット
execute as @a[gamemode=survival] at @s if entity @s[type=minecraft:player,nbt={DeathTime:1s}] run function keimeipixel:players/respawn/on_death

# タイマーを持つプレイヤーのカウントダウン処理
execute as @a[scores={respawn_timer=1..}] run function keimeipixel:players/respawn/countdown