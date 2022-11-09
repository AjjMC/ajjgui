execute anchored eyes run function ajjgui:gui/raycast_gui
execute unless entity @e[type=minecraft:armor_stand,tag=ajjgui.gui,tag=ajjgui.active_gui] run tag @e[type=minecraft:armor_stand,tag=ajjgui.gui,sort=nearest,limit=1] add ajjgui.active_gui

execute as @e[type=minecraft:armor_stand,tag=ajjgui.gui,tag=ajjgui.active_gui] run function ajjgui:gui/get_page
function ajjgui:gui/search_item
data modify storage ajjgui:gui Widget set from storage ajjgui:gui Temp1