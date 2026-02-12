execute as @e[type=arrow,nbt={data:{ib:{Id:"ender_arrow"}}},tag=!id_assigned] at @s run execute store result score @s ender_arrow_ID run data get entity @p UUID[0] 
execute as @e[type=arrow,nbt={data:{ib:{Id:"ender_arrow"}}},tag=!id_assignend] at @s run tag add id_assigned

tell @a aaaaa
