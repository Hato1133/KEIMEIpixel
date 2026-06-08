execute as @a[tag=game_player,scores={matching_timer=5..8}] at @s run title @s title [{text:"プレーヤーが揃いました",color:"green",bold:true}]
execute as @a[tag=game_player,scores={matching_timer=5..8}] at @s run title @s subtitle [{text:"ゲームを開始します",color:"green",bold:true}]
execute as @a[tag=game_player,scores={matching_timer=40..43}] at @s run title @s title [{text:"5",color:"gold",bold:true}]
execute as @a[tag=game_player,scores={matching_timer=80..83}] at @s run title @s title [{text:"4",color:"gold",bold:true}]
execute as @a[tag=game_player,scores={matching_timer=120..123}] at @s run title @s title [{text:"3",color:"gold",bold:true}]
execute as @a[tag=game_player,scores={matching_timer=160..163}] at @s run title @s title [{text:"2",color:"gold",bold:true}]
execute as @a[tag=game_player,scores={matching_timer=200..203}] at @s run title @s title [{text:"1",color:"gold",bold:true}]

execute as @a[tag=game_player,scores={matching_timer=220..223},team=blue] at @s run tp @s -349.5 -25 250.5 -90 0
execute as @a[tag=game_player,scores={matching_timer=220..223},team=red] at @s run tp @s -329.5 -25 250.5 90 0

execute as @a[tag=game_player,scores={matching_timer=220..223},team=blue] at @s run spawnpoint @s -349 -25 250
execute as @a[tag=game_player,scores={matching_timer=220..223},team=red] at @s run spawnpoint @s -329 -25 250

execute as @a[tag=game_player,scores={matching_timer=220..223}] at @s run function keimeipixel:pvp/start/reset_matching
execute as @a[tag=game_player,scores={matching_timer=230..233}] at @s run scoreboard players reset @s matching_timer

function keimeipixel:pvp/timer/3min_timer

give @a[tag=game_player] iron_sword 1