# 1. 一時的なマーカーを「プレイヤーの足元」と「1マス先」に召喚
execute at @p run summon marker ~ ~ ~ {Tags:["start_pos"]}
execute at @p run summon marker ^ ^ ^1 {Tags:["end_pos"]}

# 2. 実際に飛ばすエンティティ（例：火球）を召喚
summon fireball ~ ~1.5 ~ {Tags:["custom_projectile"], ExplosionPower:0}

# 3. 終点座標(end)から始点座標(start)を引いて、火球のMotion[0]（X方向）に代入
execute as @e[tag=custom_projectile,limit=1,sort=nearest] store result entity @s Motion[0] double 1.5 run data get entity @e[tag=end_pos,limit=1] Pos[0]
execute as @e[tag=custom_projectile,limit=1,sort=nearest] store result entity @s Motion[0] double -1.5 run data get entity @e[tag=start_pos,limit=1] Pos[0]

# (同様に Motion[1](Y), Motion[2](Z) も計算しますが、もっと簡単な「最新の方法」を以下に記します)

summon fireball ^ ^ ^0.5 {Tags:["fire_circle_marker"]}
execute as @e[tag=fire_circle_marker,limit=1,sort=nearest] run data modify entity @s Rotation set from entity @p Rotation
advancement revoke @s only fire_circle:use_firecircle