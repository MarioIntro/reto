#Get player coordinates
function ctmv:timer/display/get_player_coords

#Display timer on actionbar (ENGLISH)
execute if score language Config matches 0 run function ctmv:timer/display/display_en
execute if score language Config matches 1 run function ctmv:timer/display/display_es