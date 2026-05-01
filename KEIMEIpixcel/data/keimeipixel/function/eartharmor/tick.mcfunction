scoreboard players add @a eartharmor_replace 1
execute as @a[tag=eartharmor_user] at @s run function keimeipixel:20_second {predicate:have_eartharmor,score_board:eartharmor_replace}
tag @a[tag=eartharmor_user,scores={eartharmor_replace=398..400}] remove eartharmor_user