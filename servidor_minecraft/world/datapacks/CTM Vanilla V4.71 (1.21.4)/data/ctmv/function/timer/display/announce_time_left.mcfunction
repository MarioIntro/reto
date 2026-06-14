#Calculate time left
scoreboard players operation minutesLeft Timer = limit Timer
scoreboard players operation minutesLeft Timer -= totalMinutes Timer

#Play sounds and particles 
execute as @a at @s run playsound entity.evoker.prepare_summon player @s ~ ~ ~ 3 0.6 1
execute as @a at @s run playsound block.note_block.bit player @s ~ ~ ~ 3 0.8 1
execute as @a at @s run playsound ui.toast.in player @s ~ ~ ~ 3 1 1

execute at @a run particle dust{color:[1.000,0.000,0.000],scale:1} ~ ~1 ~ 0.5 0.7 0.5 0 70 normal
execute at @a run particle large_smoke ~ ~0.5 ~ 0.5 0.7 0.5 0 15 normal


#Announce in chat time left
#ENGLISH
execute if score language Config matches 0 run title @a times 10 40 30
execute if score language Config matches 0 run title @a subtitle {"text":"Time is running out!","color":"#FFADAE"}
execute if score language Config matches 0 run title @a title {"text":"⏴⏳⏵","color":"red"}

execute if score language Config matches 0 unless score minutesLeft Timer matches 1 run tellraw @a [{"text": "⏳⏵","color": "red"},{"text":" Time left: ","color":"#FFAAAC"},{"score":{"name":"minutesLeft","objective":"Timer"},"color":"red","bold": true},{"text":" minutes.","color":"red","bold": true}]
execute if score language Config matches 0 if score minutesLeft Timer matches 1 run tellraw @a [{"text": "⏳⏵","color": "red"},{"text":" Time left: ","color":"#FFAAAC"},{"score":{"name":"minutesLeft","objective":"Timer"},"color":"red","bold": true},{"text":" minute.","color":"red","bold": true}]

#SPANISH
execute if score language Config matches 1 run title @a subtitle {"text":"¡Se agota el tiempo!","color":"#FFADAE"}
execute if score language Config matches 1 run title @a title {"text":"⏴⏳⏵","color":"red"}

execute if score language Config matches 1 unless score minutesLeft Timer matches 1 run tellraw @a [{"text": "⏳⏵","color": "red"},{"text":" Tiempo restante: ","color":"#FFAAAC"},{"score":{"name":"minutesLeft","objective":"Timer"},"color":"red","bold": true},{"text":" minutos.","color":"red","bold": true}]
execute if score language Config matches 1 if score minutesLeft Timer matches 1 run tellraw @a [{"text": "⏳⏵","color": "red"},{"text":" Tiempo restante: ","color":"#FFAAAC"},{"score":{"name":"minutesLeft","objective":"Timer"},"color":"red","bold": true},{"text":" minuto.","color":"red","bold": true}]