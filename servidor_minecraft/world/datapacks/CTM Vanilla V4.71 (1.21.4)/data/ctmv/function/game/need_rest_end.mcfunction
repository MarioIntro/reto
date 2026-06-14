#Reset score
scoreboard players reset @a STOPRESTING


#Stop resting loop
schedule clear ctmv:game/need_rest_start
scoreboard players set restingLoop Game 0
scoreboard players set resting Game 0

#Resume player movement
function ctmv:game/stop_player_movement/kill_markers
gamemode survival @a

#Give AI to mobs
execute as @e[type=!player] run data merge entity @s {NoAI:0b,Silent:0b}

#Resume timer
function ctmv:timer/loop

#Resume gamerules
gamerule disableRaids false
gamerule doDaylightCycle true
gamerule doFireTick true
gamerule doInsomnia true
gamerule doMobSpawning true
gamerule doPatrolSpawning true
gamerule doTraderSpawning true
gamerule doVinesSpread true
gamerule doWardenSpawning true
gamerule doWeatherCycle true
gamerule randomTickSpeed 3

#Remove bossbar (only visibility)
bossbar set resting players @a[tag=nobodyLmao]

#Title and sounds
title @a times 5 50 60
execute if score language Config matches 0 run title @a subtitle {"text":"You have already rested enough","color":"dark_green"}
execute if score language Config matches 0 run title @a title {"text":"LET'S PLAY!","color":"green","bold": true}

execute if score language Config matches 1 run title @a subtitle {"text":"Ya has descansado suficiente","color":"dark_green"}
execute if score language Config matches 1 run title @a title {"text":"¡A JUGAR!","color":"green","bold": true}

execute as @a at @s run playsound block.note_block.bit player @s ~ ~ ~ 3 2 1
execute as @a at @s run playsound block.end_portal.spawn player @s ~ ~ ~ 3 1.5 1

#Particles on players
execute at @a positioned ~ ~0.2 ~ run function ctmv:effects/ascending_circle_endrod
execute at @a run particle totem_of_undying ~ ~1.3 ~ 0.2 0.4 0.2 0.5 150 normal
execute at @a run particle firework ~ ~1.3 ~ 0.2 0.4 0.2 0.15 50 normal