#Show title to players
title @a times 20 100 20
execute if score language Config matches 0 run title @a subtitle {"text":"The game has been reset","color":"#FFAAAB"}
execute if score language Config matches 0 run title @a title ["",{"text":"\u2718 ","color":"dark_red"},{"text":"RESET","bold":true,"color":"red"},{"text":" \u2718","color":"dark_red"}]

execute if score language Config matches 1 run title @a subtitle {"text":"La partida se ha reiniciado","color":"#FFAAAB"}
execute if score language Config matches 1 run title @a title ["",{"text":"\u2718 ","color":"dark_red"},{"text":"REINICIO","bold":true,"color":"red"},{"text":" \u2718","color":"dark_red"}]

#Particles and sounds
execute at @a run particle dust{color:[1.000,0.000,0.000],scale:1} ~ ~1 ~ 0.5 0.7 0.5 0 150 normal
execute as @a at @s run playsound block.note_block.bass master @s ~ ~ ~ 4 0 1
execute as @a at @s run playsound block.note_block.bass master @s ~ ~ ~ 4 0 1
execute as @a at @s run playsound block.beacon.deactivate master @s ~ ~ ~ 4 0.6 1

#Tellraw
execute if score language Config matches 0 run tellraw @a ["",{"text":"\u2709\u23f5","color":"green"},{"text":" You have received the "},{"text":"books","color":"green"},{"text":" to configure and start a game."}]
execute if score language Config matches 1 run tellraw @a ["",{"text":"\u2709\u23f5","color":"green"},{"text":" Has recibido los "},{"text":"libros","color":"green"},{"text":" para configurar y empezar partida."}]

#Call to the RESET function
function ctmv:game/reset