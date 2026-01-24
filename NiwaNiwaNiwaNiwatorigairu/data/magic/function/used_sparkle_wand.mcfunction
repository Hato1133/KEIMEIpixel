execute positioned ~ ~1.3 ~ run summon marker ^ ^ ^0.3 {NoGravity:1b,Tags:["Sp_Wand_fa"]}
execute positioned ~ ~1.3 ~ run summon marker ~ ~ ~ {NoGravity:1b,Tags:["Sp_Wand_po"]}
playsound minecraft:item.trident.throw player @s ~ ~1 ~ 1 2

advancement revoke @s only magic:used_sparkle_wand
