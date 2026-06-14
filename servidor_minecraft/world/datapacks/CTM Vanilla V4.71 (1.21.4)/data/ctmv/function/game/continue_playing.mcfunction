#Reset score
scoreboard players reset @a CONTINUEPLAYING


#Reset lose sequence
schedule clear ctmv:game/lose_sequence
scoreboard players set time LoseSequence 0

#Resume player movement
function ctmv:game/stop_player_movement/kill_markers
gamemode survival @a

#Stop "resting"
scoreboard players set resting Game 0

#Give AI to mobs
execute as @e[type=!player] run data merge entity @s {NoAI:0b,Silent:0b}

#Resume timer
function ctmv:timer/loop


#TITLE AND SOUNDS
title @a times 5 65 40
execute if score language Config matches 0 run title @a subtitle {"text":"✉⏵ Obtain all the items you are missing","color":"dark_green"}
execute if score language Config matches 0 run title @a title {"text":"LET'S CONTINUE!","color":"green"}

execute if score language Config matches 1 run title @a subtitle {"text":"✉⏵ Consigue los objetos que te faltan","color":"dark_green"}
execute if score language Config matches 1 run title @a title {"text":"¡CONTINÚA JUGANDO!","color":"green"}

execute as @a at @s run playsound block.note_block.bit player @s ~ ~ ~ 3 2 1
execute as @a at @s run playsound block.end_portal.spawn player @s ~ ~ ~ 3 1.5 1

execute at @a positioned ~ ~0.2 ~ run function ctmv:effects/ascending_circle_endrod
execute as @a run function ctmv:items_scoreboard/trigger_objectives/command