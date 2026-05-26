scoreboard players set #20 game_timer_tick 20
scoreboard players set #60 game_timer_tick 60
scoreboard players set #10 game_timer_tick 10
scoreboard players set #0 game_timer_tick 0

execute if score #total_sec game_timer_tick > #0 game_timer_tick run scoreboard players remove #total_sec game_timer_tick 1
execute store result bossbar minecraft:game_time_pvp value run scoreboard players get #total_sec game_timer_tick
scoreboard players operation #total_sec game_timer_tick = #current game_timer_tick
scoreboard players operation #total_sec game_timer_tick /= #20 game_timer_tick

# 2. 「全体の秒数」をコピーして「分」を計算する
scoreboard players operation #min game_timer_tick = #total_sec game_timer_tick
scoreboard players operation #min game_timer_tick /= #60 game_timer_tick

# 3. 「全体の秒数」をコピーして「秒」を計算する（60で割った余り）
scoreboard players operation #sec game_timer_tick = #total_sec game_timer_tick
scoreboard players operation #sec game_timer_tick %= #60 game_timer_tick

execute if score #sec game_timer_tick >= #10 game_timer_tick run bossbar set minecraft:game_time_pvp name ["残り時間: ",{"score":{"name":"#min","objective":"game_timer_tick"}},":",{"score":{"name":"#sec","objective":"game_timer_tick"}}]
execute if score #sec game_timer_tick < #10 game_timer_tick run bossbar set minecraft:game_time_pvp name ["残り時間: ",{"score":{"name":"#min","objective":"game_timer_tick"}},":0",{"score":{"name":"#sec","objective":"game_timer_tick"}}]