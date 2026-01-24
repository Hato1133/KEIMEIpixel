# 進捗を剥奪し、再度使用できるようにする
advancement revoke @s only keimeipixcel:consume_item/eartharmor

# エフェクトとメッセージを付与
tellraw @s {"text":"The Cooldown is 20s long.","color":"yellow"}
effect give @s slowness 10 3 true
effect give @s resistance 10 3 true

# アイテムを返却します。2ティックの遅延は、正確に1ティック遅延で与えるとアイテムが破損するため使用されます。
execute if entity @s[gamemode=!creative,gamemode=!spectator] run function keimeipixcel:technical/context_schedule/schedule {ticks:2,function:"keimeipixcel:item/eartharmor/give_back"}
