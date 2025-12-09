data modify storage ajjgui:data temp.var.Slot set value 0b
data modify block ~ ~ ~ Items[] set from storage ajjgui:data temp.var

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

execute if score @s ajjgui.slot_returned matches 9 run item replace entity @s inventory.0 from block ~ ~ ~ container.0
execute if score @s ajjgui.slot_returned matches 10 run item replace entity @s inventory.1 from block ~ ~ ~ container.0
execute if score @s ajjgui.slot_returned matches 11 run item replace entity @s inventory.2 from block ~ ~ ~ container.0
execute if score @s ajjgui.slot_returned matches 12 run item replace entity @s inventory.3 from block ~ ~ ~ container.0
execute if score @s ajjgui.slot_returned matches 13 run item replace entity @s inventory.4 from block ~ ~ ~ container.0
execute if score @s ajjgui.slot_returned matches 14 run item replace entity @s inventory.5 from block ~ ~ ~ container.0
execute if score @s ajjgui.slot_returned matches 15 run item replace entity @s inventory.6 from block ~ ~ ~ container.0
execute if score @s ajjgui.slot_returned matches 16 run item replace entity @s inventory.7 from block ~ ~ ~ container.0
execute if score @s ajjgui.slot_returned matches 17 run item replace entity @s inventory.8 from block ~ ~ ~ container.0
execute if score @s ajjgui.slot_returned matches 18 run item replace entity @s inventory.9 from block ~ ~ ~ container.0
execute if score @s ajjgui.slot_returned matches 19 run item replace entity @s inventory.10 from block ~ ~ ~ container.0
execute if score @s ajjgui.slot_returned matches 20 run item replace entity @s inventory.11 from block ~ ~ ~ container.0
execute if score @s ajjgui.slot_returned matches 21 run item replace entity @s inventory.12 from block ~ ~ ~ container.0
execute if score @s ajjgui.slot_returned matches 22 run item replace entity @s inventory.13 from block ~ ~ ~ container.0
execute if score @s ajjgui.slot_returned matches 23 run item replace entity @s inventory.14 from block ~ ~ ~ container.0
execute if score @s ajjgui.slot_returned matches 24 run item replace entity @s inventory.15 from block ~ ~ ~ container.0
execute if score @s ajjgui.slot_returned matches 25 run item replace entity @s inventory.16 from block ~ ~ ~ container.0
execute if score @s ajjgui.slot_returned matches 26 run item replace entity @s inventory.17 from block ~ ~ ~ container.0
execute if score @s ajjgui.slot_returned matches 27 run item replace entity @s inventory.18 from block ~ ~ ~ container.0
execute if score @s ajjgui.slot_returned matches 28 run item replace entity @s inventory.19 from block ~ ~ ~ container.0
execute if score @s ajjgui.slot_returned matches 29 run item replace entity @s inventory.20 from block ~ ~ ~ container.0
execute if score @s ajjgui.slot_returned matches 30 run item replace entity @s inventory.21 from block ~ ~ ~ container.0
execute if score @s ajjgui.slot_returned matches 31 run item replace entity @s inventory.22 from block ~ ~ ~ container.0
execute if score @s ajjgui.slot_returned matches 32 run item replace entity @s inventory.23 from block ~ ~ ~ container.0
execute if score @s ajjgui.slot_returned matches 33 run item replace entity @s inventory.24 from block ~ ~ ~ container.0
execute if score @s ajjgui.slot_returned matches 34 run item replace entity @s inventory.25 from block ~ ~ ~ container.0
execute if score @s ajjgui.slot_returned matches 35 run item replace entity @s inventory.26 from block ~ ~ ~ container.0

execute if score @s ajjgui.slot_returned matches 36 run item replace entity @s weapon.offhand from block ~ ~ ~ container.0