# 進捗を剥奪し、再度使用できるようにする
advancement revoke @s only keimeipixcel:consume_item/fire_circle

# ファイアボールを発射
tag @s add keimei.fireball_shooter
execute anchored eyes positioned ^ ^ ^ summon fireball run function keimeipixcel:item/fire_circle/initiate_fireball
tag @s remove keimei.fireball_shooter

# アイテムを返却します。2ティックの遅延は、正確に1ティック遅延で与えるとアイテムが破損するため使用されます。
execute if entity @s[gamemode=!creative,gamemode=!spectator] run function keimeipixcel:technical/context_schedule/schedule {ticks:2,function:"keimeipixcel:item/fire_circle/give_back"}
