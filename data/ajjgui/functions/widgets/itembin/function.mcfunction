execute at @e[type=minecraft:marker,tag=ajjgui.gui,tag=ajjgui.active_gui] run data modify storage ajjgui:gui Page set from block ~ ~ ~ Items
function ajjgui:gui/search_item

data modify storage ajjgui:gui In set from storage ajjgui:gui Temp1
execute unless data storage ajjgui:gui Temp1 run data modify storage ajjgui:gui In set value {}

execute unless data storage ajjgui:gui Temp1 run data modify storage ajjgui:gui Page append from storage ajjgui:gui Widget