#Summon right number of boats using recursion
execute if score numberPlayers Lobby matches 1 at @e[tag=new_coordinates_ok] run summon oak_boat ~2 62.53 ~ {Tags:["new_coordinates_boat"],Rotation:[-90F,0F]}
execute if score numberPlayers Lobby matches 2 at @e[tag=new_coordinates_ok] run summon oak_boat ~2 62.53 ~2 {Tags:["new_coordinates_boat"],Rotation:[-45F,0F]}
execute if score numberPlayers Lobby matches 3 at @e[tag=new_coordinates_ok] run summon oak_boat ~ 62.53 ~2 {Tags:["new_coordinates_boat"],Rotation:[0F,0F]}
execute if score numberPlayers Lobby matches 4 at @e[tag=new_coordinates_ok] run summon oak_boat ~-2 62.53 ~2 {Tags:["new_coordinates_boat"],Rotation:[45F,0F]}
execute if score numberPlayers Lobby matches 5 at @e[tag=new_coordinates_ok] run summon oak_boat ~-2 62.53 ~ {Tags:["new_coordinates_boat"],Rotation:[90F,0F]}
execute if score numberPlayers Lobby matches 6 at @e[tag=new_coordinates_ok] run summon oak_boat ~-2 62.53 ~-2 {Tags:["new_coordinates_boat"],Rotation:[135F,0F]}
execute if score numberPlayers Lobby matches 7 at @e[tag=new_coordinates_ok] run summon oak_boat ~ 62.53 ~-2 {Tags:["new_coordinates_boat"],Rotation:[180F,0F]}
execute if score numberPlayers Lobby matches 8 at @e[tag=new_coordinates_ok] run summon oak_boat ~2 62.53 ~-2 {Tags:["new_coordinates_boat"],Rotation:[-135F,0F]}

execute as @a[tag=!new_coordinates_mount_boat,limit=1] run ride @s mount @e[tag=new_coordinates_boat,limit=1]
execute as @e[tag=new_coordinates_boat] on passengers run tag @s add new_coordinates_mount_boat
tag @e[tag=new_coordinates_boat] remove new_coordinates_boat

#Recursion
scoreboard players remove numberPlayers Lobby 1
execute if score numberPlayers Lobby matches 1.. run function ctmv:game/new_coordinates/boats
execute if score numberPlayers Lobby matches 0 run tag @a remove new_coordinates_mount_boat