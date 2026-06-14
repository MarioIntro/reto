#SEQUENCE
execute unless score time LoseSequence matches 20 run schedule function ctmv:game/lose_sequence 5t

#Stop timer and other things
execute if score time LoseSequence matches 1 run schedule clear ctmv:timer/loop
execute if score time LoseSequence matches 0 as @e[type=!player] run data merge entity @s {NoAI:1b,Silent:1b}
execute if score time LoseSequence matches 1 run function ctmv:timer/display
execute if score time LoseSequence matches 0 run function ctmv:obtain_item/stop_music_discs

execute if score time LoseSequence matches 0 as @a at @s run playsound block.fire.extinguish player @s ~ ~ ~ 3 0.7 1
execute if score time LoseSequence matches 0 as @a at @s run playsound block.beacon.power_select player @s ~ ~ ~ 3 0 1
execute if score time LoseSequence matches 0 at @a run particle flame ~ ~0.8 ~ 0.3 0.3 0.3 0.1 100 normal
execute if score time LoseSequence matches 0 at @a run particle large_smoke ~ ~0.5 ~ 0.3 0.3 0.3 0.1 150 normal
execute if score time LoseSequence matches 0 at @a positioned ~ ~0.2 ~ run function ctmv:effects/ascending_circle_endrod

#Title and sounds
execute if score time LoseSequence matches 9 run title @a times 20 100 20
execute if score time LoseSequence matches 9 if score language Config matches 0 run title @a subtitle {"text":"Time ran out!","color":"red"}
execute if score time LoseSequence matches 9 if score language Config matches 0 run title @a title ["",{"text":"\u231b ","color":"dark_red"},{"text":"YOU LOST","bold":true,"color":"red"},{"text":" \u231b","color":"dark_red"}]

execute if score time LoseSequence matches 9 if score language Config matches 1 run title @a subtitle {"text":"¡Se acabó el tiempo!","color":"red"}
execute if score time LoseSequence matches 9 if score language Config matches 1 run title @a title ["",{"text":"\u231b ","color":"dark_red"},{"text":"HAS PERDIDO","bold":true,"color":"red"},{"text":" \u231b","color":"dark_red"}]

execute if score time LoseSequence matches 9 as @a at @s run playsound block.note_block.bass player @s ~ ~ ~ 3 0 1
execute if score time LoseSequence matches 9 as @a at @s run playsound block.note_block.bass player @s ~ ~ ~ 3 0 1
execute if score time LoseSequence matches 9 as @a at @s run playsound entity.villager.no player @s ~ ~ ~ 3 0.8 1
execute if score time LoseSequence matches 9 as @a at @s run playsound block.anvil.land player @s ~ ~ ~ 3 0 1
execute if score time LoseSequence matches 9 at @a run particle dust{color:[1.000,0.000,0.000],scale:1} ~ ~1 ~ 0.5 0.7 0.5 0 200 normal
execute if score time LoseSequence matches 9 at @a run particle angry_villager ~ ~1 ~ 0.5 0.7 0.5 0 20 normal


#CONTINUE PLAYING OR RESET GAME?
execute if score time LoseSequence matches 16 run scoreboard players enable @a CONTINUEPLAYING
execute if score time LoseSequence matches 16 if score language Config matches 0 run tellraw @a ["",{"text":"\u23f3\u23f5","color":"red"},{"text":" You ran out of time!","color":"#FFADAE"},{"text":"\n\n"},{"text":"\u2605\u23f5","color":"green"},{"text":" What do you want to do?\n\n"},{"text":"[CONTINUE PLAYING THIS GAME]","bold":true,"color":"dark_green","clickEvent":{"action":"run_command","value":"/trigger CONTINUEPLAYING"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to "},{"text":"continue playing","color":"green"},{"text":" just where you\nwere "},{"text":"until you obtain all the items","color":"dark_green"}]}},{"text":" "},{"text":"[RESET GAME]","bold":true,"color":"dark_red","clickEvent":{"action":"run_command","value":"/trigger RESETGAME"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to "},{"text":"reset","color":"red"},{"text":" the game and "},{"text":"lose\nall the progress","color":"dark_red"},{"text":" you've done"}]}}]
execute if score time LoseSequence matches 16 if score language Config matches 1 run tellraw @a ["",{"text":"\u23f3\u23f5","color":"red"},{"text":" ¡Se te ha acabado el tiempo!","color":"#FFADAE"},{"text":"\n\n"},{"text":"\u2605\u23f5","color":"green"},{"text":" ¿Qué te gustaría hacer?\n\n"},{"text":"[SEGUIR JUGANDO ESTA PARTIDA]","bold":true,"color":"dark_green","clickEvent":{"action":"run_command","value":"/trigger CONTINUEPLAYING"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Click para "},{"text":"seguir jugando","color":"green"},{"text":" justo donde\nestabas "},{"text":"hasta que obtengas todos los objetos","color":"dark_green"}]}},{"text":" "},{"text":"[REINICIAR PARTIDA]","bold":true,"color":"dark_red","clickEvent":{"action":"run_command","value":"/trigger RESETGAME"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Click para "},{"text":"reiniciar","color":"red"},{"text":" la partida y "},{"text":"perder\ntodo el progreso","color":"dark_red"},{"text":" que has hecho"}]}}]

execute if score time LoseSequence matches 16 as @a at @s run playsound ui.toast.in player @s ~ ~ ~ 3 1 1

#Enable "/trigger CONTINUEPLAYING" command
scoreboard players enable @a CONTINUEPLAYING
execute as @a unless score @s CONTINUEPLAYING matches 0 run function ctmv:game/continue_playing

#Stop player movement
execute if score time LoseSequence matches 16 run gamemode spectator @a
execute if score time LoseSequence matches 16 run function ctmv:game/stop_player_movement/summon_markers
execute if score time LoseSequence matches 16 run scoreboard players set resting Game 1


#Show statistics
execute if score time LoseSequence matches 20 as @a at @s run playsound entity.evoker.cast_spell player @s ~ ~ ~ 3 0 1
execute if score time LoseSequence matches 20 run tellraw @a {"text": ""}
execute if score time LoseSequence matches 20 run function ctmv:game/show_stats

#Resume player movement
execute if score time LoseSequence matches 20 run function ctmv:game/stop_player_movement/kill_markers

#Give AI to mobs
execute if score time LoseSequence matches 20 as @e[type=!player] run data merge entity @s {NoAI:0b,Silent:0b}

#Resume timer
execute if score time LoseSequence matches 20 run function ctmv:timer/loop

#Reset score and exit function
execute unless score time LoseSequence matches 17 run scoreboard players add time LoseSequence 1
execute if score time LoseSequence matches 21 run schedule clear ctmv:game/lose_sequence
execute if score time LoseSequence matches 21 run scoreboard players set time LoseSequence 0