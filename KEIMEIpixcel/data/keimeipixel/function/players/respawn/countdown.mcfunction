# タイマーを1減らす
scoreboard players remove @s respawn_timer 1

# 残り5秒（各秒）のタイトル表示
execute as @s if score @s respawn_timer matches 80 run title @s title {"text":"5","color":"red","bold":true}
execute as @s if score @s respawn_timer matches 60 run title @s title {"text":"4","color":"red","bold":true}
execute as @s if score @s respawn_timer matches 40 run title @s title {"text":"3","color":"yellow","bold":true}
execute as @s if score @s respawn_timer matches 20 run title @s title {"text":"2","color":"yellow","bold":true}
execute as @s if score @s respawn_timer matches 1 run title @s title {"text":"1","color":"green","bold":true}

# サブタイトル表示
execute as @s if score @s respawn_timer matches 1..100 run title @s subtitle {"text":"復活まで待機中...","color":"white"}

# 0になったら復活
execute as @s if score @s respawn_timer matches 0 run function keimeipixel:players/respawn/respawn