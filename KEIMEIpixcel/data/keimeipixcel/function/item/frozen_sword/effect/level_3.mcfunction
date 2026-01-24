effect give @s slowness 5 2 false
effect give @s wither 5 2 false
item replace entity @s armor.head with ice

particle minecraft:falling_dust{block_state:"minecraft:snow"} ~ ~1.5 ~ 0.2 0.2 0.2 0 32 normal
playsound minecraft:entity.player.hurt_freeze master @a ~ ~ ~ 1 0
