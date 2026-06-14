#SEQUENCE
execute unless score time StartSequence matches 44 run schedule function ctmv:game/start_sequence/sequence 5t

#Stop "Welcome to World" loop (once this sequence starts no players are welcomed!)
execute if score time StartSequence matches 0 run schedule clear ctmv:lobby/welcome_to_world

#Delete items from players + stopsound pigstep
execute if score time StartSequence matches 0 run clear @a
execute if score time StartSequence matches 1 run clear @a
execute if score time StartSequence matches 0 as @a at @s run playsound block.fire.extinguish player @s ~ ~ ~ 3 0.65 1
execute if score time StartSequence matches 4 run stopsound @a * music_disc.pigstep

#Increment on game number
execute if score time StartSequence matches 4 run scoreboard players add gameNumber Game 1

#Reset voting system
execute if score time StartSequence matches 4 if score gameNumber Game matches 1 run function ctmv:lobby/voting_reset
execute if score time StartSequence matches 8 if score gameNumber Game matches 2.. run function ctmv:lobby/voting_reset

#Title, effects and sounds
execute if score time StartSequence matches 4 as @a at @s run playsound block.beacon.activate player @s ~ ~ ~ 3 0.8 1

#Select new coordinates
execute if score time StartSequence matches 4 if score gameNumber Game matches 2.. run function ctmv:game/new_coordinates/set_coordinates
execute if score time StartSequence matches 4 if score gameNumber Game matches 2.. run scoreboard players set time StartSequence 7
execute if score time StartSequence matches 4 if score gameNumber Game matches 1 run scoreboard players set time StartSequence 29

#Loop until armor stand generates coordinates for new game
execute if score time StartSequence matches 8 run title @a times 20 30 20
execute if score time StartSequence matches 8 run scoreboard players set dots StartSequence 1
execute if score time StartSequence matches 12 run scoreboard players set dots StartSequence 2
execute if score time StartSequence matches 16 run scoreboard players set dots StartSequence 3
execute if score time StartSequence matches 19 if score gameNumber Game matches 2.. run scoreboard players set time StartSequence 7

#Continue with sequence
execute if score time StartSequence matches 20 run scoreboard players set dots StartSequence 4
execute if score time StartSequence matches 24 run scoreboard players set dots StartSequence 5
execute if score time StartSequence matches 28 run scoreboard players set dots StartSequence 6

execute if score time StartSequence matches 31 run scoreboard players set countdown StartSequence 1
execute if score time StartSequence matches 35 run scoreboard players set countdown StartSequence 2
execute if score time StartSequence matches 39 run scoreboard players set countdown StartSequence 3
execute if score time StartSequence matches 43 run scoreboard players set countdown StartSequence 4

#Give effects to players (if gameNumber>1 this is done in armor_stand_loop.mcfunction) and set time and weather
execute if score time StartSequence matches 31 run effect give @a blindness 10 0 true
execute if score time StartSequence matches 31 run effect give @a slowness 10 100 true
execute if score time StartSequence matches 31 as @a run attribute @s jump_strength base set 0
execute if score time StartSequence matches 31 run time set 0
execute if score time StartSequence matches 31 run weather clear 1200s


#START
execute if score time StartSequence matches 43 run function ctmv:game/start


#Dots appearing on loading game (. > .. > ... > .) + Countdown
execute if score dots StartSequence matches 1.. run function ctmv:game/start_sequence/loading_display
execute if score countdown StartSequence matches 1.. run function ctmv:game/start_sequence/countdown

#Reset score and exit function
scoreboard players add time StartSequence 1
execute if score time StartSequence matches 44 run schedule clear ctmv:game/start_sequence/sequence
execute if score time StartSequence matches 44 run scoreboard players set time StartSequence 0