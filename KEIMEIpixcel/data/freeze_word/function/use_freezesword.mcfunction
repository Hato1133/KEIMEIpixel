advancement revoke @s only freeze_word:use_freezesword
scoreboard players add @s useingtime 2
bossbar set eat_progress players @s
bossbar set eat_progress visible true
execute store result bossbar eat_progress value run scoreboard players get @s useingtime