#Set total time, hours, minutes and seconds to 0 -> "00:00"
scoreboard players set totalMinutes Timer 0
scoreboard players set hours Timer 0
scoreboard players set minutes Timer 0
scoreboard players set seconds Timer 0

#Start timer loop
schedule function ctmv:timer/loop 1s