#Create update loop
schedule function ctmv:items_scoreboard/update 4s
scoreboard players add step ItemsUpdate 1
execute if score step ItemsUpdate matches 2 run scoreboard players set step ItemsUpdate 0

#Update scoreboard
execute if score language Config matches 0 run function ctmv:items_scoreboard/update/update_en
execute if score language Config matches 1 run function ctmv:items_scoreboard/update/update_es