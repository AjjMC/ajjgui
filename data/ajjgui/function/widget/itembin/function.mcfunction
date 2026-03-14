execute at @e[type=minecraft:marker,tag=ajjgui.gui_origin,tag=ajjgui.gui_active] run data modify storage ajjgui:data page set from block ~ ~ ~ Items
execute as @e[type=minecraft:marker,tag=ajjgui.gui_ported,tag=ajjgui.gui_active] on vehicle run data modify storage ajjgui:data page set from entity @s Items

function ajjgui:gui/get_item
data modify storage ajjgui:data temp.itembin.in set from storage ajjgui:data temp.item

data modify storage ajjgui:data in set from storage ajjgui:data temp.itembin.in
execute unless data storage ajjgui:data temp.itembin.in run data modify storage ajjgui:data in set value {}

execute unless data storage ajjgui:data temp.itembin.in run data modify storage ajjgui:data page append from storage ajjgui:data widget