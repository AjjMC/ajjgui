execute as @e[type=minecraft:marker,tag=ajjgui.gui] at @s run function ajjgui:gui/detect_gui

execute as @e[type=minecraft:marker,tag=ajjgui.gui,tag=ajjgui.active_gui,sort=nearest,limit=1] run function ajjgui:gui/get_page
function ajjgui:gui/search_item
data modify storage ajjgui:gui Widget set from storage ajjgui:gui Temp1