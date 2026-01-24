# このシステムは新しいことは知っています！3時間前に変更したばかりです！
# だから何ユニークなものを作ってみます。

# チャージを削除
execute if score @s keimei.frozen_sword.charge matches 1.. run scoreboard players remove @s keimei.frozen_sword.charge 1

function keimeipixcel:item/frozen_sword/display

tag @s remove keimei.frozen_sword.max
tag @s remove keimei.frozen_sword.level.4
tag @s remove keimei.frozen_sword.level.3
tag @s remove keimei.frozen_sword.level.2
tag @s remove keimei.frozen_sword.level.1

execute if score @s keimei.frozen_sword.charge matches 1200.. run return run effect give @s slowness 5 0 false
execute if score @s keimei.frozen_sword.charge matches 810.. run return run tag @s add keimei.frozen_sword.max
execute if score @s keimei.frozen_sword.charge matches 610.. run return run tag @s add keimei.frozen_sword.level.4
execute if score @s keimei.frozen_sword.charge matches 410.. run return run tag @s add keimei.frozen_sword.level.3
execute if score @s keimei.frozen_sword.charge matches 210.. run return run tag @s add keimei.frozen_sword.level.2
execute if score @s keimei.frozen_sword.charge matches 110.. run return run tag @s add keimei.frozen_sword.level.1
execute if score @s keimei.frozen_sword.charge matches 0 run tag @s remove keimei.used.fozen_sword
