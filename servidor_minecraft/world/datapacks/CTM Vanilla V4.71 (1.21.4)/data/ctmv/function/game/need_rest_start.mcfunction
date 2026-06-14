#Reset score
scoreboard players reset @a NEEDSOMEREST

#Disable "/trigger" commands
scoreboard players reset @a voteToStartGame
scoreboard players reset @a startGameWithoutVoting
scoreboard players reset @a changeConfig
scoreboard players reset @a GRANTADVANCEMENTS

scoreboard players reset @a RESETGAME
scoreboard players reset @a NEEDSOMEREST

#TP all players to stop movement
execute if score restingLoop Game matches 0 run gamemode spectator @a
execute if score restingLoop Game matches 0 run function ctmv:game/stop_player_movement/summon_markers

#Stop timer + Mob AI + remove being able to press REST button
execute if score restingLoop Game matches 0 run schedule clear ctmv:timer/loop
execute if score restingLoop Game matches 0 as @e[type=!player] run data merge entity @s {NoAI:1b,Silent:1b}

execute if score restingLoop Game matches 0 run scoreboard players set canRest Game 0

#Change gamerules
execute if score restingLoop Game matches 0 run gamerule disableRaids true
execute if score restingLoop Game matches 0 run gamerule doDaylightCycle false
execute if score restingLoop Game matches 0 run gamerule doFireTick false
execute if score restingLoop Game matches 0 run gamerule doInsomnia false
execute if score restingLoop Game matches 0 run gamerule doMobSpawning false
execute if score restingLoop Game matches 0 run gamerule doPatrolSpawning false
execute if score restingLoop Game matches 0 run gamerule doTraderSpawning false
execute if score restingLoop Game matches 0 run gamerule doVinesSpread false
execute if score restingLoop Game matches 0 run gamerule doWardenSpawning false
execute if score restingLoop Game matches 0 run gamerule doWeatherCycle false
execute if score restingLoop Game matches 0 run gamerule randomTickSpeed 0

#Title and tellraw
execute if score restingLoop Game matches 0 run title @a times 10 50 60
execute if score restingLoop Game matches 0 if score language Config matches 0 run title @a subtitle {"text":"Go do anything you want ;)","color":"dark_green"}
execute if score restingLoop Game matches 0 if score language Config matches 0 run title @a title {"text":"LET'S REST","color":"green","bold": true}

execute if score restingLoop Game matches 0 if score language Config matches 1 run title @a subtitle {"text":"Ve a hacer lo que quieras ;)","color":"dark_green"}
execute if score restingLoop Game matches 0 if score language Config matches 1 run title @a title {"text":"UN DESCANSITO","color":"green","bold": true}

execute if score restingLoop Game matches 0 at @a positioned ~ ~1 ~ run function ctmv:effects/expansive_circle_endrod
execute if score restingLoop Game matches 0 at @a run particle happy_villager ~ ~1 ~ 0.6 1 0.6 1 200 normal
execute if score restingLoop Game matches 0 as @a at @s run playsound entity.evoker.cast_spell player @s ~ ~ ~ 3 0 1
execute if score restingLoop Game matches 0 as @a at @s run playsound block.end_portal_frame.fill player @s ~ ~ ~ 3 1.5 1

execute if score restingLoop Game matches 0 if score language Config matches 0 run tellraw @a ["",{"text":"⌂⏵ ","color":"green"},{"text":"[CLICK]","bold":true,"color":"dark_green","clickEvent":{"action":"run_command","value":"/trigger STOPRESTING"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Note that you "},{"text":"won't be able","color":"red"},{"text":" to\ntake a rest until next game"}]}},{"text":" if you want to "},{"text":"stop resting","color":"green"},{"text":"."}]
execute if score restingLoop Game matches 0 if score language Config matches 1 run tellraw @a ["",{"text":"⌂⏵ ","color":"green"},{"text":"[CLICK]","bold":true,"color":"dark_green","clickEvent":{"action":"run_command","value":"/trigger STOPRESTING"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Ten en cuenta que "},{"text":"no podrás","color":"red"},{"text":" hacer\notro descanso hasta la próxima partida"}]}},{"text":" si quieres "},{"text":"dejar de descansar","color":"green"},{"text":"."}]


#UPDATE BOSSBAR
execute if score restingLoop Game matches 0 if score language Config matches 0 run bossbar set resting name [{"text":"⌂⏵","color":"dark_green"},{"text":" You can rest for ","color":"#B0FFA1"},{"text":"5 minutes ","color":"green","bold":true},{"text":"⏴⌂","color":"dark_green","bold":false}]
execute if score restingLoop Game matches 0 if score language Config matches 1 run bossbar set resting name [{"text":"⌂⏵","color":"dark_green"},{"text":" Puedes descansar por ","color":"#B0FFA1"},{"text":"5 minutos ","color":"green","bold":true},{"text":"⏴⌂","color":"dark_green","bold":false}]

execute if score restingLoop Game matches 0 run scoreboard players set time Resting 300
execute if score restingLoop Game matches 0 run bossbar set resting max 300
execute if score restingLoop Game matches 0 run bossbar set resting value 300
execute if score restingLoop Game matches 0 run bossbar set resting players @a

execute if score restingLoop Game matches 1.. run scoreboard players remove time Resting 1
execute if score restingLoop Game matches 1.. store result bossbar resting value run scoreboard players get time Resting

#Stop resting after 5 minutes
execute if score restingLoop Game matches 300 run return run function ctmv:game/need_rest_end


#Loop waiting for players to stop resting
execute if score restingLoop Game matches 0 run scoreboard players set resting Game 1
execute unless score restingLoop Game matches 300 run schedule function ctmv:game/need_rest_start 1s
scoreboard players add restingLoop Game 1