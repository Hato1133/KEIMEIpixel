execute if score #points red_points > #points blue_points run title @a title [{text:"赤チームの勝利！",color:"red",bold:true}]
    execute if score #points red_points > #points blue_points run playsound minecraft:ui.toast.challenge_complete player @a[team=red] ~ ~ ~ 10 1.5
    execute if score #points red_points > #points blue_points run title @a[team=red] subtitle [{text:"勝利！",color:"gold",bold:true}]

execute if score #points red_points < #points blue_points run title @a title [{text:"青チームの勝利！",color:"blue",bold:true}]
    execute if score #points red_points < #points blue_points run playsound minecraft:ui.toast.challenge_complete player @a[team=blue] ~ ~ ~ 10 1.5
    execute if score #points red_points < #points blue_points run title @a[team=blue] subtitle [{text:"勝利！",color:"gold",bold:true}]

execute if score #points red_points = #points blue_points run title @a title [{text:"引き分け！",color:"yellow",bold:true}]
    execute if score #points red_points = #points blue_points run playsound minecraft:ui.toast.challenge_complete player @a[tag=game_player] ~ ~ ~ 10 1.5
    execute if score #points red_points = #points blue_points run title @a subtitle [{text:"引き分け！",color:"green",bold:true}]

clear @a[tag=game_player]
team empty red
team empty blue

execute as @a[tag=game_player] at @s run function keimeipixel:dev/tp_lobby
execute as @a[tag=game_player] at @s run bossbar remove minecraft:game_time_pvp