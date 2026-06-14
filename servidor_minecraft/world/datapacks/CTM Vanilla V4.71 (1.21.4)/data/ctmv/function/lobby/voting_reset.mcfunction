#Reset everything related to the voting system
bossbar set voting players @a[tag=resettingVotingSystem]
bossbar set voting value 0
scoreboard players reset voted Voting
tag @a remove hasVoted