#Clear everything that is in other slots from the three centered ones on the hotbar
execute store success score inventoryOrder Lobby run item replace entity @a[gamemode=adventure] hotbar.1 with air
execute store success score inventoryOrder Lobby run item replace entity @a[gamemode=adventure] hotbar.2 with air
execute store success score inventoryOrder Lobby run item replace entity @a[gamemode=adventure] hotbar.6 with air
execute store success score inventoryOrder Lobby run item replace entity @a[gamemode=adventure] hotbar.7 with air

execute store success score inventoryOrder Lobby run item replace entity @a[gamemode=adventure] player.cursor with air

execute store success score inventoryOrder Lobby run item replace entity @a[gamemode=adventure] inventory.0 with air
execute store success score inventoryOrder Lobby run item replace entity @a[gamemode=adventure] inventory.1 with air
execute store success score inventoryOrder Lobby run item replace entity @a[gamemode=adventure] inventory.2 with air
execute store success score inventoryOrder Lobby run item replace entity @a[gamemode=adventure] inventory.3 with air
execute store success score inventoryOrder Lobby run item replace entity @a[gamemode=adventure] inventory.4 with air
execute store success score inventoryOrder Lobby run item replace entity @a[gamemode=adventure] inventory.5 with air
execute store success score inventoryOrder Lobby run item replace entity @a[gamemode=adventure] inventory.6 with air
execute store success score inventoryOrder Lobby run item replace entity @a[gamemode=adventure] inventory.7 with air
execute store success score inventoryOrder Lobby run item replace entity @a[gamemode=adventure] inventory.8 with air
execute store success score inventoryOrder Lobby run item replace entity @a[gamemode=adventure] inventory.9 with air
execute store success score inventoryOrder Lobby run item replace entity @a[gamemode=adventure] inventory.10 with air
execute store success score inventoryOrder Lobby run item replace entity @a[gamemode=adventure] inventory.11 with air
execute store success score inventoryOrder Lobby run item replace entity @a[gamemode=adventure] inventory.12 with air
execute store success score inventoryOrder Lobby run item replace entity @a[gamemode=adventure] inventory.13 with air
execute store success score inventoryOrder Lobby run item replace entity @a[gamemode=adventure] inventory.14 with air
execute store success score inventoryOrder Lobby run item replace entity @a[gamemode=adventure] inventory.15 with air
execute store success score inventoryOrder Lobby run item replace entity @a[gamemode=adventure] inventory.16 with air
execute store success score inventoryOrder Lobby run item replace entity @a[gamemode=adventure] inventory.17 with air
execute store success score inventoryOrder Lobby run item replace entity @a[gamemode=adventure] inventory.18 with air
execute store success score inventoryOrder Lobby run item replace entity @a[gamemode=adventure] inventory.19 with air
execute store success score inventoryOrder Lobby run item replace entity @a[gamemode=adventure] inventory.20 with air
execute store success score inventoryOrder Lobby run item replace entity @a[gamemode=adventure] inventory.21 with air
execute store success score inventoryOrder Lobby run item replace entity @a[gamemode=adventure] inventory.22 with air
execute store success score inventoryOrder Lobby run item replace entity @a[gamemode=adventure] inventory.23 with air
execute store success score inventoryOrder Lobby run item replace entity @a[gamemode=adventure] inventory.24 with air
execute store success score inventoryOrder Lobby run item replace entity @a[gamemode=adventure] inventory.25 with air
execute store success score inventoryOrder Lobby run item replace entity @a[gamemode=adventure] inventory.26 with air

execute store success score inventoryOrder Lobby run item replace entity @a[gamemode=adventure] weapon.offhand with air

#Call to update books functions to set them correctly
execute if score inventoryOrder Lobby matches 1.. run function ctmv:lobby/update_books
execute if score inventoryOrder Lobby matches 1.. run scoreboard players reset inventoryOrder Lobby

#Detect if you drop a book
execute if entity @e[type=item,predicate=ctmv:lobby_book] run function ctmv:lobby/update_books
execute as @e[type=item,predicate=ctmv:lobby_book] run kill @s