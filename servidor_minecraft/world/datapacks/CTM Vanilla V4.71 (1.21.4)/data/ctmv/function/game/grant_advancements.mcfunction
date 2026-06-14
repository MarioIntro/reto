#Reset score
scoreboard players reset @a GRANTADVANCEMENTS

#CHECK IF PLAYERS ALREADY HAVE ALL ADVANCEMENTS
execute unless score time GrantingAdvancements matches 1 unless entity @a[advancements={minecraft:nether/all_effects=false}] at @s run playsound block.note_block.bass player @s ~ ~ ~ 3 0 1
execute unless score time GrantingAdvancements matches 1 unless entity @a[advancements={minecraft:nether/all_effects=false}] at @s run playsound entity.villager.no player @s ~ ~ ~ 3 0.9 1
execute unless score time GrantingAdvancements matches 1 unless entity @a[advancements={minecraft:nether/all_effects=false}] if score language Config matches 0 run tellraw @s ["",{"text":"✘⏵","color":"red"},{"text":" All players "},{"text":"already have","color":"red"},{"text":" the advancements."}]
execute unless score time GrantingAdvancements matches 1 unless entity @a[advancements={minecraft:nether/all_effects=false}] if score language Config matches 1 run tellraw @s ["",{"text":"✘⏵","color":"red"},{"text":" Todos los jugadores "},{"text":"tienen ya","color":"red"},{"text":" los progresos/logros."}]
execute unless score time GrantingAdvancements matches 1 unless entity @a[advancements={minecraft:nether/all_effects=false}] run return -1

#WAIT UNTIL ITS COMPLETE
execute unless score time GrantingAdvancements matches 1 run schedule function ctmv:game/grant_advancements 135s

#Stop timer and player movement
execute if score time GrantingAdvancements matches 0 run schedule clear ctmv:timer/loop
execute if score time GrantingAdvancements matches 0 run effect give @a slowness 130 9 true

execute if score time GrantingAdvancements matches 0 run gamemode spectator @a
execute if score time GrantingAdvancements matches 0 run function ctmv:game/stop_player_movement/summon_markers
execute if score time GrantingAdvancements matches 0 run scoreboard players set resting Game 1

#Gran advancements
execute if score time GrantingAdvancements matches 0 run advancement grant @a from adventure/root
execute if score time GrantingAdvancements matches 0 run advancement grant @a from end/root
execute if score time GrantingAdvancements matches 0 run advancement grant @a from husbandry/root
execute if score time GrantingAdvancements matches 0 run advancement grant @a from nether/root
execute if score time GrantingAdvancements matches 0 run advancement grant @a from recipes/root
execute if score time GrantingAdvancements matches 0 run advancement grant @a from story/root

#Title and sounds - START
execute if score time GrantingAdvancements matches 0 run title @a times 20 100 20
execute if score time GrantingAdvancements matches 0 if score language Config matches 0 run title @a subtitle ["",{"text":"⌛⏵","color":"dark_green"},{"text":" Granting Advancements...","color":"green"}]
execute if score time GrantingAdvancements matches 0 if score language Config matches 0 run title @a title {"text":"PLEASE WAIT","bold":true,"color":"dark_green"}

execute if score time GrantingAdvancements matches 0 if score language Config matches 1 run title @a subtitle ["",{"text":"⌛⏵","color":"dark_green"},{"text":" Concediendo logros...","color":"green"}]
execute if score time GrantingAdvancements matches 0 if score language Config matches 1 run title @a title {"text":"POR FAVOR ESPERA","bold":true,"color":"dark_green"}

execute if score time GrantingAdvancements matches 0 as @a at @s run playsound entity.wither.spawn master @s ~ ~ ~ 3 0 1
execute if score time GrantingAdvancements matches 0 as @a at @s run playsound block.end_portal_frame.fill master @s ~ ~ ~ 3 1.5 1


#Increment score
scoreboard players add time GrantingAdvancements 1


#Title and sounds - FINISH
execute if score time GrantingAdvancements matches 2 run title @a times 5 60 40
execute if score time GrantingAdvancements matches 2 if score language Config matches 0 run title @a subtitle ["",{"text":"✔⏵","color":"dark_green"},{"text":" You can continue playing!","color":"green"}]
execute if score time GrantingAdvancements matches 2 if score language Config matches 0 run title @a title {"text":"DONE!","bold":true,"color":"dark_green"}

execute if score time GrantingAdvancements matches 2 if score language Config matches 1 run title @a subtitle ["",{"text":"✔⏵","color":"dark_green"},{"text":" ¡Puedes seguir jugando!","color":"green"}]
execute if score time GrantingAdvancements matches 2 if score language Config matches 1 run title @a title {"text":"¡LISTO!","bold":true,"color":"dark_green"}

execute if score time GrantingAdvancements matches 2 as @a at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~ 3 1.5 1
execute if score time GrantingAdvancements matches 2 as @a at @s run playsound block.end_portal_frame.fill master @s ~ ~ ~ 3 1.5 1

execute if score time GrantingAdvancements matches 2 at @a positioned ~ ~0.2 ~ run function ctmv:effects/ascending_circle_endrod
execute if score time GrantingAdvancements matches 2 at @a run particle totem_of_undying ~ ~1.3 ~ 0.2 0.4 0.2 0.5 150 normal
execute if score time GrantingAdvancements matches 2 at @a run particle firework ~ ~1.3 ~ 0.2 0.4 0.2 0.15 50 normal

#Resume timer and player movement
execute if score time GrantingAdvancements matches 2 run function ctmv:timer/loop
execute if score time GrantingAdvancements matches 2 run effect clear @a slowness

execute if score time GrantingAdvancements matches 2 run scoreboard players set resting Game 0
execute if score time GrantingAdvancements matches 2 run function ctmv:game/stop_player_movement/kill_markers
execute if score time GrantingAdvancements matches 2 run gamemode adventure @a


#Reset score and exit function
execute if score time GrantingAdvancements matches 2 run schedule clear ctmv:game/grant_advancements
execute if score time GrantingAdvancements matches 2 run scoreboard players set time GrantingAdvancements 0