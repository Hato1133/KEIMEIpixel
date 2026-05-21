# Iron Ingot Generator Tick Function
scoreboard objectives add iron_ingot_timer dummy
scoreboard objectives add iron_ingot_random dummy
execute as @e[tag=iron_ingot_gen] run scoreboard players remove @s[scores={iron_ingot_timer=0..}] iron_ingot_timer 1
execute as @e[tag=iron_ingot_gen] at @s run execute if score @s iron_ingot_timer matches 0 run execute store result score @s iron_ingot_random run random value 1..10
execute as @e[tag=iron_ingot_gen,scores={iron_ingot_random=1}] at @s run execute if score @s iron_ingot_timer matches 0 run summon item ~ ~1 ~ \
{      \
Tags:["ingots"],                                                          \
Item:{                                                          \
    id:"minecraft:music_disc_11",                               \
    components:{                                                \
        "!minecraft:jukebox_playable": {},                      \
        "minecraft:item_model": "minecraft:iron_ingot",         \
        "minecraft:max_stack_size": 64,                         \
        "minecraft:custom_data": "{ib:{Id:iron_ingot_rare}}",   \
        "minecraft:lore": [                                     \
            {                                                   \
            "text": "珍しい鉄のインゴット",                       \
            "italic": false                                     \
            },                                                  \
            {                                                   \
            "text": "自陣に持ち帰ると2ポイント獲得",               \
            "italic": false,"color": "aqua"                   \
            }                                                   \
            ],                                                  \
        "minecraft:item_name": [                                \
        {                                                       \
        "text": "Iron Ingot","color": "aqua"                  \
        }                                                       \
        ],                                                      \
        "minecraft:enchantment_glint_override": true            \
        }                                                       \
    }                                                           \
}

execute as @e[tag=iron_ingot_gen,scores={iron_ingot_random=2..10}] at @s run execute if score @s iron_ingot_timer matches 0 run summon item ~ ~1 ~ \
{      \
Tags:["ingots"],                                                          \
Item:{                                                          \
    id:"minecraft:music_disc_11",                               \
    components:{                                                \
        "!minecraft:jukebox_playable": {},                      \
        "minecraft:item_model": "minecraft:iron_ingot",         \
        "minecraft:max_stack_size": 64,                         \
        "minecraft:custom_data": "{ib:{Id:iron_ingot_normal}}", \
        "minecraft:lore": [                                     \
            {                                                   \
            "text": "どこにでもある鉄のインゴット",               \
            "italic": false                                     \
            },                                                  \
            {                                                   \
            "text": "自陣に持ち帰ると1ポイント獲得",               \
            "italic": false,                                    \
            "color": "aqua"                                   \
            }                                                   \
            ],                                                  \
        "minecraft:item_name": [                                \
        {                                                       \
        "text": "Iron Ingot","color": "white"                  \
        }                                                       \
        ],                                                      \
        "minecraft:enchantment_glint_override": false           \
        }                                                       \
    }                                                           \
}

execute as @e[tag=iron_ingot_gen,scores={iron_ingot_timer=0}] at @s run execute store result score @s iron_ingot_timer run random value 400..800

# Gold Ingot Generator Tick Function
scoreboard objectives add gold_ingot_timer dummy
scoreboard objectives add gold_ingot_random dummy
execute as @e[tag=gold_ingot_gen] run scoreboard players remove @s[scores={gold_ingot_timer=0..}] gold_ingot_timer 1
execute as @e[tag=gold_ingot_gen] at @s run execute if score @s gold_ingot_timer matches 0 run execute store result score @s gold_ingot_random run random value 1..10
execute as @e[tag=gold_ingot_gen,scores={gold_ingot_random=1}] at @s run execute if score @s gold_ingot_timer matches 1 run summon item ~ ~1 ~ \
{   \       
Tags:["ingots"],                                                     \
Item:{                                                          \
    id:"minecraft:music_disc_11",                               \
    components:{                                                \
        "!minecraft:jukebox_playable": {},                      \
        "minecraft:item_model": "minecraft:gold_ingot",         \
        "minecraft:max_stack_size": 64,                         \
        "minecraft:custom_data": "{ib:{Id:gold_ingot_rare}}",   \
        "minecraft:lore": [                                     \
            {                                                   \
            "text": "珍しい金のインゴット",                       \
            "italic": false                                     \
            },                                                  \
            {                                                   \
            "text": "自陣に持ち帰ると8ポイント獲得",               \
            "italic": false,"color": "aqua"                   \
            }                                                   \
            ],                                                  \
        "minecraft:item_name": [                                \
        {                                                       \
        "text": "Gold Ingot","color": "aqua"                  \
        }                                                       \
        ],                                                      \
        "minecraft:enchantment_glint_override": true            \
        }                                                       \
    }                                                           \
}

execute as @e[tag=gold_ingot_gen,scores={gold_ingot_random=2..10}] at @s run execute if score @s gold_ingot_timer matches 1 run summon item ~ ~1 ~ \
{   \       
Tags:["ingots"],                                                     \
Item:{                                                          \
    id:"minecraft:music_disc_11",                               \
    components:{                                                \
        "!minecraft:jukebox_playable": {},                      \
        "minecraft:item_model": "minecraft:gold_ingot",         \
        "minecraft:max_stack_size": 64,                         \
        "minecraft:custom_data": "{ib:{Id:gold_ingot_normal}}", \
        "minecraft:lore": [                                     \
            {                                                   \
            "text": "どこにでもある金のインゴット",               \
            "italic": false                                     \
            },                                                  \
            {                                                   \
            "text": "自陣に持ち帰ると4ポイント獲得",               \
            "italic": false,                                    \
            "color": "aqua"                                   \
            }                                                   \
            ],                                                  \
        "minecraft:item_name": [                                \
        {                                                       \
        "text": "Gold Ingot","color": "white"                  \
        }                                                       \
        ],                                                      \
        "minecraft:enchantment_glint_override": false           \
        }                                                       \
    }                                                           \
}

execute as @e[tag=gold_ingot_gen,scores={gold_ingot_timer=0}] at @s run execute store result score @s gold_ingot_timer run random value 400..800

# Emerald Ingot Generator Tick Function
scoreboard objectives add emerald_ingot_timer dummy
scoreboard objectives add emerald_ingot_random dummy
execute as @e[tag=emerald_ingot_gen] run scoreboard players remove @s[scores={emerald_ingot_timer=0..}] emerald_ingot_timer 1
execute as @e[tag=emerald_ingot_gen] at @s run execute if score @s emerald_ingot_timer matches 0 run execute store result score @s emerald_ingot_random run random value 1..10
execute as @e[tag=emerald_ingot_gen,scores={emerald_ingot_random=1}] at @s run execute if score @s emerald_ingot_timer matches 0 run summon item ~ ~1 ~ \
{   \       
Tags:["ingots"],                                                     \
Item:{                                                          \
    id:"minecraft:music_disc_11",                               \
    components:{                                                \
        "!minecraft:jukebox_playable": {},                      \
        "minecraft:item_model": "minecraft:emerald",            \
        "minecraft:max_stack_size": 64,                         \
        "minecraft:custom_data": "{ib:{Id:emerald_ingot_rare}}",\
        "minecraft:lore": [                                     \
            {                                                   \
            "text": "珍しいエメラルド",                           \
            "italic": false                                     \
            },                                                  \
            {                                                   \
            "text": "自陣に持ち帰ると18ポイント獲得",               \
            "italic": false,"color": "aqua"                   \
            }                                                   \
            ],                                                  \
        "minecraft:item_name": [                                \
        {                                                       \
        "text": "Emerald","color": "aqua"                  \
        }                                                       \
        ],                                                      \
        "minecraft:enchantment_glint_override": true            \
        }                                                       \
    }                                                           \
}

execute as @e[tag=emerald_ingot_gen,scores={emerald_ingot_random=2..10}] at @s run execute if score @s emerald_ingot_timer matches 0 run summon item ~ ~1 ~ \
{   \
Tags:["ingots"],                                                            \
Item:{                                                          \
    id:"minecraft:music_disc_11",                               \
    components:{                                                \
        "!minecraft:jukebox_playable": {},                      \
        "minecraft:item_model": "minecraft:emerald",            \
        "minecraft:max_stack_size": 64,                         \
        "minecraft:custom_data": "{ib:{Id:emerald_ingot_normal}}",\
        "minecraft:lore": [                                     \
            {                                                   \
            "text": "どこにでもあるエメラルド",                   \
            "italic": false                                     \
            },                                                  \
            {                                                   \
            "text": "自陣に持ち帰ると9ポイント獲得",               \
            "italic": false,                                    \
            "color": "aqua"                                   \
            }                                                   \
            ],                                                  \
        "minecraft:item_name": [                                \
        {                                                       \
        "text": "Emerald","color": "white"                  \
        }                                                       \
        ],                                                      \
        "minecraft:enchantment_glint_override": false           \
        }                                                       \
    }                                                           \
}

execute as @e[tag=emerald_ingot_gen,scores={emerald_ingot_timer=0}] at @s run execute store result score @s emerald_ingot_timer run random value 600..1000
scoreboard objectives add ingot_timer dummy
execute as @e[tag=ingots] at @s run scoreboard players add @s ingot_timer 1
execute as @e[tag=ingots] at @s run execute if score @s ingot_timer matches 600 run kill @s