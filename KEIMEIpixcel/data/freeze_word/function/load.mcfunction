# スコアボードの作成（食べ物を使っている時間を計測）
scoreboard objectives add is_eating minecraft.used:diamond_sword

# ボスバーの作成
bossbar add eat_progress "Freese power charge"
bossbar set eat_progress color blue
bossbar set eat_progress style notched_10
bossbar set eat_progress visible false