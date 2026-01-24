effect give @s slowness 5 4 false
item replace entity @s armor.head with blue_ice

summon minecraft:wind_charge ~ ~ ~ {Motion:[0f,-0.3f,0f]}

particle minecraft:falling_dust{block_state:"minecraft:snow"} ~ ~1.5 ~ 0.2 0.2 0.2 0 32 normal
playsound minecraft:entity.player.hurt_freeze master @a ~ ~ ~ 1 0
