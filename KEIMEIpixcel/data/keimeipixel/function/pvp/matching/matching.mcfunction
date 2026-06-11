# tick.mcfunction

# --- ゾーン判定（セレクターを1回に集約） ---
execute as @a[x=82,y=-15,z=15,dx=7,dy=6,dz=4] at @s run function keimeipixel:pvp/matching/enter_red_zone
execute as @a[x=82,y=-15,z=39,dx=7,dy=6,dz=5] at @s run function keimeipixel:pvp/matching/enter_blue_zone
execute as @a[x=77,y=-14,z=21,dx=17,dy=10,dz=16] at @s run function keimeipixel:pvp/matching/leave_zone

# --- 人数カウント ---
execute store result score #count_red pvp_matching_red if entity @a[scores={pvp_matching_red=1}]
execute store result score #count_blue pvp_matching_blue if entity @a[scores={pvp_matching_blue=1}]

# --- ゲーム開始判定（1vs1） ---
execute if block 95 -12 27 magenta_glazed_terracotta as @a[tag=!game_player] if score #count_blue pvp_matching_blue matches 1 if score #count_red pvp_matching_red matches 1 run function keimeipixel:pvp/start/start_pvp

# --- ゲーム開始判定（2vs2） ---
execute if block 95 -12 31 magenta_glazed_terracotta as @a[tag=!game_player] if score #count_blue pvp_matching_blue matches 2 if score #count_red pvp_matching_red matches 2 run function keimeipixel:pvp/start/start_pvp

# --- マッチングタイマー ---
scoreboard players add @a[team=red,scores={matching_timer=1..}] matching_timer 1
scoreboard players add @a[team=blue,scores={matching_timer=1..}] matching_timer 1