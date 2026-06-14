#Tp player
tp @s ~ ~ ~

#Message and sounds
execute if score language Config matches 0 run title @s actionbar ["",{"text":"\u2718\u23f5","color":"red"},{"text":" You ","color":"#FFB1B2"},{"text":"can't explore","color":"red"},{"text":" before starting the game","color":"#FFB1B2"}]
execute if score language Config matches 1 run title @s actionbar ["",{"text":"\u2718\u23f5","color":"red"},{"text":" No puedes explorar","color":"red"},{"text":" antes de empezar la partida","color":"#FFB1B2"}]

execute at @s run playsound block.note_block.bass player @s ~ ~ ~ 3 0 1
execute at @s run playsound block.note_block.bass player @s ~ ~ ~ 3 0 1
execute at @s run playsound block.candle.extinguish player @s ~ ~ ~ 3 0.7 1
execute at @s run particle dust{color:[1.000,0.000,0.000],scale:1} ~ ~1 ~ 0.6 0.7 0.6 0 150 normal