# 当たった相手（モブ）の足元に、即爆発するクリーパーを召喚
# Fuse:0 で即爆破、ignited:1b で点火状態で生成されます
execute as @e[type=!player, sort=nearest, limit=1, nbt={HurtTime:10s}] at @s run summon creeper ~ ~ ~ {Fuse:0,ignited:1b}
# 何度も発動できるように、この進捗を自分（プレイヤー）から剥奪する
advancement revoke @s only explosive_arrow:arrow_hit