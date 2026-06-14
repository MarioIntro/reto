#Remove tags + reset score
tag @s remove sneaking1
tag @s remove stopped_sneaking1
tag @s remove sneaking2
tag @s remove stopped_sneaking2

scoreboard players reset @s Sneaking1
scoreboard players reset @s Sneaking2

#Call to the display function
function ctmv:items_scoreboard/trigger_objectives/command