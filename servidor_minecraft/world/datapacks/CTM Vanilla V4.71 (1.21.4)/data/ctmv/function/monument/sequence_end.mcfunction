#Give books and start "Lobby" + time spent title
function ctmv:game/reset
title @a times 5 100 60
execute if score language Config matches 0 run title @a subtitle {"text":"⌚⏵ Time spent","color": "aqua"}
execute if score language Config matches 1 run title @a subtitle {"text":"⌚⏵ Tiempo empleado","color": "aqua"}

execute if score minutes Timer matches ..9 if score seconds Timer matches ..9 run title @a title [{"score":{"name":"hours","objective":"Timer"},"color":"#BFFFFD","bold":true},{"text":":0","color":"#BFFFFD","bold":true},{"score":{"name":"minutes","objective":"Timer"},"color":"#BFFFFD","bold":true},{"text":":0","color":"#BFFFFD","bold":true},{"score":{"name":"seconds","objective":"Timer"},"color":"#BFFFFD","bold":true}]
execute if score minutes Timer matches ..9 if score seconds Timer matches 10.. run title @a title [{"score":{"name":"hours","objective":"Timer"},"color":"#BFFFFD","bold":true},{"text":":0","color":"#BFFFFD","bold":true},{"score":{"name":"minutes","objective":"Timer"},"color":"#BFFFFD","bold":true},{"text":":","color":"#BFFFFD","bold":true},{"score":{"name":"seconds","objective":"Timer"},"color":"#BFFFFD","bold":true}]
execute if score minutes Timer matches 10.. if score seconds Timer matches ..9 run title @a title [{"score":{"name":"hours","objective":"Timer"},"color":"#BFFFFD","bold":true},{"text":":","color":"#BFFFFD","bold":true},{"score":{"name":"minutes","objective":"Timer"},"color":"#BFFFFD","bold":true},{"text":":0","color":"#BFFFFD","bold":true},{"score":{"name":"seconds","objective":"Timer"},"color":"#BFFFFD","bold":true}]
execute if score minutes Timer matches 10.. if score seconds Timer matches 10.. run title @a title [{"score":{"name":"hours","objective":"Timer"},"color":"#BFFFFD","bold":true},{"text":":","color":"#BFFFFD","bold":true},{"score":{"name":"minutes","objective":"Timer"},"color":"#BFFFFD","bold":true},{"text":":","color":"#BFFFFD","bold":true},{"score":{"name":"seconds","objective":"Timer"},"color":"#BFFFFD","bold":true}]

execute as @a at @s run playsound entity.evoker.cast_spell player @s ~ ~ ~ 3 0 1
execute as @a at @s run playsound entity.evoker.cast_spell player @s ~ ~ ~ 3 0 1

#Show stats in chat
tellraw @a {"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}
function ctmv:game/show_stats