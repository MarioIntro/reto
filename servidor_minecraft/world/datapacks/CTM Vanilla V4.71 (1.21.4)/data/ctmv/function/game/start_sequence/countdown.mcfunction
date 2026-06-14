#Countdown to start game
#3
execute if score countdown StartSequence matches 1 run title @a subtitle {"text": ""}
execute if score countdown StartSequence matches 1 run title @a title {"text":"➂","bold":true,"color":"#f0f800"}
execute if score countdown StartSequence matches 1 as @a at @s run playsound block.dispenser.fail player @s ~ ~ ~ 3 2 1
execute if score countdown StartSequence matches 1 as @a at @s run playsound block.note_block.bit player @s ~ ~ ~ 3 1.85 1

#2
execute if score countdown StartSequence matches 2 run title @a title {"text":"➁","bold":true,"color":"#f8db00"}
execute if score countdown StartSequence matches 2 as @a at @s run playsound block.dispenser.fail player @s ~ ~ ~ 3 2 1
execute if score countdown StartSequence matches 2 as @a at @s run playsound block.note_block.bit player @s ~ ~ ~ 3 1.9 1

#1
execute if score countdown StartSequence matches 3 run title @a title {"text":"➀","bold":true,"color":"#f8c200"}
execute if score countdown StartSequence matches 3 as @a at @s run playsound block.dispenser.fail player @s ~ ~ ~ 3 2 1
execute if score countdown StartSequence matches 3 as @a at @s run playsound block.note_block.bit player @s ~ ~ ~ 3 1.95 1

#GO!
execute if score countdown StartSequence matches 4 run title @a times 0 60 40
execute if score countdown StartSequence matches 4 if score language Config matches 0 run title @a title {"text":"GO!","bold":true,"color":"gold"}
execute if score countdown StartSequence matches 4 if score language Config matches 1 run title @a title {"text":"¡EMPIEZA!","bold":true,"color":"gold"}
execute if score countdown StartSequence matches 4 as @a at @s run playsound block.note_block.bit player @s ~ ~ ~ 3 2 1

#Reset scores and common for all the cases above
execute if score countdown StartSequence matches 1.. run title @a times 0 30 20
execute if score countdown StartSequence matches 1.. as @a at @s run playsound ui.toast.in player @s ~ ~ ~ 3 1 1
execute if score countdown StartSequence matches 1.. run scoreboard players set countdown StartSequence 0