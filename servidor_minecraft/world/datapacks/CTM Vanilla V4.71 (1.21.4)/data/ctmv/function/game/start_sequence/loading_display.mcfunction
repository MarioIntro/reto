#Loading-like display on title when starting a new game
#Loading...
execute if score dots StartSequence matches 1 if score language Config matches 0 run title @a subtitle {"text":"Pregenerating terrain.","color":"green"}
execute if score dots StartSequence matches 1 if score language Config matches 0 run title @a title [{"text":"GAME ","color":"gold"},{"text":"№","color":"yellow","bold":true},{"score":{"name":"gameNumber","objective":"Game"},"color":"yellow","bold":true}]
execute if score dots StartSequence matches 1 if score language Config matches 1 run title @a subtitle {"text":"Pregenerando terreno.","color":"green"}
execute if score dots StartSequence matches 1 if score language Config matches 1 run title @a title [{"text":"PARTIDA ","color":"gold"},{"text":"№","color":"yellow","bold":true},{"score":{"name":"gameNumber","objective":"Game"},"color":"yellow","bold":true}]

execute if score dots StartSequence matches 2 if score language Config matches 0 run title @a subtitle {"text":"Pregenerating terrain..","color":"green"}
execute if score dots StartSequence matches 2 if score language Config matches 0 run title @a title [{"text":"GAME ","color":"gold"},{"text":"№","color":"yellow","bold":true},{"score":{"name":"gameNumber","objective":"Game"},"color":"yellow","bold":true}]
execute if score dots StartSequence matches 2 if score language Config matches 1 run title @a subtitle {"text":"Pregenerando terreno..","color":"green"}
execute if score dots StartSequence matches 2 if score language Config matches 1 run title @a title [{"text":"PARTIDA ","color":"gold"},{"text":"№","color":"yellow","bold":true},{"score":{"name":"gameNumber","objective":"Game"},"color":"yellow","bold":true}]

execute if score dots StartSequence matches 3 if score language Config matches 0 run title @a subtitle {"text":"Pregenerating terrain...","color":"green"}
execute if score dots StartSequence matches 3 if score language Config matches 0 run title @a title [{"text":"GAME ","color":"gold"},{"text":"№","color":"yellow","bold":true},{"score":{"name":"gameNumber","objective":"Game"},"color":"yellow","bold":true}]
execute if score dots StartSequence matches 3 if score language Config matches 1 run title @a subtitle {"text":"Pregenerando terreno...","color":"green"}
execute if score dots StartSequence matches 3 if score language Config matches 1 run title @a title [{"text":"PARTIDA ","color":"gold"},{"text":"№","color":"yellow","bold":true},{"score":{"name":"gameNumber","objective":"Game"},"color":"yellow","bold":true}]

#Starting...
execute if score dots StartSequence matches 4 if score language Config matches 0 run title @a subtitle {"text":"Loading terrain.","color":"green"}
execute if score dots StartSequence matches 4 if score language Config matches 0 run title @a title [{"text":"GAME ","color":"gold"},{"text":"№","color":"yellow","bold":true},{"score":{"name":"gameNumber","objective":"Game"},"color":"yellow","bold":true}]
execute if score dots StartSequence matches 4 if score language Config matches 1 run title @a subtitle {"text":"Cargando terreno.","color":"green"}
execute if score dots StartSequence matches 4 if score language Config matches 1 run title @a title [{"text":"PARTIDA ","color":"gold"},{"text":"№","color":"yellow","bold":true},{"score":{"name":"gameNumber","objective":"Game"},"color":"yellow","bold":true}]

execute if score dots StartSequence matches 5 if score language Config matches 0 run title @a subtitle {"text":"Loading terrain..","color":"green"}
execute if score dots StartSequence matches 5 if score language Config matches 0 run title @a title [{"text":"GAME ","color":"gold"},{"text":"№","color":"yellow","bold":true},{"score":{"name":"gameNumber","objective":"Game"},"color":"yellow","bold":true}]
execute if score dots StartSequence matches 5 if score language Config matches 1 run title @a subtitle {"text":"Cargando terreno..","color":"green"}
execute if score dots StartSequence matches 5 if score language Config matches 1 run title @a title [{"text":"PARTIDA ","color":"gold"},{"text":"№","color":"yellow","bold":true},{"score":{"name":"gameNumber","objective":"Game"},"color":"yellow","bold":true}]

execute if score dots StartSequence matches 6 if score language Config matches 0 run title @a subtitle {"text":"Loading terrain...","color":"green"}
execute if score dots StartSequence matches 6 if score language Config matches 0 run title @a title [{"text":"GAME ","color":"gold"},{"text":"№","color":"yellow","bold":true},{"score":{"name":"gameNumber","objective":"Game"},"color":"yellow","bold":true}]
execute if score dots StartSequence matches 6 if score language Config matches 1 run title @a subtitle {"text":"Cargando terreno...","color":"green"}
execute if score dots StartSequence matches 6 if score language Config matches 1 run title @a title [{"text":"PARTIDA ","color":"gold"},{"text":"№","color":"yellow","bold":true},{"score":{"name":"gameNumber","objective":"Game"},"color":"yellow","bold":true}]

#Reset scoreboards
execute if score dots StartSequence matches 1.. run title @a times 0 30 20
execute if score dots StartSequence matches 1.. as @a at @s run playsound block.dispenser.fail player @s ~ ~ ~ 3 2 1
execute if score dots StartSequence matches 1.. run scoreboard players set dots StartSequence 0