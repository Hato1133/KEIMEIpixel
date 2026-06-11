scoreboard players set @s pvp_matching_red 1
tag @s remove game_end
execute if entity @s[tag=!red_team_msg_f] run tag @s add red_team_msg
execute if entity @s[tag=red_team_msg] run tellraw @s [{text:"あなたは",color:"gold",bold:true},{text:"赤チーム",color:"red",bold:true},{text:"です!",color:"gold",bold:true}]
function keimeipixel:pvp/matching/msg_join_redteam