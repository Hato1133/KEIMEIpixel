# 複数のチェックを避けるためにエンティティを処理します。これにより述語チェックを1ティックのみに削減します
execute as @e[type=#keimeipixcel:entity/tag/should_check,tag=!keimei.processed] run function keimeipixcel:entity/technical/process_entity

# エンティティとしてティック
execute as @e[tag=keimei.tick,type=#keimeipixcel:scheduled/should_tick] at @s run function keimeipixcel:entity/technical/tick
