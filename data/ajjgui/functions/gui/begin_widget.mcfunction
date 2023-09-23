execute at @e[type=minecraft:marker,tag=ajjgui.gui] run function ajjgui:gui/detect_gui
tag @e[type=minecraft:marker,tag=ajjgui.gui,tag=ajjgui.temp,sort=nearest,limit=1] add ajjgui.active_gui
tag @e[type=minecraft:marker,tag=ajjgui.gui,tag=ajjgui.temp] remove ajjgui.temp

execute as @e[type=minecraft:marker,tag=ajjgui.gui,tag=ajjgui.active_gui] run function ajjgui:gui/get_page
function ajjgui:gui/search_item
data modify storage ajjgui:gui Widget set from storage ajjgui:gui Temp1