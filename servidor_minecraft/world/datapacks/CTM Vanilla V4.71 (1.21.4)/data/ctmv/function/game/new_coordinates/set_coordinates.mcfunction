#Load new chunks and tp players to a valid coordinate depending on game number
#GAME 2
execute if score gameNumber Game matches 2 run forceload add 25000 25000
execute if score gameNumber Game matches 2 run summon armor_stand 25000 256 25000 {Tags:[new_coordinates],Invulnerable:1b}

#GAME 3
execute if score gameNumber Game matches 3 run forceload add 50000 50000
execute if score gameNumber Game matches 3 run summon armor_stand 50000 256 50000 {Tags:[new_coordinates],Invulnerable:1b}

#GAME 4
execute if score gameNumber Game matches 4 run forceload add 75000 75000
execute if score gameNumber Game matches 4 run summon armor_stand 75000 256 75000 {Tags:[new_coordinates],Invulnerable:1b}

#GAME 5
execute if score gameNumber Game matches 5 run forceload add 100000 100000
execute if score gameNumber Game matches 5 run summon armor_stand 100000 256 100000 {Tags:[new_coordinates],Invulnerable:1b}

#GAME 6
execute if score gameNumber Game matches 6 run forceload add 125000 125000
execute if score gameNumber Game matches 6 run summon armor_stand 125000 256 125000 {Tags:[new_coordinates],Invulnerable:1b}

#GAME 7
execute if score gameNumber Game matches 7 run forceload add 150000 150000
execute if score gameNumber Game matches 7 run summon armor_stand 150000 256 150000 {Tags:[new_coordinates],Invulnerable:1b}

#GAME 8
execute if score gameNumber Game matches 8 run forceload add 175000 175000
execute if score gameNumber Game matches 8 run summon armor_stand 175000 256 175000 {Tags:[new_coordinates],Invulnerable:1b}

#GAME 9
execute if score gameNumber Game matches 9 run forceload add 200000 200000
execute if score gameNumber Game matches 9 run summon armor_stand 200000 256 200000 {Tags:[new_coordinates],Invulnerable:1b}

#GAME 10
execute if score gameNumber Game matches 10 run forceload add 225000 225000
execute if score gameNumber Game matches 10 run summon armor_stand 225000 256 225000 {Tags:[new_coordinates],Invulnerable:1b}

#GAME 11
execute if score gameNumber Game matches 11 run forceload add 250000 250000
execute if score gameNumber Game matches 11 run summon armor_stand 250000 256 250000 {Tags:[new_coordinates],Invulnerable:1b}

#GAME 12
execute if score gameNumber Game matches 12 run forceload add 275000 275000
execute if score gameNumber Game matches 12 run summon armor_stand 275000 256 275000 {Tags:[new_coordinates],Invulnerable:1b}

#GAME 13
execute if score gameNumber Game matches 13 run forceload add 300000 300000
execute if score gameNumber Game matches 13 run summon armor_stand 300000 256 300000 {Tags:[new_coordinates],Invulnerable:1b}

#GAME 14
execute if score gameNumber Game matches 14 run forceload add 325000 325000
execute if score gameNumber Game matches 14 run summon armor_stand 325000 256 325000 {Tags:[new_coordinates],Invulnerable:1b}

#GAME 15
execute if score gameNumber Game matches 15 run forceload add 350000 350000
execute if score gameNumber Game matches 15 run summon armor_stand 350000 256 350000 {Tags:[new_coordinates],Invulnerable:1b}

#GAME 16
execute if score gameNumber Game matches 16 run forceload add 375000 375000
execute if score gameNumber Game matches 16 run summon armor_stand 375000 256 375000 {Tags:[new_coordinates],Invulnerable:1b}

#GAME 17
execute if score gameNumber Game matches 17 run forceload add 400000 400000
execute if score gameNumber Game matches 17 run summon armor_stand 400000 256 400000 {Tags:[new_coordinates],Invulnerable:1b}

#GAME 18
execute if score gameNumber Game matches 18 run forceload add 425000 425000
execute if score gameNumber Game matches 18 run summon armor_stand 425000 256 425000 {Tags:[new_coordinates],Invulnerable:1b}

#GAME 19
execute if score gameNumber Game matches 19 run forceload add 450000 450000
execute if score gameNumber Game matches 19 run summon armor_stand 450000 256 450000 {Tags:[new_coordinates],Invulnerable:1b}

#GAME 20
execute if score gameNumber Game matches 20 run forceload add 475000 475000
execute if score gameNumber Game matches 20 run summon armor_stand 475000 256 475000 {Tags:[new_coordinates],Invulnerable:1b}

#GAME 21
execute if score gameNumber Game matches 21 run forceload add 500000 500000
execute if score gameNumber Game matches 21 run summon armor_stand 500000 256 500000 {Tags:[new_coordinates],Invulnerable:1b}

#GAME 22
execute if score gameNumber Game matches 22 run forceload add 525000 525000
execute if score gameNumber Game matches 22 run summon armor_stand 525000 256 525000 {Tags:[new_coordinates],Invulnerable:1b}

#GAME 23
execute if score gameNumber Game matches 23 run forceload add 550000 550000
execute if score gameNumber Game matches 23 run summon armor_stand 550000 256 550000 {Tags:[new_coordinates],Invulnerable:1b}

#GAME 24
execute if score gameNumber Game matches 24 run forceload add 575000 575000
execute if score gameNumber Game matches 24 run summon armor_stand 575000 256 575000 {Tags:[new_coordinates],Invulnerable:1b}

#GAME 25
execute if score gameNumber Game matches 25 run forceload add 600000 600000
execute if score gameNumber Game matches 25 run summon armor_stand 600000 256 600000 {Tags:[new_coordinates],Invulnerable:1b}


#Reduce coords
scoreboard players add reduceCoord Game 25000

#Call to the function to wait until armor stand is in correct position
function ctmv:game/new_coordinates/armor_stand_loop