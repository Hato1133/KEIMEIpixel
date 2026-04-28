# クールダウンタグを付与
tag @s add reapers_scythe_cd

kill @e[tag=dash_arrow,sort=nearest,limit=1]
summon minecraft:arrow ~ ~ ~ {Tags:["dash_arrow"]}
ride @s mount @e[type=arrow,sort=nearest,limit=1]

# Yaw取得 (-180〜180 → 0〜359に正規化)
scoreboard players add #const_2 yaw 2
execute store result score @s yaw run data get entity @s Rotation[0] 1
execute if score @s yaw matches -180..-1 run scoreboard players operation @s yaw += #const_2 yaw
# Pitch取得
execute store result score @s pitch run data get entity @s Rotation[1] 1

# ルックアップテーブルでsin/cos取得
function keimeipixel:players/trigonometric_function/lookup_yaw

# Pitch別にY成分設定
execute if score @s pitch matches ..-45 run scoreboard players set @s dash_y 12
execute if score @s pitch matches -44..44 run scoreboard players set @s dash_y 3
execute if score @s pitch matches 45.. run scoreboard players set @s dash_y -5

# Motionを方向別に設定
function keimeipixel:players/trigonometric_function/apply_motion

# パーティクル演出
execute at @s run particle minecraft:sonic_boom ~ ~ ~ 0 0 0 0 1
execute at @s run playsound minecraft:entity.breeze.wind_burst master @a ~ ~ ~ 1 1.5

data modify entity @s Motion[1] insert 1 value {strage:[2]}