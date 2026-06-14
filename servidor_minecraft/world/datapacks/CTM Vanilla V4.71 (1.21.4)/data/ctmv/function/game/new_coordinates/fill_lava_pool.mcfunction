#Fill the lava pool
fill ~5 ~5 ~5 ~-5 ~-5 ~-5 obsidian replace lava

#Stop armor stand gravity
data merge entity @s {NoGravity:1b}

#Tp armor stand higher that obsidian
execute if block ~ ~ ~ obsidian run tp @s ~ ~2 ~
execute if block ~ ~ ~ obsidian run tp @s ~ ~2 ~
execute if block ~ ~ ~ obsidian run tp @s ~ ~2 ~
execute if block ~ ~ ~ obsidian run tp @s ~ ~2 ~
execute if block ~ ~ ~ obsidian run tp @s ~ ~2 ~
execute if block ~ ~ ~ obsidian run tp @s ~ ~2 ~
execute if block ~ ~ ~ obsidian run tp @s ~ ~2 ~