#Summon monument structure where marker indicates
execute if score gamemode Config matches 1..2 at @e[tag=monument_position] run setblock ~ ~ ~ minecraft:structure_block[mode=load]{author:"ByDageta",ignoreEntities:0b,integrity:1.0f,metadata:"",mirror:"NONE",mode:"LOAD",name:"ctmv:monument",posX:-20,posY:1,posZ:-20,powered:0b,rotation:"NONE",seed:0L,showair:0b,showboundingbox:0b,sizeX:41,sizeY:27,sizeZ:41}
execute unless score gamemode Config matches 1..2 at @e[tag=monument_position] run setblock ~ ~ ~ minecraft:structure_block[mode=load]{author:"ByDageta",ignoreEntities:0b,integrity:1.0f,metadata:"",mirror:"NONE",mode:"LOAD",name:"ctmv:monument_small",posX:-20,posY:1,posZ:-20,powered:0b,rotation:"NONE",seed:0L,showair:0b,showboundingbox:0b,sizeX:41,sizeY:27,sizeZ:41}

execute at @e[tag=monument_position] run setblock ~ ~1 ~ redstone_block
execute at @e[tag=monument_position] run setblock ~ ~ ~ air