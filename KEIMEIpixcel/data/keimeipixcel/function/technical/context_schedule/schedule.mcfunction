# このシステムは、IDを持つ関数を特定の遅延でスケジュールすることを目的としています
# コールバックは、スケジュールを呼び出した同じエンティティでコマンドを実行する必要があります

# まず、モジュールを作成して共通ストレージに追加する必要があります
# これにより後で共通ストレージを反復処理して重要なデータを取得できます
# 

# モジュールの構造
# {tick:50122,function:"asd",id:"12314"}

# モジュールをクリーン
data remove storage keimei:storage root.temp.context_schedule.module
# IDを生成
execute store result storage keimei:storage root.temp.context_schedule.module.id int 1 run scoreboard players add #global keimei.id 1
# プレイヤーにIDを設定
function keimeipixcel:technical/context_schedule/insert_id with storage keimei:storage root.temp.context_schedule.module

# モジュールがコールバックされるティックを計算
execute store result score #target_tick keimei.dummy run time query gametime
# モジュールに設定
$execute store result storage keimei:storage root.temp.context_schedule.module.tick int 1 run scoreboard players add #target_tick keimei.dummy $(ticks)

# モジュールに関数を挿入
$data modify storage keimei:storage root.temp.context_schedule.module.function set value "$(function)"
# モジュールを共通ストレージに追加
data modify storage keimei:storage root.context_schedule append from storage keimei:storage root.temp.context_schedule.module

# コールバックをスケジュール
$schedule function keimeipixcel:technical/context_schedule/callback $(ticks)t append
