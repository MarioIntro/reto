#Time limit depending on game mode and number of players
#Get number of players (stored on numberPlayers - Lobby)
function ctmv:lobby/get_number_of_players

#Normal mode
execute if score gamemode Config matches 0 if score numberPlayers Lobby matches 1 run scoreboard players set limit Timer 240
execute if score gamemode Config matches 0 if score numberPlayers Lobby matches 2..4 run scoreboard players set limit Timer 150
execute if score gamemode Config matches 0 if score numberPlayers Lobby matches 5..8 run scoreboard players set limit Timer 90

#Hard mode
execute if score gamemode Config matches 1 if score numberPlayers Lobby matches 1 run scoreboard players set limit Timer 390
execute if score gamemode Config matches 1 if score numberPlayers Lobby matches 2..4 run scoreboard players set limit Timer 270
execute if score gamemode Config matches 1 if score numberPlayers Lobby matches 5..8 run scoreboard players set limit Timer 180

#Nightmare mode
execute if score gamemode Config matches 2 if score numberPlayers Lobby matches 1 run scoreboard players set limit Timer 520
execute if score gamemode Config matches 2 if score numberPlayers Lobby matches 2..4 run scoreboard players set limit Timer 450
execute if score gamemode Config matches 2 if score numberPlayers Lobby matches 5..8 run scoreboard players set limit Timer 300

#Wool mode
execute if score gamemode Config matches 3 if score numberPlayers Lobby matches 1 run scoreboard players set limit Timer 20
execute if score gamemode Config matches 3 if score numberPlayers Lobby matches 2..4 run scoreboard players set limit Timer 12
execute if score gamemode Config matches 3 if score numberPlayers Lobby matches 5..8 run scoreboard players set limit Timer 6

#Disco mode
execute if score gamemode Config matches 4 if score numberPlayers Lobby matches 1 run scoreboard players set limit Timer 90
execute if score gamemode Config matches 4 if score numberPlayers Lobby matches 2..4 run scoreboard players set limit Timer 60
execute if score gamemode Config matches 4 if score numberPlayers Lobby matches 5..8 run scoreboard players set limit Timer 40