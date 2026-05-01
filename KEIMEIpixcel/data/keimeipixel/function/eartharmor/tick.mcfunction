scoreboard players add @a[tag=eartharmor_user] eartharmor_replace 1
function keimeipixel:players/countdown/20_second {predicate:have_eartharmor,score_board:eartharmor_replace}
scoreboard players reset @a[tag=eartharmor_user,scores={eartharmor_replace=399..400}] eartharmor_replace
tag @a[tag=eartharmor_user,scores={eartharmor_replace=398..400}] remove eartharmor_user
execute as @a[tag=!eartharmor_user] at @s run scoreboard players reset @s eartharmor_replace