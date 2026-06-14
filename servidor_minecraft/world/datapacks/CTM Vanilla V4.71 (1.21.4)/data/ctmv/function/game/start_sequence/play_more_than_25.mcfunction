#Title and tellraw
title @a times 3 60 40
execute if score language Config matches 0 run title @a subtitle {"text":"CAN'T PLAY MORE GAMES","color":"#FFAAAC"}
execute if score language Config matches 1 run title @a subtitle {"text":"NO SE PUEDE JUGAR MÁS","color":"#FFAAAC"}
title @a title {"text":"✘⏵ ERROR","color":"red"}

execute if score language Config matches 0 run tellraw @a ["",{"text":"✘⏵","color":"red"},{"text":" You can only play up to "},{"text":"25 games","color":"red"},{"text":" in the same world","color":"#FFA8A9"},{"text":". If you want to continue playing "},{"text":"re-install the datapack","bold":true,"color":"aqua"},{"text":" in a new world","color":"#A1F2FF"},{"text":".\n\n"},{"text":"★⏵","color":"yellow"},{"text":" Thank you for playing","color":"#FFEA86"},{"text":" this many games of "},{"text":"CTM Vanilla","bold":true,"color":"gold"},{"text":" :)"}]
execute if score language Config matches 1 run tellraw @a ["",{"text":"✘⏵","color":"red"},{"text":" Solo puedes jugar "},{"text":"25 partidas","color":"red"},{"text":" en el mismo mundo","color":"#FFA8A9"},{"text":". Si quieres seguir jugando tendrás que "},{"text":"reinstalar el datapack","bold":true,"color":"aqua"},{"text":" en un nuevo mundo","color":"#A1F2FF"},{"text":".\n\n"},{"text":"★⏵","color":"yellow"},{"text":" Gracias por jugar","color":"#FFEA86"},{"text":" tantas partidas de "},{"text":"CTM Vanilla","bold":true,"color":"gold"},{"text":" :)"}]

#Particles and sounds
execute at @a run particle dust{color:[1.000,0.000,0.000],scale:1} ~ ~1 ~ 0.45 0.6 0.45 0 150 normal
execute at @a run particle large_smoke ~ ~0.5 ~ 0.2 0.4 0.2 0 30 normal
execute at @a run particle small_flame ~ ~1 ~ 0.1 0.3 0.1 0 50 normal

execute as @a at @s run playsound block.note_block.bass master @s ~ ~ ~ 3 0 1
execute as @a at @s run playsound block.note_block.bass master @s ~ ~ ~ 3 0 1
execute as @a at @s run playsound entity.iron_golem.repair master @s ~ ~ ~ 3 0 1