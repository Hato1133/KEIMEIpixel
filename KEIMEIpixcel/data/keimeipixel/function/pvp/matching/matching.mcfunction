scoreboard objectives add pvp_matching_blue dummy
scoreboard objectives add pvp_matching_red dummy

execute as @a[x=82,y=-15,z=15,dx=7,dy=6,dz=4] at @s run scoreboard players set @s pvp_matching_red 1
execute as @a[scores={pvp_matching_red=1},tag=!red_team_msg_f] at @s run tag @s add red_team_msg
execute as @a[scores={pvp_matching_red=1},tag=red_team_msg] at @s run tellraw @s[tag=red_team_msg] [{text:"あなたは",color:"gold",bold:true},{text:"赤チーム",color:"red",bold:true},{text:"です!",color:"gold",bold:true}]
execute as @a[x=82,y=-15,z=15,dx=7,dy=6,dz=4] at @s run function keimeipixel:pvp/matching/msg_join_redteam

execute as @a[x=82,y=-15,z=39,dx=7,dy=6,dz=5] at @s run scoreboard players set @s pvp_matching_blue 1
execute as @a[scores={pvp_matching_blue=1},tag=!blue_team_msg_f] at @s run tag @s add blue_team_msg
execute as @a[scores={pvp_matching_blue=1},tag=blue_team_msg] at @s run tellraw @s[tag=blue_team_msg] [{text:"あなたは",color:"gold",bold:true},{text:"青チーム",color:"blue",bold:true},{text:"です!",color:"gold",bold:true}]
execute as @a[x=82,y=-15,z=39,dx=7,dy=6,dz=5] at @s run function keimeipixel:pvp/matching/msg_join_blueteam

execute as @a[x=77,y=-14,z=21,dx=17,dy=10,dz=16] at @s run scoreboard players reset @s pvp_matching_blue
execute as @a[x=77,y=-14,z=21,dx=17,dy=10,dz=16] at @s run scoreboard players reset @s pvp_matching_red
execute as @a[x=77,y=-14,z=21,dx=17,dy=10,dz=16] at @s run tag @s remove blue_team_msg
execute as @a[x=77,y=-14,z=21,dx=17,dy=10,dz=16] at @s run tag @s remove red_team_msg
execute as @a[x=77,y=-14,z=21,dx=17,dy=10,dz=16] at @s run tag @s remove blue_team_msg_f
execute as @a[x=77,y=-14,z=21,dx=17,dy=10,dz=16] at @s run tag @s remove red_team_msg_f

execute store result score #count_red pvp_matching_red run \
    execute if entity @a[scores={pvp_matching_red=1}]

execute store result score #count_blue pvp_matching_blue run \
    execute if entity @a[scores={pvp_matching_blue=1}]

execute if block 95 -12 27 magenta_glazed_terracotta \
    run execute as @a[tag=!game_player] if score #count_blue pvp_matching_blue matches 1 if score #count_red pvp_matching_red matches 1 \ 
    run function keimeipixel:pvp/start/start_pvp

execute if block 95 -12 31 magenta_glazed_terracotta \ 
    run execute as @a[tag=!game_player] if score #count_blue pvp_matching_blue matches 2 if score #count_red pvp_matching_red matches 2 \ 
    run function keimeipixel:pvp/start/start_pvp

scoreboard players add @a[team=red,scores={matching_timer=1..}] matching_timer 1
scoreboard players add @a[team=blue,scores={matching_timer=1..}] matching_timer 1



