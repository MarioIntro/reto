#Update in a 2-step cycle
function ctmv:items_scoreboard/update/reset_en

#Wools
execute if score step ItemsUpdate matches 1 run scoreboard players set e Items 13
execute if score step ItemsUpdate matches 1 run scoreboard players set ge Items 12
execute if score step ItemsUpdate matches 1 run scoreboard players set a Items 11
execute if score step ItemsUpdate matches 1 run scoreboard players set ue Items 10

execute if score step ItemsUpdate matches 1 run scoreboard players set w Items 9
execute if score step ItemsUpdate matches 1 run scoreboard players set me Items 8
execute if score step ItemsUpdate matches 1 run scoreboard players set k Items 7
execute if score step ItemsUpdate matches 1 run scoreboard players set y Items 6

execute if score step ItemsUpdate matches 0 run scoreboard players set ay Items 13
execute if score step ItemsUpdate matches 0 run scoreboard players set an Items 12
execute if score step ItemsUpdate matches 0 run scoreboard players set le Items 11
execute if score step ItemsUpdate matches 0 run scoreboard players set lue Items 10

execute if score step ItemsUpdate matches 0 run scoreboard players set wn Items 9
execute if score step ItemsUpdate matches 0 run scoreboard players set en Items 8
execute if score step ItemsUpdate matches 0 run scoreboard players set d Items 7
execute if score step ItemsUpdate matches 0 run scoreboard players set ck Items 6

#Minerals
execute if score gamemode Config matches 1..2 if score step ItemsUpdate matches 1 run scoreboard players set l Items 4
execute if score gamemode Config matches 1..2 if score step ItemsUpdate matches 1 run scoreboard players set on Items 3
execute if score gamemode Config matches 1..2 if score step ItemsUpdate matches 1 run scoreboard players set ld Items 2
execute if score gamemode Config matches 1..2 if score step ItemsUpdate matches 1 run scoreboard players set s Items 1

execute if score gamemode Config matches 1..2 if score step ItemsUpdate matches 0 run scoreboard players set ne Items 4
execute if score gamemode Config matches 1..2 if score step ItemsUpdate matches 0 run scoreboard players set ald Items 3
execute if score gamemode Config matches 1..2 if score step ItemsUpdate matches 0 run scoreboard players set nd Items 2
execute if score gamemode Config matches 1..2 if score step ItemsUpdate matches 0 run scoreboard players set r Items 1