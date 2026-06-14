#Title times and text (ENGLISH AND SPANISH)
title @a times 8 60 35

execute if score language Config matches 0 run title @a subtitle [{"text":"★ ","color":"gold"},{"text":"Obtained by ","color":"yellow"},{"selector":"@s","color":"yellow","bold":true,"italic":true},{"text":" ★","color":"gold"}]
execute if score language Config matches 1 if score wool ItemsUpdate matches 1..16 run title @a subtitle [{"text":"★ ","color":"gold"},{"text":"Obtenida por ","color":"yellow"},{"selector":"@s","color":"yellow","bold":true,"italic":true},{"text":" ★","color":"gold"}]
execute if score language Config matches 1 if score wool ItemsUpdate matches 17..24 run title @a subtitle [{"text":"★ ","color":"gold"},{"text":"Obtenido por ","color":"yellow"},{"selector":"@s","color":"yellow","bold":true,"italic":true},{"text":" ★","color":"gold"}]

#ENGLISH
execute if score language Config matches 0 if score wool ItemsUpdate matches 1 run title @a title {"text":"WHITE WOOL","bold":true,"color":"white"}
execute if score language Config matches 0 if score wool ItemsUpdate matches 2 run title @a title {"text":"ORANGE WOOL","bold":true,"color":"gold"}
execute if score language Config matches 0 if score wool ItemsUpdate matches 3 run title @a title {"text":"MAGENTA WOOL","bold":true,"color":"light_purple"}
execute if score language Config matches 0 if score wool ItemsUpdate matches 4 run title @a title {"text":"LIGHT BLUE WOOL","bold":true,"color":"aqua"}
execute if score language Config matches 0 if score wool ItemsUpdate matches 5 run title @a title {"text":"YELLOW WOOL","bold":true,"color":"yellow"}
execute if score language Config matches 0 if score wool ItemsUpdate matches 6 run title @a title {"text":"LIME WOOL","bold":true,"color":"green"}
execute if score language Config matches 0 if score wool ItemsUpdate matches 7 run title @a title {"text":"PINK WOOL","bold":true,"color":"#FFC3E6"}
execute if score language Config matches 0 if score wool ItemsUpdate matches 8 run title @a title {"text":"GRAY WOOL","bold":true,"color":"dark_gray"}
execute if score language Config matches 0 if score wool ItemsUpdate matches 9 run title @a title {"text":"LIGHT GRAY WOOL","bold":true,"color":"gray"}
execute if score language Config matches 0 if score wool ItemsUpdate matches 10 run title @a title {"text":"CYAN WOOL","bold":true,"color":"dark_aqua"}
execute if score language Config matches 0 if score wool ItemsUpdate matches 11 run title @a title {"text":"PURPLE WOOL","bold":true,"color":"dark_purple"}
execute if score language Config matches 0 if score wool ItemsUpdate matches 12 run title @a title {"text":"BLUE WOOL","bold":true,"color":"blue"}
execute if score language Config matches 0 if score wool ItemsUpdate matches 13 run title @a title {"text":"BROWN WOOL","bold":true,"color":"#AC7A48"}
execute if score language Config matches 0 if score wool ItemsUpdate matches 14 run title @a title {"text":"GREEN WOOL","bold":true,"color":"dark_green"}
execute if score language Config matches 0 if score wool ItemsUpdate matches 15 run title @a title {"text":"RED WOOL","bold":true,"color":"red"}
execute if score language Config matches 0 if score wool ItemsUpdate matches 16 run title @a title {"text":"BLACK WOOL","bold":true,"color":"dark_gray"}

execute if score language Config matches 0 if score wool ItemsUpdate matches 17 run title @a title {"text":"BLOCK OF COAL","bold":true,"color":"#3D3D3D"}
execute if score language Config matches 0 if score wool ItemsUpdate matches 18 run title @a title {"text":"BLOCK OF IRON","bold":true,"color":"#E7E7E7"}
execute if score language Config matches 0 if score wool ItemsUpdate matches 19 run title @a title {"text":"BLOCK OF GOLD","bold":true,"color":"#FFE627"}
execute if score language Config matches 0 if score wool ItemsUpdate matches 20 run title @a title {"text":"BLOCK OF LAPIS","bold":true,"color":"blue"}
execute if score language Config matches 0 if score wool ItemsUpdate matches 21 run title @a title {"text":"BLOCK OF REDSTONE","bold":true,"color":"#D60004"}
execute if score language Config matches 0 if score wool ItemsUpdate matches 22 run title @a title {"text":"BLOCK OF EMERALD","bold":true,"color":"#0ED300"}
execute if score language Config matches 0 if score wool ItemsUpdate matches 23 run title @a title {"text":"BLOCK OF DIAMOND","bold":true,"color":"#72FFFA"}
execute if score language Config matches 0 if score wool ItemsUpdate matches 24 run title @a title {"text":"BLOCK OF COPPER","bold":true,"color":"#D67445"}

#SPANISH
execute if score language Config matches 1 if score wool ItemsUpdate matches 1 run title @a title {"text":"LANA BLANCA","bold":true,"color":"white"}
execute if score language Config matches 1 if score wool ItemsUpdate matches 2 run title @a title {"text":"LANA NARANJA","bold":true,"color":"gold"}
execute if score language Config matches 1 if score wool ItemsUpdate matches 3 run title @a title {"text":"LANA MAGENTA","bold":true,"color":"light_purple"}
execute if score language Config matches 1 if score wool ItemsUpdate matches 4 run title @a title {"text":"LANA AZUL CLARO","bold":true,"color":"aqua"}
execute if score language Config matches 1 if score wool ItemsUpdate matches 5 run title @a title {"text":"LANA AMARILLA","bold":true,"color":"yellow"}
execute if score language Config matches 1 if score wool ItemsUpdate matches 6 run title @a title {"text":"LANA LIMA","bold":true,"color":"green"}
execute if score language Config matches 1 if score wool ItemsUpdate matches 7 run title @a title {"text":"LANA ROSA","bold":true,"color":"#FFC3E6"}
execute if score language Config matches 1 if score wool ItemsUpdate matches 8 run title @a title {"text":"LANA GRIS","bold":true,"color":"dark_gray"}
execute if score language Config matches 1 if score wool ItemsUpdate matches 9 run title @a title {"text":"LANA GRIS CLARO","bold":true,"color":"gray"}
execute if score language Config matches 1 if score wool ItemsUpdate matches 10 run title @a title {"text":"LANA CIAN","bold":true,"color":"dark_aqua"}
execute if score language Config matches 1 if score wool ItemsUpdate matches 11 run title @a title {"text":"LANA MORADA","bold":true,"color":"dark_purple"}
execute if score language Config matches 1 if score wool ItemsUpdate matches 12 run title @a title {"text":"LANA AZUL","bold":true,"color":"blue"}
execute if score language Config matches 1 if score wool ItemsUpdate matches 13 run title @a title {"text":"LANA MARRÓN","bold":true,"color":"#AC7A48"}
execute if score language Config matches 1 if score wool ItemsUpdate matches 14 run title @a title {"text":"LANA VERDE","bold":true,"color":"dark_green"}
execute if score language Config matches 1 if score wool ItemsUpdate matches 15 run title @a title {"text":"LANA ROJA","bold":true,"color":"red"}
execute if score language Config matches 1 if score wool ItemsUpdate matches 16 run title @a title {"text":"LANA NEGRA","bold":true,"color":"dark_gray"}

execute if score language Config matches 1 if score wool ItemsUpdate matches 17 run title @a title {"text":"BLOQUE DE CARBÓN","bold":true,"color":"#3D3D3D"}
execute if score language Config matches 1 if score wool ItemsUpdate matches 18 run title @a title {"text":"BLOQUE DE HIERRO","bold":true,"color":"#E7E7E7"}
execute if score language Config matches 1 if score wool ItemsUpdate matches 19 run title @a title {"text":"BLOQUE DE ORO","bold":true,"color":"#FFE627"}
execute if score language Config matches 1 if score wool ItemsUpdate matches 20 run title @a title {"text":"BLOQUE DE LAPIS","bold":true,"color":"blue"}
execute if score language Config matches 1 if score wool ItemsUpdate matches 21 run title @a title {"text":"BLOQUE DE REDSTONE","bold":true,"color":"#D60004"}
execute if score language Config matches 1 if score wool ItemsUpdate matches 22 run title @a title {"text":"BLOQUE DE ESMERALDA","bold":true,"color":"#0ED300"}
execute if score language Config matches 1 if score wool ItemsUpdate matches 23 run title @a title {"text":"BLOQUE DE DIAMANTE","bold":true,"color":"#72FFFA"}
execute if score language Config matches 1 if score wool ItemsUpdate matches 24 run title @a title {"text":"BLOQUE DE COBRE","bold":true,"color":"#D67445"}


#Change team suffixes to go from ✘ to ✔ and add 1 to the number obtained
execute if score wool ItemsUpdate matches 1 run team modify WhiteWool suffix {"text":" ✔","color":"green"}
execute if score wool ItemsUpdate matches 2 run team modify OrangeWool suffix {"text":" ✔","color":"green"}
execute if score wool ItemsUpdate matches 3 run team modify MagentaWool suffix {"text":" ✔","color":"green"}
execute if score wool ItemsUpdate matches 4 run team modify LightBlueWool suffix {"text":" ✔","color":"green"}
execute if score wool ItemsUpdate matches 5 run team modify YellowWool suffix {"text":" ✔","color":"green"}
execute if score wool ItemsUpdate matches 6 run team modify LimeWool suffix {"text":" ✔","color":"green"}
execute if score wool ItemsUpdate matches 7 run team modify PinkWool suffix {"text":" ✔","color":"green"}
execute if score wool ItemsUpdate matches 8 run team modify GrayWool suffix {"text":" ✔","color":"green"}
execute if score wool ItemsUpdate matches 9 run team modify LightGrayWool suffix {"text":" ✔","color":"green"}
execute if score wool ItemsUpdate matches 10 run team modify CyanWool suffix {"text":" ✔","color":"green"}
execute if score wool ItemsUpdate matches 11 run team modify PurpleWool suffix {"text":" ✔","color":"green"}
execute if score wool ItemsUpdate matches 12 run team modify BlueWool suffix {"text":" ✔","color":"green"}
execute if score wool ItemsUpdate matches 13 run team modify BrownWool suffix {"text":" ✔","color":"green"}
execute if score wool ItemsUpdate matches 14 run team modify GreenWool suffix {"text":" ✔","color":"green"}
execute if score wool ItemsUpdate matches 15 run team modify RedWool suffix {"text":" ✔","color":"green"}
execute if score wool ItemsUpdate matches 16 run team modify BlackWool suffix {"text":" ✔","color":"green"}

execute if score wool ItemsUpdate matches 17 run team modify CoalBlock suffix {"text":" ✔","color":"green"}
execute if score wool ItemsUpdate matches 18 run team modify IronBlock suffix {"text":" ✔","color":"green"}
execute if score wool ItemsUpdate matches 19 run team modify GoldBlock suffix {"text":" ✔","color":"green"}
execute if score wool ItemsUpdate matches 20 run team modify LapisBlock suffix {"text":" ✔","color":"green"}
execute if score wool ItemsUpdate matches 21 run team modify RedstoneBlock suffix {"text":" ✔","color":"green"}
execute if score wool ItemsUpdate matches 22 run team modify EmeraldBlock suffix {"text":" ✔","color":"green"}
execute if score wool ItemsUpdate matches 23 run team modify DiamondBlock suffix {"text":" ✔","color":"green"}
execute if score wool ItemsUpdate matches 24 run team modify CopperBlock suffix {"text":" ✔","color":"green"}

execute if score wool ItemsUpdate matches 1..16 run scoreboard players add wools WoolsObtained 1
execute if score wool ItemsUpdate matches 17..24 run scoreboard players add minerals WoolsObtained 1

#Update number of items obtained on scoreboard
function ctmv:items_scoreboard/set_number_obtained

#Store the player that obtained the item for STATISTICS
execute if score wool ItemsUpdate matches 1 run scoreboard players set @s StatsWhite 1
execute if score wool ItemsUpdate matches 2 run scoreboard players set @s StatsOrange 1
execute if score wool ItemsUpdate matches 3 run scoreboard players set @s StatsMagenta 1
execute if score wool ItemsUpdate matches 4 run scoreboard players set @s StatsLightBlue 1
execute if score wool ItemsUpdate matches 5 run scoreboard players set @s StatsYellow 1
execute if score wool ItemsUpdate matches 6 run scoreboard players set @s StatsLime 1
execute if score wool ItemsUpdate matches 7 run scoreboard players set @s StatsPink 1
execute if score wool ItemsUpdate matches 8 run scoreboard players set @s StatsGray 1
execute if score wool ItemsUpdate matches 9 run scoreboard players set @s StatsLightGray 1
execute if score wool ItemsUpdate matches 10 run scoreboard players set @s StatsCyan 1
execute if score wool ItemsUpdate matches 11 run scoreboard players set @s StatsPurple 1
execute if score wool ItemsUpdate matches 12 run scoreboard players set @s StatsBlue 1
execute if score wool ItemsUpdate matches 13 run scoreboard players set @s StatsBrown 1
execute if score wool ItemsUpdate matches 14 run scoreboard players set @s StatsGreen 1
execute if score wool ItemsUpdate matches 15 run scoreboard players set @s StatsRed 1
execute if score wool ItemsUpdate matches 16 run scoreboard players set @s StatsBlack 1

execute if score wool ItemsUpdate matches 17 run scoreboard players set @s StatsCoal 1
execute if score wool ItemsUpdate matches 18 run scoreboard players set @s StatsIron 1
execute if score wool ItemsUpdate matches 19 run scoreboard players set @s StatsGold 1
execute if score wool ItemsUpdate matches 20 run scoreboard players set @s StatsLapis 1
execute if score wool ItemsUpdate matches 21 run scoreboard players set @s StatsRedstone 1
execute if score wool ItemsUpdate matches 22 run scoreboard players set @s StatsEmerald 1
execute if score wool ItemsUpdate matches 23 run scoreboard players set @s StatsDiamond 1
execute if score wool ItemsUpdate matches 24 run scoreboard players set @s StatsCopper 1

#Store that this wool has already been collected
execute if score wool ItemsUpdate matches 1 run scoreboard players set white WoolsObtained 1
execute if score wool ItemsUpdate matches 2 run scoreboard players set orange WoolsObtained 1
execute if score wool ItemsUpdate matches 3 run scoreboard players set magenta WoolsObtained 1
execute if score wool ItemsUpdate matches 4 run scoreboard players set lightblue WoolsObtained 1
execute if score wool ItemsUpdate matches 5 run scoreboard players set yellow WoolsObtained 1
execute if score wool ItemsUpdate matches 6 run scoreboard players set lime WoolsObtained 1
execute if score wool ItemsUpdate matches 7 run scoreboard players set pink WoolsObtained 1
execute if score wool ItemsUpdate matches 8 run scoreboard players set gray WoolsObtained 1
execute if score wool ItemsUpdate matches 9 run scoreboard players set lightgray WoolsObtained 1
execute if score wool ItemsUpdate matches 10 run scoreboard players set cyan WoolsObtained 1
execute if score wool ItemsUpdate matches 11 run scoreboard players set purple WoolsObtained 1
execute if score wool ItemsUpdate matches 12 run scoreboard players set blue WoolsObtained 1
execute if score wool ItemsUpdate matches 13 run scoreboard players set brown WoolsObtained 1
execute if score wool ItemsUpdate matches 14 run scoreboard players set green WoolsObtained 1
execute if score wool ItemsUpdate matches 15 run scoreboard players set red WoolsObtained 1
execute if score wool ItemsUpdate matches 16 run scoreboard players set black WoolsObtained 1

execute if score wool ItemsUpdate matches 17 run scoreboard players set coal WoolsObtained 1
execute if score wool ItemsUpdate matches 18 run scoreboard players set iron WoolsObtained 1
execute if score wool ItemsUpdate matches 19 run scoreboard players set gold WoolsObtained 1
execute if score wool ItemsUpdate matches 20 run scoreboard players set lapis WoolsObtained 1
execute if score wool ItemsUpdate matches 21 run scoreboard players set redstone WoolsObtained 1
execute if score wool ItemsUpdate matches 22 run scoreboard players set emerald WoolsObtained 1
execute if score wool ItemsUpdate matches 23 run scoreboard players set diamond WoolsObtained 1
execute if score wool ItemsUpdate matches 24 run scoreboard players set copper WoolsObtained 1

#Play music disc when obtaining it in Disco mode
execute if score gamemode Config matches 4 run function ctmv:obtain_item/stop_music_discs

execute if score gamemode Config matches 4 if score wool ItemsUpdate matches 1 as @a at @s run playsound music_disc.13 record @s ~ ~10000 ~ 3000 1 1
execute if score gamemode Config matches 4 if score wool ItemsUpdate matches 2 as @a at @s run playsound music_disc.cat record @s ~ ~10000 ~ 3000 1 1
execute if score gamemode Config matches 4 if score wool ItemsUpdate matches 3 as @a at @s run playsound music_disc.blocks record @s ~ ~10000 ~ 3000 1 1
execute if score gamemode Config matches 4 if score wool ItemsUpdate matches 4 as @a at @s run playsound music_disc.chirp record @s ~ ~10000 ~ 3000 1 1
execute if score gamemode Config matches 4 if score wool ItemsUpdate matches 5 as @a at @s run playsound music_disc.far record @s ~ ~10000 ~ 3000 1 1
execute if score gamemode Config matches 4 if score wool ItemsUpdate matches 6 as @a at @s run playsound music_disc.mall record @s ~ ~10000 ~ 3000 1 1
execute if score gamemode Config matches 4 if score wool ItemsUpdate matches 7 as @a at @s run playsound music_disc.mellohi record @s ~ ~10000 ~ 3000 1 1
execute if score gamemode Config matches 4 if score wool ItemsUpdate matches 8 as @a at @s run playsound music_disc.stal record @s ~ ~10000 ~ 3000 1 1
execute if score gamemode Config matches 4 if score wool ItemsUpdate matches 9 as @a at @s run playsound music_disc.strad record @s ~ ~10000 ~ 3000 1 1
execute if score gamemode Config matches 4 if score wool ItemsUpdate matches 11 as @a at @s run playsound music_disc.ward record @s ~ ~10000 ~ 3000 1 1
execute if score gamemode Config matches 4 if score wool ItemsUpdate matches 11 as @a at @s run playsound music_disc.11 record @s ~ ~10000 ~ 3000 1 1
execute if score gamemode Config matches 4 if score wool ItemsUpdate matches 12 as @a at @s run playsound music_disc.wait record @s ~ ~10000 ~ 3000 1 1
execute if score gamemode Config matches 4 if score wool ItemsUpdate matches 13 as @a at @s run playsound music_disc.otherside record @s ~ ~10000 ~ 3000 1 1
execute if score gamemode Config matches 4 if score wool ItemsUpdate matches 14 as @a at @s run playsound music_disc.5 record @s ~ ~10000 ~ 3000 1 1
execute if score gamemode Config matches 4 if score wool ItemsUpdate matches 15 as @a at @s run playsound music_disc.pigstep record @s ~ ~10000 ~ 3000 1 1
execute if score gamemode Config matches 4 if score wool ItemsUpdate matches 16 as @a at @s run playsound music_disc.relic record @s ~ ~10000 ~ 3000 1 1


#Clear collected item from players inventory + Fix recursion bug
function ctmv:obtain_item/clear_item
schedule function ctmv:obtain_item/recursion_fix 1t

#Reset argument
scoreboard players set wool ItemsUpdate 0


#Sounds and particles
execute at @a run playsound entity.experience_orb.pickup player @a ~ ~ ~ 1 1 1
execute at @a run playsound block.beacon.power_select player @a ~ ~ ~ 1 0.7 1
execute at @a run playsound block.respawn_anchor.set_spawn player @a ~ ~ ~ 1 0 1
execute at @a run playsound block.respawn_anchor.charge player @a ~ ~ ~ 1 0.7 1
execute at @a run particle dust{color:[0.000,1.000,0.000],scale:1} ~ ~1 ~ 0.5 0.9 0.5 0 100 normal
execute at @a positioned ~ ~0.2 ~ run function ctmv:effects/expansive_circle_endrod

#Add 1 to WoolsObtained to check if players have completed the monument
scoreboard players add number WoolsObtained 1

execute unless score gamemode Config matches 1..2 if score number WoolsObtained matches 16 run function ctmv:game/win_sequence
execute if score gamemode Config matches 1..2 if score number WoolsObtained matches 24 run function ctmv:game/win_sequence