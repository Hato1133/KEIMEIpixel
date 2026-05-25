execute as @a[tag=game_player,scores={matching_timer=5..8}] at @s run title @s title [{text:"プレーヤーが揃いました",color:"green",bold:true}]
execute as @a[tag=game_player,scores={matching_timer=5..8}] at @s run title @s subtitle [{text:"ゲームを開始します",color:"green",bold:true}]
execute as @a[tag=game_player,scores={matching_timer=40..43}] at @s run title @s title [{text:"5",color:"gold",bold:true}]
execute as @a[tag=game_player,scores={matching_timer=80..83}] at @s run title @s title [{text:"4",color:"gold",bold:true}]
execute as @a[tag=game_player,scores={matching_timer=120..123}] at @s run title @s title [{text:"3",color:"gold",bold:true}]
execute as @a[tag=game_player,scores={matching_timer=160..163}] at @s run title @s title [{text:"2",color:"gold",bold:true}]
execute as @a[tag=game_player,scores={matching_timer=200..203}] at @s run title @s title [{text:"1",color:"gold",bold:true}]
execute as @a[tag=game_player,scores={matching_timer=220..223}] at @s run function keimeipixel:pvp/start/reset_matching
execute as @a[tag=game_player,scores={matching_timer=230..233}] at @s run scoreboard players reset @s matching_timer