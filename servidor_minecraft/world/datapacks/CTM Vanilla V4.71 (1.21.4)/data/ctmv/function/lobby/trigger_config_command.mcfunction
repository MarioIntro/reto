#Check if the player that clicked is not the admin
execute if entity @s[tag=!admin] run title @s times 3 50 30
execute if entity @s[tag=!admin] if score language Config matches 0 run title @s subtitle {"text":"You are not the administrator","color":"#FFA4A5"}
execute if entity @s[tag=!admin] if score language Config matches 1 run title @s subtitle {"text":"No eres el administrador","color":"#FFA4A5"}
execute if entity @s[tag=!admin] run title @s title {"text":"\u2718\u23f5 ERROR","color":"red"}

execute if entity @s[tag=!admin] at @s run playsound block.note_block.bass player @s ~ ~ ~ 3 0 1
execute if entity @s[tag=!admin] at @s run playsound entity.villager.no player @s ~ ~ ~ 3 0.9 1
execute if entity @s[tag=!admin] at @s run particle dust{color:[1.000,0.000,0.000],scale:0.9} ~ ~1 ~ 0.3 0.6 0.3 0 30 normal

#Change config depending on which button you clicked + Reset score
execute store result score option Config run scoreboard players get @s[tag=admin] changeConfig
scoreboard players reset @a changeConfig