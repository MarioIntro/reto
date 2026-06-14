#Set items from Normal mode to the item frames
execute if score time MonumentSequence matches 0 as @e[tag=monument_white] run data merge entity @s {Item:{id:"minecraft:heart_of_the_sea",count:1,components:{"minecraft:enchantment_glint_override":true}}}
execute if score time MonumentSequence matches 5 as @e[tag=monument_orange] run data merge entity @s {Item:{id:"minecraft:redstone_lamp",count:1,components:{"minecraft:enchantment_glint_override":true}}}
execute if score time MonumentSequence matches 10 as @e[tag=monument_magenta] run data merge entity @s {Item:{id:"minecraft:brown_glazed_terracotta",count:1,components:{"minecraft:enchantment_glint_override":true}}}
execute if score time MonumentSequence matches 16 as @e[tag=monument_light_blue] run data merge entity @s {Item:{id:"minecraft:globe_banner_pattern",count:1,components:{"minecraft:enchantment_glint_override":true}}}
execute if score time MonumentSequence matches 22 as @e[tag=monument_yellow] run data merge entity @s {Item:{id:"minecraft:enchanted_book",count:1,components:{"minecraft:enchantment_glint_override":true}}}
execute if score time MonumentSequence matches 28 as @e[tag=monument_lime] run data merge entity @s {Item:{id:"minecraft:music_disc_11",count:1,components:{"minecraft:enchantment_glint_override":true}}}
execute if score time MonumentSequence matches 33 as @e[tag=monument_pink] run data merge entity @s {Item:{id:"minecraft:tube_coral",count:1,components:{"minecraft:enchantment_glint_override":true}}}
execute if score time MonumentSequence matches 39 as @e[tag=monument_gray] run data merge entity @s {Item:{id:"minecraft:trident",count:1,components:{"minecraft:enchantment_glint_override":true}}}
execute if score time MonumentSequence matches 44 as @e[tag=monument_light_gray] run data merge entity @s {Item:{id:"minecraft:totem_of_undying",count:1,components:{"minecraft:enchantment_glint_override":true}}}
execute if score time MonumentSequence matches 50 as @e[tag=monument_cyan] run data merge entity @s {Item:{id:"minecraft:mycelium",count:1,components:{"minecraft:enchantment_glint_override":true}}}
execute if score time MonumentSequence matches 56 as @e[tag=monument_purple] run data merge entity @s {Item:{id:"minecraft:sponge",count:1,components:{"minecraft:enchantment_glint_override":true}}}
execute if score time MonumentSequence matches 61 as @e[tag=monument_blue] run data merge entity @s {Item:{id:"minecraft:turtle_scute",count:1,components:{"minecraft:enchantment_glint_override":true}}}
execute if score time MonumentSequence matches 67 as @e[tag=monument_brown] run data merge entity @s {Item:{id:"minecraft:honey_block",count:1,components:{"minecraft:enchantment_glint_override":true}}}
execute if score time MonumentSequence matches 72 as @e[tag=monument_green] run data merge entity @s {Item:{id:"minecraft:tipped_arrow",count:1,components:{"minecraft:enchantment_glint_override":true,"minecraft:potion_contents":{potion:"minecraft:fire_resistance"}}}}
execute if score time MonumentSequence matches 78 as @e[tag=monument_red] run data merge entity @s {Item:{id:"minecraft:wither_rose",count:1,components:{"minecraft:enchantment_glint_override":true}}}
execute if score time MonumentSequence matches 83 as @e[tag=monument_black] run data merge entity @s {Item:{id:"minecraft:dragon_head",count:1,components:{"minecraft:enchantment_glint_override":true}}}
