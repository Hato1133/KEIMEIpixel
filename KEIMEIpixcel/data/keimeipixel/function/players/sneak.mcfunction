scoreboard objectives add sneaknow dummy
scoreboard objectives add sneak minecraft.custom:minecraft.sneak_time
execute as @a[scores={sneak=1..}] run scoreboard players set @s sneaknow 2
scoreboard players remove @a[scores={sneak=1..}] sneak 1
scoreboard players remove @a[scores={sneaknow=1..}] sneaknow 1