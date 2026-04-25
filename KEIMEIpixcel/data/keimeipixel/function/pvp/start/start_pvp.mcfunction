scoreboard objectives add matching_timer dummy


fill 87 -14 38 83 -10 38 blue_stained_glass
fill 87 -14 20 83 -10 20 red_stained_glass

team add red [{text:"red team",color:"red",bold:true}]
team add blue [{text:"blue team",color:"blue",bold:true}]

execute as @a[scores={pvp_matching_red=1}] at @s run team join red @s
execute as @a[scores={pvp_matching_blue=1}] at @s run team join blue @s

execute as @a[scores={pvp_matching_red=1}] at @s run tag @s add game_player
execute as @a[scores={pvp_matching_blue=1}] at @s run tag @s add game_player
execute as @a[tag=game_player] at @s run title @a times 0 1s 0


scoreboard players set @a[tag=game_player] matching_timer 1

