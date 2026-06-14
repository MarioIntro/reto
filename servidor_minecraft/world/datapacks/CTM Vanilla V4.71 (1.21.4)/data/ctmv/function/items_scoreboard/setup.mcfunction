#Create display and update step/name scoreboards
scoreboard objectives add Items dummy
scoreboard objectives modify Items displayname ["",{"text":"⏩ ","color":"yellow"},{"text":"CTM Vanilla V4","bold":true,"color":"gold"},{"text":" ⏪","color":"yellow"}]
scoreboard objectives modify Items numberformat blank

scoreboard objectives add ItemsUpdate dummy
scoreboard players set step ItemsUpdate 0
scoreboard players set name ItemsUpdate 0

#Item/wool/mineral codenames (depending on language: EN - ES)
#English
execute if score language Config matches 0 run scoreboard players set e Items 0
execute if score language Config matches 0 run scoreboard players set ge Items 0
execute if score language Config matches 0 run scoreboard players set a Items 0
execute if score language Config matches 0 run scoreboard players set ue Items 0
execute if score language Config matches 0 run scoreboard players set w Items 0
execute if score language Config matches 0 run scoreboard players set me Items 0
execute if score language Config matches 0 run scoreboard players set k Items 0
execute if score language Config matches 0 run scoreboard players set y Items 0
execute if score language Config matches 0 run scoreboard players set ay Items 0
execute if score language Config matches 0 run scoreboard players set an Items 0
execute if score language Config matches 0 run scoreboard players set le Items 0
execute if score language Config matches 0 run scoreboard players set lue Items 0
execute if score language Config matches 0 run scoreboard players set wn Items 0
execute if score language Config matches 0 run scoreboard players set en Items 0
execute if score language Config matches 0 run scoreboard players set d Items 0
execute if score language Config matches 0 run scoreboard players set ck Items 0

execute if score language Config matches 0 run scoreboard players set l Items 0
execute if score language Config matches 0 run scoreboard players set on Items 0
execute if score language Config matches 0 run scoreboard players set ld Items 0
execute if score language Config matches 0 run scoreboard players set s Items 0
execute if score language Config matches 0 run scoreboard players set ne Items 0
execute if score language Config matches 0 run scoreboard players set ald Items 0
execute if score language Config matches 0 run scoreboard players set nd Items 0
execute if score language Config matches 0 run scoreboard players set r Items 0

#Spanish
execute if score language Config matches 1 run scoreboard players set a Items 0
execute if score language Config matches 1 run scoreboard players set ja Items 0
execute if score language Config matches 1 run scoreboard players set ta Items 0
execute if score language Config matches 1 run scoreboard players set ra Items 0
execute if score language Config matches 1 run scoreboard players set la Items 0
execute if score language Config matches 1 run scoreboard players set ma Items 0
execute if score language Config matches 1 run scoreboard players set sa Items 0
execute if score language Config matches 1 run scoreboard players set is Items 0
execute if score language Config matches 1 run scoreboard players set o Items 0
execute if score language Config matches 1 run scoreboard players set ian Items 0
execute if score language Config matches 1 run scoreboard players set da Items 0
execute if score language Config matches 1 run scoreboard players set ul Items 0
execute if score language Config matches 1 run scoreboard players set n Items 0
execute if score language Config matches 1 run scoreboard players set de Items 0
execute if score language Config matches 1 run scoreboard players set oja Items 0
execute if score language Config matches 1 run scoreboard players set gra Items 0

execute if score language Config matches 1 run scoreboard players set ón Items 0
execute if score language Config matches 1 run scoreboard players set rro Items 0
execute if score language Config matches 1 run scoreboard players set ro Items 0
execute if score language Config matches 1 run scoreboard players set pis Items 0
execute if score language Config matches 1 run scoreboard players set one Items 0
execute if score language Config matches 1 run scoreboard players set lda Items 0
execute if score language Config matches 1 run scoreboard players set te Items 0
execute if score language Config matches 1 run scoreboard players set re Items 0


#Create teams and setup prefixes for each one (depending on language: EN - ES)
team add WhiteWool
team add OrangeWool
team add MagentaWool
team add LightBlueWool
team add YellowWool
team add LimeWool
team add PinkWool
team add GrayWool
team add LightGrayWool
team add CyanWool
team add PurpleWool
team add BlueWool
team add BrownWool
team add GreenWool
team add RedWool
team add BlackWool

team add CoalBlock
team add IronBlock
team add GoldBlock
team add LapisBlock
team add RedstoneBlock
team add EmeraldBlock
team add DiamondBlock
team add CopperBlock

#English
execute if score language Config matches 0 run team modify WhiteWool prefix ["",{"text":" █","color":"white"},{"text":" Whit"}]
execute if score language Config matches 0 run team modify OrangeWool prefix ["",{"text":" █","color":"gold"},{"text":" Oran"}]
execute if score language Config matches 0 run team modify MagentaWool prefix ["",{"text":" █","color":"light_purple"},{"text":" Magent"}]
execute if score language Config matches 0 run team modify LightBlueWool prefix ["",{"text":" █","color":"aqua"},{"text":" Light Bl"}]
execute if score language Config matches 0 run team modify YellowWool prefix ["",{"text":" █","color":"yellow"},{"text":" Yello"}]
execute if score language Config matches 0 run team modify LimeWool prefix ["",{"text":" █","color":"green"},{"text":" Li"}]
execute if score language Config matches 0 run team modify PinkWool prefix ["",{"text":" █","color":"#FFC3E6"},{"text":" Pin"}]
execute if score language Config matches 0 run team modify GrayWool prefix ["",{"text":" █","color":"dark_gray"},{"text":" Gra"}]
execute if score language Config matches 0 run team modify LightGrayWool prefix ["",{"text":" █","color":"gray"},{"text":" Light gr"}]
execute if score language Config matches 0 run team modify CyanWool prefix ["",{"text":" █","color":"dark_aqua"},{"text":" Cy"}]
execute if score language Config matches 0 run team modify PurpleWool prefix ["",{"text":" █","color":"dark_purple"},{"text":" Purp"}]
execute if score language Config matches 0 run team modify BlueWool prefix ["",{"text":" █","color":"blue"},{"text":" B"}]
execute if score language Config matches 0 run team modify BrownWool prefix ["",{"text":" █","color":"#AC7A48"},{"text":" Bro"}]
execute if score language Config matches 0 run team modify GreenWool prefix ["",{"text":" █","color":"dark_green"},{"text":" Gre"}]
execute if score language Config matches 0 run team modify RedWool prefix ["",{"text":" █","color":"red"},{"text":" Re"}]
execute if score language Config matches 0 run team modify BlackWool prefix ["",{"text":" █","color":"black"},{"text":" Bla"}]

execute if score language Config matches 0 run team modify CoalBlock prefix ["",{"text":" ⚃","color":"#3D3D3D"},{"text":" Coa"}]
execute if score language Config matches 0 run team modify IronBlock prefix ["",{"text":" ⚃","color":"#E7E7E7"},{"text":" Ir"}]
execute if score language Config matches 0 run team modify GoldBlock prefix ["",{"text":" ⚃","color":"#FFE627"},{"text":" Go"}]
execute if score language Config matches 0 run team modify LapisBlock prefix ["",{"text":" ⚃","color":"blue"},{"text":" Lapi"}]
execute if score language Config matches 0 run team modify RedstoneBlock prefix ["",{"text":" ⚃","color":"#D60004"},{"text":" Redsto"}]
execute if score language Config matches 0 run team modify EmeraldBlock prefix ["",{"text":" ⚃","color":"#0ED300"},{"text":" Emer"}]
execute if score language Config matches 0 run team modify DiamondBlock prefix ["",{"text":" ⚃","color":"#72FFFA"},{"text":" Diamo"}]
execute if score language Config matches 0 run team modify CopperBlock prefix ["",{"text":" ⚃","color":"#D67445"},{"text":" Coppe"}]

#Spanish
execute if score language Config matches 1 run team modify WhiteWool prefix ["",{"text":" █","color":"white"},{"text":" Blanc"}]
execute if score language Config matches 1 run team modify OrangeWool prefix ["",{"text":" █","color":"gold"},{"text":" Naran"}]
execute if score language Config matches 1 run team modify MagentaWool prefix ["",{"text":" █","color":"light_purple"},{"text":" Magen"}]
execute if score language Config matches 1 run team modify LightBlueWool prefix ["",{"text":" █","color":"aqua"},{"text":" Azul cla"}]
execute if score language Config matches 1 run team modify YellowWool prefix ["",{"text":" █","color":"yellow"},{"text":" Amaril"}]
execute if score language Config matches 1 run team modify LimeWool prefix ["",{"text":" █","color":"green"},{"text":" Li"}]
execute if score language Config matches 1 run team modify PinkWool prefix ["",{"text":" █","color":"#FFC3E6"},{"text":" Ro"}]
execute if score language Config matches 1 run team modify GrayWool prefix ["",{"text":" █","color":"dark_gray"},{"text":" Gr"}]
execute if score language Config matches 1 run team modify LightGrayWool prefix ["",{"text":" █","color":"gray"},{"text":" Gris clar"}]
execute if score language Config matches 1 run team modify CyanWool prefix ["",{"text":" █","color":"dark_aqua"},{"text":" C"}]
execute if score language Config matches 1 run team modify PurpleWool prefix ["",{"text":" █","color":"dark_purple"},{"text":" Mora"}]
execute if score language Config matches 1 run team modify BlueWool prefix ["",{"text":" █","color":"blue"},{"text":" Az"}]
execute if score language Config matches 1 run team modify BrownWool prefix ["",{"text":" █","color":"#AC7A48"},{"text":" Marró"}]
execute if score language Config matches 1 run team modify GreenWool prefix ["",{"text":" █","color":"dark_green"},{"text":" Ver"}]
execute if score language Config matches 1 run team modify RedWool prefix ["",{"text":" █","color":"red"},{"text":" R"}]
execute if score language Config matches 1 run team modify BlackWool prefix ["",{"text":" █","color":"black"},{"text":" Ne"}]

execute if score language Config matches 1 run team modify CoalBlock prefix ["",{"text":" ⚃","color":"#3D3D3D"},{"text":" Carb"}]
execute if score language Config matches 1 run team modify IronBlock prefix ["",{"text":" ⚃","color":"#E7E7E7"},{"text":" Hie"}]
execute if score language Config matches 1 run team modify GoldBlock prefix ["",{"text":" ⚃","color":"#FFE627"},{"text":" O"}]
execute if score language Config matches 1 run team modify LapisBlock prefix ["",{"text":" ⚃","color":"blue"},{"text":" La"}]
execute if score language Config matches 1 run team modify RedstoneBlock prefix ["",{"text":" ⚃","color":"#D60004"},{"text":" Redst"}]
execute if score language Config matches 1 run team modify EmeraldBlock prefix ["",{"text":" ⚃","color":"#0ED300"},{"text":" Esmera"}]
execute if score language Config matches 1 run team modify DiamondBlock prefix ["",{"text":" ⚃","color":"#72FFFA"},{"text":" Diaman"}]
execute if score language Config matches 1 run team modify CopperBlock prefix ["",{"text":" ⚃","color":"#D67445"},{"text":" Cob"}]


#Add team suffixes (✘ that converts later to ✔)
team modify WhiteWool suffix {"text":" ✘","color":"red"}
team modify OrangeWool suffix {"text":" ✘","color":"red"}
team modify MagentaWool suffix {"text":" ✘","color":"red"}
team modify LightBlueWool suffix {"text":" ✘","color":"red"}
team modify YellowWool suffix {"text":" ✘","color":"red"}
team modify LimeWool suffix {"text":" ✘","color":"red"}
team modify PinkWool suffix {"text":" ✘","color":"red"}
team modify GrayWool suffix {"text":" ✘","color":"red"}
team modify LightGrayWool suffix {"text":" ✘","color":"red"}
team modify CyanWool suffix {"text":" ✘","color":"red"}
team modify PurpleWool suffix {"text":" ✘","color":"red"}
team modify BlueWool suffix {"text":" ✘","color":"red"}
team modify BrownWool suffix {"text":" ✘","color":"red"}
team modify GreenWool suffix {"text":" ✘","color":"red"}
team modify RedWool suffix {"text":" ✘","color":"red"}
team modify BlackWool suffix {"text":" ✘","color":"red"}

team modify CoalBlock suffix {"text":" ✘","color":"red"}
team modify IronBlock suffix {"text":" ✘","color":"red"}
team modify GoldBlock suffix {"text":" ✘","color":"red"}
team modify LapisBlock suffix {"text":" ✘","color":"red"}
team modify RedstoneBlock suffix {"text":" ✘","color":"red"}
team modify EmeraldBlock suffix {"text":" ✘","color":"red"}
team modify DiamondBlock suffix {"text":" ✘","color":"red"}
team modify CopperBlock suffix {"text":" ✘","color":"red"}

#Join each item to a team (depending on language: EN - ES)
#English
execute if score language Config matches 0 run team join WhiteWool e
execute if score language Config matches 0 run team join OrangeWool ge
execute if score language Config matches 0 run team join MagentaWool a
execute if score language Config matches 0 run team join LightBlueWool ue
execute if score language Config matches 0 run team join YellowWool w
execute if score language Config matches 0 run team join LimeWool me
execute if score language Config matches 0 run team join PinkWool k
execute if score language Config matches 0 run team join GrayWool y
execute if score language Config matches 0 run team join LightGrayWool ay
execute if score language Config matches 0 run team join CyanWool an
execute if score language Config matches 0 run team join PurpleWool le
execute if score language Config matches 0 run team join BlueWool lue
execute if score language Config matches 0 run team join BrownWool wn
execute if score language Config matches 0 run team join GreenWool en
execute if score language Config matches 0 run team join RedWool d
execute if score language Config matches 0 run team join BlackWool ck

execute if score language Config matches 0 run team join CoalBlock l
execute if score language Config matches 0 run team join IronBlock on
execute if score language Config matches 0 run team join GoldBlock ld
execute if score language Config matches 0 run team join LapisBlock s
execute if score language Config matches 0 run team join RedstoneBlock ne
execute if score language Config matches 0 run team join EmeraldBlock ald
execute if score language Config matches 0 run team join DiamondBlock nd
execute if score language Config matches 0 run team join CopperBlock r

#Spanish
execute if score language Config matches 1 run team join WhiteWool a
execute if score language Config matches 1 run team join OrangeWool ja
execute if score language Config matches 1 run team join MagentaWool ta
execute if score language Config matches 1 run team join LightBlueWool ra
execute if score language Config matches 1 run team join YellowWool la
execute if score language Config matches 1 run team join LimeWool ma
execute if score language Config matches 1 run team join PinkWool sa
execute if score language Config matches 1 run team join GrayWool is
execute if score language Config matches 1 run team join LightGrayWool o
execute if score language Config matches 1 run team join CyanWool ian
execute if score language Config matches 1 run team join PurpleWool da
execute if score language Config matches 1 run team join BlueWool ul
execute if score language Config matches 1 run team join BrownWool n
execute if score language Config matches 1 run team join GreenWool de
execute if score language Config matches 1 run team join RedWool oja
execute if score language Config matches 1 run team join BlackWool gra

execute if score language Config matches 1 run team join CoalBlock ón
execute if score language Config matches 1 run team join IronBlock rro
execute if score language Config matches 1 run team join GoldBlock ro
execute if score language Config matches 1 run team join LapisBlock pis
execute if score language Config matches 1 run team join RedstoneBlock one
execute if score language Config matches 1 run team join EmeraldBlock lda
execute if score language Config matches 1 run team join DiamondBlock te
execute if score language Config matches 1 run team join CopperBlock re


#Separators (depending on language)
team add SeparatorBONUS
team modify SeparatorBONUS prefix {"text":"·-·-⏴ ","color":"#A9FFFF"}
team modify SeparatorBONUS suffix {"text":" (0/8) ⏵-·-·","color":"#A9FFFF"}
team modify SeparatorBONUS color aqua

team add SeparatorWOOLS
team modify SeparatorWOOLS prefix {"text":"·-⏴ ","color":"#A9FFFF"}
team modify SeparatorWOOLS suffix {"text":" (0/16) ⏵-·","color":"#A9FFFF"}
team modify SeparatorWOOLS color aqua

#English
execute if score language Config matches 0 run scoreboard players set WOOLS Items 14
execute if score language Config matches 0 run team join SeparatorWOOLS WOOLS
execute if score gamemode Config matches 1..2 run scoreboard players set BONUS Items 5
team join SeparatorBONUS BONUS

#Spanish
execute if score language Config matches 1 run scoreboard players set LANAS Items 14
execute if score language Config matches 1 run team join SeparatorWOOLS LANAS

#Set number of wools/minerals obtained to 0
scoreboard players set wools WoolsObtained 0
scoreboard players set minerals WoolsObtained 0

scoreboard players set white WoolsObtained 0
scoreboard players set orange WoolsObtained 0
scoreboard players set magenta WoolsObtained 0
scoreboard players set lightblue WoolsObtained 0
scoreboard players set yellow WoolsObtained 0
scoreboard players set lime WoolsObtained 0
scoreboard players set pink WoolsObtained 0
scoreboard players set gray WoolsObtained 0
scoreboard players set lightgray WoolsObtained 0
scoreboard players set cyan WoolsObtained 0
scoreboard players set purple WoolsObtained 0
scoreboard players set blue WoolsObtained 0
scoreboard players set brown WoolsObtained 0
scoreboard players set green WoolsObtained 0
scoreboard players set red WoolsObtained 0
scoreboard players set black WoolsObtained 0

scoreboard players set coal WoolsObtained 0
scoreboard players set iron WoolsObtained 0
scoreboard players set gold WoolsObtained 0
scoreboard players set lapis WoolsObtained 0
scoreboard players set redstone WoolsObtained 0
scoreboard players set emerald WoolsObtained 0
scoreboard players set diamond WoolsObtained 0
scoreboard players set copper WoolsObtained 0

#Gamemode (depending on language and on selected mode)
team add Gamemode
team modify Gamemode prefix {"text":" M","color":"green"}
team modify Gamemode color green

#English
execute if score language Config matches 0 if score gamemode Config matches 0 run team modify Gamemode suffix ["",{"text":"e: ","color":"green"},{"text":"Normal","color": "white"}]
execute if score language Config matches 0 if score gamemode Config matches 1 run team modify Gamemode suffix ["",{"text":"e: ","color":"green"},{"text":"Hard","color": "white"}]
execute if score language Config matches 0 if score gamemode Config matches 2 run team modify Gamemode suffix ["",{"text":"e: ","color":"green"},{"text":"Nightmare","color": "white"}]
execute if score language Config matches 0 if score gamemode Config matches 3 run team modify Gamemode suffix ["",{"text":"e: ","color":"green"},{"text":"Pure CTM","color": "white","italic": true}]
execute if score language Config matches 0 if score gamemode Config matches 4 run team modify Gamemode suffix ["",{"text":"e: ","color":"green"},{"text":"Musical Party","color": "white","italic": true}]

team join Gamemode od
scoreboard players set od Items 15

#Spanish
execute if score language Config matches 1 if score gamemode Config matches 0 run team modify Gamemode suffix ["",{"text":"o: ","color":"green"},{"text":"Normal","color": "white"}]
execute if score language Config matches 1 if score gamemode Config matches 1 run team modify Gamemode suffix ["",{"text":"o: ","color":"green"},{"text":"Difícil","color": "white"}]
execute if score language Config matches 1 if score gamemode Config matches 2 run team modify Gamemode suffix ["",{"text":"o: ","color":"green"},{"text":"Pesadilla","color": "white"}]
execute if score language Config matches 1 if score gamemode Config matches 3 run team modify Gamemode suffix ["",{"text":"o: ","color":"green"},{"text":"CTM Puro","color": "white","italic": true}]
execute if score language Config matches 1 if score gamemode Config matches 4 run team modify Gamemode suffix ["",{"text":"o: ","color":"green"},{"text":"Fiesta Musical","color": "white","italic": true}]


#Reset item scores
function ctmv:items_scoreboard/reset_items

#Display scoreboard on sidebar and start update loop
scoreboard objectives setdisplay sidebar Items
function ctmv:items_scoreboard/update
function ctmv:items_scoreboard/name

#Give root advancement corresponding to each gamemode and language
function ctmv:items_scoreboard/advancement_root