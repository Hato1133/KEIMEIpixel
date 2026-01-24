data merge entity @s {Tags:["keimei.fireball"],ExplosionPower:5,acceleration_power:0.1f}
data modify entity @s Owner set from entity @p[tag=keimei.fireball_shooter] UUID

summon marker ^ ^ ^.1 {Tags:["keimei.motion_calculator"]}

execute store result score #motion_x0 keimei.dummy run data get entity @s Pos[0] 100
execute store result score #motion_y0 keimei.dummy run data get entity @s Pos[1] 100
execute store result score #motion_z0 keimei.dummy run data get entity @s Pos[2] 100

execute store result score #motion_x1 keimei.dummy run data get entity @n[tag=keimei.motion_calculator] Pos[0] 100
execute store result score #motion_y1 keimei.dummy run data get entity @n[tag=keimei.motion_calculator] Pos[1] 100
execute store result score #motion_z1 keimei.dummy run data get entity @n[tag=keimei.motion_calculator] Pos[2] 100

kill @n[tag=keimei.motion_calculator]

execute store result entity @s Motion[0] double 0.01 run scoreboard players operation #motion_x1 keimei.dummy -= #motion_x0 keimei.dummy
execute store result entity @s Motion[1] double 0.01 run scoreboard players operation #motion_y1 keimei.dummy -= #motion_y0 keimei.dummy
execute store result entity @s Motion[2] double 0.01 run scoreboard players operation #motion_z1 keimei.dummy -= #motion_z0 keimei.dummy
