#Give root advancement corresponding to each gamemode and language
execute if score language Config matches 0 if score gamemode Config matches 0 run advancement grant @a only ctmv:english/normal/root
execute if score language Config matches 0 if score gamemode Config matches 1 run advancement grant @a only ctmv:english/hard/root
execute if score language Config matches 0 if score gamemode Config matches 2 run advancement grant @a only ctmv:english/nightmare/root
execute if score language Config matches 0 if score gamemode Config matches 3 run advancement grant @a only ctmv:english/wool/root
execute if score language Config matches 0 if score gamemode Config matches 4 run advancement grant @a only ctmv:english/disco/root

execute if score language Config matches 1 if score gamemode Config matches 0 run advancement grant @a only ctmv:spanish/normal/root
execute if score language Config matches 1 if score gamemode Config matches 1 run advancement grant @a only ctmv:spanish/hard/root
execute if score language Config matches 1 if score gamemode Config matches 2 run advancement grant @a only ctmv:spanish/nightmare/root
execute if score language Config matches 1 if score gamemode Config matches 3 run advancement grant @a only ctmv:spanish/wool/root
execute if score language Config matches 1 if score gamemode Config matches 4 run advancement grant @a only ctmv:spanish/disco/root