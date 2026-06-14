#Stop lobby tick function and start game tick function
scoreboard players set onLobby Game 0
scoreboard players set playing Game 1

#Setup item scoreboard (resetting the previous one) + corresponding advancement root
function ctmv:items_scoreboard/reset_all
function ctmv:items_scoreboard/setup

#Setup scoreboards for the statistics
function ctmv:lobby/stats/reset_scoreboards

#Start timer (resetting the previous one first)
function ctmv:timer/reset
function ctmv:timer/start

#Set time limit and announce it in chat
function ctmv:timer/set_time_limit

#Chat message with information
tellraw @a {"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}
execute if score language Config matches 0 run tellraw @a [{"text":"⏳⏵","color":"aqua"},{"text":" You have up to ","color":"#DAFFFF"},{"score":{"name":"limit","objective":"Timer"},"color":"aqua","bold":true},{"text":" minutes","color":"aqua","bold":true},{"text":" to obtain all objectives.","color":"#DAFFFF","bold":false},{"text":"\n\n"},{"text":"✉⏵","color":"gold"},{"text":" Remember that you can ","color":"white"},{"text":"check what items you need to collect","color":"yellow"},{"text":" on the ","color":"white"},{"text":"advancements tab","color":"gold"},{"text":" and also typing in chat the command ","color":"white"},{"text":"/trigger objectives","italic":true,"color":"gold"},{"text":", even pressing ","color":"white"},{"keybind":"key.sneak","color": "blue"},{"text":" 3 times in a row.","color":"white"}]
execute if score language Config matches 1 run tellraw @a [{"text":"⏳⏵","color":"aqua"},{"text":" Tienes ","color":"#DAFFFF"},{"score":{"name":"limit","objective":"Timer"},"color":"aqua","bold":true},{"text":" minutos","color":"aqua","bold":true},{"text":" para obtener todos los objetivos.","color":"#DAFFFF","bold":false},{"text":"\n\n"},{"text":"✉⏵","color":"gold"},{"text":" Recuerda que puedes ver ","color":"white"},{"text":"qué objetos debes obtener","color":"yellow"},{"text":" en el ","color":"white"},{"text":"apartado de progresos (logros)","color":"gold"},{"text":" y también escribiendo en el chat el comando ","color":"white"},{"text":"/trigger objectives","italic":true,"color":"gold"},{"text":", hasta presionando ","color":"white"},{"keybind":"key.sneak","color": "blue"},{"text":" 3 veces seguidas.","color":"white"}]

#Set one use to REST button
scoreboard players set canRest Game 1

#START
gamemode survival @a
effect clear @a
execute as @a run attribute @s jump_strength base reset
scoreboard players set recursionFix ItemsUpdate 0
xp add @a -1000 levels
clear @a

#Gamerules
gamerule sendCommandFeedback true
gamerule doMobSpawning true
gamerule doMobLoot true
gamerule doInsomnia true
gamerule disableRaids false
gamerule doFireTick true
gamerule doDaylightCycle true
gamerule doTraderSpawning true
gamerule doWardenSpawning true
gamerule doWeatherCycle true
gamerule fallDamage true
gamerule keepInventory false
gamerule mobGriefing true

#SUMMON MARKER FOR MONUMENT LATER
execute at @r run summon marker ~ ~100 ~ {Tags:["monument_position"]}
execute at @e[tag=monument_position] run forceload add ~ ~ ~ ~

#Kill ender pearls (Stasis chambers)
kill @e[type=ender_pearl]

#Cool effects on players
effect clear @a blindness
execute as @a at @s run playsound entity.wither.spawn master @s ~ ~ ~ 3 0.85 1
execute as @a at @s run playsound block.beacon.power_select master @s ~ ~ ~ 3 1 1
execute as @a at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~ 3 1.5 1
execute at @a positioned ~ ~0.2 ~ run function ctmv:effects/expansive_circle_endrod

#Reset lose sequence + disable "/trigger CONTINUEPLAYING"
scoreboard players set time LoseSequence 0
scoreboard players reset @a CONTINUEPLAYING

#Kill marker that was preventing players from exploring
kill @e[tag=prevent_exploring_on_lobby]