execute as @e[type=minecraft:arrow,nbt={inGround:1b,data:{ib:{Id:explosive}}}] at @s run function explosive_arrow:boom
execute as @e[type=minecraft:arrow,nbt={data:{ib:{Id:explosive}}}] at @s run particle minecraft:firework ~ ~ ~ 0.5 0.5 0.5 0 10 force @a
