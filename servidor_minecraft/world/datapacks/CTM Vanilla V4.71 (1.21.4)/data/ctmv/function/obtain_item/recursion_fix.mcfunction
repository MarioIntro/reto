#THIS FUNCTION SERVES AS A FIX SO THAT YOU CAN OBTAIN MORE THAN 1 ITEM PER TICK

#Revoke advancements that were not counted on the scoreboard
#Normal mode
execute if score gamemode Config matches 0 if score white WoolsObtained matches 0 run advancement revoke @a only ctmv:inventory_checks/items/cake
execute if score gamemode Config matches 0 if score orange WoolsObtained matches 0 run advancement revoke @a only ctmv:inventory_checks/items/broken_anvil
execute if score gamemode Config matches 0 if score magenta WoolsObtained matches 0 run advancement revoke @a only ctmv:inventory_checks/items/cobweb
execute if score gamemode Config matches 0 if score lightblue WoolsObtained matches 0 run advancement revoke @a only ctmv:inventory_checks/items/beetroot_soup
execute if score gamemode Config matches 0 if score yellow WoolsObtained matches 0 run advancement revoke @a only ctmv:inventory_checks/items/observer
execute if score gamemode Config matches 0 if score lime WoolsObtained matches 0 run advancement revoke @a only ctmv:inventory_checks/items/xp_bottle
execute if score gamemode Config matches 0 if score pink WoolsObtained matches 0 run advancement revoke @a only ctmv:inventory_checks/items/ender_chest
execute if score gamemode Config matches 0 if score gray WoolsObtained matches 0 run advancement revoke @a only ctmv:inventory_checks/items/nautilus_shell
execute if score gamemode Config matches 0 if score lightgray WoolsObtained matches 0 run advancement revoke @a only ctmv:inventory_checks/minerals/diamond
execute if score gamemode Config matches 0 if score cyan WoolsObtained matches 0 run advancement revoke @a only ctmv:inventory_checks/music_disc/11
execute if score gamemode Config matches 0 if score purple WoolsObtained matches 0 run advancement revoke @a only ctmv:inventory_checks/items/totem
execute if score gamemode Config matches 0 if score blue WoolsObtained matches 0 run advancement revoke @a only ctmv:inventory_checks/items/sponge
execute if score gamemode Config matches 0 if score brown WoolsObtained matches 0 run advancement revoke @a only ctmv:inventory_checks/items/bee_nest
execute if score gamemode Config matches 0 if score green WoolsObtained matches 0 run advancement revoke @a only ctmv:inventory_checks/items/end_crystal
execute if score gamemode Config matches 0 if score red WoolsObtained matches 0 run advancement revoke @a only ctmv:inventory_checks/items/dragon_egg
execute if score gamemode Config matches 0 if score black WoolsObtained matches 0 run advancement revoke @a only ctmv:inventory_checks/items/tipped_arrow_weakness
execute if score gamemode Config matches 0 if score black WoolsObtained matches 0 run advancement revoke @a only ctmv:inventory_checks/items/tipped_arrow_weakness_long


#Hard mode 
execute if score gamemode Config matches 1 if score white WoolsObtained matches 0 run advancement revoke @a only ctmv:inventory_checks/items/cake
execute if score gamemode Config matches 1 if score orange WoolsObtained matches 0 run advancement revoke @a only ctmv:inventory_checks/items/broken_anvil
execute if score gamemode Config matches 1 if score magenta WoolsObtained matches 0 run advancement revoke @a only ctmv:inventory_checks/items/rabbit_stew
execute if score gamemode Config matches 1 if score lightblue WoolsObtained matches 0 run advancement revoke @a only ctmv:inventory_checks/items/observer
execute if score gamemode Config matches 1 if score yellow WoolsObtained matches 0 run advancement revoke @a only ctmv:inventory_checks/items/heart_of_the_sea
execute if score gamemode Config matches 1 if score lime WoolsObtained matches 0 run advancement revoke @a only ctmv:inventory_checks/items/banner_skull
execute if score gamemode Config matches 1 if score pink WoolsObtained matches 0 run advancement revoke @a only ctmv:inventory_checks/items/ender_chest
execute if score gamemode Config matches 1 if score gray WoolsObtained matches 0 run advancement revoke @a only ctmv:inventory_checks/music_disc/11
execute if score gamemode Config matches 1 if score lightgray WoolsObtained matches 0 run advancement revoke @a only ctmv:inventory_checks/items/trident
execute if score gamemode Config matches 1 if score cyan WoolsObtained matches 0 run advancement revoke @a only ctmv:inventory_checks/items/totem
execute if score gamemode Config matches 1 if score purple WoolsObtained matches 0 run advancement revoke @a only ctmv:inventory_checks/items/sponge
execute if score gamemode Config matches 1 if score blue WoolsObtained matches 0 run advancement revoke @a only ctmv:inventory_checks/items/bee_nest
execute if score gamemode Config matches 1 if score brown WoolsObtained matches 0 run advancement revoke @a only ctmv:inventory_checks/items/end_crystal
execute if score gamemode Config matches 1 if score green WoolsObtained matches 0 run advancement revoke @a only ctmv:inventory_checks/items/dragon_egg
execute if score gamemode Config matches 1 if score red WoolsObtained matches 0 run advancement revoke @a only ctmv:inventory_checks/items/tipped_arrow_weakness
execute if score gamemode Config matches 1 if score red WoolsObtained matches 0 run advancement revoke @a only ctmv:inventory_checks/items/tipped_arrow_weakness_long
execute if score gamemode Config matches 1 if score black WoolsObtained matches 0 run advancement revoke @a only ctmv:inventory_checks/items/shulker_box


#Nightamre mode 
execute if score gamemode Config matches 2 if score white WoolsObtained matches 0 run advancement revoke @a only ctmv:inventory_checks/items/heart_of_the_sea
execute if score gamemode Config matches 2 if score orange WoolsObtained matches 0 run advancement revoke @a only ctmv:inventory_checks/items/redstone_lamp
execute if score gamemode Config matches 2 if score magenta WoolsObtained matches 0 run advancement revoke @a only ctmv:inventory_checks/items/brown_glazed_terracotta
execute if score gamemode Config matches 2 if score lightblue WoolsObtained matches 0 run advancement revoke @a only ctmv:inventory_checks/items/banner_globe
execute if score gamemode Config matches 2 if score yellow WoolsObtained matches 0 run advancement revoke @a only ctmv:inventory_checks/items/enchanted_book
execute if score gamemode Config matches 2 if score lime WoolsObtained matches 0 run advancement revoke @a only ctmv:inventory_checks/music_disc/11
execute if score gamemode Config matches 2 if score pink WoolsObtained matches 0 run advancement revoke @a only ctmv:inventory_checks/items/tube_coral
execute if score gamemode Config matches 2 if score gray WoolsObtained matches 0 run advancement revoke @a only ctmv:inventory_checks/items/trident
execute if score gamemode Config matches 2 if score lightgray WoolsObtained matches 0 run advancement revoke @a only ctmv:inventory_checks/items/totem
execute if score gamemode Config matches 2 if score cyan WoolsObtained matches 0 run advancement revoke @a only ctmv:inventory_checks/items/mycelium
execute if score gamemode Config matches 2 if score purple WoolsObtained matches 0 run advancement revoke @a only ctmv:inventory_checks/items/sponge
execute if score gamemode Config matches 2 if score blue WoolsObtained matches 0 run advancement revoke @a only ctmv:inventory_checks/items/scute
execute if score gamemode Config matches 2 if score brown WoolsObtained matches 0 run advancement revoke @a only ctmv:inventory_checks/items/honey_block
execute if score gamemode Config matches 2 if score green WoolsObtained matches 0 run advancement revoke @a only ctmv:inventory_checks/items/tipped_arrow_fire
execute if score gamemode Config matches 2 if score green WoolsObtained matches 0 run advancement revoke @a only ctmv:inventory_checks/items/tipped_arrow_fire_long
execute if score gamemode Config matches 2 if score red WoolsObtained matches 0 run advancement revoke @a only ctmv:inventory_checks/items/wither_rose
execute if score gamemode Config matches 2 if score black WoolsObtained matches 0 run advancement revoke @a only ctmv:inventory_checks/items/dragon_head


#Wool mode
execute if score gamemode Config matches 3 if score white WoolsObtained matches 0 run advancement revoke @a only ctmv:inventory_checks/wool/white
execute if score gamemode Config matches 3 if score orange WoolsObtained matches 0 run advancement revoke @a only ctmv:inventory_checks/wool/orange
execute if score gamemode Config matches 3 if score magenta WoolsObtained matches 0 run advancement revoke @a only ctmv:inventory_checks/wool/magenta
execute if score gamemode Config matches 3 if score lightblue WoolsObtained matches 0 run advancement revoke @a only ctmv:inventory_checks/wool/light_blue
execute if score gamemode Config matches 3 if score yellow WoolsObtained matches 0 run advancement revoke @a only ctmv:inventory_checks/wool/yellow
execute if score gamemode Config matches 3 if score lime WoolsObtained matches 0 run advancement revoke @a only ctmv:inventory_checks/wool/lime
execute if score gamemode Config matches 3 if score pink WoolsObtained matches 0 run advancement revoke @a only ctmv:inventory_checks/wool/pink
execute if score gamemode Config matches 3 if score gray WoolsObtained matches 0 run advancement revoke @a only ctmv:inventory_checks/wool/gray
execute if score gamemode Config matches 3 if score lightgray WoolsObtained matches 0 run advancement revoke @a only ctmv:inventory_checks/wool/light_gray
execute if score gamemode Config matches 3 if score cyan WoolsObtained matches 0 run advancement revoke @a only ctmv:inventory_checks/wool/cyan
execute if score gamemode Config matches 3 if score purple WoolsObtained matches 0 run advancement revoke @a only ctmv:inventory_checks/wool/purple
execute if score gamemode Config matches 3 if score blue WoolsObtained matches 0 run advancement revoke @a only ctmv:inventory_checks/wool/blue
execute if score gamemode Config matches 3 if score brown WoolsObtained matches 0 run advancement revoke @a only ctmv:inventory_checks/wool/brown
execute if score gamemode Config matches 3 if score green WoolsObtained matches 0 run advancement revoke @a only ctmv:inventory_checks/wool/green
execute if score gamemode Config matches 3 if score red WoolsObtained matches 0 run advancement revoke @a only ctmv:inventory_checks/wool/red
execute if score gamemode Config matches 3 if score black WoolsObtained matches 0 run advancement revoke @a only ctmv:inventory_checks/wool/black


#Disco mode 
execute if score gamemode Config matches 4 if score white WoolsObtained matches 0 run advancement revoke @a only ctmv:inventory_checks/music_disc/13
execute if score gamemode Config matches 4 if score orange WoolsObtained matches 0 run advancement revoke @a only ctmv:inventory_checks/music_disc/cat
execute if score gamemode Config matches 4 if score magenta WoolsObtained matches 0 run advancement revoke @a only ctmv:inventory_checks/music_disc/blocks
execute if score gamemode Config matches 4 if score lightblue WoolsObtained matches 0 run advancement revoke @a only ctmv:inventory_checks/music_disc/chirp
execute if score gamemode Config matches 4 if score yellow WoolsObtained matches 0 run advancement revoke @a only ctmv:inventory_checks/music_disc/far
execute if score gamemode Config matches 4 if score lime WoolsObtained matches 0 run advancement revoke @a only ctmv:inventory_checks/music_disc/mall
execute if score gamemode Config matches 4 if score pink WoolsObtained matches 0 run advancement revoke @a only ctmv:inventory_checks/music_disc/mellohi
execute if score gamemode Config matches 4 if score gray WoolsObtained matches 0 run advancement revoke @a only ctmv:inventory_checks/music_disc/stal
execute if score gamemode Config matches 4 if score lightgray WoolsObtained matches 0 run advancement revoke @a only ctmv:inventory_checks/music_disc/strad
execute if score gamemode Config matches 4 if score cyan WoolsObtained matches 0 run advancement revoke @a only ctmv:inventory_checks/music_disc/ward
execute if score gamemode Config matches 4 if score purple WoolsObtained matches 0 run advancement revoke @a only ctmv:inventory_checks/music_disc/11
execute if score gamemode Config matches 4 if score blue WoolsObtained matches 0 run advancement revoke @a only ctmv:inventory_checks/music_disc/wait
execute if score gamemode Config matches 4 if score brown WoolsObtained matches 0 run advancement revoke @a only ctmv:inventory_checks/music_disc/otherside
execute if score gamemode Config matches 4 if score green WoolsObtained matches 0 run advancement revoke @a only ctmv:inventory_checks/music_disc/5
execute if score gamemode Config matches 4 if score red WoolsObtained matches 0 run advancement revoke @a only ctmv:inventory_checks/music_disc/pigstep
execute if score gamemode Config matches 4 if score black WoolsObtained matches 0 run advancement revoke @a only ctmv:inventory_checks/music_disc/relic


#Mineral blocks
execute if score gamemode Config matches 1..2 if score coal WoolsObtained matches 0 run advancement revoke @a only ctmv:inventory_checks/minerals/coal
execute if score gamemode Config matches 1..2 if score iron WoolsObtained matches 0 run advancement revoke @a only ctmv:inventory_checks/minerals/iron
execute if score gamemode Config matches 1..2 if score gold WoolsObtained matches 0 run advancement revoke @a only ctmv:inventory_checks/minerals/gold
execute if score gamemode Config matches 1..2 if score lapis WoolsObtained matches 0 run advancement revoke @a only ctmv:inventory_checks/minerals/lapis
execute if score gamemode Config matches 1..2 if score redstone WoolsObtained matches 0 run advancement revoke @a only ctmv:inventory_checks/minerals/redstone
execute if score gamemode Config matches 1..2 if score emerald WoolsObtained matches 0 run advancement revoke @a only ctmv:inventory_checks/minerals/emerald
execute if score gamemode Config matches 1..2 if score diamond WoolsObtained matches 0 run advancement revoke @a only ctmv:inventory_checks/minerals/diamond
execute if score gamemode Config matches 1..2 if score copper WoolsObtained matches 0 run advancement revoke @a only ctmv:inventory_checks/minerals/copper