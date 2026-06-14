#Reset score
scoreboard players reset @a voteToStartGame

#Check if you have played more than 25 games (omg why would you spend so much time)
execute if score gameNumber Game matches 25.. run function ctmv:game/start_sequence/play_more_than_25
execute if score gameNumber Game matches 25.. run return -1


#Add vote + confirmation message
execute if entity @s[tag=!hasVoted] run scoreboard players add voted Voting 1

execute if entity @s[tag=!hasVoted] run title @a times 5 35 10
execute if entity @s[tag=!hasVoted] if score language Config matches 0 run title @a subtitle [{"selector":"@s","color":"gold","bold":true},{"text":" has voted to ","color":"yellow","bold":false},{"text":"START GAME","color":"#FFD633"}]
execute if entity @s[tag=!hasVoted] if score language Config matches 1 run title @a subtitle [{"selector":"@s","color":"gold","bold":true},{"text":" ha votado para ","color":"yellow","bold":false},{"text":"EMPEZAR PARTIDA","color":"#FFD633"}]
execute if entity @s[tag=!hasVoted] run title @a title {"text": ""}

execute if entity @s[tag=!hasVoted] if score language Config matches 0 run tellraw @a [{"text": "✔⏵ ","color": "yellow"},{"selector":"@s","color":"gold","bold":true},{"text":" has voted to ","color":"yellow","bold":false},{"text":"START GAME","color":"#FFD633"}]
execute if entity @s[tag=!hasVoted] if score language Config matches 1 run tellraw @a [{"text": "✔⏵ ","color": "yellow"},{"selector":"@s","color":"gold","bold":true},{"text":" ha votado para ","color":"yellow","bold":false},{"text":"EMPEZAR PARTIDA","color":"#FFD633"}]

execute if entity @s[tag=!hasVoted] as @a at @s run playsound block.note_block.bit player @a ~ ~ ~ 3 1.7 1

#Message if the palyer has already voted
execute if entity @s[tag=hasVoted] run title @s actionbar ["",{"text":"✘⏵","color":"dark_red"},{"text":" You have already voted!","color":"red"}]
execute if entity @s[tag=hasVoted] run playsound block.note_block.bass player @s ~ ~ ~ 3 0 1
execute if entity @s[tag=hasVoted] run playsound entity.villager.no player @s ~ ~ ~ 3 0.8 1

#Update voting bossbar (getNumberOfPlayers stores number in numberPlayers - Lobby)
function ctmv:lobby/get_number_of_players
bossbar set voting players @a
execute if score language Config matches 0 run bossbar set voting name [{"text":"⏻ ","color":"yellow"},{"score":{"name":"voted","objective":"Voting"},"color":"gold","bold":true},{"text":"/","color":"gold","bold":false},{"score":{"name":"numberPlayers","objective":"Lobby"},"color":"gold"},{"text":" PLAYERS TO ","color":"#FFD633"},{"text":"START GAME","color":"gold","bold":true},{"text":" ⏻","color":"yellow","bold":false}]
execute if score language Config matches 1 run bossbar set voting name [{"text":"⏻ ","color":"yellow"},{"score":{"name":"voted","objective":"Voting"},"color":"gold","bold":true},{"text":"/","color":"gold","bold":false},{"score":{"name":"numberPlayers","objective":"Lobby"},"color":"gold"},{"text":" JUGADORES PARA ","color":"#FFD633"},{"text":"INICIAR PARTIDA","color":"gold","bold":true},{"text":" ⏻","color":"yellow","bold":false}]
execute store result bossbar voting max run scoreboard players get numberPlayers Lobby
execute store result bossbar voting value run scoreboard players get voted Voting

#Tag player as "has already voted"
tag @s add hasVoted

#Check if everyone has voted
execute if score voted Voting = numberPlayers Lobby run function ctmv:game/start_sequence/sequence