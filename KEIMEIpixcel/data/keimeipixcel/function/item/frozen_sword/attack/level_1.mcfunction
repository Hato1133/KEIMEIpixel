advancement revoke @s only keimeipixcel:player_hurt_entity/frozen_sword/level_1

tag @s add keimei.frozen_sword.user
execute as @e[tag=!keimei.frozen_sword.user,predicate=keimeipixcel:entity/damaged,predicate=keimeipixcel:entity/attacked_by/frozen_sword_user] at @s run function keimeipixcel:item/frozen_sword/effect/level_1
tag @s remove keimei.frozen_sword.user
