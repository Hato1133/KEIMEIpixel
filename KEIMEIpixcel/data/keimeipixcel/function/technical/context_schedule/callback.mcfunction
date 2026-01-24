# コールバックシステムは共通ストレージ全体を反復処理します

# 実際のティックと同じティックを持つモジュールが見つかると、
# IDとして関数を実行し、モジュールを削除します



# 共通ストレージ（配列）の長さを取得します。これが最大反復回数になります。
# 反復回数をリセット
# マクロが動作するようにイテレーションを0に設定
execute store result score #max_iterations keimei.dummy run data get storage keimei:storage root.context_schedule
scoreboard players set #iterations keimei.dummy 0
data modify storage keimei:storage root.temp.iteration set value 0

# 実際のティックを取得
execute store result score #actual_tick keimei.dummy run time query gametime

# 共通ストレージ（配列）を反復処理
function keimeipixcel:technical/context_schedule/iterate with storage keimei:storage root.temp
