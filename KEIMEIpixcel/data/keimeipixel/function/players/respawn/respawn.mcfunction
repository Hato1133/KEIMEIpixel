# サバイバルに戻す
gamemode survival @s

# タイマーリセット
scoreboard players set @s respawn_timer -1

# 復活メッセージ
execute as @s[team=blue] run tp @s -349.5 -25 250.5 -90 0
execute as @s[team=red] run tp @s -329.5 -25 250.5 90 0
title @s title {"text":"復活！","color":"gold","bold":true}
title @s subtitle {"text":"Fight!","color":"white"}