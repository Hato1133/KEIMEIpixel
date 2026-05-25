execute as @e[type=arrow,nbt={inGround:1b,data:{ib:{Id:"ender_arrow"}}}] at @s on origin if entity @s[type=player] run tp @s ~ ~ ~
execute as @e[type=arrow,nbt={inGround:1b,data:{ib:{Id:"ender_arrow"}}}] run kill @s
execute as @e[type=arrow,nbt={data:{ib:{Id:"ender_arrow"}}}] at @s run particle minecraft:portal ^ ^ ^ 0.25 0.25 0.25 0.1 100 force @a