execute store success score #bool ajjguil run clear @s *[minecraft:custom_data~{ajjguil:{meta:{compiled:1b}}}] 0
execute if score #bool ajjguil matches 0 if score @s ajjguil.cooldown matches 1.. run scoreboard players remove @s ajjguil.cooldown 1
execute if score #bool ajjguil matches 0 run return 0

scoreboard players set @s ajjguil.slot -1
scoreboard players set @s ajjguil.slot_returned -1

# Fast path: check if item landed in Inventory / Hotbar / Offhand
execute if data entity @s Inventory[{components:{"minecraft:custom_data":{ajjguil:{meta:{compiled:1b}}}}}] run function ajjguil:entity/read_inv_slot

# Cursor path: scan slot metadata 0..53
execute if score @s ajjguil.slot matches -1 run function ajjguil:entity/scan_cursor_slot

data remove storage ajjguil:data temp.return_item
execute if score @s ajjguil.slot matches 0..53 at @s run function ajjguil:widget/main

# Always strip any compiled GUI widget item from the player
clear @s *[minecraft:custom_data~{ajjguil:{meta:{compiled:1b}}}]

# Return any recovered or output item back to player's cursor or inventory
execute if data storage ajjguil:data temp.return_item.id if score @s ajjguil.slot_returned matches -1 run function ajjguil:util/give_cursor_item
execute if data storage ajjguil:data temp.return_item.id unless score @s ajjguil.slot_returned matches -1 run function ajjguil:util/give_inventory_item
data remove storage ajjguil:data temp.return_item
