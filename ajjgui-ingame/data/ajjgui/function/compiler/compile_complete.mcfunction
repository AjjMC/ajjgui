tag @s add ajjgui.gui_origin

scoreboard players set @s ajjgui.page 0

data modify entity @s data.gui set from storage ajjgui:data temp.gui
data modify entity @s data.custom_name set from block ~ ~ ~ CustomName
data modify entity @s data.meta.boxes set from storage ajjgui:data temp.boxes

function ajjgui:gui/origin/load_page