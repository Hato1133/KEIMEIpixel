execute if entity @e[x=-325.5,y=-25,z=250.5,distance=..1,type=item,nbt={Item:{count:1,components:{"minecraft:custom_data":{ib:{Id:"iron_ingot_normal"}}}}}] run scoreboard players add @a[team=red] red_points 1
execute as @e[x=-325.5,y=-25,z=250.5,distance=..1,type=item,nbt={Item:{count:1,components:{"minecraft:custom_data":{ib:{Id:"iron_ingot_normal"}}}}}] run kill @s
