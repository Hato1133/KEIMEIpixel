# 共通ストレージから一時変数にデータを取得して、以下のプロセスを簡潔にします
$data modify storage keimei:storage root.temp.module set from storage keimei:storage root.context_schedule[$(iteration)]
# ティックをスコアに渡して比較
execute store result score #stored_tick keimei.dummy run data get storage keimei:storage root.temp.module.tick
# ティックを比較
execute if score #stored_tick keimei.dummy = #actual_tick keimei.dummy run function keimeipixcel:technical/context_schedule/execute_module with storage keimei:storage root.temp

# 最大反復回数に達した場合は失敗し、実際の反復をストレージに保存
scoreboard players add #iterations keimei.dummy 1
execute if score #iterations keimei.dummy >= #max_iterations keimei.dummy run return fail
execute store result storage keimei:storage root.temp.iteration int 1 run scoreboard players get #iterations keimei.dummy

# 反復処理
function keimeipixcel:technical/context_schedule/iterate with storage keimei:storage root.temp
