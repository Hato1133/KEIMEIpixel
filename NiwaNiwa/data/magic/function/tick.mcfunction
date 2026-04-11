#World_Component(一番最初に置く)
stopsound @p player minecraft:entity.player.burp

#Set_Block/T_Hit
function magic:set_block_t {Block_ID:Diabase,y_rotation:y_90,x_rotation:x_0}
function magic:set_block_t {Block_ID:Chain_Fence,y_rotation:y_90,x_rotation:x_0}
function magic:set_block_t {Block_ID:Grating,y_rotation:y_90,x_rotation:x_0}
function magic:set_block_t {Block_ID:Weathered_Grating,y_rotation:y_90,x_rotation:x_0}
function magic:set_block_t {Block_ID:Low_Blue_Terracotta_Stool,y_rotation:y_90,x_rotation:x_0}
function magic:set_block_t {Block_ID:Low_Green_Terracotta_Stool,y_rotation:y_90,x_rotation:x_0}
function magic:set_block_t {Block_ID:Weathered_Bricks,y_rotation:y_90,x_rotation:x_0}
function magic:set_block_t {Block_ID:Weathered_Bricks_Wall,y_rotation:y_90,x_rotation:x_0}
function magic:set_block_t {Block_ID:Oak_Log_Table,y_rotation:y_90,x_rotation:x_0}
function magic:set_block_t {Block_ID:Oak_Log_Chair,y_rotation:y_90,x_rotation:x_0}
function magic:set_block_t {Block_ID:Traffic_Cone,y_rotation:y_90,x_rotation:x_0}
function magic:set_block_t {Block_ID:Steel_Flame,y_rotation:y_90,x_rotation:x_0}
function magic:set_block_t {Block_ID:Weathered_Steel_Flame,y_rotation:y_90,x_rotation:x_0}
function magic:set_block_t {Block_ID:Stacked_Books,y_rotation:y_90,x_rotation:x_0}
function magic:set_block_t {Block_ID:Concrete_Cube,y_rotation:y_90,x_rotation:x_0}
function magic:set_block_t {Block_ID:Weathered_Concrete_Cube,y_rotation:y_90,x_rotation:x_0}
function magic:set_block_t {Block_ID:Hollow_Oak_Log,y_rotation:y_90,x_rotation:x_90}
#Set_Block/F_Hit
function magic:set_block_f {Block_ID:Web_Carpet_B,width:1.0f,height:0.1f}
function magic:set_block_f {Block_ID:Mossy_Cobblestone_Path,width:1.0f,height:0.1f}
function magic:set_block_f {Block_ID:Thin_Moss_Carpet_B,width:1.0f,height:0.1f}
function magic:set_block_f {Block_ID:Poster_1_B,width:0.7f,height:1.0f}
function magic:set_block_f {Block_ID:Withered_Vine_B,width:0.7f,height:1.0f}
function magic:set_block_f {Block_ID:Tnt_Bundle,width:0.7f,height:0.4f}
function magic:set_block_f {Block_ID:Nintendo_Switch,width:0.7f,height:0.1f}
function magic:set_block_f {Block_ID:Blue_Rose_B,width:0.6f,height:0.9f}
function magic:set_block_f {Block_ID:Spruce_Barricade,width:1.0f,height:1.0f}

#Calme_Wand
scoreboard players add @e[scores={Ca_Wand=1..}] Ca_Wand 1
execute as @e[scores={Ca_Wand=1..100}] at @s run attribute @s follow_range base set 1.5
execute as @e[scores={Ca_Wand=101..}] at @s run attribute @s follow_range base reset
scoreboard players reset @e[scores={Ca_Wand=101..}] Ca_Wand

#Sparkle_Wand
scoreboard players add @e[tag=Sp_Wand_fa] Sp_Wand 1
scoreboard players add @e[tag=Sp_Wand_po] Sp_Wand 1
execute as @e[tag=Sp_Wand_fa,scores={Sp_Wand=1}] at @s run tp @s ~ ~ ~ facing entity @e[tag=Sp_Wand_po,scores={Sp_Wand=1},distance=..0.5,limit=1,sort=nearest]
execute as @e[tag=Sp_Wand_fa,scores={Sp_Wand=1}] at @s run tp @s ~ ~ ~
execute as @e[tag=Sp_Wand_fa,scores={Sp_Wand=1..10}] at @s run tp @s ^ ^ ^-0.07
execute as @e[tag=Sp_Wand_fa,scores={Sp_Wand=11}] at @s run playsound minecraft:entity.player.attack.sweep player @a ~ ~1 ~ 0.4 2
execute as @e[tag=Sp_Wand_fa,scores={Sp_Wand=11..}] at @s run tp @s ^ ^ ^-1.6
kill @e[tag=Sp_Wand_fa,scores={Sp_Wand=40..}]
kill @e[tag=Sp_Wand_po,scores={Sp_Wand=2..}]
execute as @e[tag=Sp_Wand_fa,scores={Sp_Wand=11..}] at @s positioned ~ ~-1 ~ as @e[distance=..1.1] run damage @s 9 minecraft:generic by @p
execute as @e[tag=Sp_Wand_fa,scores={Sp_Wand=1..}] at @s run particle electric_spark ~ ~ ~ 0.1 0.1 0.1 0.8 10 force @a

#Evil_Sword
scoreboard players add @a[scores={Ev_Sword_t=1..}] Ev_Sword_t 1
execute as @a[scores={Ev_Sword_c=10}] at @s run playsound minecraft:block.beacon.activate player @s ~ ~1 ~ 1 1.3
execute as @a[scores={Ev_Sword_c=10..40}] at @s run particle minecraft:entity_effect{color:[1.0,0.1,0.9,0.8]} ~ ~ ~ 0.7 1 0.7 1 2 force @a
execute as @a[scores={Ev_Sword_c=45}] at @s run playsound minecraft:block.beacon.activate player @s ~ ~ ~ 1 1.5
execute as @a[scores={Ev_Sword_c=45..80}] at @s run particle minecraft:entity_effect{color:[0.6,0.1,0.7,0.8]} ~ ~1 ~ 0.7 1 0.7 1 2 force @a
execute as @a[scores={Ev_Sword_c=85}] at @s run playsound minecraft:block.beacon.activate player @s ~ ~ ~ 1 1.7
execute as @a[scores={Ev_Sword_c=85..}] at @s run particle minecraft:entity_effect{color:[0.2,0.1,0.5,0.8]} ~ ~1 ~ 0.7 1 0.7 1 3 force @a
execute as @a[scores={Ev_Sword_c=10..44,Ev_Sword_t=3..}] at @s run say a
execute as @a[scores={Ev_Sword_c=45..84,Ev_Sword_t=3..}] at @s run say b
execute as @a[scores={Ev_Sword_c=85..,Ev_Sword_t=3..}] at @s as @e[distance=0.1..15,type=!marker,type=!item_display,type=!interaction] at @s run particle minecraft:reverse_portal ~ ~5 ~ 0 10 0 0.7 700 force @a
execute as @a[scores={Ev_Sword_c=85..,Ev_Sword_t=3..}] at @s as @e[distance=0.1..15,type=!marker,type=!item_display,type=!interaction] at @s run playsound minecraft:entity.lightning_bolt.impact player @a ~ ~1 ~ 5 1
execute as @a[scores={Ev_Sword_c=85..,Ev_Sword_t=3..}] at @s as @e[distance=0.1..15,type=!marker,type=!item_display,type=!interaction] at @s run damage @s 20 minecraft:generic by @p
execute as @a[scores={Ev_Sword_c=85..,Ev_Sword_t=3..}] at @s unless entity @e[distance=0.1..15,type=!marker,type=!item_display,type=!interaction] run playsound minecraft:block.fire.extinguish player @s ~ ~1 ~ 0.8 2
scoreboard players reset @a[scores={Ev_Sword_t=3..}] Ev_Sword_c
scoreboard players reset @a[scores={Ev_Sword_t=3..}] Ev_Sword_t

#soul
effect give @e[tag=soul] invisibility 1 1 true
effect give @e[tag=soul] strength 1 0 true
execute as @e[tag=soul] at @s run particle minecraft:soul_fire_flame ~ ~0.5 ~ 0 0 0 0 1 force @a
execute as @e[tag=soul] at @s run attribute @s follow_range base set 20
execute as @e[tag=soul] at @s run item replace entity @s weapon.mainhand with air

#loot_table/devastated_ruins
execute as @e[tag=devastated_ruins] at @s run data modify block ~ ~-1 ~ LootTable set value "magic:devastated_ruins"
kill @e[tag=devastated_ruins]
#loot_table/camp_1
execute as @e[tag=camp_1] at @s run data modify block ~ ~-1 ~ LootTable set value "magic:camp_1"
kill @e[tag=camp_1]

#biome/inverted
execute as @a at @s if biome ~ ~ ~ magic:biome_inverted run particle minecraft:ash ~ ~ ~ 5 5 5 1 20
execute as @a at @s if biome ~ ~ ~ magic:biome_inverted run particle minecraft:falling_dust{block_state:{Name:"gray_wool",Properties:{}}} ~ ~1 ~ 5 5 5 0 10
execute as @e[type=vex,tag=!morment_born] at @s if biome ~ ~ ~ magic:biome_inverted run tag @s add soul
#biome/inverted_sea
execute as @a at @s if biome ~ ~ ~ magic:biome_inverted_sea run particle minecraft:ash ~ ~ ~ 5 5 5 1 20
execute as @a at @s if biome ~ ~ ~ magic:biome_inverted_sea run particle minecraft:falling_dust{block_state:{Name:"gray_wool",Properties:{}}} ~ ~1 ~ 5 5 5 0 5
execute as @e[type=vex,tag=!morment_born] at @s if biome ~ ~ ~ magic:biome_inverted_sea run tag @s add soul

#dimension/inverted

#morment_born(一番最後に置く)
tag @e[tag=!morment_born] add morment_born
