#Call to reset items
function ctmv:items_scoreboard/reset_items

#Reset the rest of scores
scoreboard players reset WOOLS Items
scoreboard players reset BONUS Items
scoreboard players reset LANAS Items

scoreboard players reset od Items

scoreboard players set number WoolsObtained 0

#Reset team suffixes
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

#Reset advancements
advancement revoke @a from ctmv:inventory_checks/root

advancement revoke @a from ctmv:english/normal/root
advancement revoke @a from ctmv:english/hard/root
advancement revoke @a from ctmv:english/nightmare/root
advancement revoke @a from ctmv:english/wool/root
advancement revoke @a from ctmv:english/disco/root

advancement revoke @a from ctmv:spanish/normal/root
advancement revoke @a from ctmv:spanish/hard/root
advancement revoke @a from ctmv:spanish/nightmare/root
advancement revoke @a from ctmv:spanish/wool/root
advancement revoke @a from ctmv:spanish/disco/root