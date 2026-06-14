#Check if its in ocean/river
execute as @e[tag=new_coordinates,predicate=ctmv:on_ground] at @s if biome ~ ~ ~ #is_water run tag @s add new_coordinates_ok
execute at @e[tag=new_coordinates_ok] as @a run ride @s dismount
execute as @e[tag=new_coordinates_ok] at @s if block ~ ~ ~ #water if biome ~ ~ ~ #is_water run function ctmv:lobby/get_number_of_players
execute as @e[tag=new_coordinates_ok] at @s if block ~ ~ ~ #water if biome ~ ~ ~ #is_water run function ctmv:game/new_coordinates/boats

#Check when armor stand touches ground
execute as @e[tag=new_coordinates,predicate=ctmv:on_ground] run tag @s add new_coordinates_ok

#If there is a lava pool
execute as @e[tag=new_coordinates_ok] at @s if block ~ ~ ~ lava run function ctmv:game/new_coordinates/fill_lava_pool


#REMOVE PREVIOUS MONUMENT
execute if entity @e[tag=new_coordinates_ok] run function ctmv:monument/remove


#Set spawnpoint
execute at @e[tag=new_coordinates_ok] if block ~ ~ ~ #water if biome ~ ~ ~ #is_water run spawnpoint @a ~ 63 ~
execute at @e[tag=new_coordinates_ok] if block ~ ~ ~ #water if biome ~ ~ ~ #is_water run setworldspawn ~ 63 ~
execute at @e[tag=new_coordinates_ok] unless biome ~ ~ ~ #is_water run spawnpoint @a ~ ~ ~
execute at @e[tag=new_coordinates_ok] unless biome ~ ~ ~ #is_water run setworldspawn ~ ~ ~
execute at @e[tag=new_coordinates_ok] unless block ~ ~ ~ #water run spawnpoint @a ~ ~ ~
execute at @e[tag=new_coordinates_ok] unless block ~ ~ ~ #water run setworldspawn ~ ~ ~

execute at @e[tag=new_coordinates_ok] run kill @e[tag=spawnpoint]
execute at @e[tag=new_coordinates_ok] if block ~ ~ ~ #water if biome ~ ~ ~ #is_water run summon marker ~ 62.53 ~ {Tags:[spawnpoint]}


#Do the things (continue start sequence)
execute at @e[tag=new_coordinates_ok] unless biome ~ ~ ~ #is_water run tp @a ~ ~ ~
execute at @e[tag=new_coordinates_ok] unless block ~ ~ ~ #water run tp @a ~ ~ ~
execute at @e[tag=new_coordinates_ok] unless biome ~ ~ ~ #is_water run spreadplayers ~ ~ 2 4 false @a
execute at @e[tag=new_coordinates_ok] unless block ~ ~ ~ #water run spreadplayers ~ ~ 2 4 false @a

execute at @e[tag=new_coordinates_ok] run forceload remove ~ ~ ~ ~
execute at @e[tag=new_coordinates_ok] run scoreboard players set time StartSequence 20
execute at @e[tag=new_coordinates_ok] run effect give @a blindness 10 0 true
execute at @e[tag=new_coordinates_ok] run effect give @a slow_falling 10 0 true
execute at @e[tag=new_coordinates_ok] run effect give @a slowness 10 100 true
execute at @e[tag=new_coordinates_ok] as @a run attribute @s jump_strength base set 0
execute at @e[tag=new_coordinates_ok] run clear @a

execute as @e[tag=new_coordinates_ok] run kill @s


#Create loop until the coordinates are secured (armor stand has been killed)
schedule function ctmv:game/new_coordinates/armor_stand_loop 5t