# プレイヤーの顔の位置から雪玉を発射（本来の雪玉挙動）
execute as @s at @s run summon falling_block ^ ^1.62 ^0.5 {BlockState:{Name:"minecraft:magma_block"},Tags:["meteor_shower"]}
execute as @s at @s run data modify entity @e[type=falling_block,tag=meteor_shower,limit=1,sort=nearest] Rotation set from entity @s Rotation

advancement revoke @s only keimeipixel:use_meteor_shower