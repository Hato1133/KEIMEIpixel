# 進捗を剥奪し、再度使用できるようにする
advancement revoke @s only keimeipixcel:using_item/use_frozen_sword
# チャージがすでに最大値を超えている場合は失敗を返す
execute if score @s keimei.frozen_sword.charge matches 1400.. run return fail
# 進捗は毎ティックではなく10ティックごとに実行されるため、10増分で値を加える
scoreboard players add @s keimei.frozen_sword.charge 100

# 後でティッキングするためタグを追加
tag @s add keimei.used.fozen_sword
