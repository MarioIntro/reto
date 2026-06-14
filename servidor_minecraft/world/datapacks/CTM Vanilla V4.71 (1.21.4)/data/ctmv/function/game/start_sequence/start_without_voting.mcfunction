#Reset score
scoreboard players reset @a startGameWithoutVoting

#Check if you have played more than 25 games (omg why would you spend so much time)
execute if score gameNumber Game matches 25.. run function ctmv:game/start_sequence/play_more_than_25
execute if score gameNumber Game matches 25.. run return -1


#Title and sounds
title @a times 5 35 10
execute if score language Config matches 0 run title @a subtitle [{"selector":"@s","color":"gold","bold":true},{"text":" has ","color":"yellow","bold":false},{"text":"STARTED A GAME","color":"#FFD633"}]
execute if score language Config matches 1 run title @a subtitle [{"selector":"@s","color":"gold","bold":true},{"text":" ha ","color":"yellow","bold":false},{"text":"EMPEZADO UNA PARTIDA","color":"#FFD633"}]
title @a title {"text": ""}
execute as @a at @s run playsound block.note_block.bit player @a ~ ~ ~ 3 1.7 1

#Start sequence
function ctmv:game/start_sequence/sequence