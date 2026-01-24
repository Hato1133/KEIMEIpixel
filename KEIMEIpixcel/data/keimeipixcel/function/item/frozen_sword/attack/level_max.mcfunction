advancement revoke @s only keimeipixcel:player_hurt_entity/frozen_sword/level_max

tag @s add keimei.frozen_sword.user
execute as @e[tag=!keimei.frozen_sword.user,predicate=keimeipixcel:entity/damaged] at @s run function keimeipixcel:item/frozen_sword/effect/level_max
tag @s remove keimei.frozen_sword.user
