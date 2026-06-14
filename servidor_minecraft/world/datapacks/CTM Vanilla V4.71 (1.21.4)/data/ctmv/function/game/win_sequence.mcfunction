#Display timer on actionbar
execute as @a run function ctmv:timer/display


#SEQUENCE
execute unless score time WinSequence matches 100 run schedule function ctmv:game/win_sequence 5t

#Stop game + initial particles
execute if score time WinSequence matches 0 run function ctmv:game/end
execute if score time WinSequence matches 0 at @a positioned ~ ~0.1 ~ run function ctmv:effects/ascending_circle_endrod
execute if score time WinSequence matches 0 as @a at @s run playsound block.beacon.power_select master @s ~ ~ ~ 3 0.8 1
execute if score time WinSequence matches 0 run effect give @a blindness 1 20 true

#Start music
execute if score time WinSequence matches 3 run function ctmv:obtain_item/stop_music_discs
execute if score time WinSequence matches 3 as @a at @s run playsound music_disc.pigstep record @s ~ ~10000 ~ 10000 1 1

#TITLE and sounds
function ctmv:lobby/get_number_of_players

execute if score time WinSequence matches 8 run title @a times 5 100 60
execute if score time WinSequence matches 8 if score numberPlayers Lobby matches ..1 if score language Config matches 0 run title @a subtitle ["",{"text":"Congratulations, "},{"text":"champion","color":"yellow"},{"text":"!"}]
execute if score time WinSequence matches 8 if score numberPlayers Lobby matches 2.. if score language Config matches 0 run title @a subtitle ["",{"text":"Congratulations to "},{"text":"everyone","color":"yellow"},{"text":"!"}]
execute if score time WinSequence matches 8 if score language Config matches 0 run title @a title {"text":"VICTORY!","bold":true,"color":"gold"}

execute if score time WinSequence matches 8 if score numberPlayers Lobby matches ..1 if score language Config matches 1 run title @a subtitle ["",{"text":"¡Felicidades, "},{"text":"campeón","color":"yellow"},{"text":"!"}]
execute if score time WinSequence matches 8 if score numberPlayers Lobby matches 2.. if score language Config matches 1 run title @a subtitle ["",{"text":"¡Felicidades a "},{"text":"todos","color":"yellow"},{"text":"!"}]
execute if score time WinSequence matches 8 if score language Config matches 1 run title @a title {"text":"¡VICTORIA!","bold":true,"color":"gold"}

execute if score time WinSequence matches 8 as @a at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~ 3 1.5 1
execute if score time WinSequence matches 8 as @a at @s run playsound block.note_block.bit master @s ~ ~ ~ 3 2 1
execute if score time WinSequence matches 8 as @a at @s run playsound block.respawn_anchor.set_spawn master @s ~ ~ ~ 3 1.3 1
execute if score time WinSequence matches 8 as @a at @s run playsound block.end_portal.spawn master @s ~ ~ ~ 3 1.3 1

#Give levitation to players
execute if score time WinSequence matches 8 run effect give @a levitation 25 3 true
execute if score time WinSequence matches 8..99 at @a run particle cloud ~ ~ ~ 0.4 0 0.4 0.02 25 force
execute if score time WinSequence matches 8..99 at @a run particle totem_of_undying ~ ~ ~ 0.4 0 0.4 0 7 force

#FIREWORKS
#Small sphere
execute at @a if score time WinSequence matches 8 run summon firework_rocket ~ ~1.5 ~ {LifeTime:25,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"small_ball",has_trail:true,colors:[I;11743532,4312372,14602026,6719955,12801229,15435844]}]}}}}
execute at @a if score time WinSequence matches 13 run summon firework_rocket ~2 ~1.5 ~ {LifeTime:35,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"small_ball",has_trail:true,colors:[I;11743532,4312372,14602026,6719955,12801229,15435844]}]}}}}
execute at @a if score time WinSequence matches 20 run summon firework_rocket ~-1 ~1.5 ~-1 {LifeTime:30,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"small_ball",has_trail:true,colors:[I;11743532,4312372,14602026,6719955,12801229,15435844]}]}}}}
execute at @a if score time WinSequence matches 27 run summon firework_rocket ~1 ~1.5 ~2 {LifeTime:30,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"small_ball",has_trail:true,colors:[I;11743532,4312372,14602026,6719955,12801229,15435844]}]}}}}
execute at @a if score time WinSequence matches 34 run summon firework_rocket ~3 ~1.5 ~ {LifeTime:35,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"small_ball",has_trail:true,colors:[I;11743532,4312372,14602026,6719955,12801229,15435844]}]}}}}
execute at @a if score time WinSequence matches 37 run summon firework_rocket ~-1 ~1.5 ~2 {LifeTime:25,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"small_ball",has_trail:true,colors:[I;11743532,4312372,14602026,6719955,12801229,15435844]}]}}}}
execute at @a if score time WinSequence matches 45 run summon firework_rocket ~1 ~1.5 ~-1 {LifeTime:25,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"small_ball",has_trail:true,colors:[I;11743532,4312372,14602026,6719955,12801229,15435844]}]}}}}

execute at @a if score time WinSequence matches 48 run summon firework_rocket ~ ~1.5 ~ {LifeTime:35,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"small_ball",has_trail:true,colors:[I;11743532,4312372,14602026,6719955,12801229,15435844]}]}}}}
execute at @a if score time WinSequence matches 53 run summon firework_rocket ~2 ~1.5 ~ {LifeTime:35,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"small_ball",has_trail:true,colors:[I;11743532,4312372,14602026,6719955,12801229,15435844]}]}}}}
execute at @a if score time WinSequence matches 60 run summon firework_rocket ~-1 ~1.5 ~-1 {LifeTime:30,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"small_ball",has_trail:true,colors:[I;11743532,4312372,14602026,6719955,12801229,15435844]}]}}}}
execute at @a if score time WinSequence matches 67 run summon firework_rocket ~1 ~1.5 ~2 {LifeTime:25,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"small_ball",has_trail:true,colors:[I;11743532,4312372,14602026,6719955,12801229,15435844]}]}}}}
execute at @a if score time WinSequence matches 74 run summon firework_rocket ~3 ~1.5 ~ {LifeTime:30,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"small_ball",has_trail:true,colors:[I;11743532,4312372,14602026,6719955,12801229,15435844]}]}}}}
execute at @a if score time WinSequence matches 77 run summon firework_rocket ~-1 ~1.5 ~2 {LifeTime:25,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"small_ball",has_trail:true,colors:[I;11743532,4312372,14602026,6719955,12801229,15435844]}]}}}}

#Big sphere
execute at @a if score time WinSequence matches 10 run summon firework_rocket ~2 ~1.5 ~-1 {LifeTime:30,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"large_ball",has_trail:true,colors:[I;11743532,4312372,14602026,6719955,12801229,15435844]}]}}}}
execute at @a if score time WinSequence matches 15 run summon firework_rocket ~ ~1.5 ~1 {LifeTime:40,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"large_ball",has_trail:true,colors:[I;11743532,4312372,14602026,6719955,12801229,15435844]}]}}}}
execute at @a if score time WinSequence matches 25 run summon firework_rocket ~3 ~1.5 ~-2 {LifeTime:35,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"large_ball",has_trail:true,colors:[I;11743532,4312372,14602026,6719955,12801229,15435844]}]}}}}
execute at @a if score time WinSequence matches 28 run summon firework_rocket ~ ~1.5 ~2 {LifeTime:30,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"large_ball",has_trail:true,colors:[I;11743532,4312372,14602026,6719955,12801229,15435844]}]}}}}
execute at @a if score time WinSequence matches 36 run summon firework_rocket ~1 ~1.5 ~-1 {LifeTime:40,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"large_ball",has_trail:true,colors:[I;11743532,4312372,14602026,6719955,12801229,15435844]}]}}}}
execute at @a if score time WinSequence matches 47 run summon firework_rocket ~ ~1.5 ~ {LifeTime:35,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"large_ball",has_trail:true,colors:[I;11743532,4312372,14602026,6719955,12801229,15435844]}]}}}}
execute at @a if score time WinSequence matches 56 run summon firework_rocket ~-1 ~1.5 ~ {LifeTime:30,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"large_ball",has_trail:true,colors:[I;11743532,4312372,14602026,6719955,12801229,15435844]}]}}}}
execute at @a if score time WinSequence matches 62 run summon firework_rocket ~2 ~1.5 ~1 {LifeTime:30,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"large_ball",has_trail:true,colors:[I;11743532,4312372,14602026,6719955,12801229,15435844]}]}}}}
execute at @a if score time WinSequence matches 75 run summon firework_rocket ~ ~1.5 ~1 {LifeTime:40,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"large_ball",has_trail:true,colors:[I;11743532,4312372,14602026,6719955,12801229,15435844]}]}}}}
execute at @a if score time WinSequence matches 79 run summon firework_rocket ~1 ~1.5 ~ {LifeTime:45,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"large_ball",has_trail:true,colors:[I;11743532,4312372,14602026,6719955,12801229,15435844]}]}}}}

#Star
execute at @a if score time WinSequence matches 17 run summon firework_rocket ~1 ~1.5 ~ {LifeTime:40,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"star",has_trail:true,colors:[I;11743532,4312372,14602026,6719955,12801229,15435844]}]}}}}
execute at @a if score time WinSequence matches 21 run summon firework_rocket ~ ~1.5 ~ {LifeTime:50,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"star",has_trail:true,colors:[I;11743532,4312372,14602026,6719955,12801229,15435844]}]}}}}
execute at @a if score time WinSequence matches 26 run summon firework_rocket ~2 ~1.5 ~-1 {LifeTime:45,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"star",has_trail:true,colors:[I;11743532,4312372,14602026,6719955,12801229,15435844]}]}}}}
execute at @a if score time WinSequence matches 34 run summon firework_rocket ~-2 ~1.5 ~ {LifeTime:40,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"star",has_trail:true,colors:[I;11743532,4312372,14602026,6719955,12801229,15435844]}]}}}}
execute at @a if score time WinSequence matches 45 run summon firework_rocket ~1 ~1.5 ~-1 {LifeTime:55,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"star",has_trail:true,colors:[I;11743532,4312372,14602026,6719955,12801229,15435844]}]}}}}
execute at @a if score time WinSequence matches 53 run summon firework_rocket ~ ~1.5 ~3 {LifeTime:50,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"star",has_trail:true,colors:[I;11743532,4312372,14602026,6719955,12801229,15435844]}]}}}}
execute at @a if score time WinSequence matches 61 run summon firework_rocket ~ ~1.5 ~ {LifeTime:40,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"star",has_trail:true,colors:[I;11743532,4312372,14602026,6719955,12801229,15435844]}]}}}}
execute at @a if score time WinSequence matches 64 run summon firework_rocket ~1 ~1.5 ~-1 {LifeTime:45,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"star",has_trail:true,colors:[I;11743532,4312372,14602026,6719955,12801229,15435844]}]}}}}
execute at @a if score time WinSequence matches 72 run summon firework_rocket ~-3 ~1.5 ~ {LifeTime:50,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"star",has_trail:true,colors:[I;11743532,4312372,14602026,6719955,12801229,15435844]}]}}}}
execute at @a if score time WinSequence matches 78 run summon firework_rocket ~ ~1.5 ~ {LifeTime:50,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"star",has_trail:true,colors:[I;11743532,4312372,14602026,6719955,12801229,15435844]}]}}}}


#PIGSTEP DROP
execute if score time WinSequence matches 94 run effect give @a darkness 5 0 true
execute if score time WinSequence matches 98 run effect give @a blindness 2 0 true
execute if score time WinSequence matches 98 run effect clear @a darkness
execute if score time WinSequence matches 99 run effect clear @a levitation

execute if score time WinSequence matches 98 run time set 13400

#Forceload chunks and generate platform and monument 
execute if score time WinSequence matches 97 at @e[tag=monument_position] run forceload add ~3 ~3 ~-3 ~-3
execute if score time WinSequence matches 98 run function ctmv:monument/summon

#TP players to monument and start monument sequence
execute if score time WinSequence matches 99 at @e[tag=monument_tp] run tp @a ~ ~ ~ 0 0
execute if score time WinSequence matches 99 at @e[tag=monument_tp] run spreadplayers ~ ~ 1 3 false @a

execute if score time WinSequence matches 99 at @a positioned ~ ~0.2 ~ run function ctmv:effects/expansive_circle_endrod
execute if score time WinSequence matches 99 at @e[tag=monument_tp] run particle firework ~ ~0.1 ~ 3 0 1 0.2 300 normal
execute if score time WinSequence matches 99 at @e[tag=monument_tp] run particle totem_of_undying ~ ~1.3 ~ 3 1.5 2 0.2 500 normal
execute if score time WinSequence matches 99 at @e[tag=monument_tp] as @a at @s run playsound entity.evoker.prepare_summon master @s ~ ~ ~ 4 0.7 1
execute if score time WinSequence matches 99 at @e[tag=monument_tp] as @a at @s run playsound entity.evoker.prepare_attack master @s ~ ~ ~ 2 0 1

execute if score time WinSequence matches 99 run function ctmv:monument/sequence


#Reset score and exit function
scoreboard players add time WinSequence 1
execute if score time WinSequence matches 100 run schedule clear ctmv:game/win_sequence
execute if score time WinSequence matches 100 run scoreboard players set time WinSequence 0