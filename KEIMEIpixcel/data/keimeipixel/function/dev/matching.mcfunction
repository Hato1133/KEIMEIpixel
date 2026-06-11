# --- ゲーム開始判定（1vs1） ---
execute if block 95 -12 27 magenta_glazed_terracotta as @a[tag=!game_player] run tp @a[x=77,y=-14,z=21,dx=17,dy=10,dz=16,sort=random,limit=1,tag=!game_player] 85 -14 41
execute if block 95 -12 27 magenta_glazed_terracotta as @a[tag=!game_player] run tp @a[x=77,y=-14,z=21,dx=17,dy=10,dz=16,sort=random,limit=1,tag=!game_player] 85 -14 16

execute if block 95 -12 31 magenta_glazed_terracotta as @a[tag=!game_player] run tp @a[x=77,y=-14,z=21,dx=17,dy=10,dz=16,sort=random,limit=2,tag=!game_player] 85 -14 41
execute if block 95 -12 31 magenta_glazed_terracotta as @a[tag=!game_player] run tp @a[x=77,y=-14,z=21,dx=17,dy=10,dz=16,sort=random,limit=2,tag=!game_player] 85 -14 16