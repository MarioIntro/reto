#Loop until first game starts
schedule function ctmv:lobby/welcome_to_world 1s

#Select player to be welcomed
execute as @a[tag=!welcomed] at @s run function ctmv:lobby/introduction