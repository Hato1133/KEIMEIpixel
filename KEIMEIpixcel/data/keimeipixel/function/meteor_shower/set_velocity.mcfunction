# プレイヤーの視線方向に基づいて速度を計算
data modify storage mypack:temp Rotation set from entity @p Rotation

# 雪玉に適切な速度を設定（1.5倍速）
execute store result score #yaw meteor_shower_temp run data get storage keimeipixel:temp Rotation[0] 1000
execute store result score #pitch meteor_shower_temp run data get storage keimeipixel:temp Rotation[1] 1000

# Motion計算（三角関数の近似）
execute store result entity @s Motion[0] double 0.0015 run scoreboard players get #yaw meteor_shower_temp
execute store result entity @s Motion[1] double -0.0015 run scoreboard players get #pitch meteor_shower_temp
execute store result entity @s Motion[2] double 0.0015 run scoreboard players get #yaw meteor_shower_temp

# より簡単で正確な方法：
tp @s ~ ~ ~ ~ ~
execute rotated as @p run tp @s ^ ^ ^0.01
data modify entity @s Motion set value [0.0,0.0,1.5]
execute rotated as @p run tp @s ~ ~ ~ ~ ~