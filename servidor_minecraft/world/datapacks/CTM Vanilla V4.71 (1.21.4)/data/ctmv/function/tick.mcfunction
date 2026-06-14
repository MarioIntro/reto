#ON WORLD CREATION / DAPATACK INSTALLATION
execute if entity @a run scoreboard objectives add Lobby dummy
execute unless score setupDatapack Lobby matches 1 run function ctmv:setup

#OPTIMIZATION: run functions depending on moment
execute if score onLobby Game matches 1 run function ctmv:lobby/tick_lobby
execute if score playing Game matches 1 run function ctmv:game/tick_game

#Item obtained check (multiplayer recursion fix)
execute if score recursionFix ItemsUpdate matches 1.. run scoreboard players remove recursionFix ItemsUpdate 1

#"/trigger" commands
scoreboard players enable @a objectives
execute as @a unless score @s objectives matches 0 run function ctmv:items_scoreboard/trigger_objectives/command
execute as @a run function ctmv:items_scoreboard/trigger_objectives/detect_sneaking

#Stop player movement when required
execute if score resting Game matches 1 run function ctmv:game/stop_player_movement/constant_teleport