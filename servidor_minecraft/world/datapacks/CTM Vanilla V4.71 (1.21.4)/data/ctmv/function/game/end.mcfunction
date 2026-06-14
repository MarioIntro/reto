#Stop tick function
scoreboard players set playing Game 0

#Stop timer from incrementing
schedule clear ctmv:timer/loop

#Give nice effects to players
effect give @a saturation infinite 0 true
effect give @a regeneration infinite 4 true

#Change player gamemode
gamemode adventure @a

#Gamerules
gamerule sendCommandFeedback false
gamerule doMobSpawning false
gamerule doMobLoot false
gamerule doInsomnia false
gamerule disableRaids true
gamerule doFireTick false
gamerule doDaylightCycle false
gamerule doTraderSpawning false
gamerule doWardenSpawning false
gamerule doWeatherCycle false
gamerule fallDamage false
gamerule keepInventory true
gamerule mobGriefing false

#Kill ender pearls (Stasis chambers)
kill @e[type=ender_pearl]