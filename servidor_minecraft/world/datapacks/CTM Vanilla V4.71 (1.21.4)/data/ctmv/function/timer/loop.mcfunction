#Infinite loop (until game is finished)
schedule function ctmv:timer/loop 1s

#Add 1 second
scoreboard players add seconds Timer 1

#Check if a minute has passed
execute if score seconds Timer matches 60 run function ctmv:timer/add_minute