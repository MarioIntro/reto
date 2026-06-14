#Add 1 minute and update seconds
scoreboard players add totalMinutes Timer 1
scoreboard players add minutes Timer 1
scoreboard players set seconds Timer 0

#Check if an hour has passed
execute if score minutes Timer matches 60 run function ctmv:timer/add_hour


#Check if time has already run out
execute if score totalMinutes Timer = limit Timer run function ctmv:game/lose_sequence
execute if score totalMinutes Timer = limit Timer run return -1


#Announce if it's half time or 3/4s
scoreboard players operation halfTime Timer = limit Timer
scoreboard players operation halfTime Timer /= 2 Constants
execute if score totalMinutes Timer = halfTime Timer run function ctmv:timer/display/announce_time_left

scoreboard players operation halfTime Timer /= 2 Constants
scoreboard players operation halfTime Timer *= 3 Constants
execute if score totalMinutes Timer = halfTime Timer run function ctmv:timer/display/announce_time_left

#Announce 5 minutes and 1 minute in all gamemodes (except wool for 5 minutes)
scoreboard players operation timeLeft Timer = limit Timer
scoreboard players operation timeLeft Timer -= totalMinutes Timer
execute unless score gamemode Config matches 3 if score timeLeft Timer matches 5 run function ctmv:timer/display/announce_time_left
execute if score timeLeft Timer matches 1 run function ctmv:timer/display/announce_time_left