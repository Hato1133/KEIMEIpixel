# クールダウンタグを付与
tag @s add reapers_scythe_cd

# 視線方向へ高速移動
execute at @s rotated as @s run tp @s ^ ^ ^1.8

# 落下を一瞬キャンセル（Y方向を上書き）
# ※上下視線角度に応じて自動で斜め方向にも飛ぶ

# パーティクル演出
execute at @s run particle minecraft:sonic_boom ~ ~ ~ 0 0 0 0 1
execute at @s run playsound minecraft:entity.breeze.wind_burst master @a ~ ~ ~ 1 1.5

# クールダウン解除（4秒後 = 80tick）
schedule function reapers_scythe:cd_remove 80t