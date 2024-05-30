execute at @e[type=minecraft:marker,tag=ajjgui.gui_origin,tag=ajjgui.gui_active] run data modify storage ajjgui:data page set from block ~ ~ ~ Items
execute as @e[type=minecraft:marker,tag=ajjgui.gui_ported,tag=ajjgui.gui_active] on vehicle run data modify storage ajjgui:data page set from entity @s Items

function ajjgui:control/get_item

data modify storage ajjgui:data in set from storage ajjgui:data temp1
execute unless data storage ajjgui:data temp1 run data modify storage ajjgui:data in set value {}

execute unless data storage ajjgui:data temp1 run data modify storage ajjgui:data page append from storage ajjgui:data widget