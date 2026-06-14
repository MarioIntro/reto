#Display timer
execute as @a run function ctmv:timer/display

#Disable "/trigger" commands from Lobby
scoreboard players reset @a voteToStartGame
scoreboard players reset @a startGameWithoutVoting
scoreboard players reset @a changeConfig
scoreboard players reset @a GRANTADVANCEMENTS

#"/trigger" commands
scoreboard players enable @a RESETGAME
execute as @a unless score @s RESETGAME matches 0 run function ctmv:game/reset_player_feedback

scoreboard players enable @a NEEDSOMEREST
execute as @a unless score @s NEEDSOMEREST matches 0 if score canRest Game matches 1 run function ctmv:game/need_rest_start
execute if score canRest Game matches 0 run scoreboard players reset @a NEEDSOMEREST

scoreboard players enable @a STOPRESTING
execute as @a[gamemode=spectator] unless score @s STOPRESTING matches 0 run function ctmv:game/need_rest_end
execute if score canRest Game matches 0 run scoreboard players reset @a[gamemode=!spectator] STOPRESTING

#Summon boat when player respawns on ocean
execute at @e[tag=spawnpoint] if entity @a[distance=..3] run function ctmv:game/new_coordinates/boat_respawn