# アクションを実行するエンティティを検出
execute if entity @s[tag=keimei.explosive_arrow,predicate=keimeipixcel:entity/in_ground] run function keimeipixcel:entity/explosive_arrow/explode_in_ground
execute if entity @s[tag=keimei.fire_circle] run function keimeipixcel:entity/fire_circle/tick
