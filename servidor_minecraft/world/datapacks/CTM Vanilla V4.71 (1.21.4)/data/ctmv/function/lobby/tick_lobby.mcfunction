#Maintain a clean inventory look + wool animation on first and last slots
execute if score time StartSequence matches 0 if entity @a[gamemode=adventure] run function ctmv:lobby/clean_inventory
execute if score time StartSequence matches 0 if entity @a[gamemode=adventure] run function ctmv:lobby/wool_animation_inventory

#Detect when an option is pressed
execute if score option Config matches 1.. run function ctmv:lobby/update_config

#Disable "/trigger" commands from Game
scoreboard players reset @a RESETGAME
scoreboard players reset @a NEEDSOMEREST
scoreboard players reset @a CONTINUEPLAYING

#"/trigger" commands
scoreboard players enable @a voteToStartGame
execute as @a unless score @s voteToStartGame matches 0 run function ctmv:lobby/vote_to_start

scoreboard players enable @a startGameWithoutVoting
execute as @a[tag=admin] unless score @s startGameWithoutVoting matches 0 run function ctmv:game/start_sequence/start_without_voting

scoreboard players enable @a changeConfig
execute as @a unless score @s changeConfig matches 0 run function ctmv:lobby/trigger_config_command

scoreboard players enable @a GRANTADVANCEMENTS
execute as @a[tag=admin] unless score @s GRANTADVANCEMENTS matches 0 run function ctmv:game/grant_advancements

#Monument particles + levitation
execute at @e[tag=monument_center] run particle totem_of_undying ~ ~1 ~ 7 1 1 0 1 normal
execute at @e[tag=monument_center] positioned ~ ~-60 ~ run effect give @a[distance=..55] levitation 1 15 true

#Prevent players from exploring before starting game
execute at @e[tag=prevent_exploring_on_lobby] as @a[distance=20..] run function ctmv:lobby/prevent_exploration