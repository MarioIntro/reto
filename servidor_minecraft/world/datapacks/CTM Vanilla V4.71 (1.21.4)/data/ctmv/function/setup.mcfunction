#COMMANDS TO EXECUTE ONLY FIRST TIME A PLAYER JOINS THE WORLD WITH THE DATAPACK

#Setup scoreboards
scoreboard objectives add Timer dummy

scoreboard objectives add PlayerCoordX dummy
scoreboard objectives add PlayerCoordY dummy
scoreboard objectives add PlayerCoordZ dummy

scoreboard objectives add Config dummy
scoreboard objectives add Lobby dummy
scoreboard objectives add Voting dummy
scoreboard objectives add Game dummy
scoreboard objectives add Resting dummy

scoreboard objectives add WoolsObtained dummy

scoreboard objectives add StartSequence dummy
scoreboard objectives add WinSequence dummy
scoreboard objectives add LoseSequence dummy
scoreboard objectives add MonumentSequence dummy

scoreboard objectives add Sneaking1 dummy
scoreboard objectives add Sneaking2 dummy

scoreboard objectives add GrantingAdvancements dummy

scoreboard objectives add Constants dummy

scoreboard objectives add WoolAnimation dummy

function ctmv:lobby/stats/setup_scoreboards

#Initialize configuration (Config scoreboard) values
#language=0|1 for english|spanish
scoreboard players set language Config 1
#gamemode=0|1|2 for normal|hard|nightmare
scoreboard players set gamemode Config 0
#uhc=0|1 for no|yes
scoreboard players set uhc Config 0
gamerule naturalRegeneration true
#difficulty=0|1|2 for easy|normal|hard
scoreboard players set difficulty Config 1
difficulty normal
#reduceCoord=0|1 for no|yes
scoreboard players set reduceCoord Config 1

#Initialize constants
scoreboard players set 2 Constants 2
scoreboard players set 3 Constants 3

#Initialize other scores
scoreboard players set recursionFix ItemsUpdate 0
scoreboard players set setupDatapack Lobby 1
scoreboard players set time StartSequence 0
scoreboard players set dots StartSequence 0
scoreboard players set countdown StartSequence 0
scoreboard players set gameNumber Game 0
scoreboard players set playing Game 0
scoreboard players set onLobby Game 1
scoreboard players set reduceCoord Game 1
scoreboard players set time WinSequence 0
scoreboard players set time LoseSequence 0
scoreboard players set time MonumentSequence 0
scoreboard players set time GrantingAdvancements 0
scoreboard players set grantedAdv Game 0
scoreboard players set resting Game 0
scoreboard players set restingLoop Game 0
scoreboard players set canRest Game 1
scoreboard players set time Resting 1
scoreboard players set phase WoolAnimation 0

#Setup bossbar for voting system
bossbar add voting [{"text":"⏻ ","color":"yellow"},{"score":{"name":"voted","objective":"Voting"},"color":"gold","bold":true},{"text":"/","color":"gold","bold":false},{"score":{"name":"numberPlayers","objective":"Lobby"},"color":"gold"},{"text":" PLAYERS TO ","color":"#FFD633"},{"text":"START GAME","color":"gold","bold":true},{"text":" ⏻","color":"yellow","bold":false}]
bossbar set voting color yellow
bossbar set voting visible true
bossbar set voting style progress

#Setup bossbar for resting system
bossbar add resting [{"text":"⌂","color":"dark_green"},{"text":" You can rest for ","color":"#B0FFA1"},{"text":"5 minutes ","color":"green","bold":true},{"text":"⌂","color":"dark_green","bold":false}]
bossbar set resting color green
bossbar set resting visible true
bossbar set resting style progress

#Create "/trigger" commands
scoreboard objectives add objectives trigger
scoreboard objectives add startGameWithoutVoting trigger
scoreboard objectives add changeConfig trigger
scoreboard objectives add voteToStartGame trigger
scoreboard objectives add RESETGAME trigger
scoreboard objectives add GRANTADVANCEMENTS trigger
scoreboard objectives add NEEDSOMEREST trigger
scoreboard objectives add STOPRESTING trigger
scoreboard objectives add CONTINUEPLAYING trigger

#Reset game
function ctmv:game/reset

#Welcome new player to the world
function ctmv:lobby/welcome_to_world

# RichMaps Promo
schedule function ctmv:richmaps/promo_intro 10s
