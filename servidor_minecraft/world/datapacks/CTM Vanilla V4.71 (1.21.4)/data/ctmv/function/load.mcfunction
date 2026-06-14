#Message and sounds
tellraw @a {"text": "Datapack reloaded succesfully!", "color": "green"}
execute at @a run particle dust{color:[0.000,1.000,0.000],scale:1} ~ ~1 ~ 0.5 0.6 0.5 0 30 normal
execute as @a at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~