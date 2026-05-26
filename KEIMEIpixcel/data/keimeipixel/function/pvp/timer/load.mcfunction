# 計算用のオブジェクト（一回作ってあればOK）
scoreboard objectives add game_timer_tick dummy

# 定数の設定
scoreboard players set #20 game_timer_tick 20
scoreboard players set #60 game_timer_tick 60
scoreboard players set #10 game_timer_tick 10

bossbar add game_time_pvp [{text:"残り時間",color:green}]