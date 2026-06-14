#Update in a 2-step cycle
function ctmv:items_scoreboard/update/reset_es

#Wools
execute if score step ItemsUpdate matches 1 run scoreboard players set a Items 13
execute if score step ItemsUpdate matches 1 run scoreboard players set ja Items 12
execute if score step ItemsUpdate matches 1 run scoreboard players set ta Items 11
execute if score step ItemsUpdate matches 1 run scoreboard players set ra Items 10

execute if score step ItemsUpdate matches 1 run scoreboard players set la Items 9
execute if score step ItemsUpdate matches 1 run scoreboard players set ma Items 8
execute if score step ItemsUpdate matches 1 run scoreboard players set sa Items 7
execute if score step ItemsUpdate matches 1 run scoreboard players set is Items 6

execute if score step ItemsUpdate matches 0 run scoreboard players set o Items 13
execute if score step ItemsUpdate matches 0 run scoreboard players set ian Items 12
execute if score step ItemsUpdate matches 0 run scoreboard players set da Items 11
execute if score step ItemsUpdate matches 0 run scoreboard players set ul Items 10

execute if score step ItemsUpdate matches 0 run scoreboard players set n Items 9
execute if score step ItemsUpdate matches 0 run scoreboard players set de Items 8
execute if score step ItemsUpdate matches 0 run scoreboard players set oja Items 7
execute if score step ItemsUpdate matches 0 run scoreboard players set gra Items 6

#Minerals
execute if score gamemode Config matches 1..2 if score step ItemsUpdate matches 1 run scoreboard players set ón Items 4
execute if score gamemode Config matches 1..2 if score step ItemsUpdate matches 1 run scoreboard players set rro Items 3
execute if score gamemode Config matches 1..2 if score step ItemsUpdate matches 1 run scoreboard players set ro Items 2
execute if score gamemode Config matches 1..2 if score step ItemsUpdate matches 1 run scoreboard players set pis Items 1

execute if score gamemode Config matches 1..2 if score step ItemsUpdate matches 0 run scoreboard players set one Items 4
execute if score gamemode Config matches 1..2 if score step ItemsUpdate matches 0 run scoreboard players set lda Items 3
execute if score gamemode Config matches 1..2 if score step ItemsUpdate matches 0 run scoreboard players set te Items 2
execute if score gamemode Config matches 1..2 if score step ItemsUpdate matches 0 run scoreboard players set re Items 1