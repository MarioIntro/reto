#Summon boat if there isn't another closeby
execute as @a[distance=..3,limit=1] run tag @s add boat_respawn
execute unless entity @e[type=oak_boat,distance=..8] run summon oak_boat ~ 62.53 ~ {Tags:[boat_respawn_mount]}

#Mount player to boat
ride @a[tag=boat_respawn,limit=1] mount @e[tag=boat_respawn_mount,limit=1]

#Delete tags
tag @a[tag=boat_respawn] remove boat_respawn
tag @e[tag=boat_respawn_mount] remove boat_respawn_mount