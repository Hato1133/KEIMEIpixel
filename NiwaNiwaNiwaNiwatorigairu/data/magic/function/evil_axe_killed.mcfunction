effect give @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{id:"Evil_Axe"}}}}] instant_health 1 0 true
playsound minecraft:entity.player.attack.crit player @s ~ ~1 ~ 1 1.3
playsound minecraft:item.shield.block player @s ~ ~1 ~ 1 0.7
particle minecraft:entity_effect{color:[1,0.1,0.9,0.8]} ~ ~ ~ 0.5 1 0.5 1 50 force @a

advancement revoke @s only magic:evil_axe_killed
