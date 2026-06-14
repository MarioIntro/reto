#Remove monument and entities
execute at @e[tag=monument_center] run fill ~-22 ~-18 ~-22 ~22 ~12 ~ air
execute at @e[tag=monument_center] run fill ~-22 ~-18 ~22 ~22 ~12 ~ air

execute at @e[tag=monument_center] run kill @e[type=item_display]
execute at @e[tag=monument_center] run kill @e[type=marker]
execute at @e[tag=monument_center] run kill @e[type=item]

#Stop forceload
execute at @e[tag=monument_center] run forceload remove ~-4 ~-4 ~4 ~4

#Kill reference point to do this function
execute at @e[tag=monument_center] run kill @e[type=glow_item_frame]