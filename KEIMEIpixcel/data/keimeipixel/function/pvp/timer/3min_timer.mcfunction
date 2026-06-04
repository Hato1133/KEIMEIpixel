scoreboard players set #total_sec game_timer_tick 3600

bossbar add minecraft:game_time_pvp a
bossbar set minecraft:game_time_pvp players @a[tag=game_player]

scoreboard players set #points red_points 0
scoreboard players set #points blue_points 0

scoreboard players set #sec game_timer_tick 0
