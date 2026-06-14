#SEQUENCE
execute unless score gamemode Config matches 1..2 unless score time MonumentSequence matches 90 run schedule function ctmv:monument/sequence 5t
execute if score gamemode Config matches 1..2 unless score time MonumentSequence matches 135 run schedule function ctmv:monument/sequence 5t

#Monument particles + levitation
execute at @e[tag=monument_center] run particle totem_of_undying ~ ~1 ~ 7 1 1 0 1 normal
execute at @e[tag=monument_center] positioned ~ ~-60 ~ run effect give @a[distance=..55] levitation 1 15 true


#Set block + Particles, fireworks and sounds
execute if score time MonumentSequence matches 0 at @e[tag=monument_white] run particle dust{color:[1,1,1],scale:1} ~ ~ ~ 0.7 0.7 0.1 0 100 force
execute if score time MonumentSequence matches 0 at @e[tag=monument_white] run summon firework_rocket ~ ~ ~1 {LifeTime:0,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"small_ball",has_trail:true,colors:[I;15790320]}]}}}}
execute if score time MonumentSequence matches 0 at @e[tag=monument_white] run setblock ~ ~ ~1 white_wool
execute if score time MonumentSequence matches 0 at @e[tag=monument_white] run playsound entity.evoker.cast_spell block @a ~ ~ ~1 2 0.8 0

execute if score time MonumentSequence matches 5 at @e[tag=monument_orange] run particle dust{color:[1.0,0.616,0.0],scale:1} ~ ~ ~ 0.7 0.7 0.1 0 100 force
execute if score time MonumentSequence matches 5 at @e[tag=monument_orange] run summon firework_rocket ~ ~ ~1 {LifeTime:0,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"small_ball",has_trail:true,colors:[I;16755200]}]}}}}
execute if score time MonumentSequence matches 5 at @e[tag=monument_orange] run setblock ~ ~ ~1 orange_wool
execute if score time MonumentSequence matches 5 at @e[tag=monument_orange] run playsound entity.evoker.cast_spell block @a ~ ~ ~1 2 0.8 0

execute if score time MonumentSequence matches 10 at @e[tag=monument_magenta] run particle dust{color:[1.000,0.000,.733],scale:1} ~ ~ ~ 0.7 0.7 0.1 0 100 force
execute if score time MonumentSequence matches 10 at @e[tag=monument_magenta] run summon firework_rocket ~ ~ ~1 {LifeTime:0,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"small_ball",has_trail:true,colors:[I;16711897]}]}}}}
execute if score time MonumentSequence matches 10 at @e[tag=monument_magenta] run setblock ~ ~ ~1 magenta_wool
execute if score time MonumentSequence matches 10 at @e[tag=monument_magenta] run playsound entity.evoker.cast_spell block @a ~ ~ ~1 2 0.8 0

execute if score time MonumentSequence matches 16 at @e[tag=monument_light_blue] run particle dust{color:[0,1,1],scale:1} ~ ~ ~ 0.7 0.7 0.1 0 100 force
execute if score time MonumentSequence matches 16 at @e[tag=monument_light_blue] run summon firework_rocket ~ ~ ~1 {LifeTime:0,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"small_ball",has_trail:true,colors:[I;64511]}]}}}}
execute if score time MonumentSequence matches 16 at @e[tag=monument_light_blue] run setblock ~ ~ ~1 light_blue_wool
execute if score time MonumentSequence matches 16 at @e[tag=monument_light_blue] run playsound entity.evoker.cast_spell block @a ~ ~ ~1 2 0.8 0

execute if score time MonumentSequence matches 22 at @e[tag=monument_yellow] run particle dust{color:[0.933,1.0,0.0],scale:1} ~ ~ ~ 0.7 0.7 0.1 0 100 force
execute if score time MonumentSequence matches 22 at @e[tag=monument_yellow] run summon firework_rocket ~ ~ ~1 {LifeTime:0,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"small_ball",has_trail:true,colors:[I;16776960]}]}}}}
execute if score time MonumentSequence matches 22 at @e[tag=monument_yellow] run setblock ~ ~ ~1 yellow_wool
execute if score time MonumentSequence matches 22 at @e[tag=monument_yellow] run playsound entity.evoker.cast_spell block @a ~ ~ ~1 2 0.8 0

execute if score time MonumentSequence matches 28 at @e[tag=monument_lime] run particle dust{color:[0.118,1.0,0.0],scale:1} ~ ~ ~ 0.7 0.7 0.1 0 100 force
execute if score time MonumentSequence matches 28 at @e[tag=monument_lime] run summon firework_rocket ~ ~ ~1 {LifeTime:0,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"small_ball",has_trail:true,colors:[I;65301]}]}}}}
execute if score time MonumentSequence matches 28 at @e[tag=monument_lime] run setblock ~ ~ ~1 lime_wool
execute if score time MonumentSequence matches 28 at @e[tag=monument_lime] run playsound entity.evoker.cast_spell block @a ~ ~ ~1 2 0.8 0

execute if score time MonumentSequence matches 33 at @e[tag=monument_pink] run particle dust{color:[1.0,0.627,0.882],scale:1} ~ ~ ~ 0.7 0.7 0.1 0 100 force
execute if score time MonumentSequence matches 33 at @e[tag=monument_pink] run summon firework_rocket ~ ~ ~1 {LifeTime:0,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"small_ball",has_trail:true,colors:[I;16759013]}]}}}}
execute if score time MonumentSequence matches 33 at @e[tag=monument_pink] run setblock ~ ~ ~1 pink_wool
execute if score time MonumentSequence matches 33 at @e[tag=monument_pink] run playsound entity.evoker.cast_spell block @a ~ ~ ~1 2 0.8 0

execute if score time MonumentSequence matches 39 at @e[tag=monument_gray] run particle dust{color:[0.392,0.392,0.392],scale:1} ~ ~ ~ 0.7 0.7 0.1 0 100 force
execute if score time MonumentSequence matches 39 at @e[tag=monument_gray] run summon firework_rocket ~ ~ ~1 {LifeTime:0,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"small_ball",has_trail:true,colors:[I;5789784]}]}}}}
execute if score time MonumentSequence matches 39 at @e[tag=monument_gray] run setblock ~ ~ ~1 gray_wool
execute if score time MonumentSequence matches 39 at @e[tag=monument_gray] run playsound entity.evoker.cast_spell block @a ~ ~ ~1 2 0.8 0

execute if score time MonumentSequence matches 44 at @e[tag=monument_light_gray] run particle dust{color:[0.722,0.722,0.722],scale:1} ~ ~ ~ 0.7 0.7 0.1 0 100 force
execute if score time MonumentSequence matches 44 at @e[tag=monument_light_gray] run summon firework_rocket ~ ~ ~1 {LifeTime:0,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"small_ball",has_trail:true,colors:[I;13619151]}]}}}}
execute if score time MonumentSequence matches 44 at @e[tag=monument_light_gray] run setblock ~ ~ ~1 light_gray_wool
execute if score time MonumentSequence matches 44 at @e[tag=monument_light_gray] run playsound entity.evoker.cast_spell block @a ~ ~ ~1 2 0.8 0

execute if score time MonumentSequence matches 50 at @e[tag=monument_cyan] run particle dust{color:[0.0,0.502,0.686],scale:1} ~ ~ ~ 0.7 0.7 0.1 0 100 force
execute if score time MonumentSequence matches 50 at @e[tag=monument_cyan] run summon firework_rocket ~ ~ ~1 {LifeTime:0,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"small_ball",has_trail:true,colors:[I;35504]}]}}}}
execute if score time MonumentSequence matches 50 at @e[tag=monument_cyan] run setblock ~ ~ ~1 cyan_wool
execute if score time MonumentSequence matches 50 at @e[tag=monument_cyan] run playsound entity.evoker.cast_spell block @a ~ ~ ~1 2 0.8 0

execute if score time MonumentSequence matches 56 at @e[tag=monument_purple] run particle dust{color:[0.616,0.0,1.0],scale:1} ~ ~ ~ 0.7 0.7 0.1 0 100 force
execute if score time MonumentSequence matches 56 at @e[tag=monument_purple] run summon firework_rocket ~ ~ ~1 {LifeTime:0,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"small_ball",has_trail:true,colors:[I;9175295]}]}}}}
execute if score time MonumentSequence matches 56 at @e[tag=monument_purple] run setblock ~ ~ ~1 purple_wool
execute if score time MonumentSequence matches 56 at @e[tag=monument_purple] run playsound entity.evoker.cast_spell block @a ~ ~ ~1 2 0.8 0

execute if score time MonumentSequence matches 61 at @e[tag=monument_blue] run particle dust{color:[0.0,0.133,1.0],scale:1} ~ ~ ~ 0.7 0.7 0.1 0 100 force
execute if score time MonumentSequence matches 61 at @e[tag=monument_blue] run summon firework_rocket ~ ~ ~1 {LifeTime:0,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"small_ball",has_trail:true,colors:[I;1279]}]}}}}
execute if score time MonumentSequence matches 61 at @e[tag=monument_blue] run setblock ~ ~ ~1 blue_wool
execute if score time MonumentSequence matches 61 at @e[tag=monument_blue] run playsound entity.evoker.cast_spell block @a ~ ~ ~1 2 0.8 0

execute if score time MonumentSequence matches 67 at @e[tag=monument_brown] run particle dust{color:[0.439,0.294,0.196],scale:1} ~ ~ ~ 0.7 0.7 0.1 0 100 force
execute if score time MonumentSequence matches 67 at @e[tag=monument_brown] run summon firework_rocket ~ ~ ~1 {LifeTime:0,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"small_ball",has_trail:true,colors:[I;8082739]}]}}}}
execute if score time MonumentSequence matches 67 at @e[tag=monument_brown] run setblock ~ ~ ~1 brown_wool
execute if score time MonumentSequence matches 67 at @e[tag=monument_brown] run playsound entity.evoker.cast_spell block @a ~ ~ ~1 2 0.8 0

execute if score time MonumentSequence matches 72 at @e[tag=monument_green] run particle dust{color:[0.0,0.522,0.035],scale:1} ~ ~ ~ 0.7 0.7 0.1 0 100 force
execute if score time MonumentSequence matches 72 at @e[tag=monument_green] run summon firework_rocket ~ ~ ~1 {LifeTime:0,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"small_ball",has_trail:true,colors:[I;166400]}]}}}}
execute if score time MonumentSequence matches 72 at @e[tag=monument_green] run setblock ~ ~ ~1 green_wool
execute if score time MonumentSequence matches 72 at @e[tag=monument_green] run playsound entity.evoker.cast_spell block @a ~ ~ ~1 2 0.8 0

execute if score time MonumentSequence matches 78 at @e[tag=monument_red] run particle dust{color:[1.000,0.000,0.000],scale:1} ~ ~ ~ 0.7 0.7 0.1 0 100 force
execute if score time MonumentSequence matches 78 at @e[tag=monument_red] run summon firework_rocket ~ ~ ~1 {LifeTime:0,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"small_ball",has_trail:true,colors:[I;16711680]}]}}}}
execute if score time MonumentSequence matches 78 at @e[tag=monument_red] run setblock ~ ~ ~1 red_wool
execute if score time MonumentSequence matches 78 at @e[tag=monument_red] run playsound entity.evoker.cast_spell block @a ~ ~ ~1 2 0.8 0

execute if score time MonumentSequence matches 83 at @e[tag=monument_black] run particle dust{color:[0,0,0],scale:1} ~ ~ ~ 0.7 0.7 0.1 0 100 force
execute if score time MonumentSequence matches 83 at @e[tag=monument_black] run summon firework_rocket ~ ~ ~1 {LifeTime:0,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"small_ball",has_trail:true,colors:[I;0]}]}}}}
execute if score time MonumentSequence matches 83 at @e[tag=monument_black] run setblock ~ ~ ~1 black_wool
execute if score time MonumentSequence matches 83 at @e[tag=monument_black] run playsound entity.evoker.cast_spell block @a ~ ~ ~1 2 0.8 0

#MINERAL BLOCKS
execute if score gamemode Config matches 1..2 if score time MonumentSequence matches 85.. run function ctmv:monument/sequence_minerals


#Change item frames
execute if score gamemode Config matches 0 run function ctmv:monument/set_item_frame/normal
execute if score gamemode Config matches 1 run function ctmv:monument/set_item_frame/hard
execute if score gamemode Config matches 2 run function ctmv:monument/set_item_frame/nightmare
execute if score gamemode Config matches 4 run function ctmv:monument/set_item_frame/disco

#End sequence (start "Lobby time")
execute unless score gamemode Config matches 1..2 if score time MonumentSequence matches 90 run function ctmv:monument/sequence_end
execute if score gamemode Config matches 1..2 if score time MonumentSequence matches 135 run function ctmv:monument/sequence_end


#Reset score and exit function
scoreboard players add time MonumentSequence 1

execute unless score gamemode Config matches 1..2 if score time MonumentSequence matches 91 run schedule clear ctmv:monument/sequence
execute unless score gamemode Config matches 1..2 if score time MonumentSequence matches 91 run scoreboard players set time MonumentSequence 0

execute if score gamemode Config matches 1..2 if score time MonumentSequence matches 136 run schedule clear ctmv:monument/sequence
execute if score gamemode Config matches 1..2 if score time MonumentSequence matches 136 run scoreboard players set time MonumentSequence 0