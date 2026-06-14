#Set items from Normal mode to the item frames
execute if score time MonumentSequence matches 0 as @e[tag=monument_white] run data merge entity @s {Item:{id:"minecraft:cake",count:1,components:{"minecraft:enchantment_glint_override":true}}}
execute if score time MonumentSequence matches 5 as @e[tag=monument_orange] run data merge entity @s {Item:{id:"minecraft:damaged_anvil",count:1,components:{"minecraft:enchantment_glint_override":true}}}
execute if score time MonumentSequence matches 10 as @e[tag=monument_magenta] run data merge entity @s {Item:{id:"minecraft:rabbit_stew",count:1,components:{"minecraft:enchantment_glint_override":true}}}
execute if score time MonumentSequence matches 16 as @e[tag=monument_light_blue] run data merge entity @s {Item:{id:"minecraft:observer",count:1,components:{"minecraft:enchantment_glint_override":true}}}
execute if score time MonumentSequence matches 22 as @e[tag=monument_yellow] run data merge entity @s {Item:{id:"minecraft:heart_of_the_sea",count:1,components:{"minecraft:enchantment_glint_override":true}}}
execute if score time MonumentSequence matches 28 as @e[tag=monument_lime] run data merge entity @s {Item:{id:"minecraft:skull_banner_pattern",count:1,components:{"minecraft:enchantment_glint_override":true}}}
execute if score time MonumentSequence matches 33 as @e[tag=monument_pink] run data merge entity @s {Item:{id:"minecraft:ender_chest",count:1,components:{"minecraft:enchantment_glint_override":true}}}
execute if score time MonumentSequence matches 39 as @e[tag=monument_gray] run data merge entity @s {Item:{id:"minecraft:music_disc_11",count:1,components:{"minecraft:enchantment_glint_override":true}}}
execute if score time MonumentSequence matches 44 as @e[tag=monument_light_gray] run data merge entity @s {Item:{id:"minecraft:trident",count:1,components:{"minecraft:enchantment_glint_override":true}}}
execute if score time MonumentSequence matches 50 as @e[tag=monument_cyan] run data merge entity @s {Item:{id:"minecraft:totem_of_undying",count:1,components:{"minecraft:enchantment_glint_override":true}}}
execute if score time MonumentSequence matches 56 as @e[tag=monument_purple] run data merge entity @s {Item:{id:"minecraft:sponge",count:1,components:{"minecraft:enchantment_glint_override":true}}}
execute if score time MonumentSequence matches 61 as @e[tag=monument_blue] run data merge entity @s {Item:{id:"minecraft:bee_nest",count:1,components:{"minecraft:enchantment_glint_override":true}}}
execute if score time MonumentSequence matches 67 as @e[tag=monument_brown] run data merge entity @s {Item:{id:"minecraft:end_crystal",count:1,components:{"minecraft:enchantment_glint_override":true}}}
execute if score time MonumentSequence matches 72 as @e[tag=monument_green] run data merge entity @s {Item:{id:"minecraft:dragon_egg",count:1,components:{"minecraft:enchantment_glint_override":true}}}
execute if score time MonumentSequence matches 78 as @e[tag=monument_red] run data merge entity @s {Item:{id:"minecraft:tipped_arrow",count:1,components:{"minecraft:enchantment_glint_override":true,"minecraft:potion_contents":{potion:"minecraft:weakness"}}}}
execute if score time MonumentSequence matches 83 as @e[tag=monument_black] run data merge entity @s {Item:{id:"minecraft:cyan_shulker_box",count:1,components:{"minecraft:enchantment_glint_override":true}}}
