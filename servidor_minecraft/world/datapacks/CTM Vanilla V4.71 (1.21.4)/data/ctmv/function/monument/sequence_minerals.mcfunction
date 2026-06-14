#Set blocks and particles
execute if score time MonumentSequence matches 90 at @e[tag=monument_coal] run particle dust{color:[0.157,0.157,0.157],scale:1} ~ ~ ~ 0.7 0.7 0.1 0 100 force
execute if score time MonumentSequence matches 90 at @e[tag=monument_coal] run summon firework_rocket ~ ~ ~1 {LifeTime:0,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"small_ball",has_trail:true,colors:[I;2829099]}]}}}}
execute if score time MonumentSequence matches 90 at @e[tag=monument_coal] run setblock ~ ~ ~1 coal_block
execute if score time MonumentSequence matches 90 at @e[tag=monument_coal] run playsound entity.evoker.cast_spell block @a ~ ~ ~1 2 1 0

execute if score time MonumentSequence matches 95 at @e[tag=monument_iron] run particle dust{color:[0.827,0.827,0.827],scale:1} ~ ~ ~ 0.7 0.7 0.1 0 100 force
execute if score time MonumentSequence matches 95 at @e[tag=monument_iron] run summon firework_rocket ~ ~ ~1 {LifeTime:0,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"small_ball",has_trail:true,colors:[I;13619151]}]}}}}
execute if score time MonumentSequence matches 95 at @e[tag=monument_iron] run setblock ~ ~ ~1 iron_block
execute if score time MonumentSequence matches 95 at @e[tag=monument_iron] run playsound entity.evoker.cast_spell block @a ~ ~ ~1 2 0.8 0

execute if score time MonumentSequence matches 100 at @e[tag=monument_gold] run particle dust{color:[1.0,0.769,0.0],scale:1} ~ ~ ~ 0.7 0.7 0.1 0 100 force
execute if score time MonumentSequence matches 100 at @e[tag=monument_gold] run summon firework_rocket ~ ~ ~1 {LifeTime:0,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"small_ball",has_trail:true,colors:[I;16763904]}]}}}}
execute if score time MonumentSequence matches 100 at @e[tag=monument_gold] run setblock ~ ~ ~1 gold_block
execute if score time MonumentSequence matches 100 at @e[tag=monument_gold] run playsound entity.evoker.cast_spell block @a ~ ~ ~1 2 0.8 0

execute if score time MonumentSequence matches 106 at @e[tag=monument_lapis] run particle dust{color:[0.0,0.384,1.0],scale:1} ~ ~ ~ 0.7 0.7 0.1 0 100 force
execute if score time MonumentSequence matches 106 at @e[tag=monument_lapis] run summon firework_rocket ~ ~ ~1 {LifeTime:0,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"small_ball",has_trail:true,colors:[I;15615]}]}}}}
execute if score time MonumentSequence matches 106 at @e[tag=monument_lapis] run setblock ~ ~ ~1 lapis_block
execute if score time MonumentSequence matches 106 at @e[tag=monument_lapis] run playsound entity.evoker.cast_spell block @a ~ ~ ~1 2 0.8 0

execute if score time MonumentSequence matches 112 at @e[tag=monument_redstone] run particle dust{color:[0.788,0.0,0.0],scale:1} ~ ~ ~ 0.7 0.7 0.1 0 100 force
execute if score time MonumentSequence matches 112 at @e[tag=monument_redstone] run summon firework_rocket ~ ~ ~1 {LifeTime:0,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"small_ball",has_trail:true,colors:[I;13172736]}]}}}}
execute if score time MonumentSequence matches 112 at @e[tag=monument_redstone] run setblock ~ ~ ~1 redstone_block
execute if score time MonumentSequence matches 112 at @e[tag=monument_redstone] run playsound entity.evoker.cast_spell block @a ~ ~ ~1 2 0.8 0

execute if score time MonumentSequence matches 118 at @e[tag=monument_emerald] run particle dust{color:[0.098,0.831,0.0],scale:1} ~ ~ ~ 0.7 0.7 0.1 0 100 force
execute if score time MonumentSequence matches 118 at @e[tag=monument_emerald] run summon firework_rocket ~ ~ ~1 {LifeTime:0,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"small_ball",has_trail:true,colors:[I;55058]}]}}}}
execute if score time MonumentSequence matches 118 at @e[tag=monument_emerald] run setblock ~ ~ ~1 emerald_block
execute if score time MonumentSequence matches 118 at @e[tag=monument_emerald] run playsound entity.evoker.cast_spell block @a ~ ~ ~1 2 0.8 0

execute if score time MonumentSequence matches 123 at @e[tag=monument_diamond] run particle dust{color:[0.0,1.0,0.867],scale:1} ~ ~ ~ 0.7 0.7 0.1 0 100 force
execute if score time MonumentSequence matches 123 at @e[tag=monument_diamond] run summon firework_rocket ~ ~ ~1 {LifeTime:0,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"small_ball",has_trail:true,colors:[I;65518]}]}}}}
execute if score time MonumentSequence matches 123 at @e[tag=monument_diamond] run setblock ~ ~ ~1 diamond_block
execute if score time MonumentSequence matches 123 at @e[tag=monument_diamond] run playsound entity.evoker.cast_spell block @a ~ ~ ~1 2 0.8 0

execute if score time MonumentSequence matches 129 at @e[tag=monument_copper] run particle dust{color:[0.612,0.31,0.212],scale:1} ~ ~ ~ 0.7 0.7 0.1 0 100 force
execute if score time MonumentSequence matches 129 at @e[tag=monument_copper] run summon firework_rocket ~ ~ ~1 {LifeTime:0,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"small_ball",has_trail:true,colors:[I;11030066]}]}}}}
execute if score time MonumentSequence matches 129 at @e[tag=monument_copper] run setblock ~ ~ ~1 waxed_copper_block
execute if score time MonumentSequence matches 129 at @e[tag=monument_copper] run playsound entity.evoker.cast_spell block @a ~ ~ ~1 2 0.8 0
