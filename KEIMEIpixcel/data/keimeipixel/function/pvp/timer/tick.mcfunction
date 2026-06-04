scoreboard players set #20 game_timer_tick 20
scoreboard players set #1200 game_timer_tick 1200
scoreboard players set #60 game_timer_tick 60
scoreboard players set #0 game_timer_tick 0
scoreboard players set #10 game_timer_tick 10
scoreboard players set #100 game_timer_tick 100
scoreboard players set #12 game_timer_tick 12
scoreboard players set #3 game_timer_tick 3

execute if score #total_sec game_timer_tick > #0 game_timer_tick run scoreboard players remove #total_sec game_timer_tick 1
execute store result bossbar minecraft:game_time_pvp value run scoreboard players get #total_sec game_timer_tick

scoreboard players operation #total_min_temp game_timer_tick = #total_sec game_timer_tick
scoreboard players operation #total_min_temp game_timer_tick /= #1200 game_timer_tick
scoreboard players operation #min game_timer_tick = #total_min_temp game_timer_tick 

scoreboard players operation #total_sec_temp game_timer_tick = #total_sec game_timer_tick
scoreboard players operation #total_sec_temp game_timer_tick %= #20 game_timer_tick
execute if score #total_sec game_timer_tick > #0 game_timer_tick if score #total_sec_temp game_timer_tick = #0 game_timer_tick run scoreboard players remove #sec game_timer_tick 1

execute if score #sec game_timer_tick = #0 game_timer_tick run scoreboard players set #sec game_timer_tick 60


execute if score #sec game_timer_tick >= #10 game_timer_tick run bossbar set minecraft:game_time_pvp name [{"score":{"name":"#points","objective":"red_points"},"color":"red","bold":true},{"text":"      "},{"text":"残り時間: ","color":"gold"},{"score":{"name":"#min","objective":"game_timer_tick"},"color":"green"},{"text":":","color":"green"},{"score":{"name":"#sec","objective":"game_timer_tick"},"color":"green"},{"text":"      "},{"score":{"name":"#points","objective":"blue_points"},"color":"blue","bold":true}]
execute if score #sec game_timer_tick < #10 game_timer_tick run bossbar set minecraft:game_time_pvp name [{"score":{"name":"#points","objective":"red_points"},"color":"red","bold":true},{"text":"      "},{"text":"残り時間: ","color":"gold"},{"score":{"name":"#min","objective":"game_timer_tick"},"color":"green"},{"text":":0","color":"green"},{"score":{"name":"#sec","objective":"game_timer_tick"},"color":"green"},{"text":"      "},{"score":{"name":"#points","objective":"blue_points"},"color":"blue","bold":true}]

execute if score #total_sec game_timer_tick = #0 game_timer_tick run function keimeipixel:pvp/start/end_game