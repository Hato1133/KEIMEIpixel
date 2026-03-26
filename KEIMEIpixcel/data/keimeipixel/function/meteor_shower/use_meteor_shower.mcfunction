# プレイヤーの目の位置から少し前に雪玉を召喚
summon snowball ^ ^ ^1 {Motion:[0.0,0.0,0.0],Item:{id:"minecraft:magma_cream"}}

# 召喚した雪玉にプレイヤーと同じ向きの速度を与える
execute as @e[type=snowball,sort=nearest,limit=1] at @s run function keimeipixel:meteor_shower/set_velocity

advancement revoke @s only keimeipixel:use_meteor_shower