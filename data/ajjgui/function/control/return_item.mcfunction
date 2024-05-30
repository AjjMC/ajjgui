data modify storage ajjgui:data temp.Slot set value 0b
data modify block ~ ~ ~ Items[] set from storage ajjgui:data temp

execute if score @s ajjgui.slot_returned matches -1 run item replace entity @s player.cursor from block ~ ~ ~ container.0
execute if score @s ajjgui.slot_returned matches 0 run item replace entity @s hotbar.0 from block ~ ~ ~ container.0
execute if score @s ajjgui.slot_returned matches 1 run item replace entity @s hotbar.1 from block ~ ~ ~ container.0
execute if score @s ajjgui.slot_returned matches 2 run item replace entity @s hotbar.2 from block ~ ~ ~ container.0
execute if score @s ajjgui.slot_returned matches 3 run item replace entity @s hotbar.3 from block ~ ~ ~ container.0
execute if score @s ajjgui.slot_returned matches 4 run item replace entity @s hotbar.4 from block ~ ~ ~ container.0
execute if score @s ajjgui.slot_returned matches 5 run item replace entity @s hotbar.5 from block ~ ~ ~ container.0
execute if score @s ajjgui.slot_returned matches 6 run item replace entity @s hotbar.6 from block ~ ~ ~ container.0
execute if score @s ajjgui.slot_returned matches 7 run item replace entity @s hotbar.7 from block ~ ~ ~ container.0
execute if score @s ajjgui.slot_returned matches 8 run item replace entity @s hotbar.8 from block ~ ~ ~ container.0