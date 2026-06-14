#Reset score
scoreboard players reset @a objectives

#Sound effects + particles
execute at @s run playsound block.note_block.bit player @s ~ ~ ~ 3 2 1
execute at @s run playsound ui.toast.in player @s ~ ~ ~ 3 1 1
execute at @s run particle dust{color:[0.000,1.000,0.000],scale:0.8} ~ ~1 ~ 0.4 0.6 0.4 0 150 normal


#Print buttons for RESET and TAKE A REST
execute if score playing Game matches 1 if score language Config matches 0 run tellraw @s[tag=admin] ["",{"text":"\u26a0\u23f5","color":"red"},{"text":" Do you want to "},{"text":"RESET","bold":true,"color":"red"},{"text":" this game? "},{"text":"[CLICK]\n","bold":true,"color":"dark_red","clickEvent":{"action":"run_command","value":"/trigger RESETGAME"},"hoverEvent":{"action":"show_text","contents":["",{"text":"[\u26a0 WARNING \u26a0]","color":"red"},{"text":"\n\nIf you reset the game, "},{"text":"all your\nprogress will be lost","color":"red"},{"text":" forever"}]}}]
execute if score playing Game matches 1 if score language Config matches 1 run tellraw @s[tag=admin] ["",{"text":"\u26a0\u23f5","color":"red"},{"text":" Quieres "},{"text":"REINICIAR","bold":true,"color":"red"},{"text":" la partida? "},{"text":"[CLICK]\n","bold":true,"color":"dark_red","clickEvent":{"action":"run_command","value":"/trigger RESETGAME"},"hoverEvent":{"action":"show_text","contents":["",{"text":"[\u26a0 ADVERTENCIA \u26a0]","color":"red"},{"text":"\n\nSi reinicias la partida, "},{"text":"todo tu\nprogreso se perderá","color":"red"},{"text":" para siempre"}]}}]

execute if score playing Game matches 1 if score language Config matches 0 if score canRest Game matches 1 run tellraw @s[tag=admin] [{"text":"\u2690\u23f5","color":"green"},{"text":" Do you want to ","color": "white"},{"text":"TAKE A REST","bold":true,"color":"green"},{"text":" and stop the timer for some time? ","color": "white"},{"text":"[CLICK]\n","bold":true,"color":"dark_green","clickEvent":{"action":"run_command","value":"/trigger NEEDSOMEREST"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Need to rest? No problem!","color":"green"},{"text":"\n\nClick here to "},{"text":"stop the timer","color":"green"},{"text":" for\nany time you want "},{"text":"(note that you\nwon't be able to do anything while\nresting)","color":"gray"},{"text":"\n\n"},{"text":"[ONLY ONE USE PER GAME]","color":"gold"}]}}]
execute if score playing Game matches 1 if score language Config matches 1 if score canRest Game matches 1 run tellraw @s[tag=admin] [{"text":"\u2690\u23f5","color":"green"},{"text":" Quieres ","color": "white"},{"text":"DESCANSAR","bold":true,"color":"green"},{"text":" y parar el temporizador por un rato? ","color": "white"},{"text":"[CLICK]\n","bold":true,"color":"dark_green","clickEvent":{"action":"run_command","value":"/trigger NEEDSOMEREST"},"hoverEvent":{"action":"show_text","contents":["",{"text":"¿Necesitas un descanso? ¡Sin problema!","color":"green"},{"text":"\n\nDa click para "},{"text":"parar el temporizador","color":"green"},{"text":"\npor todo el tiempo que quieras "},{"text":"(debes\nsaber que no podrás hacer nada\nmientras descansas)","color":"gray"},{"text":"\n\n"},{"text":"[SOLO UN USO POR PARTIDA]","color":"gold"}]}}]


#Tellraw describing every item the players need to collect
#ENGLISH
#Normal mode
execute if score language Config matches 0 if score gamemode Config matches 0 run tellraw @s ["",{"text":"\u2605\u23f5","color":"yellow"},{"text":" These are the "},{"text":"items","bold":true,"color":"gold"},{"text":" you need to collect:\n"}]

execute if score language Config matches 0 if score gamemode Config matches 0 if score white WoolsObtained matches 0 run tellraw @s [{"text":"\u2588 White wool: ","color":"white"},{"text":"Cake","color":"gray"}]
execute if score language Config matches 0 if score gamemode Config matches 0 if score orange WoolsObtained matches 0 run tellraw @s [{"text":"\u2588","color":"gold"},{"text":" Orange wool: "},{"text":"Damaged anvil","color":"gray"}]
execute if score language Config matches 0 if score gamemode Config matches 0 if score magenta WoolsObtained matches 0 run tellraw @s [{"text":"\u2588","color":"light_purple"},{"text":" Magenta wool: "},{"text":"Cobweb","color":"gray"}]
execute if score language Config matches 0 if score gamemode Config matches 0 if score lightblue WoolsObtained matches 0 run tellraw @s [{"text":"\u2588","color":"aqua"},{"text":" Light blue wool: "},{"text":"Beetroot soup","color":"gray"}]
execute if score language Config matches 0 if score gamemode Config matches 0 if score yellow WoolsObtained matches 0 run tellraw @s [{"text":"\u2588","color":"yellow"},{"text":" Yellow wool: "},{"text":"Observer","color":"gray"}]
execute if score language Config matches 0 if score gamemode Config matches 0 if score lime WoolsObtained matches 0 run tellraw @s [{"text":"\u2588","color":"green"},{"text":" Lime wool: "},{"text":"Bottle o' Enchanting","color":"gray"}]
execute if score language Config matches 0 if score gamemode Config matches 0 if score pink WoolsObtained matches 0 run tellraw @s [{"text":"\u2588","color":"#FFC3E6"},{"text":" Pink wool: "},{"text":"Ender chest","color":"gray"}]
execute if score language Config matches 0 if score gamemode Config matches 0 if score gray WoolsObtained matches 0 run tellraw @s [{"text":"\u2588","color":"dark_gray"},{"text":" Gray wool: "},{"text":"Nautilus shell","color":"gray"}]
execute if score language Config matches 0 if score gamemode Config matches 0 if score lightgray WoolsObtained matches 0 run tellraw @s [{"text":"\u2588","color":"gray"},{"text":" Light gray wool: "},{"text":"Diamond block","color":"gray"}]
execute if score language Config matches 0 if score gamemode Config matches 0 if score cyan WoolsObtained matches 0 run tellraw @s [{"text":"\u2588","color":"dark_aqua"},{"text":" Cyan wool: "},{"text":"Music disc - 11","color":"gray"}]
execute if score language Config matches 0 if score gamemode Config matches 0 if score purple WoolsObtained matches 0 run tellraw @s [{"text":"\u2588","color":"dark_purple"},{"text":" Purple wool: "},{"text":"Totem of Undying","color":"gray"}]
execute if score language Config matches 0 if score gamemode Config matches 0 if score blue WoolsObtained matches 0 run tellraw @s [{"text":"\u2588","color":"blue"},{"text":" Blue wool: "},{"text":"Sponge","color":"gray"}]
execute if score language Config matches 0 if score gamemode Config matches 0 if score brown WoolsObtained matches 0 run tellraw @s [{"text":"\u2588","color":"#AC7A48"},{"text":" Brown wool: "},{"text":"Bee nest","color":"gray"}]
execute if score language Config matches 0 if score gamemode Config matches 0 if score green WoolsObtained matches 0 run tellraw @s [{"text":"\u2588","color":"dark_green"},{"text":" Green wool: "},{"text":"End Crystal","color":"gray"}]
execute if score language Config matches 0 if score gamemode Config matches 0 if score red WoolsObtained matches 0 run tellraw @s [{"text":"\u2588","color":"red"},{"text":" Red wool: "},{"text":"Dragon egg","color":"gray"}]
execute if score language Config matches 0 if score gamemode Config matches 0 if score black WoolsObtained matches 0 run tellraw @s [{"text":"\u2588","color":"black"},{"text":" Black wool: "},{"text":"Weakness tipped arrow","color":"gray"}]


#Hard mode
execute if score language Config matches 0 if score gamemode Config matches 1 run tellraw @s ["",{"text":"\u2605\u23f5","color":"yellow"},{"text":" These are the "},{"text":"items","bold":true,"color":"gold"},{"text":" you need to collect:\n"}]

execute if score language Config matches 0 if score gamemode Config matches 1 if score white WoolsObtained matches 0 run tellraw @s [{"text":"\u2588 White wool: "},{"text":"Cake","color":"gray"}]
execute if score language Config matches 0 if score gamemode Config matches 1 if score orange WoolsObtained matches 0 run tellraw @s [{"text":"\u2588","color":"gold"},{"text":" Orange wool: "},{"text":"Damaged anvil","color":"gray"}]
execute if score language Config matches 0 if score gamemode Config matches 1 if score magenta WoolsObtained matches 0 run tellraw @s [{"text":"\u2588","color":"light_purple"},{"text":" Magenta wool: "},{"text":"Rabbit stew","color":"gray"}]
execute if score language Config matches 0 if score gamemode Config matches 1 if score lightblue WoolsObtained matches 0 run tellraw @s [{"text":"\u2588","color":"aqua"},{"text":" Light blue wool: "},{"text":"Observer","color":"gray"}]
execute if score language Config matches 0 if score gamemode Config matches 1 if score yellow WoolsObtained matches 0 run tellraw @s [{"text":"\u2588","color":"yellow"},{"text":" Yellow wool: "},{"text":"Heart of the Sea","color":"gray"}]
execute if score language Config matches 0 if score gamemode Config matches 1 if score lime WoolsObtained matches 0 run tellraw @s [{"text":"\u2588","color":"green"},{"text":" Lime wool: "},{"text":"Skull banner pattern","color":"gray"}]
execute if score language Config matches 0 if score gamemode Config matches 1 if score pink WoolsObtained matches 0 run tellraw @s [{"text":"\u2588","color":"#FFC3E6"},{"text":" Pink wool: "},{"text":"Ender chest","color":"gray"}]
execute if score language Config matches 0 if score gamemode Config matches 1 if score gray WoolsObtained matches 0 run tellraw @s [{"text":"\u2588","color":"dark_gray"},{"text":" Gray wool: "},{"text":"Music disc - 11","color":"gray"}]
execute if score language Config matches 0 if score gamemode Config matches 1 if score lightgray WoolsObtained matches 0 run tellraw @s [{"text":"\u2588","color":"gray"},{"text":" Light gray wool: "},{"text":"Trident","color":"gray"}]
execute if score language Config matches 0 if score gamemode Config matches 1 if score cyan WoolsObtained matches 0 run tellraw @s [{"text":"\u2588","color":"dark_aqua"},{"text":" Cyan wool: "},{"text":"Totem of Undying","color":"gray"}]
execute if score language Config matches 0 if score gamemode Config matches 1 if score purple WoolsObtained matches 0 run tellraw @s [{"text":"\u2588","color":"dark_purple"},{"text":" Purple wool: "},{"text":"Sponge","color":"gray"}]
execute if score language Config matches 0 if score gamemode Config matches 1 if score blue WoolsObtained matches 0 run tellraw @s [{"text":"\u2588","color":"blue"},{"text":" Blue wool: "},{"text":"Bee nest","color":"gray"}]
execute if score language Config matches 0 if score gamemode Config matches 1 if score brown WoolsObtained matches 0 run tellraw @s [{"text":"\u2588","color":"#AC7A48"},{"text":" Brown wool: "},{"text":"End Crystal","color":"gray"}]
execute if score language Config matches 0 if score gamemode Config matches 1 if score green WoolsObtained matches 0 run tellraw @s [{"text":"\u2588","color":"dark_green"},{"text":" Green wool: "},{"text":"Dragon egg","color":"gray"}]
execute if score language Config matches 0 if score gamemode Config matches 1 if score red WoolsObtained matches 0 run tellraw @s [{"text":"\u2588","color":"red"},{"text":" Red wool: "},{"text":"Weakness tipped arrow","color":"gray"}]
execute if score language Config matches 0 if score gamemode Config matches 1 if score black WoolsObtained matches 0 run tellraw @s [{"text":"\u2588","color":"black"},{"text":" Black wool: "},{"text":"Cyan Shulker box","color":"gray"}]


#Nightmare mode
execute if score language Config matches 0 if score gamemode Config matches 2 run tellraw @s ["",{"text":"\u2605\u23f5","color":"yellow"},{"text":" These are the "},{"text":"items","bold":true,"color":"gold"},{"text":" you need to collect:\n"}]

execute if score language Config matches 0 if score gamemode Config matches 2 if score white WoolsObtained matches 0 run tellraw @s [{"text":"\u2588 White wool: "},{"text":"Heart of the Sea","color":"gray"}]
execute if score language Config matches 0 if score gamemode Config matches 2 if score orange WoolsObtained matches 0 run tellraw @s [{"text":"\u2588","color":"gold"},{"text":" Orange wool: "},{"text":"Redstone lamp","color":"gray"}]
execute if score language Config matches 0 if score gamemode Config matches 2 if score magenta WoolsObtained matches 0 run tellraw @s [{"text":"\u2588","color":"light_purple"},{"text":" Magenta wool: "},{"text":"Brown glazed terracotta","color":"gray"}]
execute if score language Config matches 0 if score gamemode Config matches 2 if score lightblue WoolsObtained matches 0 run tellraw @s [{"text":"\u2588","color":"aqua"},{"text":" Light blue wool: "},{"text":"Globe banner pattern","color":"gray"}]
execute if score language Config matches 0 if score gamemode Config matches 2 if score yellow WoolsObtained matches 0 run tellraw @s [{"text":"\u2588","color":"yellow"},{"text":" Yellow wool: "},{"text":"Bane of Arthropods V enchanted book","color":"gray"}]
execute if score language Config matches 0 if score gamemode Config matches 2 if score lime WoolsObtained matches 0 run tellraw @s [{"text":"\u2588","color":"green"},{"text":" Lime wool: "},{"text":"Music disc - 11","color":"gray"}]
execute if score language Config matches 0 if score gamemode Config matches 2 if score pink WoolsObtained matches 0 run tellraw @s [{"text":"\u2588","color":"#FFC3E6"},{"text":" Pink wool: "},{"text":"Tube coral","color":"gray"}]
execute if score language Config matches 0 if score gamemode Config matches 2 if score gray WoolsObtained matches 0 run tellraw @s [{"text":"\u2588","color":"dark_gray"},{"text":" Gray wool: "},{"text":"Trident","color":"gray"}]
execute if score language Config matches 0 if score gamemode Config matches 2 if score lightgray WoolsObtained matches 0 run tellraw @s [{"text":"\u2588","color":"gray"},{"text":" Light gray wool: "},{"text":"Totem of Undying","color":"gray"}]
execute if score language Config matches 0 if score gamemode Config matches 2 if score cyan WoolsObtained matches 0 run tellraw @s [{"text":"\u2588","color":"dark_aqua"},{"text":" Cyan wool: "},{"text":"Mycelium","color":"gray"}]
execute if score language Config matches 0 if score gamemode Config matches 2 if score purple WoolsObtained matches 0 run tellraw @s [{"text":"\u2588","color":"dark_purple"},{"text":" Purple wool: "},{"text":"Sponge","color":"gray"}]
execute if score language Config matches 0 if score gamemode Config matches 2 if score blue WoolsObtained matches 0 run tellraw @s [{"text":"\u2588","color":"blue"},{"text":" Blue wool: "},{"text":"Turtle Scute","color":"gray"}]
execute if score language Config matches 0 if score gamemode Config matches 2 if score brown WoolsObtained matches 0 run tellraw @s [{"text":"\u2588","color":"#AC7A48"},{"text":" Brown wool: "},{"text":"Honey block","color":"gray"}]
execute if score language Config matches 0 if score gamemode Config matches 2 if score green WoolsObtained matches 0 run tellraw @s [{"text":"\u2588","color":"dark_green"},{"text":" Green wool: "},{"text":"Fire resistance tipped arrow","color":"gray"}]
execute if score language Config matches 0 if score gamemode Config matches 2 if score red WoolsObtained matches 0 run tellraw @s [{"text":"\u2588","color":"red"},{"text":" Red wool: "},{"text":"Wither rose","color":"gray"}]
execute if score language Config matches 0 if score gamemode Config matches 2 if score black WoolsObtained matches 0 run tellraw @s [{"text":"\u2588","color":"black"},{"text":" Black wool: "},{"text":"Dragon head","color":"gray"}]


#Wool mode
execute if score language Config matches 0 if score gamemode Config matches 3 run tellraw @s ["",{"text":"\u2605\u23f5","color":"yellow"},{"text":" These are the "},{"text":"items","bold":true,"color":"gold"},{"text":" you need to collect:\n"}]

execute if score language Config matches 0 if score gamemode Config matches 3 if score white WoolsObtained matches 0 run tellraw @s {"text":"\u2588 White wool"}
execute if score language Config matches 0 if score gamemode Config matches 3 if score orange WoolsObtained matches 0 run tellraw @s [{"text":"\u2588","color":"gold"},{"text":" Orange wool"}]
execute if score language Config matches 0 if score gamemode Config matches 3 if score magenta WoolsObtained matches 0 run tellraw @s [{"text":"\u2588","color":"light_purple"},{"text":" Magenta wool"}]
execute if score language Config matches 0 if score gamemode Config matches 3 if score lightblue WoolsObtained matches 0 run tellraw @s [{"text":"\u2588","color":"aqua"},{"text":" Light blue wool"}]
execute if score language Config matches 0 if score gamemode Config matches 3 if score yellow WoolsObtained matches 0 run tellraw @s [{"text":"\u2588","color":"yellow"},{"text":" Yellow wool"}]
execute if score language Config matches 0 if score gamemode Config matches 3 if score lime WoolsObtained matches 0 run tellraw @s [{"text":"\u2588","color":"green"},{"text":" Lime wool"}]
execute if score language Config matches 0 if score gamemode Config matches 3 if score pink WoolsObtained matches 0 run tellraw @s [{"text":"\u2588","color":"#FFC3E6"},{"text":" Pink wool"}]
execute if score language Config matches 0 if score gamemode Config matches 3 if score gray WoolsObtained matches 0 run tellraw @s [{"text":"\u2588","color":"dark_gray"},{"text":" Gray wool"}]
execute if score language Config matches 0 if score gamemode Config matches 3 if score lightgray WoolsObtained matches 0 run tellraw @s [{"text":"\u2588","color":"gray"},{"text":" Light gray wool"}]
execute if score language Config matches 0 if score gamemode Config matches 3 if score cyan WoolsObtained matches 0 run tellraw @s [{"text":"\u2588","color":"dark_aqua"},{"text":" Cyan wool"}]
execute if score language Config matches 0 if score gamemode Config matches 3 if score purple WoolsObtained matches 0 run tellraw @s [{"text":"\u2588","color":"dark_purple"},{"text":" Purple wool"}]
execute if score language Config matches 0 if score gamemode Config matches 3 if score blue WoolsObtained matches 0 run tellraw @s [{"text":"\u2588","color":"blue"},{"text":" Blue wool"}]
execute if score language Config matches 0 if score gamemode Config matches 3 if score brown WoolsObtained matches 0 run tellraw @s [{"text":"\u2588","color":"#AC7A48"},{"text":" Brown wool"}]
execute if score language Config matches 0 if score gamemode Config matches 3 if score green WoolsObtained matches 0 run tellraw @s [{"text":"\u2588","color":"dark_green"},{"text":" Green wool"}]
execute if score language Config matches 0 if score gamemode Config matches 3 if score red WoolsObtained matches 0 run tellraw @s [{"text":"\u2588","color":"red"},{"text":" Red wool"}]
execute if score language Config matches 0 if score gamemode Config matches 3 if score black WoolsObtained matches 0 run tellraw @s [{"text":"\u2588","color":"black"},{"text":" Black wool"}]

#Disco mode
execute if score language Config matches 0 if score gamemode Config matches 4 run tellraw @s ["",{"text":"\u2605\u23f5","color":"yellow"},{"text":" These are the "},{"text":"items","bold":true,"color":"gold"},{"text":" you need to collect:\n"}]

execute if score language Config matches 0 if score gamemode Config matches 4 if score white WoolsObtained matches 0 run tellraw @s [{"text":"\u2588 White wool: "},{"text":"C418 - 13","color":"gray"}]
execute if score language Config matches 0 if score gamemode Config matches 4 if score orange WoolsObtained matches 0 run tellraw @s [{"text":"\u2588","color":"gold"},{"text":" Orange wool: "},{"text":"C418 - cat","color":"gray"}]
execute if score language Config matches 0 if score gamemode Config matches 4 if score magenta WoolsObtained matches 0 run tellraw @s [{"text":"\u2588","color":"light_purple"},{"text":" Magenta wool: "},{"text":"C418 - blocks","color":"gray"}]
execute if score language Config matches 0 if score gamemode Config matches 4 if score lightblue WoolsObtained matches 0 run tellraw @s [{"text":"\u2588","color":"aqua"},{"text":" Light blue wool: "},{"text":"C418 - chirp","color":"gray"}]
execute if score language Config matches 0 if score gamemode Config matches 4 if score yellow WoolsObtained matches 0 run tellraw @s [{"text":"\u2588","color":"yellow"},{"text":" Yellow wool: "},{"text":"C418 - far","color":"gray"}]
execute if score language Config matches 0 if score gamemode Config matches 4 if score lime WoolsObtained matches 0 run tellraw @s [{"text":"\u2588","color":"green"},{"text":" Lime wool: "},{"text":"C418 - mall","color":"gray"}]
execute if score language Config matches 0 if score gamemode Config matches 4 if score pink WoolsObtained matches 0 run tellraw @s [{"text":"\u2588","color":"#FFC3E6"},{"text":" Pink wool: "},{"text":"C418 - mellohi","color":"gray"}]
execute if score language Config matches 0 if score gamemode Config matches 4 if score gray WoolsObtained matches 0 run tellraw @s [{"text":"\u2588","color":"dark_gray"},{"text":" Gray wool: "},{"text":"C418 - stal","color":"gray"}]
execute if score language Config matches 0 if score gamemode Config matches 4 if score lightgray WoolsObtained matches 0 run tellraw @s [{"text":"\u2588","color":"gray"},{"text":" Light gray wool: "},{"text":"C418 - strad","color":"gray"}]
execute if score language Config matches 0 if score gamemode Config matches 4 if score cyan WoolsObtained matches 0 run tellraw @s [{"text":"\u2588","color":"dark_aqua"},{"text":" Cyan wool: "},{"text":"C418 - ward","color":"gray"}]
execute if score language Config matches 0 if score gamemode Config matches 4 if score purple WoolsObtained matches 0 run tellraw @s [{"text":"\u2588","color":"dark_purple"},{"text":" Purple wool: "},{"text":"C418 - 11","color":"gray"}]
execute if score language Config matches 0 if score gamemode Config matches 4 if score blue WoolsObtained matches 0 run tellraw @s [{"text":"\u2588","color":"blue"},{"text":" Blue wool: "},{"text":"C418 - wait","color":"gray"}]
execute if score language Config matches 0 if score gamemode Config matches 4 if score brown WoolsObtained matches 0 run tellraw @s [{"text":"\u2588","color":"#AC7A48"},{"text":" Brown wool: "},{"text":"Lena Raine - otherside","color":"gray"}]
execute if score language Config matches 0 if score gamemode Config matches 4 if score green WoolsObtained matches 0 run tellraw @s [{"text":"\u2588","color":"dark_green"},{"text":" Green wool: "},{"text":"Samuel Åberg - 5","color":"gray"}]
execute if score language Config matches 0 if score gamemode Config matches 4 if score red WoolsObtained matches 0 run tellraw @s [{"text":"\u2588","color":"red"},{"text":" Red wool: "},{"text":"Lena Raine - Pigstep","color":"gray"}]
execute if score language Config matches 0 if score gamemode Config matches 4 if score black WoolsObtained matches 0 run tellraw @s [{"text":"\u2588","color":"black"},{"text":" Black wool: "},{"text":"Aaron Cherof - Relic","color":"gray"}]


#Mineral blocks
execute if score language Config matches 0 if score gamemode Config matches 1..2 if score coal WoolsObtained matches 0 run tellraw @s [{"text":"\u2683","color":"#3D3D3D"},{"text":" Mineral block: "},{"text":"Coal","color":"gray"}]
execute if score language Config matches 0 if score gamemode Config matches 1..2 if score iron WoolsObtained matches 0 run tellraw @s [{"text":"\u2683","color":"#E7E7E7"},{"text":" Mineral block: "},{"text":"Iron","color":"gray"}]
execute if score language Config matches 0 if score gamemode Config matches 1..2 if score gold WoolsObtained matches 0 run tellraw @s [{"text":"\u2683","color":"#FFE627"},{"text":" Mineral block: "},{"text":"Gold","color":"gray"}]
execute if score language Config matches 0 if score gamemode Config matches 1..2 if score lapis WoolsObtained matches 0 run tellraw @s [{"text":"\u2683","color":"blue"},{"text":" Mineral block: "},{"text":"Lapis Lazuli","color":"gray"}]
execute if score language Config matches 0 if score gamemode Config matches 1..2 if score redstone WoolsObtained matches 0 run tellraw @s [{"text":"\u2683","color":"#D60004"},{"text":" Mineral block: "},{"text":"Redstone","color":"gray"}]
execute if score language Config matches 0 if score gamemode Config matches 1..2 if score emerald WoolsObtained matches 0 run tellraw @s [{"text":"\u2683","color":"#0ED300"},{"text":" Mineral block: "},{"text":"Emerald","color":"gray"}]
execute if score language Config matches 0 if score gamemode Config matches 1..2 if score diamond WoolsObtained matches 0 run tellraw @s [{"text":"\u2683","color":"#72FFFA"},{"text":" Mineral block: "},{"text":"Diamond","color":"gray"}]
execute if score language Config matches 0 if score gamemode Config matches 1..2 if score copper WoolsObtained matches 0 run tellraw @s [{"text":"\u2683","color":"#D67445"},{"text":" Mineral block: "},{"text":"Copper","color":"gray"}]



#SPANISH
#Normal mode
execute if score language Config matches 1 if score gamemode Config matches 0 run tellraw @s ["",{"text":"\u2605\u23f5","color":"yellow"},{"text":" Estos son los "},{"text":"objetos","bold":true,"color":"gold"},{"text":" que debes obtener:\n"}]

execute if score language Config matches 1 if score gamemode Config matches 0 if score white WoolsObtained matches 0 run tellraw @s [{"text":"\u2588 Lana blanca: "},{"text":"Tarta","color":"gray"}]
execute if score language Config matches 1 if score gamemode Config matches 0 if score orange WoolsObtained matches 0 run tellraw @s [{"text":"\u2588","color":"gold"},{"text":" Lana naranja: "},{"text":"Yunque muy dañado","color":"gray"}]
execute if score language Config matches 1 if score gamemode Config matches 0 if score magenta WoolsObtained matches 0 run tellraw @s [{"text":"\u2588","color":"light_purple"},{"text":" Lana magenta: "},{"text":"Telaraña","color":"gray"}]
execute if score language Config matches 1 if score gamemode Config matches 0 if score lightblue WoolsObtained matches 0 run tellraw @s [{"text":"\u2588","color":"aqua"},{"text":" Lana azul claro: "},{"text":"Estofado de remolacha","color":"gray"}]
execute if score language Config matches 1 if score gamemode Config matches 0 if score yellow WoolsObtained matches 0 run tellraw @s [{"text":"\u2588","color":"yellow"},{"text":" Lana amarilla: "},{"text":"Observador","color":"gray"}]
execute if score language Config matches 1 if score gamemode Config matches 0 if score lime WoolsObtained matches 0 run tellraw @s [{"text":"\u2588","color":"green"},{"text":" Lana lima: "},{"text":"Frasco de experiencia","color":"gray"}]
execute if score language Config matches 1 if score gamemode Config matches 0 if score pink WoolsObtained matches 0 run tellraw @s [{"text":"\u2588","color":"#FFC3E6"},{"text":" Lana rosa: "},{"text":"Cofre de Ender","color":"gray"}]
execute if score language Config matches 1 if score gamemode Config matches 0 if score gray WoolsObtained matches 0 run tellraw @s [{"text":"\u2588","color":"dark_gray"},{"text":" Lana gris: "},{"text":"Caparazón de nautilo","color":"gray"}]
execute if score language Config matches 1 if score gamemode Config matches 0 if score lightgray WoolsObtained matches 0 run tellraw @s [{"text":"\u2588","color":"gray"},{"text":" Lana gris claro: "},{"text":"Bloque de diamante","color":"gray"}]
execute if score language Config matches 1 if score gamemode Config matches 0 if score cyan WoolsObtained matches 0 run tellraw @s [{"text":"\u2588","color":"dark_aqua"},{"text":" Lana cian: "},{"text":"Disco de música - 11","color":"gray"}]
execute if score language Config matches 1 if score gamemode Config matches 0 if score purple WoolsObtained matches 0 run tellraw @s [{"text":"\u2588","color":"dark_purple"},{"text":" Lana morada: "},{"text":"Totem de la Inmortalidad","color":"gray"}]
execute if score language Config matches 1 if score gamemode Config matches 0 if score blue WoolsObtained matches 0 run tellraw @s [{"text":"\u2588","color":"blue"},{"text":" Lana azul: "},{"text":"Esponja","color":"gray"}]
execute if score language Config matches 1 if score gamemode Config matches 0 if score brown WoolsObtained matches 0 run tellraw @s [{"text":"\u2588","color":"#AC7A48"},{"text":" Lana marrón: "},{"text":"Colmena","color":"gray"}]
execute if score language Config matches 1 if score gamemode Config matches 0 if score green WoolsObtained matches 0 run tellraw @s [{"text":"\u2588","color":"dark_green"},{"text":" Lana verde: "},{"text":"Cristal del End","color":"gray"}]
execute if score language Config matches 1 if score gamemode Config matches 0 if score red WoolsObtained matches 0 run tellraw @s [{"text":"\u2588","color":"red"},{"text":" Lana roja: "},{"text":"Huevo de dragón","color":"gray"}]
execute if score language Config matches 1 if score gamemode Config matches 0 if score black WoolsObtained matches 0 run tellraw @s [{"text":"\u2588","color":"black"},{"text":" Lana negra: "},{"text":"Flecha de debilidad","color":"gray"}]


#Hard mode
execute if score language Config matches 1 if score gamemode Config matches 1 run tellraw @s ["",{"text":"\u2605\u23f5","color":"yellow"},{"text":" Estos son los "},{"text":"objetos","bold":true,"color":"gold"},{"text":" que debes obtener:\n"}]

execute if score language Config matches 1 if score gamemode Config matches 1 if score white WoolsObtained matches 0 run tellraw @s [{"text":"\u2588 Lana blanca: "},{"text":"Tarta","color":"gray"}]
execute if score language Config matches 1 if score gamemode Config matches 1 if score orange WoolsObtained matches 0 run tellraw @s [{"text":"\u2588","color":"gold"},{"text":" Lana naranja: "},{"text":"Yunque muy dañado","color":"gray"}]
execute if score language Config matches 1 if score gamemode Config matches 1 if score magenta WoolsObtained matches 0 run tellraw @s [{"text":"\u2588","color":"light_purple"},{"text":" Lana magenta: "},{"text":"Estofado de conejo","color":"gray"}]
execute if score language Config matches 1 if score gamemode Config matches 1 if score lightblue WoolsObtained matches 0 run tellraw @s [{"text":"\u2588","color":"aqua"},{"text":" Lana azul claro: "},{"text":"Observador","color":"gray"}]
execute if score language Config matches 1 if score gamemode Config matches 1 if score yellow WoolsObtained matches 0 run tellraw @s [{"text":"\u2588","color":"yellow"},{"text":" Lana amarilla: "},{"text":"Corazón del mar","color":"gray"}]
execute if score language Config matches 1 if score gamemode Config matches 1 if score lime WoolsObtained matches 0 run tellraw @s [{"text":"\u2588","color":"green"},{"text":" Lana lima: "},{"text":"Diseño de estandarte de calavera","color":"gray"}]
execute if score language Config matches 1 if score gamemode Config matches 1 if score pink WoolsObtained matches 0 run tellraw @s [{"text":"\u2588","color":"#FFC3E6"},{"text":" Lana rosa: "},{"text":"Cofre de Ender","color":"gray"}]
execute if score language Config matches 1 if score gamemode Config matches 1 if score gray WoolsObtained matches 0 run tellraw @s [{"text":"\u2588","color":"dark_gray"},{"text":" Lana gris: "},{"text":"Disco de música - 11","color":"gray"}]
execute if score language Config matches 1 if score gamemode Config matches 1 if score lightgray WoolsObtained matches 0 run tellraw @s [{"text":"\u2588","color":"gray"},{"text":" Lana gris claro: "},{"text":"Tridente","color":"gray"}]
execute if score language Config matches 1 if score gamemode Config matches 1 if score cyan WoolsObtained matches 0 run tellraw @s [{"text":"\u2588","color":"dark_aqua"},{"text":" Lana cian: "},{"text":"Totem de la Inmortalidad","color":"gray"}]
execute if score language Config matches 1 if score gamemode Config matches 1 if score purple WoolsObtained matches 0 run tellraw @s [{"text":"\u2588","color":"dark_purple"},{"text":" Lana morada: "},{"text":"Esponja","color":"gray"}]
execute if score language Config matches 1 if score gamemode Config matches 1 if score blue WoolsObtained matches 0 run tellraw @s [{"text":"\u2588","color":"blue"},{"text":" Lana azul: "},{"text":"Colmena","color":"gray"}]
execute if score language Config matches 1 if score gamemode Config matches 1 if score brown WoolsObtained matches 0 run tellraw @s [{"text":"\u2588","color":"#AC7A48"},{"text":" Lana marrón: "},{"text":"Cristal del End","color":"gray"}]
execute if score language Config matches 1 if score gamemode Config matches 1 if score green WoolsObtained matches 0 run tellraw @s [{"text":"\u2588","color":"dark_green"},{"text":" Lana verde: "},{"text":"Huevo de dragón","color":"gray"}]
execute if score language Config matches 1 if score gamemode Config matches 1 if score red WoolsObtained matches 0 run tellraw @s [{"text":"\u2588","color":"red"},{"text":" Lana roja: "},{"text":"Flecha de debilidad","color":"gray"}]
execute if score language Config matches 1 if score gamemode Config matches 1 if score black WoolsObtained matches 0 run tellraw @s [{"text":"\u2588","color":"black"},{"text":" Lana negra: "},{"text":"Caja de shulker cian","color":"gray"}]


#Nightmare mode
execute if score language Config matches 1 if score gamemode Config matches 2 run tellraw @s ["",{"text":"\u2605\u23f5","color":"yellow"},{"text":" Estos son los "},{"text":"objetos","bold":true,"color":"gold"},{"text":" que debes obtener:\n"}]

execute if score language Config matches 1 if score gamemode Config matches 2 if score white WoolsObtained matches 0 run tellraw @s [{"text":"\u2588 Lana blanca: "},{"text":"Corazón del mar","color":"gray"}]
execute if score language Config matches 1 if score gamemode Config matches 2 if score orange WoolsObtained matches 0 run tellraw @s [{"text":"\u2588","color":"gold"},{"text":" Lana naranja: "},{"text":"Lámpara de redstone","color":"gray"}]
execute if score language Config matches 1 if score gamemode Config matches 2 if score magenta WoolsObtained matches 0 run tellraw @s [{"text":"\u2588","color":"light_purple"},{"text":" Lana magenta: "},{"text":"Azulejo marrón","color":"gray"}]
execute if score language Config matches 1 if score gamemode Config matches 2 if score lightblue WoolsObtained matches 0 run tellraw @s [{"text":"\u2588","color":"aqua"},{"text":" Lana azul claro: "},{"text":"Diseño de estandarte de planeta","color":"gray"}]
execute if score language Config matches 1 if score gamemode Config matches 2 if score yellow WoolsObtained matches 0 run tellraw @s [{"text":"\u2588","color":"yellow"},{"text":" Lana amarilla: "},{"text":"Libro encantado de Perdición de los Artrópodos V","color":"gray"}]
execute if score language Config matches 1 if score gamemode Config matches 2 if score lime WoolsObtained matches 0 run tellraw @s [{"text":"\u2588","color":"green"},{"text":" Lana lima: "},{"text":"Disco de música - 11","color":"gray"}]
execute if score language Config matches 1 if score gamemode Config matches 2 if score pink WoolsObtained matches 0 run tellraw @s [{"text":"\u2588","color":"#FFC3E6"},{"text":" Lana rosa: "},{"text":"Coral de tubo","color":"gray"}]
execute if score language Config matches 1 if score gamemode Config matches 2 if score gray WoolsObtained matches 0 run tellraw @s [{"text":"\u2588","color":"dark_gray"},{"text":" Lana gris: "},{"text":"Tridente","color":"gray"}]
execute if score language Config matches 1 if score gamemode Config matches 2 if score lightgray WoolsObtained matches 0 run tellraw @s [{"text":"\u2588","color":"gray"},{"text":" Lana gris claro: "},{"text":"Totem de la Inmortalidad","color":"gray"}]
execute if score language Config matches 1 if score gamemode Config matches 2 if score cyan WoolsObtained matches 0 run tellraw @s [{"text":"\u2588","color":"dark_aqua"},{"text":" Lana cian: "},{"text":"Micelio","color":"gray"}]
execute if score language Config matches 1 if score gamemode Config matches 2 if score purple WoolsObtained matches 0 run tellraw @s [{"text":"\u2588","color":"dark_purple"},{"text":" Lana morada: "},{"text":"Esponja","color":"gray"}]
execute if score language Config matches 1 if score gamemode Config matches 2 if score blue WoolsObtained matches 0 run tellraw @s [{"text":"\u2588","color":"blue"},{"text":" Lana azul: "},{"text":"Escama de tortuga","color":"gray"}]
execute if score language Config matches 1 if score gamemode Config matches 2 if score brown WoolsObtained matches 0 run tellraw @s [{"text":"\u2588","color":"#AC7A48"},{"text":" Lana marrón: "},{"text":"Bloque de miel","color":"gray"}]
execute if score language Config matches 1 if score gamemode Config matches 2 if score green WoolsObtained matches 0 run tellraw @s [{"text":"\u2588","color":"dark_green"},{"text":" Lana verde: "},{"text":"Flecha de resistencia contra el fuego","color":"gray"}]
execute if score language Config matches 1 if score gamemode Config matches 2 if score red WoolsObtained matches 0 run tellraw @s [{"text":"\u2588","color":"red"},{"text":" Lana roja: "},{"text":"Rosa del Wither","color":"gray"}]
execute if score language Config matches 1 if score gamemode Config matches 2 if score black WoolsObtained matches 0 run tellraw @s [{"text":"\u2588","color":"black"},{"text":" Lana negra: "},{"text":"Cabeza de dragón","color":"gray"}]


#Wool mode
execute if score language Config matches 1 if score gamemode Config matches 3 run tellraw @s ["",{"text":"\u2605\u23f5","color":"yellow"},{"text":" Estos son los "},{"text":"objetos","bold":true,"color":"gold"},{"text":" que debes obtener:\n"}]

execute if score language Config matches 1 if score gamemode Config matches 3 if score white WoolsObtained matches 0 run tellraw @s {"text":"\u2588 Lana blanca"}
execute if score language Config matches 1 if score gamemode Config matches 3 if score orange WoolsObtained matches 0 run tellraw @s [{"text":"\u2588","color":"gold"},{"text":" Lana naranja"}]
execute if score language Config matches 1 if score gamemode Config matches 3 if score magenta WoolsObtained matches 0 run tellraw @s [{"text":"\u2588","color":"light_purple"},{"text":" Lana magenta"}]
execute if score language Config matches 1 if score gamemode Config matches 3 if score lightblue WoolsObtained matches 0 run tellraw @s [{"text":"\u2588","color":"aqua"},{"text":" Lana azul claro"}]
execute if score language Config matches 1 if score gamemode Config matches 3 if score yellow WoolsObtained matches 0 run tellraw @s [{"text":"\u2588","color":"yellow"},{"text":" Lana amarilla"}]
execute if score language Config matches 1 if score gamemode Config matches 3 if score lime WoolsObtained matches 0 run tellraw @s [{"text":"\u2588","color":"green"},{"text":" Lana lima"}]
execute if score language Config matches 1 if score gamemode Config matches 3 if score pink WoolsObtained matches 0 run tellraw @s [{"text":"\u2588","color":"#FFC3E6"},{"text":" Lana rosa"}]
execute if score language Config matches 1 if score gamemode Config matches 3 if score gray WoolsObtained matches 0 run tellraw @s [{"text":"\u2588","color":"dark_gray"},{"text":" Lana gris"}]
execute if score language Config matches 1 if score gamemode Config matches 3 if score lightgray WoolsObtained matches 0 run tellraw @s [{"text":"\u2588","color":"gray"},{"text":" Lana gris claro"}]
execute if score language Config matches 1 if score gamemode Config matches 3 if score cyan WoolsObtained matches 0 run tellraw @s [{"text":"\u2588","color":"dark_aqua"},{"text":" Lana cian"}]
execute if score language Config matches 1 if score gamemode Config matches 3 if score purple WoolsObtained matches 0 run tellraw @s [{"text":"\u2588","color":"dark_purple"},{"text":" Lana morada"}]
execute if score language Config matches 1 if score gamemode Config matches 3 if score blue WoolsObtained matches 0 run tellraw @s [{"text":"\u2588","color":"blue"},{"text":" Lana azul"}]
execute if score language Config matches 1 if score gamemode Config matches 3 if score brown WoolsObtained matches 0 run tellraw @s [{"text":"\u2588","color":"#AC7A48"},{"text":" Lana marrón"}]
execute if score language Config matches 1 if score gamemode Config matches 3 if score green WoolsObtained matches 0 run tellraw @s [{"text":"\u2588","color":"dark_green"},{"text":" Lana verde"}]
execute if score language Config matches 1 if score gamemode Config matches 3 if score red WoolsObtained matches 0 run tellraw @s [{"text":"\u2588","color":"red"},{"text":" Lana roja"}]
execute if score language Config matches 1 if score gamemode Config matches 3 if score black WoolsObtained matches 0 run tellraw @s [{"text":"\u2588","color":"black"},{"text":" Lana negra"}]


#Disco mode
execute if score language Config matches 1 if score gamemode Config matches 4 run tellraw @s ["",{"text":"\u2605\u23f5","color":"yellow"},{"text":" Estos son los "},{"text":"objetos","bold":true,"color":"gold"},{"text":" que debes obtener:\n"}]

execute if score language Config matches 1 if score gamemode Config matches 4 if score white WoolsObtained matches 0 run tellraw @s [{"text":"\u2588 Lana blanca: "},{"text":"C418 - 13","color":"gray"}]
execute if score language Config matches 1 if score gamemode Config matches 4 if score orange WoolsObtained matches 0 run tellraw @s [{"text":"\u2588","color":"gold"},{"text":" Lana naranja: "},{"text":"C418 - cat","color":"gray"}]
execute if score language Config matches 1 if score gamemode Config matches 4 if score magenta WoolsObtained matches 0 run tellraw @s [{"text":"\u2588","color":"light_purple"},{"text":" Lana magenta: "},{"text":"C418 - blocks","color":"gray"}]
execute if score language Config matches 1 if score gamemode Config matches 4 if score lightblue WoolsObtained matches 0 run tellraw @s [{"text":"\u2588","color":"aqua"},{"text":" Lana azul claro: "},{"text":"C418 - chirp","color":"gray"}]
execute if score language Config matches 1 if score gamemode Config matches 4 if score yellow WoolsObtained matches 0 run tellraw @s [{"text":"\u2588","color":"yellow"},{"text":" Lana amarilla: "},{"text":"C418 - far","color":"gray"}]
execute if score language Config matches 1 if score gamemode Config matches 4 if score lime WoolsObtained matches 0 run tellraw @s [{"text":"\u2588","color":"green"},{"text":" Lana lima: "},{"text":"C418 - mall","color":"gray"}]
execute if score language Config matches 1 if score gamemode Config matches 4 if score pink WoolsObtained matches 0 run tellraw @s [{"text":"\u2588","color":"#FFC3E6"},{"text":" Lana rosa: "},{"text":"C418 - mellohi","color":"gray"}]
execute if score language Config matches 1 if score gamemode Config matches 4 if score gray WoolsObtained matches 0 run tellraw @s [{"text":"\u2588","color":"dark_gray"},{"text":" Lana gris: "},{"text":"C418 - stal","color":"gray"}]
execute if score language Config matches 1 if score gamemode Config matches 4 if score lightgray WoolsObtained matches 0 run tellraw @s [{"text":"\u2588","color":"gray"},{"text":" Lana gris claro: "},{"text":"C418 - strad","color":"gray"}]
execute if score language Config matches 1 if score gamemode Config matches 4 if score cyan WoolsObtained matches 0 run tellraw @s [{"text":"\u2588","color":"dark_aqua"},{"text":" Lana cian: "},{"text":"C418 - ward","color":"gray"}]
execute if score language Config matches 1 if score gamemode Config matches 4 if score purple WoolsObtained matches 0 run tellraw @s [{"text":"\u2588","color":"dark_purple"},{"text":" Lana morada: "},{"text":"C418 - 11","color":"gray"}]
execute if score language Config matches 1 if score gamemode Config matches 4 if score blue WoolsObtained matches 0 run tellraw @s [{"text":"\u2588","color":"blue"},{"text":" Lana azul: "},{"text":"C418 - wait","color":"gray"}]
execute if score language Config matches 1 if score gamemode Config matches 4 if score brown WoolsObtained matches 0 run tellraw @s [{"text":"\u2588","color":"#AC7A48"},{"text":" Lana marrón: "},{"text":"Lena Raine - otherside","color":"gray"}]
execute if score language Config matches 1 if score gamemode Config matches 4 if score green WoolsObtained matches 0 run tellraw @s [{"text":"\u2588","color":"dark_green"},{"text":" Lana verde: "},{"text":"Samuel Åberg - 5","color":"gray"}]
execute if score language Config matches 1 if score gamemode Config matches 4 if score red WoolsObtained matches 0 run tellraw @s [{"text":"\u2588","color":"red"},{"text":" Lana roja: "},{"text":"Lena Raine - Pigstep","color":"gray"}]
execute if score language Config matches 1 if score gamemode Config matches 4 if score black WoolsObtained matches 0 run tellraw @s [{"text":"\u2588","color":"black"},{"text":" Lana negra: "},{"text":"Aaron Cherof - Relic","color":"gray"}]


#Mineral blocks
execute if score language Config matches 1 if score gamemode Config matches 1..2 if score coal WoolsObtained matches 0 run tellraw @s [{"text":"\u2683","color":"#3D3D3D"},{"text":" Bloque de mineral: "},{"text":"Carbón","color":"gray"}]
execute if score language Config matches 1 if score gamemode Config matches 1..2 if score iron WoolsObtained matches 0 run tellraw @s [{"text":"\u2683","color":"#E7E7E7"},{"text":" Bloque de mineral: "},{"text":"Hierro","color":"gray"}]
execute if score language Config matches 1 if score gamemode Config matches 1..2 if score gold WoolsObtained matches 0 run tellraw @s [{"text":"\u2683","color":"#FFE627"},{"text":" Bloque de mineral: "},{"text":"Oro","color":"gray"}]
execute if score language Config matches 1 if score gamemode Config matches 1..2 if score lapis WoolsObtained matches 0 run tellraw @s [{"text":"\u2683","color":"blue"},{"text":" Bloque de mineral: "},{"text":"Lapislázuli","color":"gray"}]
execute if score language Config matches 1 if score gamemode Config matches 1..2 if score redstone WoolsObtained matches 0 run tellraw @s [{"text":"\u2683","color":"#D60004"},{"text":" Bloque de mineral: "},{"text":"Redstone","color":"gray"}]
execute if score language Config matches 1 if score gamemode Config matches 1..2 if score emerald WoolsObtained matches 0 run tellraw @s [{"text":"\u2683","color":"#0ED300"},{"text":" Bloque de mineral: "},{"text":"Esmeralda","color":"gray"}]
execute if score language Config matches 1 if score gamemode Config matches 1..2 if score diamond WoolsObtained matches 0 run tellraw @s [{"text":"\u2683","color":"#72FFFA"},{"text":" Bloque de mineral: "},{"text":"Diamante","color":"gray"}]
execute if score language Config matches 1 if score gamemode Config matches 1..2 if score copper WoolsObtained matches 0 run tellraw @s [{"text":"\u2683","color":"#D67445"},{"text":" Bloque de mineral: "},{"text":"Cobre","color":"gray"}]