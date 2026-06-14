#Get each player X, Y and Z coordinates and store them
execute store result score @s PlayerCoordX run data get entity @s Pos[0] 1
execute store result score @s PlayerCoordY run data get entity @s Pos[1] 1
execute store result score @s PlayerCoordZ run data get entity @s Pos[2] 1

#"Reduce" coordinate depending on game number
execute if score reduceCoord Config matches 1 run scoreboard players operation @s PlayerCoordX -= reduceCoord Game
execute if score reduceCoord Config matches 1 run scoreboard players operation @s PlayerCoordZ -= reduceCoord Game