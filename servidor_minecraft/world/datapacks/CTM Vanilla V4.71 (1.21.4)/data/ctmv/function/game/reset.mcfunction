#Call to the "semi-reset" function + start tick_lobby.mcfunction
function ctmv:game/end
scoreboard players set onLobby Game 1

#Clear players ender chest
execute as @a run function ctmv:lobby/clear_ender_chest

#Change player gamemode
gamemode adventure @a

#Kill marker for the monument (and stop forceloading that chunk)
execute at @e[tag=monument_position] run forceload remove ~2 ~2 ~-2 ~-2
kill @e[tag=monument_position]

#Stop "resting"
scoreboard players set resting Game 0

#Clear players inventory and kill items in ground
kill @e[type=item]
clear @a

#Give books to player
function ctmv:lobby/update_books

#Reset lose sequence if it's in course
execute if score time LoseSequence matches 1.. run scoreboard players set time LoseSequence 20