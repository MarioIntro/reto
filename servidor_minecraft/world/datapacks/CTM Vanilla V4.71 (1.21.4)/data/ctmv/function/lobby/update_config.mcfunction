#WHEN PLAYER CLICKS ON (+ Confirmation message on actionbar):

#Language English:
execute if score option Config matches 1 run scoreboard players set language Config 0
execute if score option Config matches 1 run title @a actionbar ["",{"text":"✔⏵","color":"dark_purple"},{"text":" Changed language to English.","color":"light_purple"}]
#Language Spanish:
execute if score option Config matches 2 run scoreboard players set language Config 1
execute if score option Config matches 2 run title @a actionbar ["",{"text":"✔⏵","color":"dark_purple"},{"text":" Idioma cambiado a Español.","color":"light_purple"}]


#Game mode Normal: 
execute if score option Config matches 3 run scoreboard players set gamemode Config 0
execute if score option Config matches 3 if score language Config matches 0 run title @a actionbar ["",{"text":"✔⏵","color":"dark_purple"},{"text":" Changed game mode to Normal.","color":"light_purple"}]
execute if score option Config matches 3 if score language Config matches 1 run title @a actionbar ["",{"text":"✔⏵","color":"dark_purple"},{"text":" Modo de juego cambiado a Normal.","color":"light_purple"}]
execute if score option Config matches 3 as @a run function ctmv:items_scoreboard/trigger_objectives/command

#Game mode Hard: 
execute if score option Config matches 4 run scoreboard players set gamemode Config 1
execute if score option Config matches 4 if score language Config matches 0 run title @a actionbar ["",{"text":"✔⏵","color":"dark_purple"},{"text":" Changed game mode to Hard.","color":"light_purple"}]
execute if score option Config matches 4 if score language Config matches 1 run title @a actionbar ["",{"text":"✔⏵","color":"dark_purple"},{"text":" Modo de juego cambiado a Difícil.","color":"light_purple"}]
execute if score option Config matches 4 as @a run function ctmv:items_scoreboard/trigger_objectives/command

#Game mode Nightmare: 
execute if score option Config matches 5 run scoreboard players set gamemode Config 2
execute if score option Config matches 5 if score language Config matches 0 run title @a actionbar ["",{"text":"✔⏵","color":"dark_purple"},{"text":" Changed game mode to ☠ Nightmare ☠.","color":"light_purple"}]
execute if score option Config matches 5 if score language Config matches 1 run title @a actionbar ["",{"text":"✔⏵","color":"dark_purple"},{"text":" Modo de juego cambiado a ☠ Pesadilla ☠.","color":"light_purple"}]
execute if score option Config matches 5 as @a run function ctmv:items_scoreboard/trigger_objectives/command


#Toggle UHC Yes:
execute if score option Config matches 6 run scoreboard players set uhc Config 1
execute if score option Config matches 6 run gamerule naturalRegeneration false
execute if score option Config matches 6 if score language Config matches 0 run title @a actionbar ["",{"text":"✔⏵","color":"dark_purple"},{"text":" Activated UHC mode.","color":"light_purple"}]
execute if score option Config matches 6 if score language Config matches 1 run title @a actionbar ["",{"text":"✔⏵","color":"dark_purple"},{"text":" Modo UHC activado.","color":"light_purple"}]

#Toggle UHC No:
execute if score option Config matches 7 run scoreboard players set uhc Config 0
execute if score option Config matches 7 run gamerule naturalRegeneration true
execute if score option Config matches 7 if score language Config matches 0 run title @a actionbar ["",{"text":"✔⏵","color":"dark_purple"},{"text":" Deactivated UHC mode.","color":"light_purple"}]
execute if score option Config matches 7 if score language Config matches 1 run title @a actionbar ["",{"text":"✔⏵","color":"dark_purple"},{"text":" Modo UHC desactivado.","color":"light_purple"}]


#Difficulty Easy:
execute if score option Config matches 8 run scoreboard players set difficulty Config 0
execute if score option Config matches 8 run difficulty easy
execute if score option Config matches 8 if score language Config matches 0 run title @a actionbar ["",{"text":"✔⏵","color":"dark_purple"},{"text":" Minecraft difficulty changed to Easy.","color":"light_purple"}]
execute if score option Config matches 8 if score language Config matches 1 run title @a actionbar ["",{"text":"✔⏵","color":"dark_purple"},{"text":" Dificultad de Minecraft cambiada a Fácil.","color":"light_purple"}]

#Difficulty Normal:
execute if score option Config matches 9 run scoreboard players set difficulty Config 1
execute if score option Config matches 9 run difficulty normal
execute if score option Config matches 9 if score language Config matches 0 run title @a actionbar ["",{"text":"✔⏵","color":"dark_purple"},{"text":" Minecraft difficulty changed to Normal.","color":"light_purple"}]
execute if score option Config matches 9 if score language Config matches 1 run title @a actionbar ["",{"text":"✔⏵","color":"dark_purple"},{"text":" Dificultad de Minecraft cambiada a Normal.","color":"light_purple"}]

#Difficulty Hard:
execute if score option Config matches 10 run scoreboard players set difficulty Config 2
execute if score option Config matches 10 run difficulty hard
execute if score option Config matches 10 if score language Config matches 0 run title @a actionbar ["",{"text":"✔⏵","color":"dark_purple"},{"text":" Minecraft difficulty changed to Hard.","color":"light_purple"}]
execute if score option Config matches 10 if score language Config matches 1 run title @a actionbar ["",{"text":"✔⏵","color":"dark_purple"},{"text":" Dificultad de Minecraft cambiada a Difícil.","color":"light_purple"}]


#Reduce coords Yes:
execute if score option Config matches 11 run scoreboard players set reduceCoord Config 1
execute if score option Config matches 11 if score language Config matches 0 run title @a actionbar ["",{"text":"✔⏵","color":"dark_purple"},{"text":" Activated Reduced Coordinates.","color":"light_purple"}]
execute if score option Config matches 11 if score language Config matches 1 run title @a actionbar ["",{"text":"✔⏵","color":"dark_purple"},{"text":" Coordenadas Reducidas activadas.","color":"light_purple"}]

#Reduce coords No:
execute if score option Config matches 12 run scoreboard players set reduceCoord Config 0
execute if score option Config matches 12 if score language Config matches 0 run title @a actionbar ["",{"text":"✔⏵","color":"dark_purple"},{"text":" Dectivated Reduced Coordinates.","color":"light_purple"}]
execute if score option Config matches 12 if score language Config matches 1 run title @a actionbar ["",{"text":"✔⏵","color":"dark_purple"},{"text":" Coordenadas Reducidas desactivadas.","color":"light_purple"}]


#Custom game mode Wool:
execute if score option Config matches 13 run scoreboard players set gamemode Config 3
execute if score option Config matches 13 if score language Config matches 0 run title @a actionbar ["",{"text":"✔⏵","color":"dark_purple"},{"text":" Changed game mode to Wools.","color":"light_purple"}]
execute if score option Config matches 13 if score language Config matches 1 run title @a actionbar ["",{"text":"✔⏵","color":"dark_purple"},{"text":" Modo de juego cambiado a Lanas.","color":"light_purple"}]
execute if score option Config matches 13 as @a run function ctmv:items_scoreboard/trigger_objectives/command

#Custom game mode Disco:
execute if score option Config matches 14 run scoreboard players set gamemode Config 4
execute if score option Config matches 14 if score language Config matches 0 run title @a actionbar ["",{"text":"✔⏵","color":"dark_purple"},{"text":" Changed game mode to Disco.","color":"light_purple"}]
execute if score option Config matches 14 if score language Config matches 1 run title @a actionbar ["",{"text":"✔⏵","color":"dark_purple"},{"text":" Modo de juego cambiado a Discos.","color":"light_purple"}]
execute if score option Config matches 14 as @a run function ctmv:items_scoreboard/trigger_objectives/command



#Sound effects
execute as @a at @s run playsound ui.button.click master @s ~ ~ ~ 3 1 0
execute as @a at @s run playsound block.respawn_anchor.charge master @s ~ ~ ~ 3 2 0
execute as @a at @s run playsound block.conduit.activate master @s ~ ~ ~ 3 1.5 0

#Call to update book function and reset score for option
function ctmv:lobby/update_books
scoreboard players set option Config 0